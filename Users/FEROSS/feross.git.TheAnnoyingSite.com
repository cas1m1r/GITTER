======================: FILES :======================
======================: BRANCHES :======================
======================: LOGINFO :======================
commit 9bc5787b0381ec14caccb688d45c7e9d64bb4c8f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jul 13 18:04:17 2021 -0700

    add annoying theremin
    
    Based on PR #2

commit e60d05e4406ac7ab30f3628f1893bf4818f58711
Merge: bac2fe8 121db56
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jul 13 17:48:49 2021 -0700

    Merge pull request #13 from bmeck/patch-1
    
    give CSS just a little bit of blur every so often

commit bac2fe8fc8a7e43dd7e2fc8600962c48419ab4bb
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jul 13 17:46:03 2021 -0700

    Update README.md

commit 28f014c48ac536657af2395d42f024a7e3cfd1c7
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jul 13 17:45:48 2021 -0700

    Update README.md

commit 55f0aa71d907f1e95023eca062e1918748b89ae9
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jun 30 12:17:44 2021 -0700

    Add zero fill to random colors

commit 121db56405c64531d9325a56ea1966d1f41b27ab
Author: Bradley Farias <bradley.meck@gmail.com>
Date:   Tue Jun 22 09:33:12 2021 -0500

    give CSS just a little bit of blur every so often

commit 1cfc4e6c41cb717e4f2289703c21facabf8c0e4c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 20 22:38:26 2021 -0700

    tweaks

commit 988a6c2a5679bfe7fe5558a9d3deb581414281e2
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 20 22:14:13 2021 -0700

    add midi, bluetooth, usb, serial

commit dfac851868e5cb14b7aa65b6389ff1b3922eaec8
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 20 21:46:31 2021 -0700

    Lock the user's pointer, without even being in full screen!

commit 1ca074000bbf65fba70cfd2050e015a5053ca1f3
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 20 21:35:47 2021 -0700

    animate the url with emojis

commit d9e2a8b1cccd7bd3a592d45fc5423dcecd6f0fac
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 20 21:15:24 2021 -0700

    better close window blocking

commit 2178a404591f61cdcb63a4394e52a7086acc8e9a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 20 21:15:03 2021 -0700

    better picture in picture support

commit f7d29d9f34e783f51a0e0c87e50259435a5e0721
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 20 21:14:51 2021 -0700

    Change the theme color of the browser in a loop.

commit a5c0d5e7c4a903083623a294e9b53dd6febdacb1
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 20 20:50:34 2021 -0700

    standard

commit 98afd2e1d51a6ac3792f780dd16a9f7b52135e36
Merge: cd2247f bd66328
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Nov 5 01:29:29 2020 +0100

    Merge pull request #11 from Jack5079/master
    
    Vibrate controllers, too.

commit cd2247fa4fd6fa2a67d982c2400b89b7a802ee25
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Oct 30 11:56:02 2020 -1000

    ecstatic@4

commit bd6632865cb77794e61db680372005202f69156a
Author: Jack <29169102+Jack5079@users.noreply.github.com>
Date:   Sun Feb 2 21:24:17 2020 -0500

    Update index.js

commit 6473340eddcb14bdf2f6768baa951ce401aa998e
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jun 28 18:22:31 2019 -0700

    Update nginx.conf

commit 17ceb6b74291e3884791d30ce9f6f51d599a7854
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jun 27 16:39:48 2019 -0700

    Update package.json

commit d6c69fb312e82c719705b998ec41b5b709a7cada
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jun 27 16:39:33 2019 -0700

    Update nginx.conf

commit 23b183c327c9c59328e48eebdd362a19a9c0a51a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Nov 18 22:54:24 2018 -0500

    readme

commit e87477b40c100790c5d87d0d9fdaa835fcc0cb3a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Nov 18 22:51:40 2018 -0500

    readme

commit 4bf032ee6c0d8d19bfc2ce9a263deaed9d66280f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Nov 18 22:47:28 2018 -0500

    thumbnail

