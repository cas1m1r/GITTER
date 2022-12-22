# GITTER [Github Threat Extended Recon]
Crawling github for malicious repositories
<img src="https://github.com/cas1m1r/GITTER/blob/main/assets/comfort.gif?raw=true" width="100%"> 


# Step One: Discovery
Using `gitstuff.py` we can search github for keywords and return JSON data organized by username with a list of repositories related to that search term. 

# Step Two: Classification
  - take md5 hashes of the files in repos and check them against known malware.
    o weight the emails in  commits creating these files **very heavily**!
  - check whether the repository mentions the fact there should be malware in README, comments, etc
  - look at network of followers and history of the author's other repositories

# Step Three: Analysis
  - How much each of these things matter seems arbitrary and hard to know, 
  - I think its more about creating a kind of network of the people creating any code malware on github,
    and separating the intentions of that can only be so accurate, especially if they *do add* a README saying
    all the right things. 
      --> but if the correct *intentions* are missing in total for the severity of the code and how much
      effort is put into explaining the purpose of what the code actually does is where the scoring/classification seems relevant. 


      
