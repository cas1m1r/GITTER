======================: FILES :======================
======================: README CONTENT :======================
Python3 script that downloads all cracked passwords from leaks on temp.hashes.org and merges them into a single wordlist.txt file.
When wordlist.txt already exists, renames it, creates the new one and diffs them, resulting in diff.txt that contains all the new words between the two files.
Meant to run on linux with python3.

Dependencies:

pip install requests,tqdm

Latest time the script was run on 28/09/2020 
* Retrieved unique passwords 878.610.690 
* breachcompilation unique passwords 384.153.427 
====================== GIT HISTORY: ======================
8ffeaf1 HEAD@{0}: clone: from https://github.com/GKNSB/hashes.org.py
commit 8ffeaf10901ed0885dd7e6db5fd7832ec7985aad
Author: GKNSB <manoshatzis@gmail.com>
Date:   Fri Apr 9 21:55:58 2021 +0300

    Fix fix fix

commit 8bda9605c481ed0770a2b956fe6fe2948eeeb342
Author: root <root@DESKTOP-Q1H1HRR.localdomain>
Date:   Mon Sep 28 16:40:13 2020 +0300

    Cleanup

commit ce23109ad3cdef635a86cb9d7e26d40253bc310a
Author: root <root@DESKTOP-Q1H1HRR.localdomain>
Date:   Fri Sep 25 22:15:03 2020 +0300

    Rewrite

commit 72110910965c9dcea4b82cbd95f559c5a76ae714
Merge: bc52a22 0b99fc9
Author: GKNSB <manoshatzis@gmail.com>
Date:   Fri Sep 25 15:20:57 2020 +0300

    Merge pull request #1 from g4uss47/master
    
    Fixed urls

commit 0b99fc9029aca40faf09f17fb338be922b61e081
Author: g4uss47 <10001343+g4uss47@users.noreply.github.com>
Date:   Fri Sep 25 11:29:46 2020 +0200

    Fixed urls
    
    fixed urls that made the script stop working

commit bc52a225436d130dafe79fe48847f399f8dd9052
Author: GKNSB <yeah@right.com>
Date:   Sat Oct 27 19:20:58 2018 +0300

    Added some description

commit 39082ba775315f1b41c495abd1fba32df3b04d7b
Author: GKNSB <yeah@right.com>
Date:   Sat Oct 27 19:08:40 2018 +0300

    Keeping wordlist from last run and diff

commit ca261b4b8e6a559c90c95a11d0ba80ef3d8affaa
Author: GKNSB <yeah@right.com>
Date:   Sun Oct 21 23:37:59 2018 +0300

    Initial Commit