commit 88e20438a9eb84873454e866d77f354dc7af18d9
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Nov 18 22:45:52 2018 -0500

    link to JSConf US talk

commit d6a0f229fcc0c46ee4439e5e28988b6d8acb1959
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Aug 30 02:08:55 2018 -0700

    add OCSP stapling

commit 6d7da6222a0be4d6c10409756c990f29d5012c9a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Aug 20 18:24:12 2018 -0700

    changes

commit ce570ef263ba2977fbc0053d277cd9e884d98eec
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Aug 20 18:20:07 2018 -0700

    add Speech Synthesis API (unmutable!)
    
    Inspired by http://blog.frankmtaylor.com/2014/03/07/page-visibility-and-speech-synthesis-how-to-make-web-pages-sound-needy/

commit 12a56c8cf5ef89870f535366fbeea7b961b3529c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Aug 20 18:19:45 2018 -0700

    fix error

commit 63612e760c448e91bd545268c52ecbc19927151f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Apr 11 13:09:03 2018 -0700

    fix speakerdeck link
    
    Fixes https://github.com/feross/TheAnnoyingSite.com/issues/6

commit 08286ee1f2e0ee2b73499e6d8f6d7b734c38c8cb
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jan 26 19:38:01 2018 +0800

    add warning
    
    Fix #1

commit 6cc7396e7c5a8d85601e01b6fc0ef50ae74cc960
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Dec 16 10:41:26 2017 -0800

    wait until first interaction to take over referrer window; take over with another child window :)

commit bfb95e8e7bd91dd6f998e24f08a8538d2327bbfb
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Dec 16 10:24:22 2017 -0800

    takeover referrer window!

commit f3f5705e8564a2aa3d2ea5af6b1012524cadc48f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Dec 16 10:09:43 2017 -0800

    bleh

commit 46afc227000c04820ad6df898fac73b725f211ac
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Dec 16 10:08:30 2017 -0800

    detect parent/child windows more correctly

commit 94cad96886e47701fddb1a3214b52c3733ea8fde
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Dec 16 10:07:15 2017 -0800

    also capture touchstart

commit 35f8bca3727887cb30acaa59606c9ffd5d89ea8c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Dec 16 10:06:52 2017 -0800

    catch webcam errors better

commit deeaeec3a090bdf3a80d3f87b3c0ce1c9e7f77c4
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Dec 16 10:06:40 2017 -0800

    trigger file downloads on user interaction

commit c4b1754379b444af833cbfdc8b4d942fe3c9ed95
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Dec 16 10:06:08 2017 -0800

    add cat pics

commit 1ae72d0fbf4a3e1373e711f7919de1b9ca94e024
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Dec 16 09:46:48 2017 -0800

    disable ecstatic cache

commit bacbf0e417c53c5f15475b62b43407b4861a886b
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 15 21:26:33 2017 -0800

    todo

commit 728dc6bbfd8b19ff1beb2e49540bb8fe6fc6b454
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 15 21:10:09 2017 -0800

    undo commented out alert

commit 0a27c9df56e268bc357bd91242e69f29b3e86b27
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 15 21:09:10 2017 -0800

    add link to clipboard copy

commit 077a6ea35a5e58488bc12bc13dc4c9941fa3b1d8
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 15 21:01:37 2017 -0800

    documentation

commit 46f96c3b3429e5f4021882946abb393820fcfcbc
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 15 21:01:32 2017 -0800

    don't treat different origins as parent windows
    
    Fixes issue when link is clicked from a thread on Messenger app

commit 36c2ebc35e448c1967ba7181e6249eac6749c876
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 15 20:59:50 2017 -0800

    let clicks on logout messages pass through to BG

commit 24b7965e95aa6324d05b88ac6d7f67f71afc8eed
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 15 20:59:41 2017 -0800

    improve text shadow

commit 608c985366c51412fd9fa7f683503cabbcd2fe0c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 15 19:44:50 2017 -0800

    Fix mixed content warnings

commit 7dcf1dae114c3529c24d0548685f09242c06127f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 15 19:27:33 2017 -0800

    attempt to enable camera flash

