from gitparsed import *
import random
import string
import json
import sys
import os

def random_filename(ext:str):
        alphas = list(string.ascii_lowercase)
        return f'{"".join(random.sample(alphas,6))}{ext}'

def exec_as_script(cmd:str):
        f = random_filename('.tmp')
        open(f,'w').write(f'#!/bin/bash\n{cmd}\nrm $0\n#EOF')
        return exec(f'bash {f}')

def exec(cmd:str):
        fout = os.path.join(os.getcwd(),random_filename('.txt'))
        os.system(f'{cmd} > {fout}')
        result = open(fout,'r').read()
        os.remove(fout)
        return result.split('\n')

def collect_user_summary(uname):
	# - connect emails found in GIT with the username being looked at.
	# - check for the commits that match the user repo
	# - actually look inside files committed to find malware?
	if test_folder_exists(uname):
		print(f'\033[1m[+] Found \033[32m{uname}\033[0m, parsing info...')
		userdata = {'name': uname, 'repos':[], 'emails': []}
		upath = f'Users/{uname.upper()}'
		# check if they have repo data 
		repo_files = []
		for file in os.listdir(upath):
			if file.find(f'{uname.upper()}.git.')==0:
				reponame = file.split('.')[-1]
				print(f'\tParsing repo {reponame} by {uname}')
				gitrepo = Repo(create_repo_str(uname, reponame))
				if gitrepo.parsed:
					userdata['repos'].append(reponame)
					for email in gitrepo.info['emails']:
						userdata['emails'].append(email)
		return userdata
	else:
		print(f'\033[1m[!]Cannot Find\033[31m{uname}\033[0m, sorry...')
		return {}

def test_folder_exists(uname:str):
	return os.path.isdir(f'Users/{uname.upper()}')

def git_snoop(userFile:str):
	if not os.path.isfile(userFile):
		print(f'[X] Cannot find {userFile}')
		return data
	userinfo = json.loads(open(userFile,'r').read())
	uname = list(userinfo.keys()).pop()
	repos = userinfo[uname]['repos']
	print(f'[+] Processing {len(repos)} git repos from {uname}')
	data = {'logs':[], 'username':uname, 'repos': {}}
	# clone the repo 
	for repo in repos:
		start = os.getcwd()
		gitlog = f'{start}/Users/{uname.upper()}/{uname}.git.{repo}'
		data['logs'].append(gitlog)
		remote = f'https://github.com/{uname}/{repo}'
		# checkout the repository 
		os.system(f'mkdir SANDBOX; cd SANDBOX; git clone {remote}')
		data['repos'][repo] = {'commits': []}
		data['repos']['remote'] = remote
		# get summary of files in repo
		os.system(f'echo "======================: FILES :======================" >> {gitlog}')
		data['repos'][repo]['files'] = exec(f'tree SANDBOX/{repo} >> {gitlog}')
		# check branches 
		os.system(f'echo "======================: BRANCHES :======================" >> {gitlog}')
		data['repos'][repo]['branches'] = exec(f'cd SANDBOX/{repo}; git branch  >> {gitlog}')
		# check commit history of main branch
		os.system(f'echo "======================: LOGINFO :======================" >> {gitlog}')
		os.system(f'cd SANDBOX/{repo}; git log >> {gitlog}')
		data['repos'][repo]['commits'] = exec(f'cd SANDBOX/{repo}; git log | grep commit | cut -d " " -f 2')
		data['repos'][repo]['changes'] = {}
		# # for each commit get the changes 
		for commit in data['repos'][repo]['commits']:
			if len(commit):
				data['repos'][repo]['changes'][commit] = exec(f'cd SANDBOX/{repo}; git show {commit}')
		# # Clean up the stuff we downloaded
		os.system(f'cd {start}; rm -rf SANDBOX')
		return data

def check_user_repos(username:str):
	fpath = os.path.join(os.getcwd(),'Users',username.upper(),f'{username}.json')
	gpath = os.path.join(os.getcwd(),'Users',username.upper(), f'{username}_gitdata.json')
	result = git_snoop(fpath)
	with open(gpath,'w') as f: 
		f.write(json.dumps(result,indent=2))
	print(f'[+] Dumped detailed Github Repository Data from {username} to:\n\t{gpath}')
	return result

def get_usernames():
	usernames = []
	print(f'[-] Pulling Github Usernames from Users/')
	for folder in os.listdir('Users/'):
		if os.path.isdir(os.path.join(f'Users/{folder}')):
			for fname in os.listdir(os.path.join(f'Users/{folder}')):
				if fname.find('.json')>0 and fname.find('_gitdata.json')<0:
					# print(f'--> {fname.split(" ")[0]}')
					usernames.append(fname.split('.json')[0])
	return usernames


def main():
	names = get_usernames()
	if '--update-info' in sys.argv:
		print(f'[+] Updating User information for \033[1m{len(names)}\033[0m github users')
		for uname in names:
			ufile = f'Users/{uname.upper()}/{uname}.json'
			if os.path.isfile(ufile):
				userinfo = json.loads(open(ufile,'r').read())
				# add information to user file
				if 'email' not in userinfo.keys():
					print(f'\t+ processing \033[32m{uname}\033[0m')
					detailed = collect_user_summary(uname)
					userinfo['emails'] = detailed['emails']
					open(ufile,'w').write(json.dumps(userinfo,indent=2))
				else:
					print(f'\t- Already processed \033[32m{uname}\033[0m')
			else:
				print(f'\033[1m[?] Missing file: \033[31m{ufile}\033[0m]')
	


if __name__ == '__main__':
	main()
