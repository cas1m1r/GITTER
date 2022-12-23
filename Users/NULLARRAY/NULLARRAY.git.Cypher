======================: FILES :======================
Cypher
├── bootlocker
│   ├── boot.asm
│   └── boot.bin
├── CNC
│   ├── CNC
│   │   ├── admin.py
│   │   ├── apps.py
│   │   ├── __init__.pyc
│   │   ├── login
│   │   │   └── login.html
│   │   ├── models.py
│   │   ├── tests.py
│   │   ├── views.py
│   │   └── views.pyc
│   ├── manage.py
│   └── root_command
│       ├── __init__.pyc
│       ├── settings.py
│       ├── settings.pyc
│       ├── urls.py
│       ├── urls.pyc
│       ├── wsgi.py
│       └── wsgi.pyc
├── cyphermain.py
├── decrypt.py
├── LICENSE
└── README.md

5 directories, 22 files
======================: README CONTENT :======================
# Cypher

Cypher is a proof of concept ransomware which implements the PyCrypto module and uses gmail(Currently) as a simple command and control server.
It is a work in progress as of yet and i will be releasing updates periodically depending on a couple of factors

# Operation

Cypher operates by generating a unique client ID for each box that has been infected. The client ID and encryption key will be sent via email to a gmail adress by leveraging python's SMTP lib. The new version of Cypher will give the operator the choice to pick between gmail and the C&C infrastructure that comes with the finished project, namely a web application to generate and store key pairs together with client IDs. If the operator chooses to employ the Cypher web app the ransomware will contact via HTTP by leveraging the Mechanize lib.

After Cypher has enumerated the files we wish to encrypt the multiprocessing and PyCrypto libs are employed to do the actual encrypting. I opted to use the multiprocessing lib to speed up the encryption process.

Finally Cypher will write out a README note and the client ID which would have to be relayed to the operator
in order to retrieve the proper decrypting binary and key respectively.

# Update

I have added some logic to have the ransomware log in to the web app with the Mechanize lib. As of yet functionality to retrieve a key from the web app and to post the client ID have not been implemented. SMTP is still available and in the near future optional depending on the preference of the operator.

I am setting up a web application as an alternative C&C mechanism, in keeping with the Python theme of this project i am employing the Django framework for the web app. Commits will be pushed to the repo in due time.

The latest version of the encryption module adds bootlocker functionality by attempting to overwrite the MBR with a custom bootloader.
Shoutout to NO-OP for his contribution in this regard. I've added the source code together with boot.bin for illustrative purposes.  

# To do

* Extensive and multi-platform testing.

* ~~Write decrypting module.~~

* Functionality to restore MBR

* Designing and developing a more secure C&C mechanism.
  * ~~Possibly HTTP in favor of SMTP~~ and;
  * Web App to dynamically provide encryption keys in favor of local generation

# Want to contribute?

I'd be more than willing to collaborate on this and if you wish to contribute feel free to open an issue or a pull request and we may discuss the details and/or ideas we could work on and you might want to suggest.