commit 72135e10f61dd2bf077235af2592344a085bba93
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 15 19:25:06 2017 -0800

    hide the scroll bars

commit 26edf1151986fdb02f059d8151e8bf7437999e34
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 15 19:11:55 2017 -0800

    style

commit 7245f5c76e7d59e073d2feb3bcb0a4f86c32cab0
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 15 18:22:20 2017 -0800

    Hide the mouse cursor after first interaction
    
    Always hide it in the child windows.
    
    Thanks to @overra for the suggestion during my twitch live stream

commit 53cb3cb38cfc1fab8d1af24061dc9e943439cf17
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 15 18:12:23 2017 -0800

    Sometimes show Print dialog instead of alert
    
    Thanks to @cesarandreu for suggesting this!

commit dc1223db826ffe8fe2fd856450e61f33e1f7e50a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 15 18:07:01 2017 -0800

    re-add all logout sites

commit e2f890435f29b55ded9c580b0a5a40e3fe5729d1
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 15 17:54:53 2017 -0800

    made enable fullscreen actually work
    
    it will happen 30% of the interactions in the main window

commit 39cfbcc3d2ed9e2366fe310042e7bb5affa16ef0
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 15 17:15:49 2017 -0800

    show alert

commit bf77ca2fd5db85d1942a85a2804fba06df4fc6cb
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 15 17:15:28 2017 -0800

    Capture key presses on the Command or Control keys

commit ba9c6c558084d6ac09bdcd9bd7cb15439db720a6
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 15 17:15:18 2017 -0800

    Add copy-to-clipboard

commit c7f3350c3489f186951db3b99749f87318f3a29c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 15 16:42:06 2017 -0800

    test

commit 2ba2f02384f7595bf8ce57f9d61147b5165537c6
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 15 16:41:49 2017 -0800

    always try to enable fullscreen, even after first interaction

commit 49cfad41ec7fe9beebff9bc054245a5a40103adb
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 15 16:41:28 2017 -0800

    text shadow

commit c5df00a6cf3544772b836fd839f345ace53ff2e5
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 15 15:48:12 2017 -0800

    show video in main window on click

commit 3552c048c31c856ed11a73f4fdadc1a7b36f5a10
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 15 15:48:02 2017 -0800

    improve logout message rendering

commit 112807ee948b6e3bb0abd7b3cc4bc2522889c58c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 15 15:31:14 2017 -0800

    add more video choices :)

commit f7b09285c0fe5112f29017cca0321d21b328d32c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 15 15:19:28 2017 -0800

    inline super logout

commit a69ff1dbf3771dffba26c83a7d84ff42c69fc6eb
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 15 13:38:15 2017 -0800

    add google analytics

commit 3717ef670a3c98b676bbe681d491e4f7299e7a3c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 15 02:43:08 2017 -0800

    mobile note

commit b5357eeaf4cd8cf0912786df3a57ff59a51c3145
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 15 02:19:02 2017 -0800

    add missing showAlert

commit 4f29d5f720dc054d66ff63b723073adb01ce9e2e
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 15 02:18:46 2017 -0800

    fix window counter

commit 4e783606acd1dba501bc441b52bdfb3c99555309
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 15 02:18:38 2017 -0800

    alert once initially

commit 263630a760fb92d2927aeeb005e3cd584f08afc9
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 15 02:17:49 2017 -0800

    add friendly comment

commit fe6f0ae7606b8a9a3208a27a23d888097a2f24c0
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 15 02:16:20 2017 -0800

    don't request cam/mic upfront because its suspicious

commit 61e4bba7d526e0f2867eca7257f1f37ab3fe4cda
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 15 02:16:09 2017 -0800

    make vibrations random

commit b5af2914fdd52781130320bee605c0dc53f50d9e
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 15 02:14:38 2017 -0800

    wait until first interaction to add alert interval

commit f92486b8db222472e6bd5d12e6194f186997155b
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 15 02:14:09 2017 -0800

    show alert on first click

