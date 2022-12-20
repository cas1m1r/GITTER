from selenium.webdriver import Firefox, FirefoxOptions
from selenium.webdriver.common.by import By
import selenium
import random
import urllib
import time
import json
import sys
import re
import os

class GitStuff:
	def __init__(self):
		self.base = 'https://github.com'
		self.search_css = '.js-site-search-focus'
		# make folder for browsing user
		self.data_folder = self.folder_setup()		
		self.users_seen = []
		
	
	def folder_setup(self):
		lpath = os.path.join(os.getcwd(),'Users')
		if not os.path.isdir(lpath):
			os.mkdir(lpath)
		return lpath
	
	def search_git(self, browser, q):
		browser.get(self.base)
		browser.find_element(By.CSS_SELECTOR, self.search_css).send_keys(q)
		random_sleep(2)
		browser.find_element(By.CSS_SELECTOR, self.search_css).submit()
		return browser

	def click_next_page(self, browser):
		browser.find_element(By.CLASS_NAME,'next_page').click()
		random_sleep(1)
		return browser
	
	def visit_user(self,uname):
		browser = Firefox()
		uname = uname.replace('.','').replace('/','').replace(' ','_')
		ufold = os.path.join(os.getcwd(),'Users',uname.upper())
		if not os.path.isdir(ufold):
			os.mkdir(ufold)
		browser.get(f'{self.base}/{uname}')
		# Get Avatar
		random_sleep(1)
		found_im = False
		try:
			av = browser.find_element(By.CSS_SELECTOR,'img.width-full')
			found_im = True
		except selenium.common.exceptions.NoSuchElementException:
			av = browser.find_element(By.CSS_SELECTOR, 'img.avatar:nth-child(1)')
			found_im = True			
			pass
		except:
			pass
		if found_im:
			face = f'avatar_{uname}.png'
			urllib.request.urlretrieve(av.get_dom_attribute('src'),face)
			os.system(f'mv {face} {ufold}/')
			print(f'[+] Saved avatar of {uname}')		
		# create a user summary 
		summary = {}
		# check repository names 
		browser.get(f'{self.base}/{uname}?tab=repositories')
		try:
			repos, browser = self.check_user_repos(uname, browser)
		except selenium.common.exceptions.NoSuchElementException:
			print(f'Issue Parsing {uname} repo page?')
			repos = []
			pass

		if uname not in summary.keys():
			summary[uname] = {'repos':[],'followers':[],'following':[]}
		summary[uname]['repos'] = repos
		# check followers
		browser.get(f'{self.base}/{uname}?tab=followers')
		summary[uname]['followers'] = get_items('<span class="Link--secondary pl-1">',browser.page_source)
		browser = random_scroll(browser)
		# check following
		browser.get(f'{self.base}/{uname}?tab=following')
		browser = random_scroll(browser)
		summary[uname]['following'] = get_items('<span class="Link--secondary pl-1">',browser.page_source)
		browser.close()
	
		# save user summary to user folder
		print(f'[+] Saving JSON summary of {uname} user info ')
		open(f'{ufold}/{uname}.json','w').write(json.dumps(summary, indent=2))
		self.users_seen.append(uname)
		return summary
	
	def check_user_repos(self, user, browser):
		print(f'\033[1m[+] Checking if \033[33m{user}\033[1m has any repositories')
		random_sleep(1)
		browser = random_scroll(browser)
		rlist = '.box-shadow-none > nav:nth-child(1) > a:nth-child(2)'
		browser.find_element(By.CSS_SELECTOR,rlist).click()
		repos = []
		for link in get_items('a href=', browser.page_source):
			if link.find(user) and link.find('codeRepository')>0:
				r = link.split(' ')[0].split(f'/{user}/')[-1].replace('"','')
				repos.append(r)
				print(f'\033[1m\t - repo: {r}\033[0m')
		return repos, browser

def random_sleep(max_time:int):
	time.sleep(random.randint(1, max_time) + random.randint(0,max_time))

def random_scroll(browser):
	dims = browser.get_window_size()
	H = int(random.randint(20,95)/100 * dims['height'])
	browser.execute_script(f"window.scrollTo(0,{H})")
	return browser
		
def get_items(item, page):
	return [page[i.start()+len(item):].split('<')[0] for i in re.finditer(item, page)]

def load_repositories(rpath:str):
	repos = {}
	for f in os.listdir(rpath):
		try:
			if rpath.find('.json'):
				r = f.split('gitrepos_')[1].split('.json')[0]
				repos[r] = json.loads(open(f,'r').read())
		except:
			print(f'Unable to load {f}')
			pass
	return repos

if __name__ == '__main__':
	if '--research' in sys.argv:
		repos = load_repositories(os.getcwd())

		crawler = GitStuff()

		for key in repos.keys():
			print(f'\033[1mExploring Users hosting \033[36m{key}\033[1m repos\033[0m')
			for user in repos[key]:
				if user.upper() not in os.listdir('Users'):
					crawler.visit_user(user)
				else:
					print(f'[>] Skipping {user} (Already Visited)')		
					

