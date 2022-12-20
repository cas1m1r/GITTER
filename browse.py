import os
from flask import Flask, render_template, abort, url_for
import json
import html

app = Flask(__name__)
app.config['JSONIFY_PRETTYPRINT_REGULAR'] = True

@app.route("/")
def home():
    return render_template('home.html', names=os.listdir('Users'))

@app.route("/i/<uname>")
def show_avatar(uname):
    fi = f'Users/{uname.split("_")[-1].split(".")[0].upper()}/{uname}'
    blank = True
    if os.path.isfile(fi):
        try:
            with open(fi,'rb') as f:
                im = f.read()
            blank = False
        except UnicodeDecodeError:
            blank = True
            pass
    if blank:
        with open(os.path.join(os.getcwd(),'templates','blank.png'),'rb') as f:
            im = f.read()        
    f.close()
    return im


@app.route("/u/<uname>")
def show_user(uname):
    try:
        for fn in os.listdir(f'Users/{uname}'):
            if fn.find('.json')>0:
                # read file
                name = fn.split('.json')[0]
                with open(f'Users/{uname}/{name}.json', 'r') as f:
                    data = json.loads(f.read())
                f.close()
                repos       = data[name]['repos']
                followers   = data[name]['followers']
                following   = data[name]['following']
                
                print(data)
                print(f"Repos:{repos}")
                print(f"Followers:{followers}")
                print(f"Following:{following}")
                return render_template(
                                    'index.html',
                                    jsonfile=data,
                                    title=name,
                                    repos=repos,
                                    uname=uname,
                                    followers=followers,
                                    following=following)
    except FileNotFoundError:
        pass
    return(f'<b>Unable to find {uname}</b>')



@app.route("/r/<uname>/<repo>")
def show_repo(uname, repo):
    for fn in os.listdir(f'Users/{uname.upper()}'):
            if fn.find('.json')>0:
                # read file
                name = fn.split('.json')[0]
                gdata = f'Users/{uname.upper()}/{name.upper()}.git.{repo}'
                if not os.path.isfile(gdata):
                    os.system(f'./gitcode.sh {uname} {repo}')
                with open(gdata, 'r') as f:
                    history = f.readlines()
    f.close()
    return render_template('repo.html', repo=repo, user=uname, data=history)


if __name__ == '__main__':
    app.run(host='localhost', debug=True)