commit 5f1462b0d410d4115c3ad099b7b9eae48484287f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 15 02:13:28 2017 -0800

    show friendly hello message

commit a07cf31bf83bb83c2774a06efc3d4acac85987b3
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 15 01:58:00 2017 -0800

    remove unneeded intermediate files

commit 6dfb2c2f64f9610bcfa146bb6ea01505fbc28adb
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 15 01:25:51 2017 -0800

    add more troll videos

commit 7562b61702437766befbad6d6eb9239d5f723751
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 15 01:24:51 2017 -0800

    add link to talk video

commit a6fab504e4813a03a934b5c9ebd643d23361e0e3
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 15 01:11:57 2017 -0800

    fix video dom insert

commit 899602be14e425862fca6e8bc4e006541ed5c309
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 15 01:11:10 2017 -0800

    wait for user interaction to start vibrate

commit 4f4b6c52e2c51841d35149f1eea4aa226d3259e4
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Dec 14 23:43:46 2017 -0800

    progress

commit 26c27dbc5d57e03d2919fbcaa6fd7eeebe92854c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Dec 14 23:39:28 2017 -0800

    progress

commit 9019e12571f4e23736ea93635a7e2ae16c5b5c5e
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Dec 14 23:18:01 2017 -0800

    progress

commit 88ec6c5cbb0ae3f407532fdfce2b721305d123a9
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Dec 14 21:48:27 2017 -0800

    fix camera request in Firefox

commit 8961f95354835cf5544c057530eadb0eb0aeae55
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Dec 14 17:24:12 2017 -0800

    progress

commit 967f8867698e2ebe443b65a389922b124d29ff23
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Dec 14 15:54:29 2017 -0800

    add readme

commit 62b1ff44ec6f8f3ebcdb03686309cbb40addde8f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Dec 14 14:48:16 2017 -0800

    redirect to SSL, non-www

commit 2e6ce8c012283d234265093d73e243d2ca43b125
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Dec 14 14:43:16 2017 -0800

    add a deploy script

commit b5433d24739553ce0a585b8907f163dc4ab2ad01
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Dec 14 14:38:20 2017 -0800

    add ssl support

commit 26388049036c37800304e63aebc84d6ca5175c51
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Dec 14 14:27:49 2017 -0800

    deploy 12.html as site

commit 2c6127bb84c689fa047d07717fd199b8132f41bd
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 1 11:39:57 2017 +0100

    progress

commit 0059dae71ed281497db7ddf09ba937a976202b22
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 1 10:56:16 2017 +0100

    progress

commit b2cdd5a245e7ea56423edf66d9f329e81476472c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 1 09:04:26 2017 +0100

    progress

commit 365137845c42b749a3e9dad32c363bc8d919b5db
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 1 08:37:04 2017 +0100

    add nginx conf

commit 6b44cfdd6897f6e33d015d869cb4d7f740a05cb5
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 1 08:33:42 2017 +0100

    progress

commit 89ac2e3c3184fc4dfaa897938fe96855840c2a29
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 1 06:13:58 2017 +0100

    progress

commit d5485f8d121225824c55fefcc03c0aec9dfbea3f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 1 04:22:07 2017 +0100

    progress

commit 000312090db3e0aa137ea24a4f19ec6b29aab2a9
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Nov 30 15:55:59 2017 +0100

    progress

commit 1aa722767496a2e823efbe9d3435f18dcb7938e4
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Nov 30 15:10:30 2017 +0100

    progress

commit 57d4fe0a0b11fc5ae0e8b5525716e96a82b1999a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Nov 30 14:56:37 2017 +0100

    rename

commit 32d9232e579d5266a6c555946b6d369e8fa2a7de
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Nov 30 14:55:37 2017 +0100

    progress

commit a00bfcf95bcc6cb82c961f3f50549c7ac599a74c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Nov 30 14:40:02 2017 +0100

    progress

commit 94ba647513935ac287fa3feed1bb4ec357dc3527
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Nov 30 11:42:42 2017 +0100

    progress

commit 9b5c5ce17da855f63bb1cdd678765b9074b067b5
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Nov 30 09:38:33 2017 +0100

    initial commit
