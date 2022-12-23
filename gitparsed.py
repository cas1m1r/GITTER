import random
import json
import sys
import os

class Repo:
	def __init__(self, fpath):
		if not os.path.isfile(fpath):
			print(f'\033[1mCANNOT FIND FILE:\033[31m{fpath}\03[0m')
			self.parsed = False
			return
		rawlines = self.load_repo_log(fpath)
		self.parsed = True
		self.name = fpath.split('.')[-1]
		self.files = self.pull_file_list(rawlines)
		self.info = self.pull_commit_details(rawlines)

	def load_repo_log(self, fp):
		rawlines = []
		with open(fp, 'r') as f:
			rawlines = f.readlines()
		f.close()
		return rawlines

	def pull_file_list(self, loglines):
		files = []
		ftree_symbols = ['├','└']
		for line in loglines:
			for symbol in ftree_symbols:
				if line.find(symbol)>=0:
					files.append(line.split(' ')[-1].replace('\n',''))
		return files

	def pull_commit_details(self, loglines):
		authors = []
		commits = []
		dates = []
		for line in loglines:
			if line.find('Author:')==0:
				authors.append(line.split('<')[1].split('>')[0].replace('\n',''))
			if line.find('Date:')==0:
				dates.append(line.split('Date:')[-1].replace('\n',''))
			if line.find('commit')==0:
				n = line.split(' ')[1]
				# Maybe check length to be sure its not a commit message with word commit?
				commits.append(n)
		authors = list(set(authors))
		return {'emails': authors, 'dates': dates, 'commits': commits}



def create_repo_str(uname, repo):
	return f'Users/{uname.upper()}/{uname.upper()}.git.{repo}'


