======================: FILES :======================
======================: README CONTENT :======================
# pwndb.sh
DEPRECATED - NO LONGER SUPPORTED - v2 pwndb site is gone.

Script to utilize the v2 pwndb onion site to find leaked passwords.

Problem: Many want to continue using the pwndb database to find leaked passwords. However, Tor is no longer supporting v2 addresses after version 11 and no one seems to have found a v3 onion for pwndb (if you have let me know :) ).

Solution: 
1. Download the version 10.5.10 of Tor browser from one of these locations: 
* Archive.org https://web.archive.org/web/20211104213819if_/https://dist.torproject.org/torbrowser/10.5.10/tor-browser-linux64-10.5.10_en-US.tar.xz
* If Tor hasn't taken it down yet, here: https://dist.torproject.org/torbrowser/10.5.10/
* Download the version 10.5.10 of Tor browser from my Google Drive (yikes, I know I wouldn't trust me either. See issues where 3rd party has validate my hash values) https://drive.google.com/file/d/1_IkwqPBhk03Hy4E1BO0w1r_UYprb7mNz/view, 

2. Un-zip that son of a gun somewhere on your device.
3. Start the browser the first time, turn off automatic updates and check the box to automatically connect to Tor.
4. Within the pwndb.sh script, replace the location of your start-browser launcher with the location of your browser launcher. 
5. Make your script executable (chmod +x) and profit. 

Troubleshooting:
* My browser won't start - you probably didn't put the file path in correctly. Check there.
* Not getting any results or connection errors - your Tor browser might be running on a different SOCKS port than mine. Run the curl command by itself with the browser running to make sure its successfully connecting. If it isn't run a netstat to figure out what port your Tor browser is running on.

Hope this helps and you enjoy.

I might make the script more robust to auto detect ports and such but let's see if anyone uses this at all first.
====================== GIT HISTORY: ======================
0631b36 HEAD@{0}: clone: from https://github.com/machevalia/pwndb.sh
commit 0631b36e7279472556e89e09197424bfb18ea195
Author: Machevalia <36945847+machevalia@users.noreply.github.com>
Date:   Mon Aug 29 14:44:07 2022 -0400

    Update README.md

commit a67be6d2315e446ca461d584db0ddd14bf2f64f2
Author: Machevalia <36945847+machevalia@users.noreply.github.com>
Date:   Mon Jan 10 16:16:20 2022 -0500

    Update README.md
    
    added archive.org link

commit 0bf36ac0ff69532d7bbf1df702f09eff892b27e2
Author: Machevalia <36945847+machevalia@users.noreply.github.com>
Date:   Wed Dec 15 16:09:18 2021 -0500

    Update README.md

commit 0348d124b196f90c67387da8a3744474210a96a0
Author: Machevalia <36945847+machevalia@users.noreply.github.com>
Date:   Wed Dec 15 16:04:42 2021 -0500

    Update README.md

commit 73fc085de192948f1e654ef8eb65cb0138814cb5
Author: Machevalia <36945847+machevalia@users.noreply.github.com>
Date:   Wed Dec 15 16:04:30 2021 -0500

    Create pwndb.sh

commit e28b9c2545b96138a707c9e4c3e0f198a950d33f
Author: Machevalia <36945847+machevalia@users.noreply.github.com>
Date:   Wed Dec 15 16:02:58 2021 -0500

    Update README.md

commit 7a8749a3dfad29e39c04b54c39933c9efe396ca9
Author: Machevalia <36945847+machevalia@users.noreply.github.com>
Date:   Wed Dec 15 15:53:41 2021 -0500

    Update README.md

commit d31fdd3b08d41dd48c07ebd7575e1b7f867e7798
Author: Machevalia <36945847+machevalia@users.noreply.github.com>
Date:   Wed Dec 15 15:49:35 2021 -0500

    Initial commit