======================: FILES :======================
======================: BRANCHES :======================
======================: LOGINFO :======================
commit 9bc5787b0381ec14caccb688d45c7e9d64bb4c8f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jul 13 18:04:17 2021 -0700

    add annoying theremin
    
    Based on PR #2

commit e60d05e4406ac7ab30f3628f1893bf4818f58711
Merge: bac2fe8 121db56
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jul 13 17:48:49 2021 -0700

    Merge pull request #13 from bmeck/patch-1
    
    give CSS just a little bit of blur every so often

commit bac2fe8fc8a7e43dd7e2fc8600962c48419ab4bb
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jul 13 17:46:03 2021 -0700

    Update README.md

commit 28f014c48ac536657af2395d42f024a7e3cfd1c7
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jul 13 17:45:48 2021 -0700

    Update README.md

commit 55f0aa71d907f1e95023eca062e1918748b89ae9
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jun 30 12:17:44 2021 -0700

    Add zero fill to random colors

commit 121db56405c64531d9325a56ea1966d1f41b27ab
Author: Bradley Farias <bradley.meck@gmail.com>
Date:   Tue Jun 22 09:33:12 2021 -0500

    give CSS just a little bit of blur every so often

commit 1cfc4e6c41cb717e4f2289703c21facabf8c0e4c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 20 22:38:26 2021 -0700

    tweaks

commit 988a6c2a5679bfe7fe5558a9d3deb581414281e2
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 20 22:14:13 2021 -0700

    add midi, bluetooth, usb, serial

commit dfac851868e5cb14b7aa65b6389ff1b3922eaec8
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 20 21:46:31 2021 -0700

    Lock the user's pointer, without even being in full screen!

commit 1ca074000bbf65fba70cfd2050e015a5053ca1f3
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 20 21:35:47 2021 -0700

    animate the url with emojis

commit d9e2a8b1cccd7bd3a592d45fc5423dcecd6f0fac
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 20 21:15:24 2021 -0700

    better close window blocking

commit 2178a404591f61cdcb63a4394e52a7086acc8e9a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 20 21:15:03 2021 -0700

    better picture in picture support

commit f7d29d9f34e783f51a0e0c87e50259435a5e0721
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 20 21:14:51 2021 -0700

    Change the theme color of the browser in a loop.

commit a5c0d5e7c4a903083623a294e9b53dd6febdacb1
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 20 20:50:34 2021 -0700

    standard

commit 98afd2e1d51a6ac3792f780dd16a9f7b52135e36
Merge: cd2247f bd66328
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Nov 5 01:29:29 2020 +0100

    Merge pull request #11 from Jack5079/master
    
    Vibrate controllers, too.

commit cd2247fa4fd6fa2a67d982c2400b89b7a802ee25
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Oct 30 11:56:02 2020 -1000

    ecstatic@4

commit bd6632865cb77794e61db680372005202f69156a
Author: Jack <29169102+Jack5079@users.noreply.github.com>
Date:   Sun Feb 2 21:24:17 2020 -0500

    Update index.js

commit 6473340eddcb14bdf2f6768baa951ce401aa998e
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jun 28 18:22:31 2019 -0700

    Update nginx.conf

commit 17ceb6b74291e3884791d30ce9f6f51d599a7854
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jun 27 16:39:48 2019 -0700

    Update package.json

commit d6c69fb312e82c719705b998ec41b5b709a7cada
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jun 27 16:39:33 2019 -0700

    Update nginx.conf

commit 23b183c327c9c59328e48eebdd362a19a9c0a51a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Nov 18 22:54:24 2018 -0500

    readme

commit e87477b40c100790c5d87d0d9fdaa835fcc0cb3a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Nov 18 22:51:40 2018 -0500

    readme

commit 4bf032ee6c0d8d19bfc2ce9a263deaed9d66280f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Nov 18 22:47:28 2018 -0500

    thumbnail

commit 88e20438a9eb84873454e866d77f354dc7af18d9
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Nov 18 22:45:52 2018 -0500

    link to JSConf US talk

