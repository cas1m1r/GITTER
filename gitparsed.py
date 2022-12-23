from gitanalyzed import random_filename, exec, exec_as_script
import random
import json
import sys

class Repo:
	def __init__(self, fpath):
		rawlines = self.load_repo_log(fpath)
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