![alt tag](https://pbs.twimg.com/media/CfJsdtPWsAEc-Gs.jpg)
 
### Note 

Development of C&C web application has been postponed for the time being. If you want to get creative i would recommend [this fork](https://github.com/NullArray/Ransom) or [this original](https://github.com/filtration/Ransom) web application written in PHP with Laravel by my friend [Filtration](https://github.com/filtration). It is compatible with Cypher with a little tinkering.

Furthermore, someone seems to have uploaded the stub for the main Cypher file to Virus Total. You can check it out by clicking [here](https://www.virustotal.com/en/file/93fbdc903478e94596c083099c0adc1bb929f39894cc3782e19ff501339d0746/analysis/). For testing purposes i'd be interested to see detection rates for the Windows variant once it's encoded with someting like [peCloakCapstone](https://github.com/v-p-b/peCloakCapstone) or [PeCloak](https://www.securitysift.com/pecloak-py-an-experiment-in-av-evasion/). That is of course after the main Python file has been compiled to exe with Py2Exe or Pyinstaller.

Also, if you have any pull requests to submit please feel free to do so. Open Source collaboration on this Ransomware remains to be of import to me.

Thanks.
====================== GIT HISTORY: ======================
25970a8 HEAD@{0}: clone: from https://github.com/NullArray/Cypher
commit 25970a8a2710207d65757c9ad75c2685b34e89db
Author: NullArray <NullArray@users.noreply.github.com>
Date:   Tue Oct 3 13:53:45 2017 +0200

    Update README.md

commit 3317dd9f48b7737105627f2dc74681fb3c8eae4c
Author: NullArray <NullArray@users.noreply.github.com>
Date:   Fri Sep 29 21:22:42 2017 +0200

    Update README.md

commit 2322f4282fe010081fd8239417f1b350e1aaf897
Author: NullArray <NullArray@users.noreply.github.com>
Date:   Thu Sep 28 14:42:49 2017 +0200

    Update README.md

commit 648c5b405d7eeebe0d18df4af3fa71ca6acc7d5c
Author: NullArray <NullArray@users.noreply.github.com>
Date:   Wed Sep 6 13:54:53 2017 +0200

    Update cyphermain.py

commit 6f609d57f2ddfda2f967bacdf0a14096c9f1cd32
Author: NullArray <NullArray@users.noreply.github.com>
Date:   Wed Sep 6 13:54:03 2017 +0200

    Update cyphermain.py

commit a0fdea860a2a3e666ae4ff1ac88b71c52c0494cf
Author: NullArray <NullArray@users.noreply.github.com>
Date:   Wed Sep 6 13:53:41 2017 +0200

    Update cyphermain.py

commit 2adc8bb4f976a63c7f8eaa531f4610bcf1586e29
Author: NullArray <NullArray@users.noreply.github.com>
Date:   Wed Sep 6 13:52:17 2017 +0200

    Update cyphermain.py

commit 99685904a7d6977b9838d7e58eab0e24b0fafef9
Author: NullArray <NullArray@users.noreply.github.com>
Date:   Tue Jun 6 21:39:06 2017 +0200

    Update README.md

commit c6765976e594d406480156d5a8d4c0b2dec9415d
Author: NullArray <NullArray@users.noreply.github.com>
Date:   Wed May 31 18:38:10 2017 +0200

    Create LICENSE

commit f7b0b18939c95b9b10805dd3e43d76e004a42290
Author: NullArray <NullArray@users.noreply.github.com>
Date:   Sun Apr 9 00:09:11 2017 +0200

    Update README.md

commit 048e171eac6d42dd618252aa9f4b86d3136e0b72
Author: NullArray <NullArray@users.noreply.github.com>
Date:   Mon Apr 3 15:09:48 2017 +0200

    Update README.md

commit c2f10896e8cc6df17b1394441b7f3aa0d8f3702f
Author: NullArray <NullArray@users.noreply.github.com>
Date:   Fri Mar 3 13:07:42 2017 +0100

    Update cyphermain.py

commit bc69a0ffdaff8568c61dec555f6754d4dd686da6
Author: NullArray <NullArray@users.noreply.github.com>
Date:   Fri Mar 3 13:06:49 2017 +0100

    Update cyphermain.py

commit ae8684a5a1aa07c93a7b11d12f6c56c8d555eff5
Author: NullArray <NullArray@users.noreply.github.com>
Date:   Fri Mar 3 13:04:47 2017 +0100

    Update cyphermain.py

commit 91f4e94a549588f668f561b2a0be7ad125e5fc66
Author: NullArray <NullArray@users.noreply.github.com>
Date:   Fri Mar 3 05:27:58 2017 +0100

    Update cyphermain.py

commit 7ca9f39775f63b4a5dd5d4198eb02c57cbd269f3
Author: NullArray <NullArray@users.noreply.github.com>
Date:   Thu Feb 23 18:34:02 2017 +0100

    Update cyphermain.py

commit 3f05b65b361105087219a7bb28ac45ec7d5dd52d
Author: NullArray <NullArray@users.noreply.github.com>
Date:   Wed Jan 11 19:57:48 2017 +0100

    Update cyphermain.py

commit f746caf122c9631b6945eeab17829bca5c2b27dd
Author: NullArray <NullArray@users.noreply.github.com>
Date:   Wed Dec 14 20:32:48 2016 +0100

    Update cyphermain.py

commit f884a73d1cd3e7fba06c5909d80f8113c0a11a0f
Author: NullArray <NullArray@users.noreply.github.com>
Date:   Wed Dec 14 20:26:22 2016 +0100

    Update README.md

commit 01ce719b31b04d656283eb20350db6706d8c609e
Author: NullArray <NullArray@users.noreply.github.com>
Date:   Tue Dec 13 02:02:25 2016 +0100

    Update README.md

commit 5f4b1b9139ab169e13a7672ea5e329f3736dc217
Author: NullArray <NullArray@users.noreply.github.com>
Date:   Tue Dec 13 01:56:21 2016 +0100

    Update README.md

commit 4fc08ae91b4d78801bf6f1fddbf73447eea5f638
Author: NullArray <NullArray@users.noreply.github.com>
Date:   Mon Dec 12 22:16:20 2016 +0100

    Update cyphermain.py

commit 3b511eef10462e756121250094cfdf3d33c278d4
Author: NullArray <NullArray@users.noreply.github.com>
Date:   Mon Dec 12 22:10:03 2016 +0100

    Update cyphermain.py

commit 9ea97bd17eb46aadd9d08d825c64be683fed2630
Author: NullArray <NullArray@users.noreply.github.com>
Date:   Mon Dec 12 22:08:05 2016 +0100

    Update cyphermain.py

commit 68f27c87c4d2b2a2022cce9cf8abf19119b0888d
Author: NullArray <NullArray@users.noreply.github.com>
Date:   Mon Dec 12 22:01:19 2016 +0100

    Update keygen

commit b1f67a5d511a607e8d720e01181a836af5999faa
Author: NullArray <NullArray@users.noreply.github.com>
Date:   Mon Dec 12 19:44:59 2016 +0100

    Update README.md

commit b7a7c69334349047c7a1bd4df2d34b3bf41f88ed
Author: NullArray <NullArray@users.noreply.github.com>
Date:   Mon Dec 12 19:27:24 2016 +0100

    Shebang line.

commit c4a38851478a72e3eeaa28bf28826e07fbe58c47
Author: NullArray <NullArray@users.noreply.github.com>
Date:   Mon Dec 12 19:26:46 2016 +0100

    Update in preparation of SMTP -> HTTP

commit 0d253433bcbf5f0a7311746b78411a51f67b82e4
Author: NullArray <NullArray@users.noreply.github.com>
Date:   Thu Dec 8 19:29:46 2016 +0100

    changed `push` to `append`

commit 50aecefc03517cd3b9faad4d6824d6852b1364b4
Author: NullArray <NullArray@users.noreply.github.com>
Date:   Thu Dec 8 19:29:08 2016 +0100

    changed `push` to `append`

commit 2386fdac7a5a1c663d3fc72f04df0d814a115baa
Author: NullArray <NullArray@users.noreply.github.com>
Date:   Thu Dec 8 17:51:25 2016 +0100

    Update login.html

commit 1fe09747ef62fadbbc7d0602216d80a01004b33c
Author: NullArray <NullArray@users.noreply.github.com>
Date:   Thu Dec 8 17:49:51 2016 +0100

    Delete db.sqlite3

commit d64e9f33516ebe9158841b56e6dea808dedbef3b
Author: NullArray <NullArray@users.noreply.github.com>
Date:   Thu Dec 8 17:49:08 2016 +0100

    Add files via upload

commit b05efcf4a7eed41c7f19b7d0a69366dcd60d66d3
Author: NullArray <NullArray@users.noreply.github.com>
Date:   Sat Dec 3 22:40:29 2016 +0100

    Update README.md

commit dc0b217eadd00ea38b8c32cbc7ad27083c3d91a2
Author: NullArray <opsec@null.net>
Date:   Sun Nov 6 22:14:24 2016 +0100

    Update README.md

commit c18013bf379cb6a2217e253396134a7fc35199ba
Author: NullArray <opsec@null.net>
Date:   Sun Nov 6 21:42:43 2016 +0100

    Update README.md

commit c3b9c861a9744a6f801134e75b3e50e9192b16ae
Author: NullArray <opsec@null.net>
Date:   Sun Nov 6 21:42:00 2016 +0100

    Update README.md

commit 739030f0d8028769a051be3a9305d7078074cc91
Author: NullArray <opsec@null.net>
Date:   Sun Nov 6 21:41:25 2016 +0100

    Update README.md

commit 9a2b59671466308935418fd95d3506f0caf094c9
Author: NullArray <opsec@null.net>
Date:   Sun Nov 6 21:41:14 2016 +0100

    Update README.md

commit d50862fb84a1a588b4feefc09bc1951d08228a93
Author: NullArray <opsec@null.net>
Date:   Sun Nov 6 21:40:47 2016 +0100

    Update README.md

commit 3361006c1819f55559c8b3d0aa4ca5f6e5f1262a
Author: NullArray <opsec@null.net>
Date:   Sun Nov 6 21:40:25 2016 +0100

    Update README.md

commit 55c7eacc3085b2d2a992082eeb2c83e467bf6521
Author: NullArray <opsec@null.net>
Date:   Sun Nov 6 21:39:19 2016 +0100

    Update README.md

commit 4356c1ceffa9cae050a5d9fd58b6a3bee98ba770
Author: NullArray <opsec@null.net>
Date:   Sun Nov 6 21:38:59 2016 +0100

    Update README.md

commit fdee2e20e1810bf59680d1f03f3a62799b9d1199
Author: NullArray <opsec@null.net>
Date:   Sun Nov 6 21:38:44 2016 +0100

    Update README.md

commit cde2e076465f3fa0ce61477a069df46228466484
Author: NullArray <opsec@null.net>
Date:   Thu Nov 3 01:56:13 2016 +0100

    Update cyphermain.py

commit 1df40ad60a75f8ffaea43db08430e66f86593b5a
Author: NullArray <opsec@null.net>
Date:   Tue Nov 1 16:06:11 2016 +0100

    Update decrypt.py

commit e9b124cae96d04e9acebe469c74052a8cccaee0a
Author: NullArray <opsec@null.net>
Date:   Tue Nov 1 14:24:47 2016 +0100

    Update README.md

commit 6be30774ca52c6ba69ac16a7f3d4e696af62c5c4
Author: NullArray <opsec@null.net>
Date:   Tue Nov 1 00:41:21 2016 +0100

    Update decrypt.py

commit 4f3d703ad20154b3b8bb36d66df8c3189db5e456
Author: NullArray <opsec@null.net>
Date:   Tue Nov 1 00:39:04 2016 +0100

    Update decrypt.py

commit d75c5b19d7c5e256f5ca9bb50e6b84ae27e50606
Author: NullArray <opsec@null.net>
Date:   Tue Nov 1 00:33:17 2016 +0100

    Update README.md

commit f8f1513cf8e4893afe08a34eb5fe927e48bb0c9f
Author: NullArray <opsec@null.net>
Date:   Tue Nov 1 00:33:03 2016 +0100

    Update README.md

commit 4b15cb6d4ed4a7593cabbaa62bcf6074c9d0d22e
Author: NullArray <opsec@null.net>
Date:   Tue Nov 1 00:30:45 2016 +0100

    Decrypting module

commit 6190961a37eb1c2770ef6f91176773a2fadcfd4c
Author: NullArray <opsec@null.net>
Date:   Tue Nov 1 00:29:20 2016 +0100

    Decrypting module.

commit f1596450cf0d2f1ac8699a95414263bd741cee80
Author: NullArray <opsec@null.net>
Date:   Tue Nov 1 00:28:11 2016 +0100

    Update decrypt.py

commit fd90b44ce0d3dff4f4dea7dd65dd4caddf8d8d95
Author: NullArray <opsec@null.net>
Date:   Tue Nov 1 00:27:15 2016 +0100

    decryption module

commit 9495180d02e42f66505a5659b12bbf4776166390
Author: NullArray <opsec@null.net>
Date:   Mon Oct 31 22:21:16 2016 +0100

    Update cyphermain.py

commit 104e79cfe71089211ec290a01f264541bae88ed0
Author: NullArray <opsec@null.net>
Date:   Tue Sep 20 09:48:34 2016 +0200

    ID generator return value

commit bf9ef9217c29bad7fe8e713688c15472113b6acc
Author: NullArray <opsec@null.net>
Date:   Tue Aug 30 18:31:13 2016 +0200

    Update cyphermain.py

commit 7a5bb0eafdb4cd2cbe304e54cdd0933b67c07b37
Author: NullArray <opsec@null.net>
Date:   Tue Aug 30 18:25:31 2016 +0200

    Update cyphermain.py

commit 3973f95b21dd4cdf32c9fdab2a1c1be01fd1b2f6
Author: NullArray <opsec@null.net>
Date:   Mon Aug 29 16:59:41 2016 +0200

    Update README.md

commit 196cd5302bea74d5860d36e5ea4f34f6859b14e6
Author: NullArray <opsec@null.net>
Date:   Mon Aug 29 16:40:02 2016 +0200

    minor update

commit 56147a09119080d45ff4dea7efa4f1640bb91916
Author: NullArray <opsec@null.net>
Date:   Wed Aug 17 19:35:12 2016 +0200

    Update cyphermain.py

commit 2f97aea2c77b3bd323cc3aaf3a83e564d12a32c8
Author: NullArray <opsec@null.net>
Date:   Fri Aug 12 09:04:36 2016 +0200

    Update boot.asm

commit 516b702904f66e20f8f55569c44aa0bf7cc818d8
Author: NullArray <opsec@null.net>
Date:   Fri Aug 12 09:04:27 2016 +0200

    Update boot.asm

commit 930a197291ccc6808b1a137543cf9d0b4f9ab010
Author: NullArray <opsec@null.net>
Date:   Fri Aug 12 09:04:16 2016 +0200

    Update boot.asm

commit fe9b69e0c5cad85a475637907f6d7a03d34c84e0
Author: NullArray <opsec@null.net>
Date:   Fri Aug 12 09:04:03 2016 +0200

    Update boot.asm

commit d0ff9a9617d0ad7d0910355bf89e15ae0d05ce29
Author: NullArray <opsec@null.net>
Date:   Fri Aug 12 09:03:53 2016 +0200

    Update boot.asm

commit d77a3d7bd22656c24a3114dfea4abea155259790
Author: NullArray <opsec@null.net>
Date:   Fri Aug 12 09:03:35 2016 +0200

    Update boot.asm

commit b85d080948068a53d532f94bd3d5f00a2174ec36
Author: NullArray <opsec@null.net>
Date:   Fri Aug 12 09:03:12 2016 +0200

    Update boot.asm

commit 5a381b72a579ed5bd6b343aa80348c6a39b4a815
Author: NullArray <opsec@null.net>
Date:   Fri Aug 12 09:02:46 2016 +0200

    Update boot.asm

commit d45326fc965e9c7ac0f5ee2f0eefa2acdbe95812
Author: NullArray <opsec@null.net>
Date:   Fri Aug 12 06:07:06 2016 +0200

    Update cyphermain.py

commit 2ad088e30a1118c3f6d458233b199b15d39529d2
Author: NullArray <opsec@null.net>
Date:   Fri Aug 12 06:06:34 2016 +0200

    Update cyphermain.py

commit aba30c7ebdd18215d954225b9f9f8d57fd00f243
Author: NullArray <opsec@null.net>
Date:   Fri Aug 12 01:03:52 2016 +0200

    Update cyphermain.py

commit 7ead21f066c8ec64f8e47022080cbc347f17a0ea
Author: NullArray <opsec@null.net>
Date:   Fri Aug 12 00:53:22 2016 +0200

    Update boot.asm

commit a50db95ede07e343e96eb51cbbaa44a4f0af1bf1
Author: NullArray <opsec@null.net>
Date:   Fri Aug 12 00:47:37 2016 +0200

    Update cyphermain.py

commit 52641941965d0bfbf3c15b4286fd4361c26a1f31
Author: NullArray <opsec@null.net>
Date:   Thu Aug 11 18:43:36 2016 +0200

    Update cyphermain.py

commit 962cefc5735c66b6ed3ba97be48a2043c15da1ae
Author: NullArray <opsec@null.net>
Date:   Thu Aug 11 18:43:03 2016 +0200

    Update cyphermain.py

commit 5a0d7ca41ce0c39ae37aadbbf8bab0de73fa04d0
Author: NullArray <opsec@null.net>
Date:   Thu Aug 11 18:39:42 2016 +0200

    Update cyphermain.py

commit 011b7545a84b147b1f4d33f2ab2f8904ebf2b462
Merge: 28c9c2c f13fd14
Author: NullArray <opsec@null.net>
Date:   Sun Aug 7 16:39:34 2016 +0200

    Added bootlocker

commit 28c9c2c264c1386a4c1aef6442e59c09f463af5f
Author: NullArray <opsec@null.net>
Date:   Sun Aug 7 16:31:15 2016 +0200

    Added bootlocker functionality

commit f13fd14bb768617a99192d0fca039e969a4b51de
Author: NullArray <opsec@null.net>
Date:   Sat Aug 6 00:09:56 2016 +0200

    Update cyphermain.py

commit d20f36f5258509eab40aaca198d2456303bacc25
Author: NullArray <opsec@null.net>
Date:   Fri Aug 5 22:34:37 2016 +0200

    Fixed a bug enumerating files.

commit 1e0d05d2519607c924f635b0a962c46996ff0780
Author: NullArray <opsec@null.net>
Date:   Fri Aug 5 22:30:17 2016 +0200

    Fixed a bug enumerating files by using a tuple.

commit 14e81c5e005a689c0cbaeb195d101be2638fc389
Author: NullArray <opsec@null.net>
Date:   Fri Jul 29 06:22:18 2016 +0200

    Update cyphermain.py

commit 251569a81fa79451857998caaa51b25d0d9bd108
Author: NullArray <opsec@null.net>
Date:   Mon Jul 25 05:46:47 2016 +0200

    Update cyphermain.py

commit ef1cfbaddd009fc19e132d98e6ca217fe3fba30a
Author: NullArray <opsec@null.net>
Date:   Mon Jul 25 05:43:41 2016 +0200

    Update cyphermain.py

commit a7d4bfc3afd7c7f81b486311ec62b31bea5e843b
Author: NullArray <opsec@null.net>
Date:   Mon Jul 25 05:42:54 2016 +0200

    Update cyphermain.py

commit e3c22cfffc245d75b1fc896ce20482f23f07c328
Author: NullArray <opsec@null.net>
Date:   Mon Jul 25 05:41:02 2016 +0200

    Update cyphermain.py

commit a7ee8e67959619623940dcd193e440b2d4fd005c
Author: NullArray <opsec@null.net>
Date:   Sun Jul 24 19:18:18 2016 +0200

    Update README.md

commit d5397419d5d3896f5b14314d05f0895b5edbfe58
Author: NullArray <opsec@null.net>
Date:   Sun Jul 24 19:18:03 2016 +0200

    Update README.md

commit 4d91f2157448a967e9d396ee789326dc8003b628
Author: NullArray <opsec@null.net>
Date:   Sat Jul 23 05:53:25 2016 +0200

    Update cyphermain.py

commit 74ba4784f6c770d3b3b8cac598df10cde4f8bd73
Author: NullArray <opsec@null.net>
Date:   Sat Jul 23 05:44:39 2016 +0200

    Update README.md

commit ab8ae9e6e1c301e3a3ac5ceee1ca5dca2681334f
Author: NullArray <opsec@null.net>
Date:   Thu Jul 21 22:31:34 2016 +0200

    Update cyphermain.py

commit 186850e6f29876df95332925ecb8ede8ef622324
Author: NullArray <opsec@null.net>
Date:   Wed Jul 20 02:36:18 2016 +0200

    Update README.md

commit ce71804fd07d75026a6d9878b57a00743d8a58a8
Author: NullArray <opsec@null.net>
Date:   Wed Jul 20 02:34:08 2016 +0200

    Update README.md

commit fcc5a598eca187b6764e2ee7c45613f7df07d7a7
Author: NullArray <opsec@null.net>
Date:   Wed Jul 20 02:33:49 2016 +0200

    Update README.md

commit 85f29ab25211f87bb6424e3ea1cc98b64f81f0ad
Author: NullArray <opsec@null.net>
Date:   Wed Jul 20 02:06:11 2016 +0200

    First Commit