commit d6a0f229fcc0c46ee4439e5e28988b6d8acb1959
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Aug 30 02:08:55 2018 -0700

    add OCSP stapling

commit 6d7da6222a0be4d6c10409756c990f29d5012c9a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Aug 20 18:24:12 2018 -0700

    changes

commit ce570ef263ba2977fbc0053d277cd9e884d98eec
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Aug 20 18:20:07 2018 -0700

    add Speech Synthesis API (unmutable!)
    
    Inspired by http://blog.frankmtaylor.com/2014/03/07/page-visibility-and-speech-synthesis-how-to-make-web-pages-sound-needy/

commit 12a56c8cf5ef89870f535366fbeea7b961b3529c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Aug 20 18:19:45 2018 -0700

    fix error

commit 63612e760c448e91bd545268c52ecbc19927151f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Apr 11 13:09:03 2018 -0700

    fix speakerdeck link
    
    Fixes https://github.com/feross/TheAnnoyingSite.com/issues/6

commit 08286ee1f2e0ee2b73499e6d8f6d7b734c38c8cb
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jan 26 19:38:01 2018 +0800

    add warning
    
    Fix #1

commit 6cc7396e7c5a8d85601e01b6fc0ef50ae74cc960
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Dec 16 10:41:26 2017 -0800

    wait until first interaction to take over referrer window; take over with another child window :)

commit bfb95e8e7bd91dd6f998e24f08a8538d2327bbfb
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Dec 16 10:24:22 2017 -0800

    takeover referrer window!

commit f3f5705e8564a2aa3d2ea5af6b1012524cadc48f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Dec 16 10:09:43 2017 -0800

    bleh

commit 46afc227000c04820ad6df898fac73b725f211ac
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Dec 16 10:08:30 2017 -0800

    detect parent/child windows more correctly

commit 94cad96886e47701fddb1a3214b52c3733ea8fde
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Dec 16 10:07:15 2017 -0800

    also capture touchstart

commit 35f8bca3727887cb30acaa59606c9ffd5d89ea8c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Dec 16 10:06:52 2017 -0800

    catch webcam errors better

commit deeaeec3a090bdf3a80d3f87b3c0ce1c9e7f77c4
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Dec 16 10:06:40 2017 -0800

    trigger file downloads on user interaction

commit c4b1754379b444af833cbfdc8b4d942fe3c9ed95
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Dec 16 10:06:08 2017 -0800

    add cat pics

commit 1ae72d0fbf4a3e1373e711f7919de1b9ca94e024
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Dec 16 09:46:48 2017 -0800

    disable ecstatic cache

commit bacbf0e417c53c5f15475b62b43407b4861a886b
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 15 21:26:33 2017 -0800

    todo

commit 728dc6bbfd8b19ff1beb2e49540bb8fe6fc6b454
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 15 21:10:09 2017 -0800

    undo commented out alert

commit 0a27c9df56e268bc357bd91242e69f29b3e86b27
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 15 21:09:10 2017 -0800

    add link to clipboard copy

commit 077a6ea35a5e58488bc12bc13dc4c9941fa3b1d8
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 15 21:01:37 2017 -0800

    documentation

commit 46f96c3b3429e5f4021882946abb393820fcfcbc
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 15 21:01:32 2017 -0800

    don't treat different origins as parent windows
    
    Fixes issue when link is clicked from a thread on Messenger app

commit 36c2ebc35e448c1967ba7181e6249eac6749c876
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 15 20:59:50 2017 -0800

    let clicks on logout messages pass through to BG

commit 24b7965e95aa6324d05b88ac6d7f67f71afc8eed
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 15 20:59:41 2017 -0800

    improve text shadow

commit 608c985366c51412fd9fa7f683503cabbcd2fe0c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 15 19:44:50 2017 -0800

    Fix mixed content warnings

commit 7dcf1dae114c3529c24d0548685f09242c06127f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 15 19:27:33 2017 -0800

    attempt to enable camera flash

