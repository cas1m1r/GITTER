from selenium.webdriver import Firefox, FirefoxOptions
from selenium.webdriver.common.by import By
import selenium
import random
import time
import json
import sys
import re

def search_git(query):
	base = 'https://github.com'
	browser = Firefox()
	browser.get(base)
	time.sleep(random.randint(1,2) + random.randint(0,3))
	browser.find_element(By.CSS_SELECTOR, '.js-site-search-focus').send_keys(query)
	time.sleep(random.randint(1,2) + random.randint(0,3))
	browser.find_element(By.CSS_SELECTOR, '.js-site-search-focus').submit()
	time.sleep(random.randint(1,2) + random.randint(0,3))
	users = {}

	adding = True; pages = 0
	while adding:
		try:
			time.sleep((random.randint(0,3) + 0.1 )/0.2653589)
			dims = browser.get_window_size()
			H = int(random.randint(20,95)/100 * dims['height'])
			browser.execute_script(f"window.scrollTo(0,{H})")
			for url in get_items('<a class=', browser.page_source):
				if url.find('/startgazers'):
					u = url.split(' ')[-1].replace('"','')
					if u.find('href=')>=0:
						user = u.split('href=')[-1].split('/')[1:]
						if len(user)>=2:
							uname = user[0].split('>')[0]
							repo = user[1].split(uname)[0].split('>')[0]
							print(f'\033[1mFound a repo \033[31m{repo}\033[0m\033[1m by \033[33m{uname}\033[0m')
							if uname not in users.keys():
								users[uname]=[f'{base}/{uname}/{repo}']
							else:
								users[uname].append(f'{base}/{uname}/{repo}')
						
			# go to next page
			time.sleep(random.randint(3,10)/3.14159 +random.randint(0,3))
			browser.find_element(By.CLASS_NAME,'next_page').click()
			pages += 1
			if pages > 42:
				adding = False
		except KeyboardInterrupt:
			print(f'Moving On...')
			adding = False
			pass
		except selenium.common.exceptions.NoSuchElementException:
			print(f'No more pages...')
			adding = False
			pass
	try:
		browser.close()
	except:
		pass
	return users


def get_items(item, page):
	return [page[i.start()+(len(item)+1):].split('<')[0] for i in re.finditer(item, page)]

if __name__ == '__main__':
	if len(sys.argv) > 1:
		search = ' '.join(sys.argv[1: ])
		results = json.dumps(search_git(search),indent=2)
		open(f'gitrepos_{search.replace("-","_").replace(" ","_")}.json','w').write(results)
