from selenium.webdriver import Firefox, FirefoxOptions
from selenium.webdriver.common.by import By
import selenium
import random
import time
import json
import sys
import re



class SecretSearch:
	def __init__(self):
		self.base = 'https://github.com'
		self.search_css = '.js-site-search-focus'

	
	def folder_setup(self):
		lpath = os.path.join(os.getcwd(),'Users')
		if not os.path.isdir(lpath):
			os.mkdir(lpath)
		return lpath

	def search(self, q):
		browser = Firefox()
		browser.get(f'{self.base}/search?q={q}&type=code')
		



	def search_git(self, browser, q):
		browser.get(self.base)
		browser.find_element(By.CSS_SELECTOR, self.search_css).send_keys(q)
		random_sleep(2)
		browser.find_element(By.CSS_SELECTOR, self.search_css).submit()
		return browser

def random_sleep(max_time:int):
	time.sleep(random.randint(1, max_time) + random.randint(0,max_time))

def random_scroll(browser):
	dims = browser.get_window_size()
	H = int(random.randint(20,95)/100 * dims['height'])
	browser.execute_script(f"window.scrollTo(0,{H})")
	return browser
		
def get_items(item, page):
	return [page[i.start()+len(item):].split('<')[0] for i in re.finditer(item, page)]