commit 72135e10f61dd2bf077235af2592344a085bba93
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 15 19:25:06 2017 -0800

    hide the scroll bars

commit 26edf1151986fdb02f059d8151e8bf7437999e34
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 15 19:11:55 2017 -0800

    style

commit 7245f5c76e7d59e073d2feb3bcb0a4f86c32cab0
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 15 18:22:20 2017 -0800

    Hide the mouse cursor after first interaction
    
    Always hide it in the child windows.
    
    Thanks to @overra for the suggestion during my twitch live stream

commit 53cb3cb38cfc1fab8d1af24061dc9e943439cf17
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 15 18:12:23 2017 -0800

    Sometimes show Print dialog instead of alert
    
    Thanks to @cesarandreu for suggesting this!

commit dc1223db826ffe8fe2fd856450e61f33e1f7e50a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 15 18:07:01 2017 -0800

    re-add all logout sites

commit e2f890435f29b55ded9c580b0a5a40e3fe5729d1
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 15 17:54:53 2017 -0800

    made enable fullscreen actually work
    
    it will happen 30% of the interactions in the main window

commit 39cfbcc3d2ed9e2366fe310042e7bb5affa16ef0
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 15 17:15:49 2017 -0800

    show alert

commit bf77ca2fd5db85d1942a85a2804fba06df4fc6cb
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 15 17:15:28 2017 -0800

    Capture key presses on the Command or Control keys

commit ba9c6c558084d6ac09bdcd9bd7cb15439db720a6
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 15 17:15:18 2017 -0800

    Add copy-to-clipboard

commit c7f3350c3489f186951db3b99749f87318f3a29c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 15 16:42:06 2017 -0800

    test

commit 2ba2f02384f7595bf8ce57f9d61147b5165537c6
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 15 16:41:49 2017 -0800

    always try to enable fullscreen, even after first interaction

commit 49cfad41ec7fe9beebff9bc054245a5a40103adb
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 15 16:41:28 2017 -0800

    text shadow

commit c5df00a6cf3544772b836fd839f345ace53ff2e5
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 15 15:48:12 2017 -0800

    show video in main window on click

commit 3552c048c31c856ed11a73f4fdadc1a7b36f5a10
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 15 15:48:02 2017 -0800

    improve logout message rendering

commit 112807ee948b6e3bb0abd7b3cc4bc2522889c58c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 15 15:31:14 2017 -0800

    add more video choices :)

commit f7b09285c0fe5112f29017cca0321d21b328d32c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 15 15:19:28 2017 -0800

    inline super logout

commit a69ff1dbf3771dffba26c83a7d84ff42c69fc6eb
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 15 13:38:15 2017 -0800

    add google analytics

commit 3717ef670a3c98b676bbe681d491e4f7299e7a3c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 15 02:43:08 2017 -0800

    mobile note

commit b5357eeaf4cd8cf0912786df3a57ff59a51c3145
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 15 02:19:02 2017 -0800

    add missing showAlert

commit 4f29d5f720dc054d66ff63b723073adb01ce9e2e
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 15 02:18:46 2017 -0800

    fix window counter

commit 4e783606acd1dba501bc441b52bdfb3c99555309
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 15 02:18:38 2017 -0800

    alert once initially

commit 263630a760fb92d2927aeeb005e3cd584f08afc9
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 15 02:17:49 2017 -0800

    add friendly comment

commit fe6f0ae7606b8a9a3208a27a23d888097a2f24c0
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 15 02:16:20 2017 -0800

    don't request cam/mic upfront because its suspicious

commit 61e4bba7d526e0f2867eca7257f1f37ab3fe4cda
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 15 02:16:09 2017 -0800

    make vibrations random

commit b5af2914fdd52781130320bee605c0dc53f50d9e
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 15 02:14:38 2017 -0800

    wait until first interaction to add alert interval

commit f92486b8db222472e6bd5d12e6194f186997155b
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 15 02:14:09 2017 -0800

    show alert on first click

commit 5f1462b0d410d4115c3ad099b7b9eae48484287f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 15 02:13:28 2017 -0800

    show friendly hello message

