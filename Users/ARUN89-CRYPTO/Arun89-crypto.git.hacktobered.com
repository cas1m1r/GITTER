======================: FILES :======================
======================: BRANCHES :======================
======================: LOGINFO :======================
commit 4cec9b39b8adb4b16648bf6880beb250b1c5985c
Author: Ankit Kashyap <ankitwww@gmail.com>
Date:   Tue Oct 11 23:56:21 2022 -0700

    Update README.md

commit 30f691b1c378540c8cd13824cefb1fd4528a34fa
Author: Pedro Augusto <Pedro.Augusto@integrate.com>
Date:   Wed Oct 12 01:09:46 2022 -0300

    hotfix: remove share button (#20)
    
    * hotfix: remove share button
    
    * hotfix: remove button in the png

commit 882dc9a092196f9398cbc0a7ee4d075ffba8aa5a
Author: Tinu Vanapamula <tinuvanapamula@gmail.com>
Date:   Tue Oct 11 17:52:19 2022 -0700

    add sign out on the mobile navbar (#18)

commit 908d574bf634dc83d8bb19a2d34d45d4b7672a62
Author: Ankit Kashyap <ankitwww@gmail.com>
Date:   Tue Oct 11 12:19:25 2022 -0700

    Updated Readme for cheer card screenshot

commit e94c5a7d019fa9a8e4cc1172e8a3c095e7df09ae
Author: Ankit Kashyap <ankitwww@gmail.com>
Date:   Tue Oct 11 12:00:45 2022 -0700

    New Card implementation

commit 1911c8074fc2a3fbde61ed3595c6e47ad6e6751d
Author: Ankit Kashyap <ankitwww@gmail.com>
Date:   Tue Oct 11 10:50:56 2022 -0700

    Removed the data logging from the UI

commit ce7801ecafdc7ef31419ab2e8ecd226150e778f9
Author: Ankit Kashyap <ankitwww@gmail.com>
Date:   Tue Oct 11 00:18:50 2022 -0700

    Save Authenticated user's details to MongoDB (#15)
    
    * Capture user sign up to a DB
    
    * Updated ReadMe for MongoDB usage
    
    * downgrade next-auth package version

commit 748e4800008ddaa68aa9ee8a548496aec8134ae4
Author: Ankit Kashyap <ankitwww@gmail.com>
Date:   Mon Oct 10 18:38:16 2022 -0700

    Update README.md

commit 8246d4c0f09125d281432f8fee6555cc6c7ef21a
Merge: 3bd6eda acde12d
Author: Ankit Kashyap <ankitwww@gmail.com>
Date:   Mon Oct 10 18:21:20 2022 -0700

    Merge branch 'main' of https://github.com/hacktobered/hacktobered.com

commit 3bd6eda606473cff7e4c67599f5b7e2410cc0807
Author: Ankit Kashyap <ankitwww@gmail.com>
Date:   Mon Oct 10 18:17:56 2022 -0700

    Initial User flow demo

commit acde12d606e16422ee1c25d21c7d974beb92c23b
Author: Ankit Kashyap <ankitwww@gmail.com>
Date:   Mon Oct 10 18:13:27 2022 -0700

    Initial User flow demo

commit fcb3553137b8db9cc42be8068e8479ebf317a605
Merge: 8fb423d 40d9ef4
Author: Ankit Kashyap <ankitwww@gmail.com>
Date:   Mon Oct 10 17:17:51 2022 -0700

    Merge pull request #5 from hacktobered/feature/google-analytics
    
    #4 - Implemented Google Analytics #4

commit 40d9ef49effec90b0f5038ca33d97f2f3a6a5054
Author: Ankit Kashyap <ankitwww@gmail.com>
Date:   Mon Oct 10 17:15:43 2022 -0700

    #4 - Implemented Google Analytics #4
    
    Fixes #4

commit 8fb423dd09f6804f3e9c4e72c67980db224b7a2b
Author: Ankit Kashyap <ankitwww@gmail.com>
Date:   Mon Oct 10 16:37:34 2022 -0700

    Fixed Typo in Readme

commit c21730fac53367d0b9e1dbb7bf2947223984aa20
Author: Ankit Kashyap <ankitwww@gmail.com>
Date:   Mon Oct 10 16:18:49 2022 -0700

    Updated Readme.md

commit 6501afbe55a56d93ae58926e60fa6db11c254bf3
Author: Ankit Kashyap <ankitwww@gmail.com>
Date:   Mon Oct 10 14:19:36 2022 -0700

    Update package-lock.json

commit 29056e5b89176314a36b8d8420163d00c75b5c01
Author: Ankit Kashyap <ankitwww@gmail.com>
Date:   Mon Oct 10 14:14:22 2022 -0700

    github action workflow

commit 6157c8bf416a72bb515f9fe1660e90b135a6601a
Author: Ankit Kashyap <ankitwww@gmail.com>
Date:   Mon Oct 10 05:58:49 2022 -0700

    Basic POC App

commit d6aebc2a0b85ca5b34045bb9a17aaebcb9ceb34b
Author: Ankit Kashyap <ankitwww@gmail.com>
Date:   Sat Oct 8 16:41:58 2022 -0700

    Added public assets

commit c6bbd10aba600f18b185dc4c2714d171f91ac90d
Author: Ankit Kashyap <ankitwww@gmail.com>
Date:   Sat Oct 8 13:36:53 2022 -0700

    Ran Create-next-app

commit 43b6495052af993425011589ef2e5d36345fe470
Author: Ankit Kashyap <ankitwww@gmail.com>
Date:   Fri Oct 7 11:43:32 2022 -0700

    Initial commit