commit a07cf31bf83bb83c2774a06efc3d4acac85987b3
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 15 01:58:00 2017 -0800

    remove unneeded intermediate files

commit 6dfb2c2f64f9610bcfa146bb6ea01505fbc28adb
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 15 01:25:51 2017 -0800

    add more troll videos

commit 7562b61702437766befbad6d6eb9239d5f723751
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 15 01:24:51 2017 -0800

    add link to talk video

commit a6fab504e4813a03a934b5c9ebd643d23361e0e3
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 15 01:11:57 2017 -0800

    fix video dom insert

commit 899602be14e425862fca6e8bc4e006541ed5c309
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 15 01:11:10 2017 -0800

    wait for user interaction to start vibrate

commit 4f4b6c52e2c51841d35149f1eea4aa226d3259e4
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Dec 14 23:43:46 2017 -0800

    progress

commit 26c27dbc5d57e03d2919fbcaa6fd7eeebe92854c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Dec 14 23:39:28 2017 -0800

    progress

commit 9019e12571f4e23736ea93635a7e2ae16c5b5c5e
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Dec 14 23:18:01 2017 -0800

    progress

commit 88ec6c5cbb0ae3f407532fdfce2b721305d123a9
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Dec 14 21:48:27 2017 -0800

    fix camera request in Firefox

commit 8961f95354835cf5544c057530eadb0eb0aeae55
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Dec 14 17:24:12 2017 -0800

    progress

commit 967f8867698e2ebe443b65a389922b124d29ff23
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Dec 14 15:54:29 2017 -0800

    add readme

commit 62b1ff44ec6f8f3ebcdb03686309cbb40addde8f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Dec 14 14:48:16 2017 -0800

    redirect to SSL, non-www

commit 2e6ce8c012283d234265093d73e243d2ca43b125
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Dec 14 14:43:16 2017 -0800

    add a deploy script

commit b5433d24739553ce0a585b8907f163dc4ab2ad01
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Dec 14 14:38:20 2017 -0800

    add ssl support

commit 26388049036c37800304e63aebc84d6ca5175c51
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Dec 14 14:27:49 2017 -0800

    deploy 12.html as site

commit 2c6127bb84c689fa047d07717fd199b8132f41bd
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 1 11:39:57 2017 +0100

    progress

commit 0059dae71ed281497db7ddf09ba937a976202b22
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 1 10:56:16 2017 +0100

    progress

commit b2cdd5a245e7ea56423edf66d9f329e81476472c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 1 09:04:26 2017 +0100

    progress

commit 365137845c42b749a3e9dad32c363bc8d919b5db
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 1 08:37:04 2017 +0100

    add nginx conf

commit 6b44cfdd6897f6e33d015d869cb4d7f740a05cb5
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 1 08:33:42 2017 +0100

    progress

commit 89ac2e3c3184fc4dfaa897938fe96855840c2a29
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 1 06:13:58 2017 +0100

    progress

commit d5485f8d121225824c55fefcc03c0aec9dfbea3f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 1 04:22:07 2017 +0100

    progress

commit 000312090db3e0aa137ea24a4f19ec6b29aab2a9
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Nov 30 15:55:59 2017 +0100

    progress

commit 1aa722767496a2e823efbe9d3435f18dcb7938e4
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Nov 30 15:10:30 2017 +0100

    progress

commit 57d4fe0a0b11fc5ae0e8b5525716e96a82b1999a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Nov 30 14:56:37 2017 +0100

    rename

commit 32d9232e579d5266a6c555946b6d369e8fa2a7de
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Nov 30 14:55:37 2017 +0100

    progress

commit a00bfcf95bcc6cb82c961f3f50549c7ac599a74c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Nov 30 14:40:02 2017 +0100

    progress

commit 94ba647513935ac287fa3feed1bb4ec357dc3527
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Nov 30 11:42:42 2017 +0100

    progress

commit 9b5c5ce17da855f63bb1cdd678765b9074b067b5
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Nov 30 09:38:33 2017 +0100

    initial commit
