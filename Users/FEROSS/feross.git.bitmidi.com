======================: FILES :======================
======================: BRANCHES :======================
======================: LOGINFO :======================
commit cdc4c52461c2057a795df72aa9ed652da41b9aa5
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jun 23 18:35:07 2022 -0700

    add "free midi" to title

commit 1e2a49422999984bcede753b58492644ad832138
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jun 16 07:55:48 2022 -0700

    Update footer.js

commit 56953960a505a8a19529acaab38aec3ac42a8f68
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Apr 5 14:40:50 2022 -0700

    double rate limit

commit 81b9ae82f1d4ca783ffb82fb43ba96e77a5af262
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Apr 5 14:37:34 2022 -0700

    trust cloudflare ips for 'trust proxy'

commit 233a94e09dd77efaa331df221295176432100265
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Apr 4 12:15:27 2022 -0700

    better error logging

commit 963a010b09c1199e49c9c928f74ab6f0983c15b0
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Nov 18 02:16:19 2021 -0800

    Revert "remove bubblewrap cli"
    
    This reverts commit 85825dff5ec1e7057c1e72b3ce65fc861519e7d8.

commit 85825dff5ec1e7057c1e72b3ce65fc861519e7d8
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Nov 18 02:07:41 2021 -0800

    remove bubblewrap cli

commit 180e63775c1a6e2985ae2a919c9bd60ef9c5c9bd
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Nov 18 01:48:27 2021 -0800

    Don't rate limit Googlebot

commit 45b6366492448c856f50967d22747d466afba12d
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri May 14 19:32:13 2021 -0700

    remove blocked bot from robots.txt

commit 1d90d06aa0618d9e4792c740739d67154c6d0d19
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 6 16:00:16 2021 -0700

    slow down more annoying bots

commit 35a05227696995d4c57e03f1eb15ee059573c7f5
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 6 15:36:41 2021 -0700

    slow down annoying bots

commit 1635a98c84d4b6ea9d69014bf8c9607679903be8
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 6 15:29:34 2021 -0700

    Increase memo cache size

commit 810737f63e5d9128d32e03d60cc110efbc576959
Merge: 0f4b35b ece3e6f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Mar 3 12:35:18 2021 -0800

    Merge pull request #107 from feross/dependabot/npm_and_yarn/ini-1.3.7
    
    Bump ini from 1.3.5 to 1.3.7

commit 0f4b35b7399b56a6b1a562df76d8cf54368be639
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jan 11 13:14:24 2021 -0800

    remove link units

commit a4628a772d6dbdb040cefde2aa27d6a48c3f67a0
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jan 11 13:14:20 2021 -0800

    Update deploy.sh

commit ece3e6fc9ad0b5ffe00eb1eb23ac90f0f71dbade
Author: dependabot[bot] <49699333+dependabot[bot]@users.noreply.github.com>
Date:   Thu Dec 10 20:43:35 2020 +0000

    Bump ini from 1.3.5 to 1.3.7
    
    Bumps [ini](https://github.com/isaacs/ini) from 1.3.5 to 1.3.7.
    - [Release notes](https://github.com/isaacs/ini/releases)
    - [Commits](https://github.com/isaacs/ini/compare/v1.3.5...v1.3.7)
    
    Signed-off-by: dependabot[bot] <support@github.com>

commit 3a998255f10eb2886a3c55f38865b906f7d42038
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Dec 7 15:07:53 2020 -0800

    fix Cannot read property 'maxPageSize' of undefined

commit 61a4162db85152f855538cea5c9a894b997700f1
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Dec 7 14:59:17 2020 -0800

    update ads.txt

commit a88e4739ce7ecf0de5dfe62ce0e0239e3d028346
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Dec 7 14:27:40 2020 -0800

    improve CLS for ads

commit c413e4eccc012d4439ad9a0826a2b8183f84cb3c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Dec 7 14:08:31 2020 -0800

    fix sitemap.xml to include more than 50 links

commit dacd6d4d3adc9a9565c136ec131a0c523ecc7aca
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Dec 3 13:08:31 2020 -0800

    update to Permissions-Policy and Document-Policy

commit 567e183f3963ffcb986bd5bfc2a8972a71c3c6dc
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Dec 1 12:11:01 2020 -0800

    remove purpleads script (already disabled)

commit 5f45b019de65c781dd1b8e8bbbdfa8cbb9470b7d
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Dec 1 11:46:43 2020 -0800

    fix search page: UNSAFE_ methods not in preact

commit 423e6ad30b0d82698e12ac9ed6762a4e610d1692
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Nov 25 14:18:31 2020 -1000

    Update package-lock.json

commit a12076fc6bff87960713c6cffa58ca91159637c7
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Nov 25 14:15:17 2020 -1000

    Update package-lock.json

commit fa57fc432ae9a265cfc3d8d20a577925ae0f2f49
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Nov 25 14:14:04 2020 -1000

    Revert "babel: remove object rest spread transform"
    
    This reverts commit 76b0bd47d92fa182a2f10035a222383d529ba10a.

commit 9b223222337291e7b4b72023e3560c8e98b805d2
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Nov 25 14:13:58 2020 -1000

    Revert "babel: remove optional catch binding"
    
    This reverts commit 8d9fbd440fd793d1f5d659744777a20fff6aa287.

commit 2452681557bcda4f5cedb83a0595c7623743cc55
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Nov 25 14:11:06 2020 -1000

    changes for purgecss 3

commit af0a15d6754b0af71127a1cb072fa8ac933f786f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Nov 25 14:11:00 2020 -1000

    purgecss@3

commit 5f233f712dfa0b58ab43c4503de887fb753ae3bc
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Nov 25 14:08:10 2020 -1000

    browserify@17

commit bbb98a377d9361ac2311f94e5a20a0b43e1a26a2
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Nov 25 14:07:51 2020 -1000

    express-sitemap-xml@3

commit ecb675b6f71db9df59c69a5b8e57dbc455a1d2c9
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Nov 25 14:05:52 2020 -1000

    change imports for preact ^10.5.7

commit 716c66dfc691d31146dbcfefca2bb6cc2320db0e
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Nov 25 14:01:41 2020 -1000

    bump preact to ^10.5.7

commit 8d9fbd440fd793d1f5d659744777a20fff6aa287
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Nov 25 14:00:05 2020 -1000

    babel: remove optional catch binding

commit 76b0bd47d92fa182a2f10035a222383d529ba10a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Nov 25 13:59:40 2020 -1000

    babel: remove object rest spread transform

commit bed8cdc5891ba677d77bb31772042f2e8f4eb5dd
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Nov 25 13:58:10 2020 -1000

    bump deps

commit f6dc598bedf35ef57789e4ca867bcec5fb97a774
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Nov 25 13:49:17 2020 -1000

    bump babel deps

commit 6d496800cb7d6cf0d6852cafe3a27cd33c14d8b3
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Nov 22 17:49:03 2020 -1000

    standard: use @babel/eslint-parser

commit d793afa359bf981e5d61125af7763e6344fd74ef
Merge: 18ceccc bebf790
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Nov 22 14:53:19 2020 -1000

    Merge branch 'tomayac-patch-1'

commit bebf7904aadc70f6fb654cd05a78ec81c581b58d
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Nov 22 14:52:30 2020 -1000

    Fix crash on SSR; use color mode from store

commit 4b7c23832aaa11e67cba115eaa2587ccecad076d
Author: Thomas Steiner <tomac@google.com>
Date:   Thu Nov 19 10:23:10 2020 +0100

    Make links hot pink in dark mode and leave dark blue in light mode

commit 027818ae3556a5dde04d611e5d2412b5f242e3f1
Author: Thomas Steiner <tomac@google.com>
Date:   Thu Nov 19 10:15:18 2020 +0100

    Make links hot pink instead of dark blue
    
    Fixes #101.

commit 18ceccc8804f1fdbaae14dbecc7b2f1a7b900d02
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Oct 29 11:32:01 2020 -1000

    Update package-lock.json

commit bbf832304ea0ddae5101066ce7d6cad53206dd42
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Oct 28 09:50:02 2020 -1000

    standard

commit 28c7d568b9f00ab01df5b591f7c99187db61b387
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Oct 27 18:34:01 2020 -1000

    standard

commit 5a736610f109832d7a9deaf8f9564623e99deee6
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Sep 17 12:05:26 2020 -0700

    ads

commit 2f78315ef8c2b6c26a71da38d38fb0e496b80604
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Sep 13 20:37:31 2020 -0700

    update deps

commit 6a80c74e44508cfee6ca211a6e40cf487535b136
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Sep 13 20:36:43 2020 -0700

    share-twitter: add better error message

commit be5b1b446f0fc421d11d1e6077058b617edeb9c0
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Sep 3 11:27:40 2020 -0700

    Update package-lock.json

commit f2a7ede04c1709af385d608b87d5279d9f072016
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Sep 3 11:27:38 2020 -0700

    deps

commit fdde851a8020038917f68aef83748150f62e7c8b
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 12 13:45:12 2020 -0700

    Update assetlinks.json

commit 69eb397bad391a9f4788830f8cf490b0b331101e
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 12 12:25:53 2020 -0700

    deps

commit 66e8f0b2078dea958cef4444def8096ed5aaa40c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 12 12:22:18 2020 -0700

    tinyify@3

commit a3438db330a1e1f4b629555805bfdbcba86262b9
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 12 12:22:06 2020 -0700

    ora@5

commit 883a9d068d6074833b525fdb033f477f5a4dab7a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 12 12:21:45 2020 -0700

    deps

commit 715df8e277a4173bcd60eaf70035f9f0ea26f678
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 12 12:02:27 2020 -0700

    reduce memo size by half

commit 1315437a8cb13943d9f4f142962c7fd14404b46d
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 5 10:44:59 2020 -0700

    fix syntax error

commit c2dddf0eaa7875b6c87109653b27cca1658aaec2
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 5 10:41:14 2020 -0700

    purpleads

commit ada17938de29981bcfb3fca517146c3e41e1f505
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 5 10:20:47 2020 -0700

    valid html

commit b90864e207f44fd326e5791218bb3aa634c3cb09
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 5 10:20:06 2020 -0700

    purpleads

commit ef2b4fa0f0fe4eea00ab6d5230a165f6c424ffcc
Merge: 01212cb d768376
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Aug 2 17:55:05 2020 -0700

    Merge pull request #103 from feross/dependabot/npm_and_yarn/elliptic-6.5.3
    
    Bump elliptic from 6.5.2 to 6.5.3

commit d7683760254a96976c953ee2b147e0566bc4208d
Author: dependabot[bot] <49699333+dependabot[bot]@users.noreply.github.com>
Date:   Thu Jul 30 01:48:18 2020 +0000

    Bump elliptic from 6.5.2 to 6.5.3
    
    Bumps [elliptic](https://github.com/indutny/elliptic) from 6.5.2 to 6.5.3.
    - [Release notes](https://github.com/indutny/elliptic/releases)
    - [Commits](https://github.com/indutny/elliptic/compare/v6.5.2...v6.5.3)
    
    Signed-off-by: dependabot[bot] <support@github.com>

commit 01212cbb50517d6d90d31225459eb5845f283af3
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jul 23 16:00:58 2020 -0700

    better virus.cafe ad

commit 070a2fbc1adb0bb64fe7345ae8f57fad0170de1b
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jul 23 15:55:24 2020 -0700

    Revert "promote bitmidi happy hour"
    
    This reverts commit 74e1b68c9e732b30f9941fb0330cb9a4736adca0.

commit 74e1b68c9e732b30f9941fb0330cb9a4736adca0
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jul 22 17:58:07 2020 -0700

    promote bitmidi happy hour

commit f2e0cf2fb98204f52f0a7fd2d32100841f5a47f4
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jul 22 17:25:22 2020 -0700

    deps

commit e01ce7739e0e36dafb17da5187962f151b23fe7f
Merge: 89e7d96 2c7f1e5
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 17 05:57:51 2020 +0200

    Merge pull request #100 from feross/dependabot/npm_and_yarn/lodash-4.17.19
    
    Bump lodash from 4.17.15 to 4.17.19

commit 2c7f1e540d0ed56a7ae9dd0b4db7e80b4dcbc780
Author: dependabot[bot] <49699333+dependabot[bot]@users.noreply.github.com>
Date:   Wed Jul 15 20:44:53 2020 +0000

    Bump lodash from 4.17.15 to 4.17.19
    
    Bumps [lodash](https://github.com/lodash/lodash) from 4.17.15 to 4.17.19.
    - [Release notes](https://github.com/lodash/lodash/releases)
    - [Commits](https://github.com/lodash/lodash/compare/4.17.15...4.17.19)
    
    Signed-off-by: dependabot[bot] <support@github.com>

commit 89e7d960a7a0b0460451a3644632d7c5a65ccfba
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jul 15 13:28:37 2020 -0700

    android app style

commit 40e8f719bc13f933b5136c10170107ec704c3dfa
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jul 15 13:24:34 2020 -0700

    manifest utm_source=homescreen

commit 69e07e6effd96a4d2325584d2d140c863f4d6bec
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jul 15 12:51:48 2020 -0700

    update deps

commit 65b8185dfee341a87051b499c775659a3918fa9a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jul 15 12:46:37 2020 -0700

    update deps

commit 54b1cc77eabe8a2ce4837cfb7b1e4bb4421faf32
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jul 15 12:38:38 2020 -0700

    add bubblewrap scripts

commit 458548df8e27cb549806ae73a8ebc29df859071a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jul 15 12:36:08 2020 -0700

    manifest fullscreen

commit b07f77b06fcd12770e6f075f818b4e31b5b54b13
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jul 4 13:13:07 2020 -0700

    add bubblewrap dev dependency

commit 707d30fdfd9e0357b512d5dda1febfdf3ddb6a3f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jul 4 12:59:01 2020 -0700

    add google managed fingerprint

commit 98a460da222ba43e64f6afc2b7d9cdf3c174a3bd
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jul 4 12:28:01 2020 -0700

    try catch around adsense push()

commit 91bf3c54a16798beeb25b82d5137d102d90ea493
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jul 4 12:04:19 2020 -0700

    android assetlinks.json

commit 09f5b19bce89558fa65849680bf001f93954f0d9
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jul 4 10:15:34 2020 -0700

    fix dev window.qc error

commit ce4c895078c487c40998072945cdb717f3e7bfe7
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jul 4 10:09:44 2020 -0700

    supervisor: bitmidi.com is still a group

commit 93927e3325c569dfc7ad61ca0bc129c29c2142d2
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jul 4 10:08:00 2020 -0700

    reduce node instances to 1

commit bd697765a1cfcd5cb64a3415f33d918e456149db
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jul 4 10:05:53 2020 -0700

    do not load analytics code in dev

commit c0f16ff5237f39e164a223ad387d1f9130eaff2f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jul 4 10:05:43 2020 -0700

    Fix API memoization (reduce DB load!)

commit 4a3bd1f2aa0bec046cd5689f963ce93b3f6e8a63
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jun 15 12:08:08 2020 -0700

    remove /500

commit 949a9348bedd747ee589b7360dfd33abd51981e3
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed May 27 13:51:59 2020 -0700

    ads

commit 16790c9fe34f32fdb0eaa48e242cd109101eb9c0
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed May 27 13:50:46 2020 -0700

    ads

commit afd9b2b66343a1040f63b4eff9ba609115475832
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed May 27 13:29:43 2020 -0700

    extra error info

commit a2796fac20817a6f397fb96f41844b2d32ec8e6a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed May 27 13:19:11 2020 -0700

    ads

commit bebd3f7f23e1aa290e82f621f9be849e8a970c0f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue May 26 17:59:32 2020 -0700

    ads

commit a9b63f9cf92dfb37d2c778f6c1b0b4d300d1771f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue May 26 17:55:55 2020 -0700

    ads

commit 5df00a9c9f825b684254315d02badcce3d419120
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon May 18 14:35:22 2020 -0700

    fix purgecss overly aggressive

commit 9c33c61dfba26a674b980fd97a302637974b2eed
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon May 18 14:22:54 2020 -0700

    Update build-css.js

commit 834c5a6dc8bafd34afccbca2c97a5504fb7c56f5
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun May 17 10:51:05 2020 -0700

    ads

commit e07bae9bdb6e788f68f5bb950aa61266f5de5a93
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue May 12 10:44:36 2020 -0700

    api: limit max page size

commit e0cc5b7261e216d90f5d8bba3e3b5f1f4eaea514
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue May 12 10:38:54 2020 -0700

    ads

commit 48801b293611d013ac6c96622ee289bbe450c998
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue May 12 10:37:36 2020 -0700

    ads

commit b9112d6e3bee20df19b80ba9c1ebfe786f7977ac
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue May 12 10:33:54 2020 -0700

    ads

commit 30224a734d57312a909fcfaa84cb571207d18a41
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue May 12 10:06:20 2020 -0700

    ads

commit 387e6cfede8b81afbcd9ad2c75f88aa7908a2bae
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue May 12 10:00:35 2020 -0700

    ads

commit 48054db85665cf6f216099ecd34fa2c279af8f10
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue May 12 09:56:01 2020 -0700

    ads

commit 56c0bf964e2ed4f4659f4e0a17b1b97f0ddd7873
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue May 12 09:50:39 2020 -0700

    ensure newor-ad css is not removed

commit 2f3ef3cc88825626dd2b2c5f7f84012a5ae3c992
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue May 12 09:38:41 2020 -0700

    ads

commit 05edd5ab9be34df733c85faf725c1f5b44735ed1
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue May 12 09:22:41 2020 -0700

    ads

commit f2e0cb6021e231976e5370fd0fa9c2d119484aa5
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue May 12 09:05:23 2020 -0700

    ads

commit a872313d75493829d5b44e4e9d64d4a54f983209
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue May 12 09:01:06 2020 -0700

    ads

commit 9a8b197ecd471b33afc87abfe44627e55ad638f9
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue May 12 08:51:39 2020 -0700

    Update ads-newor.txt

commit 4c31df76f683200dd4cf9c391941f49629e031e7
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue May 12 08:47:35 2020 -0700

    ads

commit 7fa268020d7b8b6b5277b6a803c64e1bc58295da
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun May 10 11:03:56 2020 -0700

    Create .npmrc

commit 63f6558411cdf46facdd7efa66b338461077f110
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue May 5 10:07:45 2020 -0700

    ads

commit 1804d10f0ef3196163abfdd0396224f510882acc
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon May 4 18:28:15 2020 -0700

    ads

commit 31b4e2ac07c883631d601b89209a33efe8a90626
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon May 4 14:23:40 2020 -0700

    ads

commit baa94c44e0d5b51bdd0bb81c18cccfc328cc0b2b
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon May 4 13:22:27 2020 -0700

    package lock

commit 5c94b9c7b6ce086dd6b95a076500be82fcbcf9a9
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon May 4 13:15:29 2020 -0700

    ads

commit 0de5e4bcc0bd6a0989c5eefe538354087da34028
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon May 4 11:43:11 2020 -0700

    Update deploy.sh

commit ed28c6f2d6e573b39d871d498dfbd85e04ad56b7
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon May 4 11:42:39 2020 -0700

    Create package-lock.json

commit 02e2c9490a5051d9fa176e462618910d59ceae23
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon May 4 11:42:15 2020 -0700

    ads

commit 9b75635ead468d8c8cbc0351c642d5a4ee6de3ac
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon May 4 11:28:27 2020 -0700

    ads

commit 74106d3d68dff380c02a9601e904259aa9cfc074
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon May 4 11:17:22 2020 -0700

    ads

commit 77b2149ce9b6c39b4343c826a65e59a0cea46a8f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Apr 27 11:31:11 2020 -0700

    Catch renderer errors and preserve context for rollbar

commit f389d57ae761ec2e9225383e4a4c374ed6c2d0a9
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Apr 7 15:26:09 2020 -0700

    optimize: add cache buster

commit 64c4692b2d71fcca975100dc15cb4ea3c854535e
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Apr 7 14:39:34 2020 -0700

    optimize: do not double load on first page load

commit 2e24be309cfbabb9c3e21e6b75f42a025278f5d1
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Apr 7 14:27:42 2020 -0700

    optimize ads, push on mount

commit f29b7cd49a9d46086c8feccd05791753f9c43062
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Apr 7 12:53:45 2020 -0700

    optimize ads

commit b7d7098c443dbc4e3154e021274ff364fa968589
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Apr 7 12:42:07 2020 -0700

    remove csp; not worth it with ads

commit de7eff02bc8053e96650f72080447348283f9bbc
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Apr 7 12:34:51 2020 -0700

    optimize ads

commit 7d1dbd9ce216fcd24dca9e65b77556daeb5507fd
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Apr 7 11:35:17 2020 -0700

    add privacy page

commit d01ed64e90f9f61872ae42a3da76197498d39609
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Apr 6 11:57:29 2020 -0700

    update csp for optimize

commit 6c8766d4b424b6263c71bddee669f24af2ebb869
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Apr 6 11:47:37 2020 -0700

    optimize ads.txt redirect

commit e420f6c642840d5cb7c4b70e6c3a3c93d352180c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Apr 6 11:42:43 2020 -0700

    Test optimize ads

commit 5c481aee619672e993f2ba43b700ec48f410d444
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Mar 25 18:51:09 2020 -0700

    carbon ad: remove hardcoded center

commit c596b599a31d36108d18cc05cc9fdfb6d6f4deb0
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Mar 24 21:18:10 2020 -0700

    remove promisify where possible

commit 54a72e06564b9493a7fc8e1c14eaa6db4ecfc663
Merge: 84aa369 8cae23e
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Mar 24 21:15:18 2020 -0700

    Merge pull request #87 from feross/manifest-maskable
    
    manifest: Remove white outline from android icon

commit 84aa369387118e831676324dd7b51f3d78d82e6c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Mar 24 21:13:55 2020 -0700

    remove mkdirp package

commit 87a891823e1b234b42220fa721a1c6c7c9ddcc48
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Mar 24 18:41:50 2020 -0700

    fixes for purgecss@2

commit 94cdc26f195b70f590af1c21c54ca5bbb1da9620
Merge: 54bc71f a2ae6e1
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Mar 24 18:44:33 2020 -0700

    Merge pull request #88 from feross/greenkeeper/husky-4.0.2
    
    Update husky to the latest version 🚀

commit 54bc71f03bfeb71598aad588a72d7a6bc4837b91
Merge: 22221af 5b5de5c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Mar 24 18:43:41 2020 -0700

    Merge pull request #91 from feross/greenkeeper/quick-lru-5.0.0
    
    Update quick-lru to the latest version 🚀

commit 22221afaf94617f388d71e1fdc0a407e85488fac
Merge: a51bf82 7a1cf95
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Mar 24 18:43:19 2020 -0700

    Merge pull request #92 from feross/greenkeeper/p-memoize-4.0.0
    
    Update p-memoize to the latest version 🚀

commit a51bf82b6b8ecea1ee9d631c1ebb83c4f3376fdd
Merge: ee29ed2 84e9525
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Mar 23 19:47:23 2020 -0700

    Merge pull request #89 from feross/greenkeeper/purgecss-2.0.3
    
    Update purgecss to the latest version 🚀

commit ee29ed25bab0a771b7c813a1c926566645998e41
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Mar 23 19:44:59 2020 -0700

    fix for uuid@7

commit 55d906cd56726ad49e0dfe1506ba4100bba35ed5
Merge: a6fda6b ed1bf75
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Mar 23 19:42:35 2020 -0700

    Merge pull request #93 from feross/greenkeeper/uuid-7.0.0
    
    Update uuid to the latest version 🚀

commit ed1bf7511e2f21331cd1c0575dbbc3fa3bc48b67
Author: greenkeeper[bot] <23040076+greenkeeper[bot]@users.noreply.github.com>
Date:   Mon Feb 24 13:25:45 2020 +0000

    fix(package): update uuid to version 7.0.0

commit 7a1cf95e001555af58659f249ace8e0b56267781
Author: greenkeeper[bot] <23040076+greenkeeper[bot]@users.noreply.github.com>
Date:   Mon Feb 17 16:31:55 2020 +0000

    fix(package): update p-memoize to version 4.0.0

commit 5b5de5c9aa4d4286e6b6d00229e65f01c1d0154d
Author: greenkeeper[bot] <23040076+greenkeeper[bot]@users.noreply.github.com>
Date:   Thu Feb 13 13:18:51 2020 +0000

    fix(package): update quick-lru to version 5.0.0

commit 84e9525b91966e80e91f6187a4daaafe1e39b844
Author: greenkeeper[bot] <23040076+greenkeeper[bot]@users.noreply.github.com>
Date:   Sat Jan 18 19:49:20 2020 +0000

    chore(package): update purgecss to version 2.0.3

commit a2ae6e13099b832874029b88a6a55b07f2e60624
Author: greenkeeper[bot] <23040076+greenkeeper[bot]@users.noreply.github.com>
Date:   Thu Jan 9 04:20:13 2020 +0000

    chore(package): update husky to version 4.0.2

commit a6fda6b0f312e202b7c53a783af7f2df0ced49f8
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jan 6 20:59:16 2020 -0800

    pageSize 10

commit 87d621b020d0908663316f255fbc94d58253ffb4
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jan 6 20:56:18 2020 -0800

    disable adsense

commit 4f78bf7f1cbc97fb45685d39997ab74bbf0a5679
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jan 6 20:56:07 2020 -0800

    make feed ads show multiples of 9

commit d2f5301e72afa4d105f3966247917ef6bed14e06
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jan 3 14:42:26 2020 -0800

    Update rollbar.js

commit 4c7114fd0a1b9e6d1da60fa5a3dc93fc10f4ce9c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Dec 30 21:20:57 2019 -0800

    make search placeholder text more explicit

commit cb430dde90a63407a35902b92d7c9f3f8d9c1f22
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Dec 30 00:50:55 2019 -0800

    add links to reddit and discord

commit 78555985829ab67c2be0867b86b0cb93590adc91
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Dec 30 00:11:50 2019 -0800

    fix Random so it doesn't re-randomize after picking one

commit 9176ef96b0b2c76b4caa8bd46b5b72df27cdaf9c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Dec 29 23:27:37 2019 -0800

    add RelatedPage

commit 939a4ae7c026c8cae9d4374deeaba8dd52c57986
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Dec 29 23:27:01 2019 -0800

    center carbon ad in carbon class

commit de3ac010251fad6de52068cba53812557a859c13
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Dec 29 22:50:58 2019 -0800

    search page: page 2 and later ads

commit b2a496b1de4924e3a28022e22652f6007a4686d7
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Dec 29 22:50:23 2019 -0800

    home-page: mid-feed ad

commit ba7ab97bee18618ecf7a5e63702a6bb65eb4d9ca
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Dec 29 21:37:26 2019 -0800

    listen on localhost only

commit 243148d3d520f777f2693ca688b4b973050bcb9d
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Dec 29 19:38:57 2019 -0800

    memoize: 50k items

commit 5b81dbfbadac74dbf1722e16b5d9066764ea5422
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Dec 29 19:38:48 2019 -0800

    style

commit 3cbac65069fb7aa17ff85b9e736e2dc882eca930
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Dec 29 19:38:43 2019 -0800

    pageSize = 20

commit 4354139678a3e3077ef1c9e48bbaf44e97b28910
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Dec 29 19:15:20 2019 -0800

    share-twitter: better messages

commit 915193c3dee8621b6db8c7cb391234a7c63f81ca
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Dec 29 17:26:04 2019 -0800

    unmute-ios-audio@3

commit 714bc6ff4eec4bef3162e579a65fc8b1fb328aa9
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Dec 29 13:22:37 2019 -0800

    share-reddit: add "MIDI file – " prefix

commit 464530573fb13278c494be45e6eda5c9bb331c9b
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Dec 29 11:14:35 2019 -0800

    Publish code to npm package 'reddit'

commit a1b4e0a2bc1ae5daef0d54675c0a37c970d768d7
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Dec 28 19:16:07 2019 -0800

    robots.txt: disallow /uploads/

commit 8ceaaede10ea88c5428be029a958631778729b68
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Dec 28 19:15:51 2019 -0800

    Post to reddit on correct schedule again

commit 165baedbc20d0463e41334d2ee2ea77622422fbc
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Dec 28 19:02:08 2019 -0800

    temp test reddit posting

commit a548c1289a82e675a0e1aaae95c6c7180260892c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Dec 28 19:01:47 2019 -0800

    fix reddit posting

commit 53925ace66933638f4f1c8b857862f0f8a7d2f8a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Dec 28 18:53:45 2019 -0800

    temp test reddit posting

commit fe5c4cfa77a90e4ba584fc54330ea5363d5c52e9
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Dec 28 18:49:14 2019 -0800

    temp test reddit posting

commit fe4d74c8f12b172d32ef97d9a1c4efbacf1d2bff
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Dec 28 18:33:24 2019 -0800

    temp test reddit posting

commit 49c85dafb09e4f61a9f5d4582a8079b912cb8bf5
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Dec 28 18:30:23 2019 -0800

    add daily post to reddit

commit 81509f57fca9bad03ab5199adaee5051e12b506e
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 27 19:47:56 2019 -0800

    supervisor: rely on package.json main field for filename

commit 4d301889c2ebfd42b514a12504aed11c0df516ed
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 27 19:45:07 2019 -0800

    cleanup

commit b458e5c11bc102f5af59ea296fd7315811b859f9
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 27 19:42:03 2019 -0800

    move css file to src/css folder

commit 420f4a13d730d7fc6253bf19d61756f22ef72a4e
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 27 19:28:05 2019 -0800

    *.mjs -> *.js

commit 704c1490daf9fef543687fa48bacbaa1471a80b8
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 27 19:23:50 2019 -0800

    *.mjs -> *.js

commit 7f00ef3ce317fd90ebeb790893e150cc01f69fad
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 27 18:58:19 2019 -0800

    readme: note which deps needed for prebuilt cwebp on linux

commit 97c21faefb9b1e4518ba537e1e7a92083819afa4
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 27 18:36:07 2019 -0800

    model: Avoid calling runAfter when debug is disabled

commit 0cccb96b7066d55d7290c935df3aeb250cdcac84
Merge: 81014cc f6adecd
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 27 18:41:23 2019 -0800

    Update path-to-regexp to the latest version 🚀 (#83)
    
    Update path-to-regexp to the latest version 🚀

commit 81014cc966ad6d76743cb292ddb0deec06bc1d1a
Merge: 94de5c3 37d0a58
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 27 18:39:11 2019 -0800

    Update ejs to the latest version 🚀 (#85)
    
    Update ejs to the latest version 🚀

commit 94de5c3fbe9d4aabb0039bdc452f9f4587bba911
Merge: 9496e44 f476e27
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 27 18:37:30 2019 -0800

    Update nodemon to the latest version 🚀 (#84)
    
    Update nodemon to the latest version 🚀

commit 9496e44c8c0e791f2e8bc494ff31529eae733abc
Merge: f70bb9a 116b9d4
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 27 18:34:30 2019 -0800

    Update objection to the latest version 🚀 (#86)
    
    Update objection to the latest version 🚀

commit 116b9d40ee3c72690526bee1b3203efc6bd53d8e
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 27 18:31:55 2019 -0800

    Fixes for objection 2

commit 8cae23e35b00de54364018d82350fba580eb85f6
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 27 17:57:21 2019 -0800

    manifest: Remove white outline from android icon

commit 15b7a139bc13f0d85e966109087733deab3618d1
Author: greenkeeper[bot] <23040076+greenkeeper[bot]@users.noreply.github.com>
Date:   Sat Nov 30 20:32:31 2019 +0000

    fix(package): update objection to version 2.0.0

commit 37d0a584217469c13b772442cc58bc6fa8dbba05
Author: greenkeeper[bot] <23040076+greenkeeper[bot]@users.noreply.github.com>
Date:   Sun Nov 24 01:51:01 2019 +0000

    fix(package): update ejs to version 3.0.1

commit f476e2795af302b7bdddc7be02f3f10fbfa7c632
Author: greenkeeper[bot] <23040076+greenkeeper[bot]@users.noreply.github.com>
Date:   Wed Nov 20 15:48:53 2019 +0000

    chore(package): update nodemon to version 2.0.0

commit f6adecd8625146ef73a780842263b457fdb0c67f
Author: greenkeeper[bot] <23040076+greenkeeper[bot]@users.noreply.github.com>
Date:   Wed Nov 20 04:14:46 2019 +0000

    fix(package): update path-to-regexp to version 6.0.0

commit f70bb9af64fa2af33baf88bb6b6635c7dc5f5223
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Nov 16 17:08:44 2019 -0800

    Fix uncaught exception

commit 92564c5f6c10d083ccb3787ed5b1ca10928afa47
Merge: ffe4165 f4cea80
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Nov 12 16:12:42 2019 -0800

    Merge pull request #82 from feross/greenkeeper/drag-drop-6.0.0
    
    Update drag-drop to the latest version 🚀

commit f4cea803adfde9bafc112d8011788d9003bb64f0
Author: greenkeeper[bot] <23040076+greenkeeper[bot]@users.noreply.github.com>
Date:   Wed Nov 13 00:07:15 2019 +0000

    fix(package): update drag-drop to version 6.0.0

commit ffe4165170e916945c8d757097a9461ef34e1290
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Nov 12 12:39:48 2019 -0800

    update for path-to-regex 5

commit 90ab169d3730337d95b13bff976e3dfe5aacf709
Merge: ba2f71f 341339e
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Nov 12 12:11:50 2019 -0800

    fix(package): update path-to-regexp to version 5.0.0 (#81)
    
    fix(package): update path-to-regexp to version 5.0.0

commit 341339ed7ffad37b2944eaa09d32170ce5f9c440
Author: greenkeeper[bot] <23040076+greenkeeper[bot]@users.noreply.github.com>
Date:   Tue Nov 12 12:04:02 2019 +0000

    fix(package): update path-to-regexp to version 5.0.0
    
    Closes #80

commit ba2f71f2d0c37103ef4dac4ff610f684ab7f20ee
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Nov 6 09:12:35 2019 -0800

    remove rollbar info log

commit a255470a67fed25dd16a8ec4a819a9dc5b90f60c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Nov 6 08:52:43 2019 -0800

    Update deploy.sh

commit 4bdeda7254aa369a818c2a7b707390f9ab80da0d
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Nov 1 12:07:29 2019 -0700

    Handle invalid/unparseable URLs

commit 209eb127e41e0e9bbdba0981069f8fb2d3636a31
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Oct 26 17:07:19 2019 -0700

    tweak limiter

commit d2c7843e2ca8c881c37a396b8d9321814615fb79
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Oct 26 16:51:55 2019 -0700

    limiter: add rollbar

commit 0d589f7ba5c53bbbfde652027383b7cc3a8f4b47
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Oct 26 16:41:53 2019 -0700

    tweak rate limiter

commit e5243569a902defbd1553c69ef9afa2124761a11
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Oct 26 16:05:48 2019 -0700

    block bots

commit 88492cffea3d658c06dea9acdc27c0798b29b9e5
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Oct 25 23:16:01 2019 -0700

    fix href='false'

commit f91a23083123b37c93c78cfdd681280f09054c63
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Oct 25 23:15:53 2019 -0700

    Update package.json

commit 5d91f3935a9468e6f23f175139b969948d4b36ea
Merge: c39f747 22dd512
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Oct 25 19:23:36 2019 -0700

    Update knex to the latest version 🚀 (#79)
    
    Update knex to the latest version 🚀

commit c39f747dafd43cd7d6a0dc3d4d4c8aceaadf53a5
Merge: c18d915 786a7fc
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Oct 25 19:19:01 2019 -0700

    Update puppeteer to the latest version 🚀 (#78)
    
    Update puppeteer to the latest version 🚀

commit 22dd512d42d3844e71be3879fd3e07f15d025a82
Author: greenkeeper[bot] <23040076+greenkeeper[bot]@users.noreply.github.com>
Date:   Fri Oct 25 21:20:59 2019 +0000

    fix(package): update knex to version 0.20.0

commit 786a7fc24691bb3908e1a3d9e4a5b09bf0d678ca
Author: greenkeeper[bot] <23040076+greenkeeper[bot]@users.noreply.github.com>
Date:   Thu Oct 24 13:26:04 2019 +0000

    chore(package): update puppeteer to version 2.0.0

commit c18d915ee030b4b68098ee8b9ae8205d0f35570b
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Oct 23 19:08:58 2019 -0700

    Update trigger-deploy.sh

commit 0b4e0bb7dc2c456707d6b6c39050ca4311a274e9
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Oct 23 18:58:16 2019 -0700

    Update deploy.sh

commit 583ea5faa902c145be93121914b1295cfc26bb18
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Oct 23 18:45:13 2019 -0700

    fix deploy script

commit 829a99f1a34d2b44faa9d770ea083f043d299b0a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Oct 23 18:26:36 2019 -0700

    add trigger deploy script

commit 7e3a8861ffa20342c2778632ea46862d78e03a28
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Oct 2 14:35:52 2019 -0700

    bump deps

commit fd1ed166097bb7db312d75146d609d51b29907d5
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Oct 2 14:13:00 2019 -0700

    midi page: only carbon

commit adee4dd36973914255955916e8b11ba3500daed3
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Oct 2 13:56:53 2019 -0700

    autoplay timeout 1 min

commit 9c138593d7cf59ec9d1149847e8583afc8c436c3
Merge: 4beb438 3fc1de2
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Oct 1 21:47:47 2019 -0700

    Merge branch 'autoplay'

commit 3fc1de2f0c709af3ac5596d97ed0d990b6daffde
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Oct 1 21:32:22 2019 -0700

    add autoplay

commit 4beb438852281397121979f70e08609bc67a47ed
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Oct 1 21:31:53 2019 -0700

    add autoplay

commit 0e94243ef5bae287cb75b54c676436ae5f1045c3
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Oct 1 20:11:16 2019 -0700

    Update to Preact X

commit 946460a0dccbff436e75747bd1a406e03a876476
Merge: 11a1a91 d6cf50f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Sep 22 11:28:55 2019 -0700

    Update ora to the latest version 🚀 (#75)
    
    Update ora to the latest version 🚀

commit d6cf50f8b41c55c5f40ff23703231206aae8a4ac
Author: greenkeeper[bot] <23040076+greenkeeper[bot]@users.noreply.github.com>
Date:   Sun Sep 22 09:00:47 2019 +0000

    chore(package): update ora to version 4.0.0

commit 11a1a912c8709ac530acffca9d1c0659d8e1ca47
Merge: 7a5e670 3fd0df2
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Sep 17 17:33:32 2019 -0700

    Update image-size to the latest version 🚀 (#74)
    
    Update image-size to the latest version 🚀

commit 3fd0df296881e3d4068766a2b1fe7b042bebc753
Author: greenkeeper[bot] <23040076+greenkeeper[bot]@users.noreply.github.com>
Date:   Tue Sep 17 11:42:19 2019 +0000

    fix(package): update image-size to version 0.8.0

commit 7a5e6709a0d4dd4d3faa73e5a9032499cf5fec3e
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 28 22:52:53 2019 -0700

    force babel-eslint@^10.0.3

commit edb2da82ffa40722ac05bdb10516d1e8f97c160b
Merge: 7941b4e 6e23d07
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 28 13:13:50 2019 -0700

    Merge pull request #72 from feross/greenkeeper/drag-drop-5.0.1
    
    fix(package): update drag-drop to version 5.0.1

commit 6e23d072fb871a8485ccb5b9dea26a762609f546
Author: greenkeeper[bot] <23040076+greenkeeper[bot]@users.noreply.github.com>
Date:   Wed Aug 28 20:04:31 2019 +0000

    fix(package): update drag-drop to version 5.0.1
    
    Closes #71

commit 7941b4e29820756e93c3ac801d9aefc3a77d38e6
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Aug 23 17:00:45 2019 -0700

    ads: disable AdsenseFeed2

commit a256ba3a6ca8860675c3e0682f027561e6f3e03f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 14 18:18:21 2019 -0700

    sort all props

commit e0e25d6c006532733d2898248e0306b6789570a9
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 14 17:48:12 2019 -0700

    standard

commit 9c3e0a5e818cfce6288ca821c2787e02b7b7d2ae
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 14 17:19:08 2019 -0700

    standard

commit 67ed076abf17b0560a7bad60a249fcb4b97eb95c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 14 17:10:45 2019 -0700

    standard

commit 139f30f75055ebef597c5a44a59888609eb49654
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 14 17:07:38 2019 -0700

    standard

commit 5ec3bba6310d1ba22a2a9713eb0bf1c088eaaa8b
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 14 16:29:41 2019 -0700

    standard

commit 18e781fc74e933e8c360073e109abb4d33970e84
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 14 16:13:11 2019 -0700

    standard

commit 5741108ea9e3ef09ed8654f2120768d199e35b9f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 14 13:21:25 2019 -0700

    Update deploy.sh

commit d2bea8274e53b05da39dae4d47caecdfcf05d16d
Merge: 2ce6c92 3f3775e
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 14 13:14:10 2019 -0700

    Merge pull request #70 from feross/greenkeeper/rimraf-3.0.0
    
    Update rimraf to the latest version 🚀

commit 3f3775e1cf0cc1685491d8c59b23e95edaba2646
Author: greenkeeper[bot] <23040076+greenkeeper[bot]@users.noreply.github.com>
Date:   Wed Aug 14 18:22:30 2019 +0000

    chore(package): update rimraf to version 3.0.0

commit 2ce6c92edf366c21147d3ccbdb600888097e20dc
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Aug 13 20:32:14 2019 -0700

    standard

commit d116d05c4fe941fdcff09b18d0584535a124170c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Aug 13 17:02:48 2019 -0700

    standard

commit 7151511ec37cf935db1139ceceba182c6d42cc77
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Aug 13 17:01:59 2019 -0700

    prep for standard 14

commit 7286959fd36a9f9721430ae5298e831a6317622f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jul 22 18:18:07 2019 -0700

    api: add CORS to /midi/get and /midi/search

commit dc6df70db5d395bb7bfcdd4ac366a3f89c0b95dc
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jul 22 08:35:05 2019 -0700

    only show display ad at top

commit 97664c26b8746941878d24ea1f307dbc2cdcb1a6
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 19 14:22:16 2019 -0700

    add cors to timidity files

commit f2983415ec4081a7c12f7976598a450aac851e24
Merge: 2344b1b a67077d
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jul 11 14:57:05 2019 -0700

    Merge pull request #68 from feross/greenkeeper/knex-0.19.0
    
    Update knex to the latest version 🚀

commit 2344b1ba24784d462d1d74d54d566d945677f396
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jul 11 14:10:41 2019 -0700

    standard

commit a67077de656965e67029882b23734e59906e91db
Author: greenkeeper[bot] <23040076+greenkeeper[bot]@users.noreply.github.com>
Date:   Thu Jul 11 13:41:37 2019 +0000

    fix(package): update knex to version 0.19.0

commit f780d0a1a4a958249cd8853d96f159ad17239ed9
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jul 8 12:58:54 2019 -0700

    nginx: fix upstream syntax

commit c0d6b1a866edbe9c94a55014acda1a53c9b12143
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jul 8 12:55:24 2019 -0700

    nginx: use both node backends

commit 44311d684908331b3e0b9ebfd15542ad3b317e79
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jul 3 16:53:26 2019 -0700

    midi page: show 2 adsense

commit 9e636a9a71eb1002c284e135831ae0440cc1b0dc
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jul 3 16:45:16 2019 -0700

    remove link unit ad from midi page

commit bdae4e441ae1f7472f6fc3e2252f65829c5a1d68
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jul 3 16:45:04 2019 -0700

    Rotate carbon/adsense on midi page

commit ed7a7432435bdcdfc5ca8a52223aef0cbb6f1901
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jul 3 16:43:34 2019 -0700

    home page: extra ad at top

commit 49103fc2639742f63a1030a34e593a72cf5595df
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jul 3 16:40:02 2019 -0700

    configure page size

commit c5a1c733549a8b1b1d2084b1ab98e191ee20c522
Merge: edc7a9d 5da1f9e
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jul 3 15:26:04 2019 -0700

    Merge pull request #67 from feross/greenkeeper/husky-3.0.0
    
    Update husky to the latest version 🚀

commit edc7a9d98a541e60b910b88705c1a00e22f20262
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jul 1 13:37:26 2019 -0700

    slightly gray images in dark mode

commit 5da1f9e825fd89b145711d018e5329d85bb8fc91
Author: greenkeeper[bot] <23040076+greenkeeper[bot]@users.noreply.github.com>
Date:   Mon Jul 1 19:47:11 2019 +0000

    chore(package): update husky to version 3.0.0

commit c9fb1d164843ae094dba28e9f9534dc9c8be11be
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 29 22:33:34 2019 -0700

    router should return api error for all method types

commit 1374b44b5da724b580762aa6091bba17ed00c431
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 29 17:38:40 2019 -0700

    fix knex migrations script

commit 346ee6995ae959bead3c1332531703f374ac1597
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 29 16:50:07 2019 -0700

    Update index-sample.mjs

commit b098dae1c7b70a176e045b822d8e2f9108f4fa0b
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 29 14:10:49 2019 -0700

    remove 500 file

commit e00fbe276694bc3f006fa9861b7e9fbd13aad509
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 29 13:46:19 2019 -0700

    remove polyfill for node 8

commit 0447acbb695857723696059f6415130117cbbba3
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jun 28 21:26:55 2019 -0700

    properly center carbon on mobile

commit b4253b6771798ef7686eb5d9b0e2e2843d5bff09
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jun 28 21:14:28 2019 -0700

    fix carbon ads in dark mode

commit da03718711364dd5115ca19b362565b1591f2f34
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jun 28 18:18:24 2019 -0700

    add deploy script

commit 70194bf0f5c4b57b100234d499e1b5b0c60b7321
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jun 28 18:05:46 2019 -0700

    Update nginx.conf

commit b43cff3f9338d3bad0c4fbd46f4b100f24d72404
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jun 28 17:12:56 2019 -0700

    express-sitemap-xml@1.1

commit b8ea6bbd7a3d829581a5d023fc68ed6a7a5f83bd
Merge: f33b0b9 ea7fe64
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jun 28 17:18:19 2019 -0700

    Merge pull request #66 from feross/greenkeeper/knex-0.18.0
    
    Update knex to the latest version 🚀

commit ea7fe64c57b3a40539aa928d818c1d392fc731a7
Merge: 9650d62 f33b0b9
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jun 28 17:16:39 2019 -0700

    Merge branch 'master' into greenkeeper/knex-0.18.0

commit f33b0b94d383ca9ba94661fa6965751797ff2553
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jun 28 14:30:05 2019 -0700

    load-script2@2

commit 02e11e4c0f1f5057c249a45917f18f45f1be62a0
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jun 28 13:48:31 2019 -0700

    add missing load-script2

commit b22d71a33b1e0604c8bddcfbb2872c42c7483cdb
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jun 28 13:40:12 2019 -0700

    standard

commit ca578509c66a7a040359b4670db9fab2e81edaa4
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jun 28 13:36:13 2019 -0700

    fix carbon ad

commit 3746a947aeb55bc815c17f70fc01b69ca36734d1
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jun 28 12:47:39 2019 -0700

    standard

commit 07110bd139f1c4ffc086fed506c5986baf70761f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jun 28 12:45:38 2019 -0700

    carbon: test ads

commit 0bee9cbdcc6e870216dcc1f3e3a217a626cee6ae
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jun 28 12:45:31 2019 -0700

    adsense: add more checks for props

commit 4d6aa7474ee1bde44ce1250a5d9d12a86e634e09
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jun 28 12:45:11 2019 -0700

    move adsense script to bottom of page

commit abe10ae15b21e03a17efeae202c298bf473a9048
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jun 27 17:19:32 2019 -0700

    disable security headers for ads

commit ab4c7e31a63a214a567eaabd10fed8dc20216886
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jun 27 16:49:21 2019 -0700

    temp re-enable all security headers

commit 25d3d7ae342d4bbf35226c028aa1a4f6e2c06bf9
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jun 27 16:47:32 2019 -0700

    adsense: remove commented code

commit 2b06c15e2dbee53546cf9918a6a4103b041dc6e9
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jun 27 16:30:55 2019 -0700

    Update nginx.conf

commit 85f92f92fcac6d463874141405a792a7507b5efb
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jun 27 16:11:45 2019 -0700

    block bad user agents

commit 9650d621bdabe73b62e51a801c49708dddb881ca
Author: greenkeeper[bot] <23040076+greenkeeper[bot]@users.noreply.github.com>
Date:   Wed Jun 26 14:32:49 2019 +0000

    fix(package): update knex to version 0.18.0

commit 9eac0061ca93bd86e23b9388d6cdfc88589600df
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 25 17:00:06 2019 -0700

    fix date feed exception

commit ba4c04dae00f6e05ab40cea0a99c11dc81a5de80
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 25 16:59:27 2019 -0700

    fix date feed exception

commit 274b5ef50aeb30f95b1d2fa1b08abbe999809426
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 25 15:52:04 2019 -0700

    always return string dates

commit a2141c2264af900d9e5f94f601da334ef848cdf0
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 25 14:56:16 2019 -0700

    timidity@1.1

commit a8ddcddc60ce74d242cba87b54e2e92cf5da072a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 25 12:56:12 2019 -0700

    don't load adsense script in dev

commit 010d42cd9c046816cc5a532e1d5fd512015ef4d1
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 25 01:35:03 2019 -0700

    fix padding

commit 9a3b08cf826bb9ebc633bcb5aa64c930c71fa61b
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 25 01:33:06 2019 -0700

    update ad styles

commit d132ca9640532b8b02f8a1ed2d1aabb820881642
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 25 01:24:42 2019 -0700

    adsense: fix class getting overridden

commit 34636977e532bd0d3474262101bdaafde4d72700
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 25 01:20:35 2019 -0700

    add related midi ad

commit 3ad596e8f9e39c118f26187c4f864fbc23f0badd
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 25 01:01:31 2019 -0700

    add random midifeedad, with images + without

commit 1403651ca1aece2e88e56d4f71f8a397b58294a7
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 25 00:50:50 2019 -0700

    adsense: add back surrounding div

commit b4170aa3a70b38a86eeede9c376b38d7d74a6281
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 25 00:39:59 2019 -0700

    add feed ad

commit 449112de3c18d07053c4d1a01bb44cace9c2f01f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jun 24 18:43:30 2019 -0700

    standard

commit 1adb9c7485ebd873dd73e009732db5f2f9166c55
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jun 24 18:41:44 2019 -0700

    remove frame-ancestors so embeds work again

commit c61489f51f9a683e39476469cfc7743008562dba
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jun 24 18:38:53 2019 -0700

    adsense: go full client-side react component approach

commit 5f3fe8f73d33f4a070680563a9d0b6f012c2292c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jun 24 17:50:29 2019 -0700

    adsense: only ssr the ads. do nothing on client (in progress)

commit b80149d57bcdbdc44c02aa9d27c87e28d499889f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jun 24 17:45:31 2019 -0700

    move div#root to site layout

commit 6ff131618059fe09f547fd33765fc81a393de1dd
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jun 24 17:42:44 2019 -0700

    Use preact-render-to-string; remove my implementation

commit 434f5e86ea3098a2fcb70f662fb05336ea180c2e
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jun 24 17:40:59 2019 -0700

    bump preact

commit b1b44a0d1abc583d3965a9bd4803d9874dbe8d36
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jun 24 17:12:59 2019 -0700

    don't crash on ssr=0

commit ea821752592b9e991a05b8045dd524684238637a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jun 24 14:52:15 2019 -0700

    testing: disable all CSP

commit ee7a78a88ad8842bf3f2b6b80aaa9b6c270d2ceb
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jun 24 14:51:56 2019 -0700

    correctly output adsense script for ssr

commit 4c4995d0779dec49422d5ad08c831346a451d66a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jun 24 14:50:35 2019 -0700

    dom renderer: pull out regexs

commit 7d5add8fbca2ddcc705c89359affd040e038494c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jun 24 14:44:24 2019 -0700

    dom renderer: output ='true' for data- attributes

commit 8d97d32d7ee5c03860d942e5841a0cf7fdc57f1a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jun 24 14:25:03 2019 -0700

    Include adsense script in ssr

commit f8f0cc796baa3a75bbe86d237580ee891cc9cf94
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jun 24 13:34:41 2019 -0700

    Move adsense to head

commit c21d75036555580949e8d0d60f957e00eb726461
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jun 24 09:29:04 2019 -0700

    adsense: never update component

commit 7fa81b366acb088c536ff07901c20c72436495e6
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jun 24 09:15:57 2019 -0700

    add adsense

commit 21bd5e8d37a61e1c85b2eecfaa0c2cac09a7fce9
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jun 24 08:52:04 2019 -0700

    Update ads.txt

commit 75ed7d3f40327047623de015dfb0c318f0bc67ea
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 23 22:08:59 2019 -0700

    move adsense script to bottom of page

commit ea4d964dd426e8475c53e2e7b29ced00e39bcb63
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 23 21:50:59 2019 -0700

    Remove strict-dynamic to enable AdSense
    
    UGH :( :( :(

commit 2764892e796009810f82ad54ba64ed9c0d11c1fe
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 23 21:36:53 2019 -0700

    deploy: stop removing node_modules

commit 2d58d9733196c04e0868feb44129f08a18a019c3
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 23 21:35:18 2019 -0700

    fix CSP

commit a1fcc271bb3dfe08628289b11b0b9166641e2deb
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 23 21:29:42 2019 -0700

    CSP: frame-src: * for AdSense

commit 91c93e989fd118a7f5351955eb45f72d9205dde5
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 23 20:51:25 2019 -0700

    add nonce to adsense script

commit 99adbdd26a5d9f680d69896754460840b961f0a6
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 23 20:49:33 2019 -0700

    Create ads.txt

commit 92136bfb12bbdf950e02bec881898f732c682a7b
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 23 20:46:26 2019 -0700

    add adsense to head

commit 4569355deed58500860c2301fbf1a23fc324e7f5
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 23 20:39:27 2019 -0700

    remove conflicting class

commit 1d960239060fe0e8955ae9ff2da9134d5670b49a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 23 20:38:21 2019 -0700

    embed: move play button to the top

commit 5a85701e4dc405afe562a2c2494bbdf8adfb28f5
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 23 20:28:05 2019 -0700

    embed: Raise play button so it's not blocked on Twitter iOS

commit d9bc5315504dbcf5517e86f3942341447c9c9fce
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 23 20:11:57 2019 -0700

    autoplay in Firefox or when useractivation is present

commit abbf9c56ea8a543fd96ac659b33ad2933161f4ad
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 23 19:57:22 2019 -0700

    fix embed page crash with ssr

commit 5ce2500ef49cc1e45553880f049f58219d1d5c56
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 23 19:48:02 2019 -0700

    add hack to autoplay on Chrome/Firefox only

commit d03d5085aaba0ff293326cc9c4d5515fc2676baf
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 23 19:43:30 2019 -0700

    Revert "test embed autoplay in safari with Cross-Origin-Opener-Policy disabled"
    
    This reverts commit 83bf2a487d4189299ffd9d789d8e1eccc95c6920.

commit c30279c7075331e8db38573607c500b0ce4ba24b
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 23 19:43:02 2019 -0700

    Revert "twitter embed: test fix for safari"
    
    This reverts commit 32fe2430fe22f78d272e91cf6fab8ea43ced6f26.

commit 08206cd95ef906a1604d228165963c9538e91533
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 23 19:42:58 2019 -0700

    Revert "embed: test fix for safari"
    
    This reverts commit 1614319f2c549c41996b1fbdd7d8adc1ebbe9365.

commit 1614319f2c549c41996b1fbdd7d8adc1ebbe9365
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 23 18:57:38 2019 -0700

    embed: test fix for safari

commit 32fe2430fe22f78d272e91cf6fab8ea43ced6f26
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 23 18:50:46 2019 -0700

    twitter embed: test fix for safari

commit 83bf2a487d4189299ffd9d789d8e1eccc95c6920
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 23 18:38:36 2019 -0700

    test embed autoplay in safari with Cross-Origin-Opener-Policy disabled

commit b93661d40a711569ed62919ab280fe1bd7b51cb1
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 23 18:29:16 2019 -0700

    Revert "Revert "add back header for Chrome bug report""
    
    This reverts commit 8ea783c4fbce639d3e25c1d458bc9f9256bb2049.

commit bce5edf0b684819e8059bc3f9db9c9949476baca
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 23 18:22:00 2019 -0700

    try hasBeenActive

commit 45b24f7d1a46e2d3e800cfcb541a986b2104b0cc
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 23 18:15:56 2019 -0700

    twitter embed: only autoplay when userActivation is active

commit 5989545d5f3705e1080adf2970aef64b399bc605
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 23 17:57:42 2019 -0700

    fix twitter embed size

commit a4308274d0594f662a23347ef4f5691382d8ea8b
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 23 17:50:15 2019 -0700

    embed: always show image, height 100%

commit ef2718881ed359aad4dbc040407e72efd6968687
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 23 17:19:57 2019 -0700

    tweak twitter card dimensions

commit ca15684bf0102e2a0521409a95a40bd8632d7967
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 23 17:11:28 2019 -0700

    Prevent embed page from being indexed

commit f2bac43d038f81be45f4ac861e8dc009929a946c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 23 17:08:15 2019 -0700

    Properly size twitter player card, include images

commit 72042c7c5d46c5d96f7949a24f9fa45456c3d066
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 23 16:57:12 2019 -0700

    embed: Add autoplay url param support

commit a23f8d39136644f2d401e3c2a9bbece39fc2c3ee
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 23 16:40:12 2019 -0700

    show twitter player card at 100% width

commit e57aed9d6ed823882879dffe2022d99c54445656
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 23 16:35:22 2019 -0700

    twitter player card tweak

commit 584a935c08534379d3dd3b9f066ef0cf20bf94e6
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 23 16:24:46 2019 -0700

    loosen frame-ancestors for Twitter Player Card

commit 50bfbae330726c946e193fc33bc5d240fd7627ba
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 23 16:07:07 2019 -0700

    cleanup context access

commit e36969983a84b1af3b8bee65dbbf20d19d82259c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 23 16:05:11 2019 -0700

    add basic embed page

commit 599db4f8765089f9b3e3fca36b37907b6b767313
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 23 15:58:16 2019 -0700

    add static variables to pages to show/hide header/footer

commit a942c684681eb695ab0602b091f7ba7ed9b828fd
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 23 15:10:17 2019 -0700

    remove Redirect from /1 to /009count-mid

commit a0606e8400fbca5816bbd417356eee2d90130019
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 23 14:45:33 2019 -0700

    add twitter:creator meta tag

commit 94c20294ac7a8c11121e2ed60b944235878c9a6e
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 23 12:20:34 2019 -0700

    add bug link to TODO comment

commit 6334bb579893a34501a88f965881bed6778f35b9
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 23 12:15:49 2019 -0700

    Add Dark Mode support

commit 384223e25251607447249e450dfd9c5e9435cbb2
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 23 11:43:01 2019 -0700

    remove invalid class

commit 9c38a06a8ec2faf457ff0deef4c8bc76b0ee6b1b
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 23 11:40:26 2019 -0700

    rebuild css on ejs changes

commit ef7177e5ba7caa7b2c24b96a20c71ba59755d3c4
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 23 10:26:59 2019 -0700

    Make Quantcast work in SPA

commit b4017fef31a94189bef0fca0ce9c43688ad2f5ed
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 23 10:23:27 2019 -0700

    Correct mime-type for streaming wasm compilation is set by express now

commit 3ffa0c6385403684658f0f97e800f53c7bb0ce13
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 23 09:47:00 2019 -0700

    inline css for offline page

commit a6dc3eedca92a7a76434bbb1138a8d3276572813
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 23 09:10:02 2019 -0700

    Serve MIDIs with CORS headers
    
    For https://twitter.com/notwaldorf :)

commit 8ea783c4fbce639d3e25c1d458bc9f9256bb2049
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 23 08:58:27 2019 -0700

    Revert "add back header for Chrome bug report"
    
    This reverts commit 19e72689fd9b3697d28edc7c9ae7e8c223b70527.

commit 57ecb5d3de956b016d57ee58948ed26914f398ac
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 23 08:58:21 2019 -0700

    Revert "use crossOrigin-'use-credentials' for chrome bug report"
    
    This reverts commit 6862fcc7da2ee1b555473eec9901bd8cab12c70d.

commit 6862fcc7da2ee1b555473eec9901bd8cab12c70d
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 23 08:28:43 2019 -0700

    use crossOrigin-'use-credentials' for chrome bug report
    
    https://bugs.chromium.org/p/chromium/issues/detail?id=977829#c2

commit 19e72689fd9b3697d28edc7c9ae7e8c223b70527
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 23 08:15:14 2019 -0700

    add back header for Chrome bug report
    
    https://bugs.chromium.org/p/chromium/issues/detail?id=977829#c2

commit fa9040f8ee12a3cd8adda4fc27c097de73a04411
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 22 23:14:19 2019 -0700

    fix 500 page on mobile

commit 0f6146d68d437f157c6da265385c6bcee10901c1
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 22 22:51:57 2019 -0700

    add background to apple touch icon

commit 9318d748973ea9fc038734d8c29767d03d989fb1
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 22 22:32:34 2019 -0700

    fix Offline page is too small on mobile

commit e1aae36294dd051065d7c78e2179d2a468a94bcc
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 22 22:16:27 2019 -0700

    add comment explaining why header was disabled

commit 23c91966e8a26e0dbce6c56e2e1596525e637049
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 22 21:58:33 2019 -0700

    service worker: comment

commit eb681588564971f21ab39496004b0fcad23ca0f7
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 22 21:54:27 2019 -0700

    Revert "test: pwa"
    
    This reverts commit 45920c2870f17302fb47ccf14c3990aab89b4a7f.

commit 45920c2870f17302fb47ccf14c3990aab89b4a7f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 22 21:54:09 2019 -0700

    test: pwa

commit 3f664a9445c15dd5d09a99ca2560ca3a4e8cdc5c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 22 21:53:30 2019 -0700

    Revert "test: use uncompressed images, fixes add to homescreen?"
    
    This reverts commit bedeec9ba12838364849d1f96569b9041c9d8c26.

commit d7f2a4f662f9ffc999e176800e818be34fea8bdd
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 22 21:53:28 2019 -0700

    Revert "test: use directly exported image"
    
    This reverts commit ecbd7480d0c784300113177c339be7dfdaf83d02.

commit d669e6a65ef33ebe0e89c109b9805725c160d8ed
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 22 21:48:34 2019 -0700

    test: revert pwa testing changes

commit 0b81ffe44bff0af118558152935657727102c59c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 22 21:43:27 2019 -0700

    test: pwa

commit 11b967d135cb0bdcfffbf6fbbf9c600cd1605e01
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 22 21:33:16 2019 -0700

    test: pwa

commit ac6d6cc1a114e7e48a0641deb8e2e3c87d30a299
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 22 21:28:35 2019 -0700

    test: pwa

commit 2a79def07e83c640f651a879e03e20cb6f96e719
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 22 21:02:29 2019 -0700

    test: now that WebAPK works, undo some changes

commit bd7bb88aaac71129c3da01fdc8ea275442216361
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 22 20:54:32 2019 -0700

    test: make manifest file match study notes's

commit cee036abc43c69495bd36093ba4521bf5ac04053
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 22 20:40:03 2019 -0700

    Revert "Revert "test: caching homepage for android pwa""
    
    This reverts commit c21e8bbee7d21f186c9e301d8d6b75e0b593bb0e.

commit ecbd7480d0c784300113177c339be7dfdaf83d02
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 22 20:16:14 2019 -0700

    test: use directly exported image

commit c7a79f763539bb869d0a2eb8405309cb81200619
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 22 20:06:20 2019 -0700

    test: serve offline page even for non navigations, attempt to pass the add to homescreen test

commit bedeec9ba12838364849d1f96569b9041c9d8c26
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 22 19:50:44 2019 -0700

    test: use uncompressed images, fixes add to homescreen?

commit c21e8bbee7d21f186c9e301d8d6b75e0b593bb0e
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 22 19:46:41 2019 -0700

    Revert "test: caching homepage for android pwa"
    
    This reverts commit 1b7cd85b8d0d7511e26f38341444abf06003073a.

commit 1b7cd85b8d0d7511e26f38341444abf06003073a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 22 19:39:53 2019 -0700

    test: caching homepage for android pwa

commit a3896aee68208ff0629f8f0635461429df336fa4
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 22 18:55:30 2019 -0700

    hardcode a circle icon for android
    
    Fixes this issue: "Just noticed that the bitmidi icon is the same color as the inferred launcher icon background on Android P"

commit 3dd966570d52c3ae81aa2daab4d14c014d3429fe
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 22 18:34:55 2019 -0700

    manifest: change theme color to white

commit 84fd00422a1e21d3898d6561c067f67facd001e8
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 22 18:34:42 2019 -0700

    alphabetize meta tags

commit 53a1fe2a8114ba3c36b0c4bf3facff074ebe6075
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 22 16:35:12 2019 -0700

    Add image policies for fast load times and more

commit 410cec1d312971ce09a54cd8ab8114ad9cc48a0c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 22 16:27:19 2019 -0700

    fix log

commit 686da6229ac9829ddee60a7254d6e097309020d6
Merge: d590022 ffc7ab1
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 22 16:10:36 2019 -0700

    Merge pull request #65 from feross/greenkeeper/monorepo.babel7-20190426211543
    
    Update babel to 7.4.4

commit d590022e1ec3e1fa0f93c009fd9406e85eca42e6
Merge: 938eed7 4507f8c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 22 16:09:37 2019 -0700

    Merge pull request #64 from feross/greenkeeper/nodemon-1.19.1
    
    chore(package): update nodemon to version 1.19.1

commit 938eed72968d6654e7d02f8f0427ee2915d020e2
Merge: 0c95d5a 9c297b9
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 22 16:09:04 2019 -0700

    Merge pull request #63 from feross/greenkeeper/husky-2.4.1
    
    chore(package): update husky to version 2.4.1

commit 0c95d5a0a3859a386e984d571b00c2ad94b67f77
Merge: ba64cdd 075c59f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 22 16:08:07 2019 -0700

    Merge pull request #62 from feross/greenkeeper/send-0.17.1
    
    fix(package): update send to version 0.17.1

commit ba64cdd44a26a565b23b291993f4b0d365be2754
Merge: 14e0aa8 d7aa2b7
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 22 16:06:02 2019 -0700

    Merge pull request #61 from feross/greenkeeper/knex-0.17.0
    
    Update knex to the latest version 🚀

commit 14e0aa828447247114989a98340c2f585eae301a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 22 15:26:25 2019 -0700

    Enable/unmute WebAudio on iOS, even while mute switch is on

commit 2408946a6b936f7e7771e4380ef30ccade8a57d9
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 22 12:34:45 2019 -0700

    hero background lighter gray

commit af4086888565fe841d78d36750be6584e476f888
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 22 12:30:54 2019 -0700

    show gray background behind hero while loading so text is readable

commit 095d76eb86d8cf48561dc829873144d0780cf59a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 22 12:26:34 2019 -0700

    Add graphicsmagick note

commit 1ca28882318beda171b79d0217b7e3bd7fcbc542
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 22 12:19:34 2019 -0700

    Resize low quality images to max width of 960

commit 98a71dfa20f88235101e23707bda00ee083e91b7
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 22 11:23:41 2019 -0700

    Only cache offline page; serve offline homepage

commit b606be00cc1cb16dc18dac59db754d5f0a740840
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jun 20 21:03:01 2019 -0700

    service worker: Add navigation preload

commit 6df2782c539728251ff4e9aab1a31302fc798c48
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jun 20 21:02:28 2019 -0700

    Simplify service worker, drop code for old Chrome

commit d31c298c1e1c3f5895ee02406cf00004e292040e
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jun 20 21:01:26 2019 -0700

    fix service worker detection

commit dfbea3bae8ea96438ce4f4a8c8a80ba45c8de618
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jun 20 18:23:35 2019 -0700

    Use 2 bitmidi processes

commit 9c297b92a8b5373aad7e303a7ac52586b3134838
Author: greenkeeper[bot] <greenkeeper[bot]@users.noreply.github.com>
Date:   Tue Jun 11 22:36:35 2019 +0000

    chore(package): update husky to version 2.4.1
    
    Closes #59

commit ff744dddd4cfc0a23bdf29170c7542a5b0cd5c56
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 9 19:53:42 2019 -0700

    double max memo size

commit f1d303255e48e50b70ab65b3a6497f1e84b05d8e
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jun 5 15:07:32 2019 -0700

    Fix feature policy header syntax

commit 47398271f6919ebf20d5ffe5978af23dd22516c7
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jun 5 15:07:21 2019 -0700

    Prevent click-jacking attacks on static resources

commit bfca18461e7b8ea61023c68a41ffde50fdddcdd2
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jun 5 11:54:06 2019 -0700

    always set HSTS header (does nothing in development)

commit 2e404d84cdc4004752d8ce912b15db0602818929
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jun 5 11:53:52 2019 -0700

    CSP: allow easier local development

commit ac5b842d598554269108f0edeb02f3e645187582
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jun 5 11:40:04 2019 -0700

    Loosen CSP
    
    - Allow connect-src to any https: domain (strict-dynamic for scripts doesn't cascade to requests to extrenal domains. connect-src is blocking requests to Google Analytics in Safari)
    
    - Switch all * to https: to be a bit safer, and possibly prevent mixed content warnings
    
    - Change default-src from 'self' to https: and just block object-src (plugins)

commit 01efcb1080ff69761799d1674ce19ef528039937
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jun 5 11:22:22 2019 -0700

    Don't autorefresh page

commit ce6914478c11ae51c4051e82eb2748dfb635e52a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jun 5 10:41:47 2019 -0700

    Fix error in Firefox Private Browsing mode

commit 46c09ffcc556499969f59a771e30a3d5f20f3a72
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 2 18:19:09 2019 -0700

    make random even faster

commit 4981a39b6e258d49f032bb621100c049d6874625
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 2 18:01:43 2019 -0700

    Fix deploy script to actually restart server

commit b3bb8611034de13b2232c55e6cafe6ac2c5e3c52
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 2 17:54:48 2019 -0700

    Include missing nonce info

commit 6ee762c86540736ae9373fc364efc1a6cdf84c57
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 2 17:48:37 2019 -0700

    Fix syntax error: Use multiple script tags

commit ea19617ba475735522d2756b4c700fefbb261040
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 2 17:43:35 2019 -0700

    memoize get, all, search APIs

commit 4cbb7e2d873fb6918680fc2187376059fe9597c6
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 2 17:02:42 2019 -0700

    compress css further

commit b49fe3627343491e5aac4296427cc29c7c7f085e
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 2 16:23:55 2019 -0700

    Don't send JS comments in HTML

commit c5f4241c62632146d2d9222726c6dda66b4fc07b
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 2 16:19:28 2019 -0700

    ship Cross-Origin-Opener-Policy
    
    It is behind a flag in Firefox and will ship in Chrome 77
    
    https://bugs.chromium.org/p/chromium/issues/detail?id=922191

commit 7cdd7b00b8c20d4bc45bd65e31bd3d38efc40ec5
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 2 15:56:16 2019 -0700

    improve tweet text; less verbose

commit 05c2bfbccf8417181c5039601b9bc705f0fe5227
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 2 15:33:44 2019 -0700

    Run scheduled jobs on main process only

commit c62b754a33a47ef64262ad0ad7e4e9024e66fd35
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 2 15:19:55 2019 -0700

    Delete google66f372b7d00add35.html

commit 6ef84f6d5f85e053081f25538db835d4639d9045
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue May 28 16:52:43 2019 -0700

    Run 4 bitmidi processes

commit d7aa2b78769018243107b1a05302efbbe29335c7
Author: greenkeeper[bot] <greenkeeper[bot]@users.noreply.github.com>
Date:   Tue May 28 22:09:06 2019 +0000

    fix(package): update knex to version 0.17.0

commit d094761f139645d4fe163a1043df180b0bf3e0e4
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon May 27 17:22:26 2019 -0700

    fix inset on iphone X

commit fc4a73b28c84a7b9ec4ee1b6537d42c3113beb56
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon May 27 14:48:21 2019 -0700

    Fix husky deprecation

commit 0d5eabce50892069f86a298191d5dbc5fc0da489
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon May 27 14:47:20 2019 -0700

    Pre-cache random queries because they're a bit slow

commit 28c0a150a85520ed937bdbe45e2f1fba97763fe9
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon May 27 14:12:20 2019 -0700

    Minify CSS (saves 1KB before gzip)

commit ba1c40b399b2153a172ffd37682a08b2ff2a4d49
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon May 27 13:43:35 2019 -0700

    Add Cross-Origin-Resource-Policy

commit 8bde1e2e7d0384c53ae29d56212ff09b621a126c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon May 27 13:43:23 2019 -0700

    purgecss is a dev dep

commit 32f573761f7acbe0b44ac75261bb9ccebe42374f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon May 27 00:39:11 2019 -0700

    Reduce webp quality on mobile devices

commit f420c85a4983664c365f0ff334adde1e6f339dc6
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon May 27 00:23:07 2019 -0700

    Replace purify-css with purgecss

commit 704b69d850ea6758a1c1d4d36a7283b5b604b0ef
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon May 27 00:22:52 2019 -0700

    Fix safe area css for Chrome/Firefox

commit bde3f2fc488768672dad3f21decdef56e5233df1
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon May 27 00:22:40 2019 -0700

    remove unused css

commit 391666f95410b4819d83cd1eb6b50eba51e63b77
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun May 26 23:03:14 2019 -0700

    Add encCssDeclaration function

commit 7a265a7d23f400821c7519f835a4080911be7d22
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun May 26 23:02:50 2019 -0700

    Fix bitmidi logo flash (extra style="" attribute)

commit 4507f8cb79528f015b6978ff1d2b9562f82c1c62
Author: greenkeeper[bot] <greenkeeper[bot]@users.noreply.github.com>
Date:   Sat May 25 18:32:58 2019 +0000

    chore(package): update nodemon to version 1.19.1

commit 075c59fe0eb118398628620b69e46da6a0fcea32
Author: greenkeeper[bot] <greenkeeper[bot]@users.noreply.github.com>
Date:   Sat May 11 01:42:09 2019 +0000

    fix(package): update send to version 0.17.1
    
    Closes #60

commit ffc7ab11cec752d6847fcd7f3222407cb970b72e
Author: greenkeeper[bot] <greenkeeper[bot]@users.noreply.github.com>
Date:   Fri Apr 26 21:50:03 2019 +0000

    chore(package): update @babel/register to version 7.4.4

commit 9422298fa0655d945aabb5d64601568fbe98e0eb
Author: greenkeeper[bot] <greenkeeper[bot]@users.noreply.github.com>
Date:   Fri Apr 26 21:49:54 2019 +0000

    chore(package): update @babel/plugin-transform-modules-commonjs to version 7.4.4

commit de74aa1326be9a308e260db10545ef4586725b30
Author: greenkeeper[bot] <greenkeeper[bot]@users.noreply.github.com>
Date:   Fri Apr 26 21:49:46 2019 +0000

    chore(package): update @babel/plugin-proposal-object-rest-spread to version 7.4.4

commit bf9f7447e00b543e1c013684633a1dabde0ed585
Author: greenkeeper[bot] <greenkeeper[bot]@users.noreply.github.com>
Date:   Fri Apr 26 21:49:39 2019 +0000

    chore(package): update @babel/plugin-proposal-class-properties to version 7.4.4

commit 7a31be58d77c03bb0ec0b3ac3443683c599894e0
Author: greenkeeper[bot] <greenkeeper[bot]@users.noreply.github.com>
Date:   Fri Apr 26 21:49:30 2019 +0000

    chore(package): update @babel/core to version 7.4.4

commit 4eb9071bdd8652f5bc0b5df18e2717bede2a5aac
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Apr 14 21:58:44 2019 -0700

    Image: Rename 'load' attribute to 'loading'

commit 18753b6f6822e724173cc05b6bc049c27169e051
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Apr 6 13:53:35 2019 -0700

    fix missing feature policy warning

commit 81c1864670a23373a62da0fe94c1e50393d51eba
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Apr 6 13:53:26 2019 -0700

    bump babel versions

commit 125637e099744018c18df07f033b13399f77bf8f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Apr 6 13:53:11 2019 -0700

    Update objection version (1.6.4 bug was fixed)

commit 9d0b86a324cb28e9527a5c6e593b2163e3680929
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Apr 6 13:17:06 2019 -0700

    Using <img loading> instead of IntersectionObserver

commit d6e4eed2630518c3c3277b15b52e351457078848
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Apr 2 12:43:30 2019 -0700

    add quantcast

commit 445df26ab479dac66afed27b86c75e9057a45765
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Mar 26 18:02:06 2019 -0700

    Ignore web share failure

commit 32f1e6aa0ecd614f00f648f95b285b5d801822da
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Mar 26 17:55:47 2019 -0700

    path-to-regexp@3

commit 084cfef295f52783f73a1a56debd8036fec9a42c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Mar 26 17:51:40 2019 -0700

    Upgrade objection to 1.6.3 (1.6.4 is broken!)

commit 0851ec1c5bdd8beea9ba0640406d55c4d49a0f99
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Mar 26 17:25:00 2019 -0700

    Lock objection version to fix bug

commit 8581f67fc6cca7f6051e604c53ad48b4b28fb028
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Mar 25 17:19:04 2019 -0700

    Ignore 'Precondition Failed' errors

commit cf91b90e80b2729fc1559340155065c42fa78218
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Feb 11 17:48:14 2019 -0800

    readme

commit ed5b1d103cfe09e1d2b47fc4b5b142934193d5c6
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jan 23 16:54:00 2019 -0800

    Create brave-rewards-verification.txt

commit be4ef4ceecef6ef6bc9c5c80dd7616bf01b74221
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jan 6 08:51:56 2019 -0800

    Break all long lines
    
    Resolves Search Console issue

commit c6613f4c5c700ef06d602fd1e48602cbc214aeb3
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Dec 18 14:54:54 2018 -0800

    Fix capitalization
    
    Fixes https://github.com/feross/bitmidi.com/pull/53

commit d6d81c0f4c0241208207b2258ff573c22cf7d282
Merge: 13f061a fb4bbe0
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Dec 18 14:52:26 2018 -0800

    Merge pull request #47 from feross/greenkeeper/babel-eslint-10.0.0
    
    Update babel-eslint to the latest version 🚀

commit 13f061a96288d294e63cac09d83447fb1820ea80
Merge: 7ee14ef b24fa92
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Dec 18 14:50:26 2018 -0800

    Merge pull request #51 from feross/greenkeeper/knex-0.16.0
    
    Update knex to the latest version 🚀

commit 7ee14ef6815363c80c25b2c7758ee5bbe011b07b
Merge: 310f82c a1c4e3a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Dec 18 14:48:30 2018 -0800

    Merge pull request #52 from feross/greenkeeper/imagemin-webp-5.0.0
    
    Update imagemin-webp to the latest version 🚀

commit 310f82cc1bdf9b1d9f55f5dcb8cab41a3df05c3c
Merge: 8d2b78a aec1dcc
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Dec 18 14:43:45 2018 -0800

    Merge pull request #48 from feross/greenkeeper/husky-1.0.0
    
    Update husky to the latest version 🚀

commit 8d2b78a064aed77b5ab71f0d2d43af3abe2ee9e1
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Dec 9 16:49:22 2018 -0800

    307 -> 302 redirect

commit 2af4342e19b22000664c95756b518b73699946f0
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Dec 5 17:54:02 2018 -0800

    Use style to set width or height of images

commit 64a1580d97a9d09bf56233bf0c3908591aebc2ca
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Dec 5 17:46:45 2018 -0800

    code style

commit 9ab6033a3859de85d5a002c2e03bdf6b0c220073
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Dec 5 17:46:39 2018 -0800

    Include empty alt tag on presentational images

commit e2977bac3de995760755ac3c1f5cb8ea654d3298
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Dec 5 17:17:04 2018 -0800

    icon

commit a6e734e08fdb91f732feb2063076bdcb4e711709
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Dec 5 17:16:55 2018 -0800

    Hide play button until midi page
    
    Fixes HTML validation error

commit a1c4e3aaf515b3af4839889b1f8d70219339063f
Author: greenkeeper[bot] <greenkeeper[bot]@users.noreply.github.com>
Date:   Fri Nov 30 13:02:56 2018 +0000

    fix(package): update imagemin-webp to version 5.0.0

commit b24fa9215346a3151c08ef7c548330e311780437
Author: greenkeeper[bot] <greenkeeper[bot]@users.noreply.github.com>
Date:   Tue Nov 27 10:05:32 2018 +0000

    fix(package): update knex to version 0.16.0

commit 6aea82d9ef07bf28ef56a82ecaaa73467cd26832
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Oct 21 20:13:51 2018 -0700

    ignorer 400 errors

commit 65244d4499d8a465be61741e99c79fcd850036ed
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Oct 3 17:23:41 2018 -0700

    Icon: Ensure that rest params get

commit 43b556b90c4657358c66204203830fbb56728268
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Sep 29 23:23:05 2018 -0700

    Fix TypeError: Cannot read property 'slug' of undefined

commit aec1dcc6e5409d6113e89e31fb7ddd48b8bc5d96
Author: greenkeeper[bot] <greenkeeper[bot]@users.noreply.github.com>
Date:   Wed Sep 26 09:33:40 2018 +0000

    chore(package): update husky to version 1.0.0

commit fb4bbe01b31aae73876dae5f8179acd23e459208
Author: greenkeeper[bot] <greenkeeper[bot]@users.noreply.github.com>
Date:   Tue Sep 25 22:06:39 2018 +0000

    chore(package): update babel-eslint to version 10.0.0

commit bfde02221bb8afb9b095ff66c231ce1ebd25551f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Sep 21 18:10:20 2018 -0700

    more descriptive error

commit 12d07b69d8524d746163dffc1e1e53c2615c494a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Sep 21 18:10:04 2018 -0700

    style

commit 86a1f50d3cb4c6722d4a76b673666a029b17ea1f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Sep 20 21:43:02 2018 -0700

    Fix use of dispatch() out of scope

commit 8f8baec4b92b67a933fd6cb4924ee0ef543d1e17
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Sep 20 21:41:44 2018 -0700

    fix switch fallthrough bug

commit 78f17d5bfc3d0bec2dd373c42486f88f0b6a4245
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Sep 20 21:41:35 2018 -0700

    run standard

commit a3562ab69cb3a63921fb47b2b6ea3ddfd129c23a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Sep 20 21:41:30 2018 -0700

    standard

commit 43fe16c2087e8e28d712ad8b626c74b14fdfb186
Merge: 28ce132 c5e9a73
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Sep 11 19:33:09 2018 -0700

    Merge pull request #44 from feross/greenkeeper/debug-4.0.0
    
    Update debug to the latest version 🚀

commit 28ce132e04c50e6945270c2547adb86a6ee4beb8
Merge: 80b9297 d624689
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Sep 11 19:30:54 2018 -0700

    Merge pull request #42 from feross/greenkeeper/babelify-10.0.0
    
    Update babelify to the latest version 🚀

commit 80b9297fca35645a1f8c5700fc0769690146066c
Merge: c1cc3f0 1d3a633
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Sep 11 19:28:23 2018 -0700

    Merge pull request #43 from incessantmeraki/master
    
    Fix minor bug

commit c5e9a73edcb8eeddc054a28c01a94d3ba4c6c7db
Author: greenkeeper[bot] <greenkeeper[bot]@users.noreply.github.com>
Date:   Tue Sep 11 13:24:03 2018 +0000

    fix(package): update debug to version 4.0.0

commit 1d3a633144167f0c2df9c63c35065b10177d9937
Author: Ashwin Kandel <incessantmeraki@gmail.com>
Date:   Tue Sep 11 15:32:22 2018 +1000

    Fix minor bug
    
    duplicate[0] is existing file duplicate[1] the new one.

commit c1cc3f0c778059b311ca37b4be71d3d1898bce04
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Sep 10 15:50:35 2018 -0700

    improve serve-webp implementation
    
    - Skip unneeded extname() call
    - Only run accessAsync to ensure original file exists before running imagemin, always try to find webp image in cache folder first
    - if conversion to webp fails, return the error
    
    - handle send() errors after conversion

commit 01ac3aa6f8dde89f08b7c19af916b20c97d85eba
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Sep 10 15:27:09 2018 -0700

    Perf: Use slice() instead of replace()

commit 5d93cce5b8ce64e69210bcaab2589988d326eefb
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Sep 10 15:15:41 2018 -0700

    style

commit 193493dfa239b1b4b3a54f9d6e699102cea4c3a2
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Sep 10 13:38:58 2018 -0700

    ensure 'nonce' template variable exists for static middleware errors

commit b44100550c08671cd10abb141b05117c74518060
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Sep 10 13:38:37 2018 -0700

    style

commit cf4ae92994a2b68d4e9de9e540a9e035ee40af89
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Sep 10 13:38:22 2018 -0700

    Ignore 'Range Not Satisfiable' errors

commit af5de0ed3ec13c49cc395928c1c49ed8019962e9
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Sep 10 13:27:49 2018 -0700

    Move initialization to top of init()

commit d624689bc9ec040d818ae615db21aed1696496d9
Author: greenkeeper[bot] <greenkeeper[bot]@users.noreply.github.com>
Date:   Fri Sep 7 00:26:23 2018 +0000

    chore(package): update babelify to version 10.0.0

commit b6cd24f535eaefcbe472063ad5da8418055d77a2
Merge: c0735a0 80bdeb2
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Aug 30 13:35:26 2018 -0700

    Merge pull request #36 from feross/greenkeeper/babel-eslint-9.0.0
    
    Update babel-eslint to the latest version 🚀

commit c0735a0fddc97ff9af7a2b7b860e44b1237e92ae
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Aug 30 12:30:50 2018 -0700

    tweak tweets

commit b4896595debe43acf98b492cb5f0e683a4787262
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Aug 30 01:59:48 2018 -0700

    Add SSL stapling

commit a6c36b9fb69cea643a864c54e8f52f33f8a18a25
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 29 13:30:19 2018 -0700

    standard *

commit 75a33c0f1c90d1d082243e12f65553d900cc03ab
Merge: ea6ff6b 2dff069
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 29 13:28:24 2018 -0700

    Merge pull request #39 from feross/greenkeeper/standard-12.0.0
    
    Update standard to the latest version 🚀

commit 2dff06982eddf0898ea17cec805fcda33deed9bd
Author: greenkeeper[bot] <greenkeeper[bot]@users.noreply.github.com>
Date:   Wed Aug 29 09:43:29 2018 +0000

    chore(package): update standard to version 12.0.0

commit 80bdeb2ada60636f7e1ec07cad2d6e9209b041fc
Author: greenkeeper[bot] <greenkeeper[bot]@users.noreply.github.com>
Date:   Tue Aug 28 02:17:56 2018 +0000

    chore(package): update babel-eslint to version 9.0.0

commit ea6ff6b44da351f4fa9208f293a3097ad5d2dcab
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Aug 23 19:03:32 2018 -0700

    MidiPage: Add related MIDIs

commit f5e293b18c94158e2abb495780b575f5ea8c8dc3
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Aug 23 19:03:13 2018 -0700

    hide images on search page

commit 1b16b9437c26f339e346facad4829c20c73a5608
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Aug 23 19:03:04 2018 -0700

    always includes images in API responses

commit 42aa435af99b511cfab69f37e3f52c1821fdc628
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Aug 23 19:02:47 2018 -0700

    Midi: add showImage prop

commit d6c7da167b1ee9877c6304de25ffe2a7efffb022
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Aug 23 18:21:04 2018 -0700

    Include related results in get API

commit 5cad0eafa7b9186fd75bd4e5a6e78dc8e005b4f2
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Aug 23 18:20:33 2018 -0700

    Increment view count asynchronously

commit f22c457594628c9396424c784830d6fd0cf962ec
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Aug 23 18:18:59 2018 -0700

    omit generated fields when necessary columns are not selected

commit a562d0767de750de3350f031631589d24f71b916
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Aug 23 17:51:06 2018 -0700

    Add related API

commit 22843a62c2757fd7e810b1d54cffde8a5eb17522
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Aug 23 17:23:03 2018 -0700

    api/midi.mjs: use named exports

commit 30acca56a8d263f7359073c49752889c363597b2
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Aug 23 17:04:24 2018 -0700

    error: better fit on mobile

commit 06a08cf5c6cfd1315faf29565e13dd7c3165b07b
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 22 22:35:42 2018 -0700

    Feature-Policy: Exclude image policies in production

commit 95f87dffd4e2d15dfb20e860bd9e0f989bce7ce8
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 22 22:31:22 2018 -0700

    Feature-Policy: add more image policies

commit 0f666e4b6bea83b7f0a3d59366ba74b622169bbf
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 22 22:31:06 2018 -0700

    Serve "low" quality webp images to mobile

commit c22c85247b0e703b6e4379ee135357cb1ad25240
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 22 21:11:21 2018 -0700

    Explicitly specify width/height for faster render
    
    Caught by unsized-media Feature-Policy

commit d59ea5de4a21b194f6af93d19407a1f9c5cae3fe
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 22 21:06:17 2018 -0700

    delete stray logs

commit 36c7e0bd46125fd736232ebea798ae4f51812628
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 22 20:59:13 2018 -0700

    include updatedAt in API responses

commit f67f463f858949f23ee333addc40c291edfc1ea7
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 22 20:30:57 2018 -0700

    Save 100KB, using WebP for homepage hero image

commit a59db4d1cb644e19e25d31187eff2e08798bf709
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 22 20:24:38 2018 -0700

    Exclude unneeded fields from API responses

commit 4f233b4dfba612f3811d27c4a0a2c2c4ddd7160e
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 22 19:46:34 2018 -0700

    Skip first load() when page is server rendered
    
    - To prevent pages waiting for this.loaded, even though data is available, showing a flash of white. Data is already in the store!
    
    - To prevent API request for data from immediately being sent
    
    - To prevent double view incrementing

commit 91faa549ca6066f667d1be099a58695b9127ebce
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 22 19:32:45 2018 -0700

    style

commit c80e30e65f9470d69a1e4d544a2b20fcdbe2c8e0
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 22 19:12:48 2018 -0700

    remove .cache from gitignore

commit d1fe2d39f9a99a307a86d38bdfd265510613b00f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 22 18:44:54 2018 -0700

    remove stray logs

commit bd3fbcf62c4b7df6e176efdfbdd9567453efe40a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 22 18:36:22 2018 -0700

    Pagination links should remove uncanonical URLs

commit 372fafc551661b7a44be2de6fba73f9166fbc905
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 22 18:29:23 2018 -0700

    Add cuter error page

commit 134066d57e61a2d914786e21104e27c24059699d
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 22 17:57:19 2018 -0700

    Replace imagemin globbing with less magic

commit 053b86d19166f799b2a485b52bc80cf53aa2a187
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 22 17:13:38 2018 -0700

    fix file handle leak

commit 5580ec828b6ef3514a0bdfbb58ca822ce57db076
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 22 16:55:40 2018 -0700

    style

commit 9ff54f4cee448a435970cab079e14f41fa37c44c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 22 16:50:37 2018 -0700

    logo height tweak

commit e23afb6c6230bf450417c5c2f8e4ee8aa8878411
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 22 16:46:42 2018 -0700

    random: Make Random tip only change once per minute

commit 61cdf8d8d611c9e274ef4eefebb22f905380b57b
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 22 16:42:53 2018 -0700

    make Random component

commit 0f6233033bee1c0a033625c7b4282e12a4dc5d10
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 22 14:10:02 2018 -0700

    Image: Never render an <img> without a src attribute

commit 81af5dec915d18c2d26867e50fff57c1e857eb17
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 22 14:09:40 2018 -0700

    header: only show header animation when app.pending > 0

commit 548f67577ee9b62f11f700f4c0e51f9db0e9482c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 22 14:09:13 2018 -0700

    style

commit de0e661d59b6f0605156dba4f0d8abd1720cf1c7
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 22 13:32:42 2018 -0700

    increase nonce/hash length

commit 45a4de8c41e0ef7af785068e5b94734860f8ad9c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Aug 16 11:29:33 2018 -0700

    Use real error objects with express only
    
    Fix "Error: [object Object]" showing up in rollbar

commit 3aaa0e297839eaf76789cbcfbbde2d3859dafbef
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 15 22:10:47 2018 -0700

    add player debug logs, don't leak listener

commit 53e4f3c4e00bbcaf72a3d807a0d7618fc6a19c9b
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 15 21:50:23 2018 -0700

    Fix twitter link in footer

commit 5fbab747b3b8bedf3304059a8e7d698574183585
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 15 21:50:16 2018 -0700

    link: warn if href and onClick are missing

commit e0ffd839f058e8c0323519b3b11bc77c7b67bc9c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 15 21:32:38 2018 -0700

    Fix #30, Play button change to stop after song end

commit a1afdf17851a05aacd5a44e4d6015e8b0e31d784
Merge: 8d28d9c 7ce3f3f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 15 21:20:51 2018 -0700

    Merge pull request #30 from flxwu/bugfix/update-on-track-end
    
    Update store on track end - turn stop button back to play button when player ends

commit 8d28d9cd763dcb9ad156eb78120dac961b34a968
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 15 17:59:24 2018 -0700

    massive cleanup of SSR approach

commit ca01746070c46d93c2622333c4c537bc016349bc
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 15 17:58:19 2018 -0700

    do not change store.location during render
    
    yikes!

commit f1dad3a6756b10450efc7f85243b96cc4204a309
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 15 17:57:51 2018 -0700

    default err.code to null if not available

commit 8f682b72395f5052e2cc5de7d61989af5c300529
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 15 17:57:34 2018 -0700

    rollbar: ignore 404 errors

commit a9a4daf758d9ecb177e2c24c8a53dbe242f7abd1
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 15 17:57:20 2018 -0700

    Log server errors

commit 7b12c9257bbe2ab906e04394ef8f6fa1cf284aef
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 15 17:57:10 2018 -0700

    style

commit 7897f2cbf84fa39e9eb81270d2b2e7881dead7f5
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 15 17:57:05 2018 -0700

    immediately log HTTP request in development

commit f17c13bb010d5ff619f0499a92a43ffa14834c21
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 15 17:54:07 2018 -0700

    show errors one per line

commit 5461ef88444a80612e8b17663d55b3375901d02d
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 15 17:53:48 2018 -0700

    api: more detailed database errors

commit 7ce3f3f8ddea6923a90a08e4c4428f3228e74bd7
Author: Felix Wu <mail@flxwu.com>
Date:   Wed Aug 15 10:57:02 2018 +0200

    ignore undefined dispatch

commit f7936adbf531c8c2667ca2daad6371df85d0dad4
Author: Felix Wu <mail@flxwu.com>
Date:   Wed Aug 15 10:48:51 2018 +0200

    CRC

commit d68877c045cea03aef16c4d88ded01c22c288081
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Aug 14 23:21:08 2018 -0700

    tweak midi list spacing

commit a5190b9c021ccc9c9ba4ef5fefc45d582e3ca070
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Aug 14 22:44:21 2018 -0700

    Fix midi component showing too little text on smalls screens

commit 34c0418a4e35f08bc0a1477db49318a2dfe7a7d2
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Aug 14 22:36:49 2018 -0700

    delete unused favicon images

commit f0a09bd351019aef3e25906423f7a0377587916d
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Aug 14 22:36:43 2018 -0700

    shrink midi padding on small screens

commit 472c99197b32d61ddc4952627753b6e3cccb9b58
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Aug 14 22:36:30 2018 -0700

    consistent horiz padding on all screen sizes

commit 561de69f61facd978b1744515030f52b9c69d889
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Aug 14 22:36:08 2018 -0700

    hide logo text on small screens

commit 63631fd5ee28c76c3a33f12b6f93ef53b2ad59b3
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Aug 14 22:21:53 2018 -0700

    don't shrink logo

commit 4f5146a4f29036f8994606f7907c917511aec339
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Aug 14 22:18:08 2018 -0700

    apply safe-padding more consistently

commit 33a282efa4ed0f0a6483be6a061c2c638b885681
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Aug 14 21:15:39 2018 -0700

    link: make links bold

commit aae5c9c570266dab1d86572d50ab68bc3b0039b6
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Aug 14 21:15:33 2018 -0700

    Add random tips to footer

commit 47ac76839bc01f9fc1b9ad3e834e074c3acaeea9
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Aug 14 20:57:09 2018 -0700

    midi page styles

commit 41bf2043967ba83b6be9e64104487e12590c89d0
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Aug 14 20:53:26 2018 -0700

    improve header style -- use flexbox

commit 7babfa889af3e797024cc62867718e01c0b51e3d
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Aug 14 20:53:12 2018 -0700

    style

commit 736743214def481f1668076458fa5f7ce2d0cf8c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Aug 14 20:48:38 2018 -0700

    style

commit b30277684ba38a6d1acca4aa6befc35f5f004221
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Aug 14 20:29:13 2018 -0700

    Make margins/padding on main more consistent

commit be7a65629832aa0033dbb99c8da492d6085f27e1
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Aug 14 18:26:41 2018 -0700

    style

commit 320142f13de7a6de37c543e575557f6d7b457b9a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Aug 14 18:18:54 2018 -0700

    Hide footer while page is loading

commit 202ce05bdcf74e42dfe6ed009a46f16227c44978
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Aug 14 18:12:28 2018 -0700

    Fix site spacing

commit e462106d94d2fab7d732b62204b8a0116bebd6fa
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Aug 14 17:19:01 2018 -0700

    Fix “Random MIDI” button not showing on mobile

commit cfc3eaaad4f2b9b8b0657fce4f855329852d317e
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Aug 14 16:08:38 2018 -0700

    use a cache folder in /tmp, since that's guaranteed to be writable

commit c6bb2e84f769877f8135e519101998066caa52ba
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Aug 14 15:53:49 2018 -0700

    make npm install more verbose

commit 5a1ed6628d3ccfb24b5a1965af5c409a1fef5690
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Aug 14 15:42:54 2018 -0700

    Use automatic server-side WebP conversion on absolutely specified images

commit 08cdc20d08cab1c0c5ae69bf49fec45df95d2978
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Aug 14 15:12:20 2018 -0700

    optimize static load order

commit 0aafcd8b2de9204ab6438f1d653cdc6af5138461
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Aug 14 15:12:12 2018 -0700

    if path does not exist, abort before checking cache or running imagemin

commit 5786ede2563261c01b740d97c16cddb1832a6109
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Aug 14 14:54:18 2018 -0700

    Image: attempt to serve webp version, when possible

commit be2ba4df30e15f7fc491f272a13ad146dbc76f64
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Aug 14 14:53:40 2018 -0700

    serve /webp/icons

commit 5709491a2a6358d9cfb0384b9d1652d70722319d
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Aug 14 14:53:32 2018 -0700

    serve-webp: request must end in .webp extname

commit 52785c698f7cb5c2441da4e35e589f4e8466a97a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Aug 14 14:49:39 2018 -0700

    gitignore .cache folder

commit 9056ad9927ed21e626cb8d06ffd4c69344277065
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Aug 14 13:34:50 2018 -0700

    style

commit 4c3694bc55b815428fec2e78f10b36e57d3ebf5e
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Aug 14 12:57:59 2018 -0700

    add runtime WebP conversion

commit c8339194581303a3b181c7171a0e7c6c0c7d9919
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Aug 14 11:07:32 2018 -0700

    Move share-twitter.mjs to server/

commit be01fdff585d5b20c55b6a0568f72c5c5a5428f0
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Aug 13 22:31:20 2018 -0700

    Icon: vertical-align: bottom by default

commit 4d7c990902a2b86bab8d87b7d1b4607ea9237ddc
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Aug 13 22:31:07 2018 -0700

    Icon: black is default color

commit 342290202c10f975cc21c1fca7ba83804b8373f2
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Aug 13 22:26:29 2018 -0700

    Icon: Use PNG images or CSS mask with SVG and background-color instead of WebFont
    
    Use PNG images or CSS mask with SVG and background-color instead of WebFont
    
    When the color is white or black, we can just include a white or black PNG image.
    
    Otherwise, we include use div with a background-color and an SVG mask. This approach is less compatible (doesn't work in EdgeHTML 17), so it's not preferred.

commit 9e1b5eaaaee9c15b80425620a244fb8b931c982f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Aug 13 22:18:23 2018 -0700

    Image: allow alt to be set to null for decorative images

commit d011c680fdcbccd7806a06ea3636249e8a573c09
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Aug 13 22:18:08 2018 -0700

    Image: hide default missing image (looks bad)

commit 15a7352cc4c271af5958d3277cc10708085a8662
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Aug 13 19:14:08 2018 -0700

    Fixes for iPhone X notch

commit 84515c19edd7faa6e884c5f0f8ff7c955eeef333
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Aug 13 18:45:16 2018 -0700

    Image: add 300px rootMargin

commit ad118befa7f0a63fa217d514c8f2ab5debc31ad3
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Aug 13 18:34:19 2018 -0700

    Image: Add `lazyload` feature

commit d48c2448051d7df2854edd143e621d97252d955f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Aug 13 18:29:18 2018 -0700

    midi: Use Image instead of div with background image

commit 5b604df3532b877cddb289f10da1f47cbf513479
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Aug 13 18:28:58 2018 -0700

    Consistent error message text

commit be0141fbc31968f45a8b8cbfc5344a2e0bc2745f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Aug 13 18:28:38 2018 -0700

    css: add hide-no-js utility

commit 46ea21f1620eadf9f2444a0b4a78614552ecdeae
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Aug 13 13:45:26 2018 -0700

    css perf: Add will-change to header

commit c63812ab48e38c44ed2fb5fa3f164ee6b6b9500d
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Aug 13 13:44:51 2018 -0700

    remove geolocation feature-policy

commit 370265eadf426418900dc6c9a04b3896b60a0819
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Aug 13 13:12:01 2018 -0700

    bump puppeteer

commit e0739ce340d2e888dfb12ae549fd35b4cbaf0e28
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Aug 13 13:11:54 2018 -0700

    bump preact

commit 4fa50f942a6584d160bf53bd99597a78a12c38fe
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Aug 13 13:11:48 2018 -0700

    bump express-mysql-session

commit 715105eadda5850e2338843c50199da5393fe0f3
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Aug 13 13:11:42 2018 -0700

    bump dayjs

commit a1a5fb53809bd1fc814f47e5a1c3d38c903ff467
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Aug 13 13:11:37 2018 -0700

    bump babel deps

commit 749fa9d4fa9d3262643ddb34447835836fd6bbca
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Aug 13 13:01:51 2018 -0700

    skip standard tests until standard 13 is released

commit 6ca99593df9ba9126effe2b16d4f39901d846495
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Aug 13 12:38:46 2018 -0700

    Fix dev server crash: Use external stylesheet in dev
    
    So that in development server does not crash when bundle.css is being built for the first time, or is still building when server starts

commit 9e89720b4174bf273ff8bd46397e4ef32e32dc57
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Aug 13 12:37:53 2018 -0700

    ejs: Remove debug code generation (runtime perf)

commit 1e96d035d376afaf6920d581b186ad5e980ea5dd
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Aug 13 12:37:34 2018 -0700

    ejs: Remove excess whitespace (save 300b)

commit 37d9d47ac1a7f52955fb4e48470db6515139df9c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Aug 13 12:00:30 2018 -0700

    Ignore errors in component load
    
    Errors are already handled by dispatch()

commit 57fe667570b4734acde356536d7632a9ec8cce0e
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Aug 13 11:42:52 2018 -0700

    style

commit 30898bcc475d46bb3b24a6131affc701d41fe3c4
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Aug 13 11:42:40 2018 -0700

    Add @babel/plugin-proposal-optional-catch-binding

commit 3f3fcaaaf2059c069a03ddc13b944c61e085e097
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Aug 12 23:29:09 2018 -0700

    Perf: Move app template variables out of middleware

commit a071f6de4d871966cd75fa433eaa7901c385002a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Aug 12 23:21:02 2018 -0700

    Perf: Inline CSS

commit abd5f27e96a4e98b6d80e781309de6bde3c48cc2
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Aug 12 23:04:07 2018 -0700

    cookie expiration 5 years

commit 44d9fb92afeee4b197672afa7253585200b1f37d
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Aug 12 23:03:59 2018 -0700

    cache 365 days

commit 59ccde98bb34b0578b26e130c2c0d5545862de16
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Aug 12 23:02:14 2018 -0700

    accessibility: improve color contrast  Feross Aboukhadijeh committed

commit 211aa8abc1b481a9d800b94a45773e8167414f91
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Aug 12 22:57:37 2018 -0700

    cache 90 days

commit c80741e8d17117433f1d409612c19b67fc456ea0
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Aug 12 22:49:52 2018 -0700

    accessibility: improve color contrast

commit 7121e6acb86260cab2a9d6c0923ea593f1239599
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Aug 12 22:48:08 2018 -0700

    cache 30 days

commit ecf1538cfe8a440696bd78153fec5e98eb0b627a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Aug 12 22:39:08 2018 -0700

    cache 14 days

commit a627188c942cd268852cff6e5a53cab6b279e1ac
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Aug 11 14:34:46 2018 -0700

    Fix errors when URLSearchParams is undefined

commit ece0c5ae9c4373911b91e44b5e2eedd379ef2771
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Aug 11 13:28:06 2018 -0700

    search: switch to natural language mode

commit 718e0538f63a4aabf585e5ed988c33a7691e2a01
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Aug 11 11:55:05 2018 -0700

    Revert "Expose correct route to rollbar"
    
    This reverts commit 19dd7378c8b1fe8c333d0598c21fe3fd0ab0c9d6.

commit 19dd7378c8b1fe8c333d0598c21fe3fd0ab0c9d6
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Aug 11 11:49:11 2018 -0700

    Expose correct route to rollbar

commit 4390c23862eca4eec87d1215429d7a80cf969f42
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Aug 10 15:59:58 2018 -0700

    cron -> schedule

commit d8af1c6c56537c849b7c3704dee8612a600736f3
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Aug 10 15:57:26 2018 -0700

    Revert "Log store state upon render"
    
    This reverts commit 4fcb313dea519f124172aa32c215423289ccc6f2.

commit 21debd4a12676126d2ac46e926b4dd0485b4e9ae
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Aug 10 15:56:37 2018 -0700

    opbeat -> rollbar
    
    Fixes #1

commit 6c3002f10caf64a16e15516584f59619f04e2a34
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Aug 10 15:17:41 2018 -0700

    secret: cleanup

commit 6f012957650b8b88faff3c4a9c637e3394056ac7
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Aug 10 15:03:58 2018 -0700

    readme cleanup

commit 13841ce85f35de1f86441f91153db511bfe4282c
Author: Felix Wu <mail@flxwu.com>
Date:   Sat Aug 11 00:00:27 2018 +0200

    fix style

commit 16338a58823dc974455d19f1b6cf0d7190c9cf1e
Author: Felix Wu <mail@flxwu.com>
Date:   Fri Aug 10 23:59:26 2018 +0200

    add a callback to play() to call when player ends

commit f63e1f0c72a5bc6ebaac5cb15393184e5ef4cf23
Author: Felix Wu <mail@flxwu.com>
Date:   Fri Aug 10 23:59:11 2018 +0200

    update store on player end and reset the play/pause icon

commit 54ec4a112007fc16db8180af0f812ee12194cfb7
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Aug 10 14:45:08 2018 -0700

    Fix theme color not showing

commit c7f1f1a2598cb501019ef59ad3d5dfff1957897d
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Aug 10 14:29:20 2018 -0700

    Follow up to PR #28

commit 5ebcaa417b645e355e6b797043071ce7673a23cc
Merge: 2ab1acc e7bc1b9
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Aug 10 14:26:41 2018 -0700

    Merge pull request #28 from colmose/only-increment-plays-on-play
    
    Increments plays when playing, not on pause

commit 2ab1accf29db408360f64ac1d6a1ddc27af19e16
Merge: e7ca5ce 2865b94
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Aug 10 14:24:44 2018 -0700

    Merge pull request #29 from flxwu/docs/basic-setup
    
    Add Setup Docs

commit e7ca5ce7f5ea2985a587c3df30bcaab6fd5c8bfa
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Aug 10 14:21:45 2018 -0700

    SEO: Fix duplicate meta description on home-page and search-page
    
    Happens on Page 2, 3, 4, etc.

commit 2865b940bbc43361a3c0d7e016f572a807ab7a6e
Author: Felix Wu <mail@flxwu.com>
Date:   Fri Aug 10 23:20:17 2018 +0200

    style fix

commit b4074ef6a6ddec459a8cf8273ebdc5cd86330f0d
Author: Felix Wu <mail@flxwu.com>
Date:   Fri Aug 10 23:18:56 2018 +0200

    add setup docs

commit e7bc1b9080720f78dc10c583f120ea444b2bdf58
Author: Colm O'Shea <colmose@gmail.com>
Date:   Fri Aug 10 22:18:28 2018 +0100

    Increments plays when playing, not on pause

commit 84fc0ae37d5c7f6789547fd82485805d5f71c4af
Author: Felix Wu <mail@flxwu.com>
Date:   Fri Aug 10 23:17:20 2018 +0200

    adapt for easier initial setup

commit 4fcb313dea519f124172aa32c215423289ccc6f2
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Aug 10 13:45:17 2018 -0700

    Log store state upon render

commit 85f74928559111546f82880f94990fa9fcce43e6
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Aug 9 01:51:14 2018 -0700

    cron: schedule at midnight

commit 7013400adc0df4def39f01ec7a5b3656835fffd8
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Aug 9 01:26:46 2018 -0700

    change to 1:35am

commit 6fa01e33f0ba11ad5da495898af807ba1a7394bd
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Aug 9 01:20:45 2018 -0700

    cron: 1:26am

commit 079fabbbe70e85af07be86596b52e9b3a249fb08
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Aug 9 01:19:55 2018 -0700

    secret: add buffer

commit af07da6ccdd56f99e3838da9db92b1c537319a09
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Aug 9 01:14:19 2018 -0700

    schedule tweets 1:19am

commit 2971cea43630801ba0cda737421f4ef0ebb9c5c5
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Aug 9 00:19:04 2018 -0700

    Auto-share tweet every day at 12:25am

commit fd11c5eac7e5705f727a79d6d6ed87cb1b310d78
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Aug 9 00:18:34 2018 -0700

    knex: add shared_twitter column

commit f55b1270febb78b7298440237357526e8e87eacc
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 8 23:44:01 2018 -0700

    mark secret import with secret in name

commit 4a2a45292538d10cbca83be4b5eb122ca7ca0090
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 8 17:39:24 2018 -0700

    typo

commit 621f9c6d3fa51bd055c146acd0c9230330f3881a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 8 17:39:21 2018 -0700

    add @BitMidi twitter to footer

commit f9922e8a5e2cc129ffae3544e9e84ff07358a5f8
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 8 17:26:55 2018 -0700

    about page

commit 3c38c1f7b61c60400839c2c9cf8b19fa10053ba7
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 8 15:24:22 2018 -0700

    Remove Affinity Design files from repo

commit c868f618f3209339197fc791420a1e3e14801dcc
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Aug 4 18:26:13 2018 -0700

    route-render: more succinct error handling

commit ac2ff68e78ce126c6dd5e2b4d9403f7857290eba
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Aug 4 18:25:34 2018 -0700

    use correct favicon package

commit 8977c1b97ed86b24a1faed7eba2c326de5dbab7a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Aug 4 17:51:06 2018 -0700

    app.mjs comments

commit 604f8dcf6159509a6df62c1f5de1791feb4c43f3
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Aug 4 17:50:56 2018 -0700

    Serve favicon using express-favicon

commit e7d7eb6f546f2b3c71ec834cbc0703a9371329ac
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Aug 4 17:34:02 2018 -0700

    Log HTTP requests

commit 962992d9c4081ddfee065d0a922767ed3e05db60
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Aug 4 17:33:52 2018 -0700

    Use unminified CSS in development

commit 5e11cd90332a96ff6bc39f09e14728884c403aa1
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Aug 4 14:36:56 2018 -0700

    config.keywords -> config.siteKeywords

commit 286a8bf2e101651993e07e0a645d2a51e8fb8626
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Aug 4 14:35:07 2018 -0700

    config.twitterUser -> config.siteTwitter

commit 561bfa232e4868ff261d7dc98af79dd541208c84
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Aug 4 14:34:34 2018 -0700

    config.description -> config.siteDesc

commit d2c4424697a261a57f08806eb9d0732d8ab061fb
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Aug 4 14:32:25 2018 -0700

    description

commit df368e848b27aca02212fcca50fa3b2bbf225479
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Aug 4 14:31:01 2018 -0700

    update OpenSearch description

commit 4e860e9886695bd3fe50163132f8f93f4078d09d
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Aug 4 14:30:51 2018 -0700

    config.title -> config.siteName

commit af57bf6b97c1422677be7336dd0df52f60757876
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Aug 4 14:26:01 2018 -0700

    EJS: use escaping for hashes

commit 8799c787d426a357c18c3fa19db52f6c855daf21
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jul 26 12:50:36 2018 -0700

    fix travis

commit efc65bdcb82784db7c1048d9609920a6d9a98057
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jul 26 11:58:37 2018 -0700

    Add og:type meta tag

commit b7df268d8c24c2b7baa93ab6686d92cbd3be328d
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jul 25 17:21:09 2018 -0700

    Fix OpenGraph hero image URL

commit eb7486834185bc5d511e0c7e7b32c04e2a9897bc
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jul 25 17:09:07 2018 -0700

    minify CSS in production

commit 6fccea7daedb313e71c819439c8527fa87afa7a5
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jul 22 14:25:22 2018 -0700

    add share meta tags

commit 90a5c3f5c39d1d1eacf2d681f190a57f64a610c5
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jul 21 03:02:37 2018 -0700

    style

commit a14bf97e5bfe7c9fa96cd5b377977b7e96f7cbe3
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jul 21 02:56:10 2018 -0700

    shorten nonce

commit bffa41d5d9082e90c353afd5d03ceb977d27fb78
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jul 21 01:43:04 2018 -0700

    try making manifest background color #fff

commit 1615ef0f73cf101c160a1106fd6122c18264ee8d
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jul 21 01:35:55 2018 -0700

    Omit wordy description text

commit 400097a78319324b33bd546384dc403dd009648d
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jul 21 01:32:47 2018 -0700

    GA: log event when share is successful

commit 60672e167d1d1d75b7d6e5b083bdd9825ef5598d
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jul 21 01:25:52 2018 -0700

    add Share Button

commit a1127d5427a1d189127f33956d762cd65be45521
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jul 21 01:04:59 2018 -0700

    header: padding

commit ae78c41539efdd9e07b2382b83e4035eeb488b17
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jul 21 01:04:50 2018 -0700

    style

commit 629aeed86717b2d161d955711f93fc73dc84e604
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jul 21 00:30:48 2018 -0700

    header: add max width

commit c92e7fbc1f1e77a3d78a84b6ff85b658905d3849
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jul 21 00:28:22 2018 -0700

    New favicon

commit db22d68010e9c57c3034faa1e399ac487d02fbbd
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jul 21 00:06:33 2018 -0700

    New logo

commit 877497fa1f9dde14c50e6d1d3f97c59f59ce66f5
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jul 21 00:05:14 2018 -0700

    Escape style property values

commit 5c28230b3fc35d0aa8297f1b8bf034143b1cfba5
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 20 19:06:41 2018 -0700

    update logo

commit 468e8b8d38cafa4fdf375dd4ae5487d0b368d8af
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 20 19:06:36 2018 -0700

    update favicon

commit 301af34258aa0af2e03fc7f320c83006e18f375a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 20 18:36:54 2018 -0700

    lossy ImageOptim

commit 00bd234d4a6216227d6e0038c4017cc9bcd8b0c8
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 20 18:04:05 2018 -0700

    Add `sitemap` option to routes.mjs

commit ca9b31f6c6fa043deda12e617a2a2dd9b0bdd357
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 20 17:27:02 2018 -0700

    router-app -> router-render

commit 3733d7071a3fba3e2be5db3ad8a5b0857561d57c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 20 17:25:13 2018 -0700

    Use 307 redirect for /random

commit b7667bd5b4d2b0675754ced03a4e2c6bcee2a6bc
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 20 17:03:11 2018 -0700

    httpOrigin -> origin

commit 7d39a5c0f594c10c511603b5f88712e6a8ff5ecc
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 20 17:02:12 2018 -0700

    style

commit 024c2dbb16e7790990f9e680f00b9df483104355
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 20 16:55:37 2018 -0700

    style

commit 95b43e4d729e986811bc74e9c514c54d8d6cd7db
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 20 16:55:19 2018 -0700

    use named imports

commit 4e27b016b63e938e108e53923df8eed2cb234310
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 20 16:31:11 2018 -0700

    ESM: secret/index.js -> secret/index.mjs

commit f4c4e77ee4c3dfb98fc1638079ae94089cd6d515
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 20 16:23:57 2018 -0700

    style

commit 9c7a8890aa3668988a7f60da903fb1f7318a8f2e
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 20 16:22:41 2018 -0700

    app: use named imports on 'path'

commit 74c86ddba781f82e2cac4a92689b8fa1656b8261
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 20 16:22:30 2018 -0700

    ESM: config.js -> config.mjs

commit 91dff94cd68bcef16d7e66d32f2a049deb0b9c11
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 20 16:20:19 2018 -0700

    animate delay -> 0.25s

commit 52d57f60f964c1ff7ee9dcc965d32c05d0dd402e
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 20 15:58:21 2018 -0700

    style

commit 74f05ac9f67651b2e13a0f24d226d63a31f9ac04
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 20 14:34:08 2018 -0700

    Remove secret.js dependency on config

commit 3d65ba451936cc7c5eb79d488f9d95c8a04bb57b
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 20 14:33:39 2018 -0700

    shrink bundle; import common-tags/lib/oneLine

commit 46b4046539e395dceb058483ac1e4a3f7fc26283
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 20 14:33:24 2018 -0700

    move config.js to src/config.js

commit a05938970d5e0591244728edf2da14fce7243854
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 20 14:08:09 2018 -0700

    Remove canonicalUrl view paramenter, just pull it off store

commit 41889d1002930786e7abda75c5eec59603066731
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 20 14:02:21 2018 -0700

    PageComponent -> Page

commit b59512377da97a466c5ded8b30e6f0bf12db0af4
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 20 13:59:50 2018 -0700

    header spacing

commit 06a2eea06ef39cddca3ee397ee0f29be5fb7ae87
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 20 13:53:30 2018 -0700

    Header should not be fixed

commit 49fa1aa7686e8ba9ac64b4cd3bb19bd843c201fd
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 20 13:51:51 2018 -0700

    add About Page stub

commit 060369dc636e28c6f894538b3abaae5abb8f0047
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 20 13:50:00 2018 -0700

    Refactor pages to use this.loaded

commit f03d802d83c184b4f23ea2871681994e369d2507
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 20 13:49:35 2018 -0700

    loader, default loading label

commit 6c11fb3e2f2f03e32280b22d3734d3e29de8afb7
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 20 13:49:27 2018 -0700

    simplify RelativeTime, use datetime prop to match native <time>

commit 1c1a717e2354c02e24af4ef487a5577d4021fc67
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 20 13:48:54 2018 -0700

    Add this.loaded helper to page components

commit e190a60912c37777ba03803d0c4a2dc88d081564
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 20 13:47:19 2018 -0700

    Simplify loader component

commit 120248f9974be7500895de50255ff39017ab7d51
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 20 12:57:35 2018 -0700

    add pulsate back to logo, but no bounce

commit c1b9360f4603c1e6a2d42ea82ac3804fa784267c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 20 12:52:25 2018 -0700

    don't pulsate the logo

commit b1ca05b67e28157e4703e73c31572aed184cea17
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 20 12:51:41 2018 -0700

    tweak animate-bg-rainbow style

commit 2214b6851b8d5e6fb863cd545d5160968bfd2367
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 20 11:58:23 2018 -0700

    Remove unused APP_RESIZE event

commit d3cbf9eeecb8fa5c205c8fefb34ac937f44adb4f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 20 11:50:08 2018 -0700

    heading: add level prop

commit a383f44a1fe15f8ff890800a2f5d9edd550f0495
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 20 11:47:52 2018 -0700

    style

commit 850e5be2542cf5a5e3c73b1e09f90f35cf98def8
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jul 19 21:59:36 2018 -0700

    Fix footer about link

commit fee419e3cf145989ded0e23d9797b7d40179fa36
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jul 19 17:09:21 2018 -0700

    description

commit 136faf7bd57f1b623970516c7fa987d29853f5d7
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jul 19 16:38:32 2018 -0700

    Fix loader

commit c9fb8aa2ceb70fdcc7560c83d3723bb131f8df66
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jul 19 16:37:53 2018 -0700

    If server-side route changes location, do redirect

commit dd484e35a7786d5566eeaa90e8b738720584c077
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jul 19 16:37:13 2018 -0700

    Shorter animation delay

commit 1143d2238bb561bd7aee1539708090d87317bac5
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jul 19 16:37:07 2018 -0700

    Add random page

commit f631e38fe6003872a8b7df031af1bc7fa4c2116a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jul 19 16:35:57 2018 -0700

    fix footer random link

commit 9b73026c97e17a1dad7a0fdce98b5929b3979e66
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jul 19 16:35:47 2018 -0700

    store: fix pending update render

commit c5ab1e05d24f090e24b3aa58c350ef7af7a4ac3d
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jul 19 16:23:51 2018 -0700

    midi random action: use replace, not push

commit caf5d18ba7184b4eaf7d398547de768c4fbbd7a1
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jul 19 16:20:46 2018 -0700

    Refactor header; random button links to /random

commit ba877c276d120674cc38868d4ac6da6bef2648d3
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jul 19 15:59:41 2018 -0700

    simplify router

commit 2eb0774d8ceb01cb8e8f6759c04d98d42991460d
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jul 19 15:59:35 2018 -0700

    fix bug in router when ssr=0 and no route.query is defined

commit d322caacc04bb932604480068e2836b1d3d84b8d
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jul 19 15:59:00 2018 -0700

    expose debugging functions earlier

commit e7a9a6daa2f30da5c4966e94a97ab70764ae8bdf
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jul 19 15:05:34 2018 -0700

    style

commit bbb8f66f790ba98755d75dfb853fda6e74a9bc33
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jul 19 15:05:29 2018 -0700

    SEO: Improve MIDI page meta description

commit 3ed94751fb2f3697ba3ea29595d7cca0c37b0383
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jul 19 14:55:52 2018 -0700

    router: simplify query handling

commit 102c6dc92d6eddd3d2039da699615ab50761eee1
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jul 19 14:55:32 2018 -0700

    Don't redirect /500

commit 2bec3d17dea1cf4a6bf10216b025b1e17ca3ff60
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jul 19 14:45:31 2018 -0700

    update footer links

commit d7ad4c422ef95fdff80ded70715b4cfb443cab31
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jul 19 14:45:21 2018 -0700

    Add basic about page

commit 471acc2e4064b31ed2f90dbb0b996dcbb279c379
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jul 19 14:45:12 2018 -0700

    meta info

commit 9bde2baf73cffc4ed0b4ce3a15aff113ecce7ee8
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jul 19 14:20:29 2018 -0700

    horiz-list: tweaks

commit b7220059f1cc587c97c7a9893e37a03dd1abdae7
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jul 19 14:19:48 2018 -0700

    link to blog

commit 067fd72c4d972384d7c1f6925426bb611e2eb5df
Merge: 69a5410 eb615d6
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jul 19 10:58:27 2018 -0700

    Merge pull request #24 from feross/greenkeeper/ora-3.0.0
    
    Update ora to the latest version 🚀

commit eb615d651daa0db38008fc1bff9cf085a13b8210
Author: greenkeeper[bot] <greenkeeper[bot]@users.noreply.github.com>
Date:   Tue Jul 17 22:44:15 2018 +0000

    chore(package): update ora to version 3.0.0

commit 69a541009b38f2ecb711c101cb7de6e029c403b1
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jul 14 21:18:06 2018 -0700

    bigger pagination buttons

commit afee6e3820cbcc214c196cc890a7aeb85719e6d6
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jul 14 21:17:56 2018 -0700

    header button no pill

commit d7da79ea2b273d492227f670dc21297647b36420
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jul 14 21:17:50 2018 -0700

    fix button bug, tweaks

commit d1aac9267fb7a400c32933dd022920485fad6c0c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jul 14 21:17:38 2018 -0700

    remoe unused styles

commit 7cfe1d88a08eb54395fff9a47bfb9be52e88bd4b
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jul 14 21:17:27 2018 -0700

    change theme color to dark-blue

commit 6d0adc2f5f397d93e763adb305a2cb0fce4dcd8d
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jul 14 21:17:21 2018 -0700

    watch css better, reload on config.js changes

commit 7a901ebb44846e1b8b0ec2fb0955dc42f2a64a60
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jul 14 20:47:55 2018 -0700

    Show relative time on MIDI Page, plus small redesign

commit b825eaedbcb5c51a5fbbfc61d91472f61839d2b9
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jul 14 20:47:39 2018 -0700

    Decompose HorizListItem and HorizListDivider out

commit be0c2b2362707b448e921e6dc3a3449aa57b4d83
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jul 14 20:47:22 2018 -0700

    Add RelativeTime component

commit b99b276be3df4c6ea7544a032bceea142f0d92e2
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jul 14 20:10:27 2018 -0700

    style

commit 4ef987d61302edf726dd30c14f8b00e30374b4c8
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jul 14 19:29:46 2018 -0700

    Use express-sitemap-xml

commit bbb04996edff06c64127ffed79f347439110ed9d
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jul 14 17:57:20 2018 -0700

    Add sitemap.xml

commit e835219a112ecee5b0a20c630655775e398ecadd
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jul 14 17:54:57 2018 -0700

    api.midi: don't crash on missing result.name

commit 9155fbd3ee6d321fcbd3b5995367280956eb3d95
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jul 14 17:54:47 2018 -0700

    allow selecting specific fields

commit 37c9ed8fe1645bce857f4759d7368f9c288c6145
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jul 14 17:05:41 2018 -0700

    server: always print error stack trace

commit c41bfaa55d1b9618bf55758963bb454d47588b9d
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jul 14 16:49:55 2018 -0700

    Suppress knex warning ("A valid integer must be provided to limit")

commit 6f6358f2e962df7de8899f9ecb9e7b05bc79861c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jul 14 16:49:42 2018 -0700

    style

commit 32facc3d323ec02839f991c3278c1e7e7371226f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jul 14 15:09:41 2018 -0700

    remove unused variables

commit 8a7d7d5b6d90070f1e7ea35847d3e0d7ded6418d
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jul 14 15:09:27 2018 -0700

    Ensure the URL polyfill is defined in advance

commit a5d11dcb8a985a9bb2d4504e93cb76f06d09629f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jul 14 15:09:09 2018 -0700

    pageTotal should take into account pageSize

commit 1a9d42e6a9fb8da70a46f3fd6acf7d9efab2a7df
Merge: 454b4d7 d5d1ba1
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jul 14 00:17:35 2018 -0700

    Merge pull request #23 from feross/greenkeeper/knex-0.15.1
    
    fix(package): update knex to version 0.15.1

commit d5d1ba15d27ee7633f18b45c8a50a7ea18a8e0d2
Merge: f343190 454b4d7
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jul 14 00:14:36 2018 -0700

    Merge branch 'master' into greenkeeper/knex-0.15.1

commit 454b4d76ec7e94fd0a5779f73f6ff49628b8892b
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 13 21:44:43 2018 -0700

    Improve feed content

commit e8b07c4528aeae8e1727025f436fed5ccbf1d838
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 13 21:38:54 2018 -0700

    Redirect from /1 to /009count-mid

commit 9b7920437795ddb1492bfa83197e87a50cdb5a43
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 13 21:38:51 2018 -0700

    Fix model timestamps

commit 7c33d6b5bc8193d99b5024325de62da882769fef
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 13 21:16:35 2018 -0700

    search api: don't include score in api response

commit fbbc8c4bb590c1ea0f7622ffa3becb08e267c8de
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 13 21:16:24 2018 -0700

    feed: Order by newest first

commit 71e02a8a47e8a225fca31a177a75ec42b64cfe97
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 13 20:58:35 2018 -0700

    feed: increase items to 100

commit de1b47bf8743e72f0531dfeebfa337662d3d229d
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 13 20:52:54 2018 -0700

    feed.xml: use absolute url (to pass validation)

commit e7c212085715d0ee2bbfa6eb377e2be8ab34f2e7
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 13 20:52:41 2018 -0700

    feed.xml: set correct mime type

commit 4331f0ddaa1249c5f8df3e6c85baa33d5385bef3
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 13 20:52:29 2018 -0700

    feed.json: use res.json()

commit b6bc3f7112e0b39ebd6a8916bdfd0d4f2d23e844
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 13 20:43:41 2018 -0700

    include MIDI image when possible

commit 1628284707cd4bedbd4a51e9a38d8620389c5c4c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 13 20:39:01 2018 -0700

    feed: include dates in feed entries

commit 3390c6b59bf00364363c78a85a6c44f3df6a3e6c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 13 20:38:46 2018 -0700

    don't select minimal (too annoying to update)

commit 952e1642d57677faf7d481f2ec360f8912c5e9b0
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 13 20:38:34 2018 -0700

    use snake_case in DB and camelCase in app

commit b239a6d2689079373156e981084d900aa93d45ad
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 13 20:38:15 2018 -0700

    midi: add created_at and updated_at columns

commit 0b4c71558a925f1f449be50f079754b832765faf
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 13 20:05:42 2018 -0700

    knex: Specify MySQL version
    
    This tells knex to use improved timestamp precision

commit e6d0f650a35b63b4e9d51f26d7b14eda8e0099c2
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 13 19:48:40 2018 -0700

    Use jsonfeed-to-atom instead of my custom approach

commit 642350e8c5bb805af730e22ecca8febdf6c414a0
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 13 19:12:11 2018 -0700

    app.ejs -> layout.ejs

commit f343190d16369adb9d01c8fa27d4575bab738d75
Author: greenkeeper[bot] <greenkeeper[bot]@users.noreply.github.com>
Date:   Fri Jul 13 03:20:43 2018 +0000

    fix(package): update knex to version 0.15.1
    
    Closes #19

commit 8537aacf1a8e7995843bcdf4fef05e48f13bce05
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jul 9 23:56:35 2018 -0700

    add jingle bells image

commit 3662a452ebfde46f636fca76451e1b62e0bf3cbc
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jul 9 23:41:44 2018 -0700

    add more images

commit 0e43985ed13754b3140e92f2cd86ff22d2862249
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jul 9 23:35:59 2018 -0700

    change theme mainColor to dark-gray

commit 8a9d6bf185f7696caa5b4ef447e546c53eb68dc1
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jul 9 23:31:22 2018 -0700

    remove stray console log

commit e10fa71d4c0f7850848f0aa29227132497721743
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jul 9 23:31:08 2018 -0700

    hero

commit 3d2b34c67579c29f39c4ffec4552b8d4c9e780a8
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jul 9 22:54:41 2018 -0700

    hack: hardcode images

commit 829ed015694d4d4f5d5db543701237cd9fb763d6
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jul 9 22:18:49 2018 -0700

    link changes

commit d358d42189c0d4ea54c68f9eada75e2cb17b57bf
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jul 9 22:18:43 2018 -0700

    add images to midi files

commit 7f1e52b94c11bf17beaeba161d0608c4af48aa49
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jul 9 22:18:21 2018 -0700

    add intro explainer text

commit 69c4538618de975fb5da42fb0dcd462fef640531
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jul 9 22:10:33 2018 -0700

    fix case sensitive requires

commit ae99a3bfbc193d5bbb2b7c5c74e9386339c6c3ff
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jul 9 21:09:44 2018 -0700

    add logo

commit 92ca76c01e3aaa7219b9d0b67ad62f6cf3e2e110
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jul 9 20:52:37 2018 -0700

    add pause/button, show playing state in button

commit a9662f1d56475183d3decf367cc6bd9c10172e13
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jul 9 20:38:58 2018 -0700

    play button improvements

commit 4e78a8e88624fd5074f84c325950aab2093b9e85
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jul 9 20:25:53 2018 -0700

    add Play button

commit a8a748e638698c3b25611b8518776d239b48aa63
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jul 9 20:22:21 2018 -0700

    use material icons

commit e7c45c8fc5aaf52909a9b09b0a6f17dc62cee98f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jul 9 20:22:12 2018 -0700

    rebuild css on view changes

commit b0a0022fd776d8fa45fb402a382ddf37e244a52f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jul 9 20:22:04 2018 -0700

    restart server on view changes

commit 38f028554bd1925674b45a4d0d3430ead99fbb21
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jul 9 19:55:53 2018 -0700

    Add Material Design Icons

commit b9806e9b685391607b49d20bd0bec0a1aa43f6ae
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jul 9 19:44:05 2018 -0700

    Pagination: Add total results count

commit ac52c22cca55affd90ec750f83a58dccfa2562c8
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jul 9 19:36:26 2018 -0700

    style

commit d48fdeb181bebc3edb34d4f3de4093dd0487f19b
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jul 9 19:33:37 2018 -0700

    add index to midi.plays column

commit 29a276150aca6b66ce8f22cd9203f6df80fdbef4
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jul 9 19:33:29 2018 -0700

    order homepage by plays

commit 761a8df4bcbe74701d2468ef79eed56b9ed88b84
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jul 9 19:33:23 2018 -0700

    remove unused var

commit c48716025c934e999d06a0bb21f3656604360105
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jul 9 19:33:15 2018 -0700

    API all, search: send total and pageTotal

commit 9984a42f5022cc4ef4dcd2aeefad63b31831081a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jul 9 19:25:21 2018 -0700

    fix ?ssr=0 crash in dev

commit 4220b5b4ecdcec79578351bc71a6fa2307637ecd
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jul 9 19:09:31 2018 -0700

    Show stats on midi page

commit c391496dc74f9e548802a4d5f73bf4a40a963990
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jul 9 19:09:25 2018 -0700

    Track plays

commit 5f0105510bb601d0d0b79e3f0a06aaf81c129324
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jul 9 19:09:02 2018 -0700

    Track views

commit 8e95d9b5078bc303c6cdd48856c765d960d67fa9
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jul 9 19:08:56 2018 -0700

    expose /play API

commit 237b7432444f017eb1d33290c66607582c4ede05
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jul 9 18:32:00 2018 -0700

    add views column

commit 85e39a1c53cd3aa1658fe7127033ea9d1f516552
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jul 9 18:19:41 2018 -0700

    Fix pagination numbering and width

commit 6b156e951d6dd1bd71b975bcf0379497b425d2c7
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jul 9 17:56:08 2018 -0700

    Fix truncation not working on iOS

commit ac38ca6e4a64b040e5b83e5dad3a83be435c7a44
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jul 9 17:44:56 2018 -0700

    Add Feature Policy header
    
    https://developers.google.com/web/updates/2018/06/feature-policy

commit 7087f251a60fec9d6c723a54e7d2bb34877c6997
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jul 9 17:42:30 2018 -0700

    Fix header loading animation not ending

commit 7a58c60536bd89453ae1a39851c7ba1e82af2fc9
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jul 9 17:30:39 2018 -0700

    css: remove unneeded search path

commit e6b42edd4282d2dca23778b0e1a4851daa0165df
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jun 28 20:22:06 2018 -0700

    Fix exception on 404 page

commit 8b311fda172fe94d26b8509720478f9a7b6df088
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jun 28 19:39:04 2018 -0700

    standard

commit 2bae38f7bd5f773fd90a0da5b858d2d60c96ec78
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jun 28 19:38:57 2018 -0700

    add store.location.canonicalUrl

commit d9deae0ad9f7b203a38964989d2e63b93b67c5ac
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jun 28 19:38:07 2018 -0700

    remove unused pathname from location

commit 53bc576262be2ae76f2d30f07228330ba5275520
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jun 28 19:07:44 2018 -0700

    add examples to readme

commit 0bc8aa8e489c068b41da38044ed3deab5f6458e5
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jun 28 19:06:39 2018 -0700

    implement more actions!

commit 3f4ce938f4e3beb67b78967b73b175c4fe82ebf9
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jun 28 18:14:37 2018 -0700

    SEO: Fix MIDI page title (introduce thunks like redux-thunk)

commit 34bd29a1851b5a97451348c451cd0a238190fae6
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jun 28 18:14:13 2018 -0700

    style

commit 1d76134b2d307cbe06310e7d7de7be5dda0bfb9c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jun 28 17:06:03 2018 -0700

    SEO homepage

commit f9cb4f5f8b64f24c55ffeb27a6afb2d1f751e389
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jun 28 16:31:26 2018 -0700

    Remove unused slug code

commit bd35131865a4e603c0f8281df13c93259d486524
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jun 28 16:31:22 2018 -0700

    Publish objection-slug to npm; use it

commit dec47e63c0fcb4bede370242e1003e2589b749a9
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jun 28 16:02:59 2018 -0700

    Use midi slug urls

commit 28c4de977556867f4a400702b6756a6b2bcc0a15
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jun 28 15:53:08 2018 -0700

    add slugs to MIDI model

commit 719d4a1fec8e2164ad4b3de2d4b306f5b7cdb47c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jun 28 15:45:57 2018 -0700

    drop db and merge migrations

commit a4e76ebf55d09c240140e5638e3d0f2b6b69f730
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jun 28 13:55:59 2018 -0700

    Fix CSP on localhost

commit 7dbaeca7d54ed9493c4fa8fa4aeee412bc2b768c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jun 28 13:49:05 2018 -0700

    CSP: connect-src https://www.google-analytics.com

commit a0e4b0ec22c0d768587233529cb3552f9fd1f081
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jun 28 13:48:46 2018 -0700

    CSP: Remove twitter.com images

commit f202ec9d865c99b97236d0188f300c770201e2d1
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jun 28 13:16:42 2018 -0700

    timidity@1

commit c2c49430ff4a69f914d71d2af53a539b2cc90cab
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jun 28 13:10:24 2018 -0700

    listen for all events

commit 0e4a484dba3876f01526a62726f3666d0360befa
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jun 28 12:01:06 2018 -0700

    only init player once, lazily

commit ac1758b6b743504930c68a17012476f9ae70eed9
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jun 28 11:59:58 2018 -0700

    Refresh page data on an interval so it's always fresh

commit 73298b47c57ff18357b7fb380d44228828ecf718
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jun 28 11:57:49 2018 -0700

    remove redundant and unused description in package.json

commit 182c958cd731f4696684c9ecfbb2573bd4125476
Merge: 42f9ebf 35e55dc
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jun 27 13:42:51 2018 -0700

    Merge pull request #17 from feross/greenkeeper/express-mysql-session-2.0.0
    
    Update express-mysql-session to the latest version 🚀

commit 35e55dc880a988ad5066cae8bbdc7e65a95b5ec1
Author: greenkeeper[bot] <greenkeeper[bot]@users.noreply.github.com>
Date:   Wed Jun 27 14:03:15 2018 +0000

    fix(package): update express-mysql-session to version 2.0.0

commit 42f9ebf58197ebd3fc5d628997e535b43c0834ed
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jun 21 12:43:57 2018 -0700

    use URLSearchParams instead of querystring

commit 747f21dd6cbf5771c4f6852a2288d844d1ad234b
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jun 21 12:35:57 2018 -0700

    use 'fromentries' instead of inline function

commit 1d2cb1e01d76fb700afa9ff5c934bea0d8474055
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jun 21 12:35:36 2018 -0700

    move URL polyfill to server/index.mjs

commit 1c20346191f42ec7546f781c4f664c7ef3ad51b7
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jun 21 11:45:22 2018 -0700

    style

commit ffb780c7c2af78d58531abaa6a192065cedbb976
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jun 21 11:45:18 2018 -0700

    Move hacky URL shim to one place

commit e819642ab77d70cef8b281fbe2bbd8c4a93be82a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jun 20 22:07:24 2018 -0700

    attempt to fix uglify-es bug

commit c4ea9ca72edb9b5618214b84ccffbb222ab10a11
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jun 20 21:13:47 2018 -0700

    Set correct mime type for .pat (Gravis Ultrasound) files

commit 7689755273ad759785fa7874ba4b0f621cd7c2c5
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jun 20 20:04:01 2018 -0700

    remove db/ reference

commit 0e4cfc4d863cb1b6cdbbd0ba1c26dfcbff3c6bd4
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jun 20 19:57:12 2018 -0700

    standard

commit 6b2b9a6c19cf966869b31646dd0156b41a3b1e88
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jun 20 19:55:13 2018 -0700

    mount timidity at /timidity

commit 90fc947e97627bc234088056dd43154beb660f4e
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jun 20 19:41:38 2018 -0700

    serve timidity and freepats static files

commit 88c6d791cbd2f078292b6eae5cdad7c7a70972de
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jun 20 19:41:29 2018 -0700

    add freepats and timidity deps

commit c87ad1110c0911987b32f38c896f48db7190aed5
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jun 20 18:16:57 2018 -0700

    cleanup deploy.sh script

commit 045edbe2da0fc9391b16c89e06612e9207cdf2dd
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jun 20 14:21:49 2018 -0700

    Serve timidity files

commit 8888a9e700c8f939d80262c2c6d6697b3975b016
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jun 20 14:21:12 2018 -0700

    fix path

commit 313af17b94395194ea09043cfe4a5e0f0bba00ea
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jun 20 14:21:01 2018 -0700

    Enable WASM to stream

commit 33b9d81a6622f105407ceaa92b4dada33409bbd9
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jun 20 14:20:31 2018 -0700

    Replace MIDIjs with Timidity

commit b60c1a5b0b54a4ed221148acb6901f1167555320
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jun 20 13:34:34 2018 -0700

    Play drag-and-dropped MIDI files

commit f2a94fc1f2ae9f200fa615a1bd52796cacce73b0
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jun 20 13:23:47 2018 -0700

    Assume service worker support exists

commit fdb6437a80d369ef0e3b9e95982a4ab31807c0a0
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jun 20 13:23:39 2018 -0700

    style

commit e318eac2efcba7ae9b7b91667b6a27cf8dafd7a2
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jun 20 13:04:51 2018 -0700

    undom@0.4

commit c39da42a1cacc0a352f2b6180477f97054983f13
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jun 20 13:04:31 2018 -0700

    npm update

commit 50e5f4882c18cf93171fb8441634013574cd5aba
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 12 19:05:08 2018 -0700

    add link to thanks page

commit 67a6421018122fc1b731437fa40bcc2b3c45f626
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 12 19:05:03 2018 -0700

    Remove submit links

commit 5ace66d2230e6c3388e95e8e9d021f248eb8975e
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 12 19:04:44 2018 -0700

    add scripts to upload the uploads/ dir

commit 8e9afbcc08abb8bc8ad959a669422ef6ae9ca56d
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 12 19:04:31 2018 -0700

    simplify rsync/ssh commands

commit 26112b4e397442e6f72f718dd9ea32d3d480022b
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 12 18:45:59 2018 -0700

    Show page numbers in title

commit 666e5a7c20a186627e102ebb72f444e48b474f01
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 12 18:17:19 2018 -0700

    style

commit f4a423a3e8feb1d280e7846782183c76949960c5
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 12 18:17:13 2018 -0700

    add Download MIDI button

commit b4a31c646c3e6daff9a62caee5825b8820c8102c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 12 18:16:56 2018 -0700

    add "random MIDI" button

commit ff77daff3a8a0e4980fe411eebb881bf15064c21
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 12 18:16:32 2018 -0700

    api: add random api

commit 9d1829c372d38c2eedb2b336c43cf086b75be0a6
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 12 15:49:22 2018 -0700

    Fix feed output to be valid

commit 38d4f4cc7a574c3c92d3c84ff683076766562984
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 12 15:49:06 2018 -0700

    midi page: Show alternate names

commit 30cea9d1755a45dc3e9a53d5dfe860e17ec6b2b9
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 12 15:41:14 2018 -0700

    midi.get returns all data

commit bc587257c496ab6385b30e926f68b010f73b51c2
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 12 15:40:56 2018 -0700

    fix config keywords

commit d75cd5bd8ab17611f809b5be9eb21eb3f2dd35d4
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 12 15:40:50 2018 -0700

    nodemon: ignore views

commit 0c4416297177aec43b89aafe6d76d4a780831ddd
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 12 15:40:31 2018 -0700

    midi model: add virtual `url` prop

commit cc9e52a0561d09c3acf134014d94b2517931dc3f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 12 15:10:10 2018 -0700

    fix query logging

commit 305a69a4b1fecd1d1eeb3d12351ee3f209c1f132
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 12 14:59:28 2018 -0700

    fix base-model imports

commit 86a8ed05debecdabd09b11578d2184f350f043aa
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 12 14:59:05 2018 -0700

    fix base-model imports

commit 4e64f0b74dfbf4af6dbd36c3e9942ccf35485fbf
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 12 14:58:31 2018 -0700

    import alternate names

commit 9fc1c61fd1eefd197940e910c700cde335796041
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 12 14:58:25 2018 -0700

    midi model: add alternate names

commit 83a33083bbfd6e3581077a87b6ac1edabf088243
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 12 14:58:07 2018 -0700

    midi model: hash is required

commit 9141001c30dd0b1ad0d93813bbc58834129a67c1
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 12 14:57:38 2018 -0700

    base-model: rename to model

commit 881f15f5e2d0f8d81a3a47c85b554252ea2da899
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 12 14:56:13 2018 -0700

    base-model: add raw SQL logging

commit 02581c81a8b2c0aa1f5d500768e1d0ad3b339783
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 12 11:55:54 2018 -0700

    Remove extraneous ?page=0 from first page

commit b7f271d2ef474a8e92389146ce6ccbabb7e8388c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 12 11:27:22 2018 -0700

    Add pagination to search page

commit 0f493a4819ae2704411143bf85cb12d310975683
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 12 09:55:21 2018 -0700

    style

commit b71db81e80426f466f0b458f112a520f7c01a64c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 12 09:51:07 2018 -0700

    midi-page: fix

commit 6cfbd96f735bf75de74454120fe2f0d932c56145
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jun 11 18:48:33 2018 -0700

    add pagination to homepage

commit 2add77bfb053039be6ce902324e77362ecc02c8e
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jun 11 18:15:49 2018 -0700

    simplify

commit 7267e98c0822ca71ee53efecd64666b5aac9742b
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jun 11 18:15:46 2018 -0700

    Don't include ? in URLs without a search param

commit efc49eace766a205507b07268e794332337f4f92
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jun 11 17:41:43 2018 -0700

    prep for pagination

commit 44d1b13ba04c0d0e34a782a1ff4814aae573dfaf
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jun 11 17:07:54 2018 -0700

    homepage: show page 0 of midis

commit 9ddc52c1cdd9e9af3a181e40dd59123be0988a74
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jun 11 17:06:55 2018 -0700

    support defaultQuery; drop 'querystring' dep (use URLSearchParams)

commit 855fef3075de4a7a86851336076dcf8767fc89a3
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jun 11 16:39:45 2018 -0700

    routes: switch to object format

commit aa0b5cdfe31195c3a70a03b54580b54fbb5849f6
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jun 11 16:04:17 2018 -0700

    api: Add pagination to search/all apis

commit af66dddbc3e0626e4b2a833d45fe875855b375a4
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jun 11 16:03:40 2018 -0700

    Add limit(1) to first() and getOne() queries

commit 1fdf2b1905f16be6c495fa8b68c0cb60598432d2
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jun 11 16:03:34 2018 -0700

    style

commit 6a8c47829416fb5052c5119c2fcb637c5415b03b
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jun 11 16:03:23 2018 -0700

    loader: better centering

commit f9479d8951dd7e82e78f076fbe354b794cfa0f0d
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jun 11 13:37:17 2018 -0700

    RUN_PENDING_DISPATCH -> PENDING_DISPATCH

commit 9a7d096545e0c5edd6fb9659a1b6f6cd37d9f11e
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jun 11 13:32:48 2018 -0700

    add SearchPage

commit 5176052858094de8b2943d1cd6d19fea899389aa
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jun 11 13:05:26 2018 -0700

    Add search API

commit abe530328d95b1d750cfbc422666f92592e85de9
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 10 18:22:36 2018 -0700

    Move app router to router-app.mjs

commit ca20f867e0910066d3114961d6101e86875bf558
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 10 17:48:34 2018 -0700

    Move sessions store from SQLite3 to MySQL

commit 45927f495ae94477b0b824d174f414e0981240aa
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 10 17:26:37 2018 -0700

    Remove deprecated document.write()

commit ee0b368391dc458abb0938b8dfcacd6f9b7cf319
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 10 17:21:41 2018 -0700

    Never cache service-worker.mjs
    
    See for information about the updateViaCache option https://developers.google.com/web/updates/2018/06/fresher-sw

commit a7928b2dbef5509dddecea7d8c4f1e22ba3b2c16
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 10 17:14:32 2018 -0700

    fix service-worker.mjs location

commit 6cdaaff695a4011cd76ca0e27a5d8e21c45daf25
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 10 17:13:35 2018 -0700

    sw.mjs -> service-worker.mjs

commit a2388834478bef7cf68e4cc0f470dc0571fb22dc
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 10 17:13:09 2018 -0700

    Rename sw.js to service-worker.js

commit 1fd38aeb905eec90b466f2732812cef28bfd7cf5
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 10 17:12:34 2018 -0700

    fetchCount -> pending

commit 64c4840be33b3dad021aed1dd14a764f4fc97b19
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 10 17:07:34 2018 -0700

    Decrement fetchCount on error

commit 65990bd53a003b900067425961eed5187d87df67
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 10 17:05:42 2018 -0700

    preact-dom-renderer: error if html() called before render()

commit bbc04bb7acc525265a6a561367b4594c43c3a1a2
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 10 17:05:15 2018 -0700

    style

commit 6e198215b8fed6593c2ff9661638b486cd722ce4
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 10 16:17:41 2018 -0700

    npm watch: also start tunnel

commit 96c1aa245d72c30ae5b3b6eda31fb50bde62bc8f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 10 16:10:20 2018 -0700

    ava config

commit 803f910aab0203547ca1c9b6ff4f1a449a5399e0
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jun 6 03:14:37 2018 -0700

    comment out dead code

commit 1cdec22237a05e2ddbefcb7a7f99a67c26ef9736
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jun 6 03:07:56 2018 -0700

    import: ensure required argument is passed

commit 84ab9af2b691eaafc5d0e16ae73a7428dd609067
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jun 6 03:07:46 2018 -0700

    import: ensure uploads directory exists

commit 08e3eb9bcecb196922a9df6bf80dd1892f160dc7
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jun 6 02:57:45 2018 -0700

    add missing simple-sha256 dep

commit 18e92c9739c541fdf4643a13e5dab77cd05ab57a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jun 6 02:57:39 2018 -0700

    import: fix file permissions on import

commit 5f3480b13d60a348abb8bbbf689f3c0ace128034
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jun 6 02:51:21 2018 -0700

    db: do not throw if DB is empty

commit a568d948c0d47025638e8284c724182b634fc4c6
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jun 6 02:49:06 2018 -0700

    add mysql dep

commit 4c0a9b784455d1b9adf0f3e21cbb0b9438e3ceed
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jun 6 02:49:03 2018 -0700

    add npm run db-tunnel command

commit 8abf6b97f94429adc4f442962d8c8193229c2002
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jun 6 02:48:57 2018 -0700

    style

commit 8535aa56d9796c14a21cee4f57a3c2d146eb3099
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jun 6 02:48:43 2018 -0700

    cleaner common-tags import

commit a3d220ff2279b7bb5eaa8d94cb0804ecb8e520d5
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jun 6 02:48:28 2018 -0700

    move db info to secret/

commit 7fd5f5ca859368d7c8f54629fe549118fd111e7b
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jun 6 02:47:00 2018 -0700

    remove db info from config

commit d4d6007529b0c97971bffa170ae78a9b89a28e57
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jun 6 02:46:47 2018 -0700

    gitignore

commit e1b7874c9a7d1eda126a7be9f73a612e1158b1e5
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jun 6 02:46:41 2018 -0700

    JS index-sample

commit 362407447a99918818c9d6f8580e86280e6856d7
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jun 6 02:21:32 2018 -0700

    gitignore

commit c18410e78a86e9b2b5ff1ca82a5c960272e75dc4
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jun 6 02:21:28 2018 -0700

    ESM secret/index-sample

commit fa28851d95bddde0a4875eccd5fdc3da25576758
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jun 6 00:57:05 2018 -0700

    ESM slug

commit 9fdba8ba637fbde6575d0d3107b806e59508af1e
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jun 6 00:56:56 2018 -0700

    ESM simple-fetch

commit fff74925b8a8c5ab4991ea36f85c52289c3b4c57
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jun 6 00:56:45 2018 -0700

    ESM router

commit d666eb0dd2e448d1ce14321dfbe1c620d12f5dd1
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jun 6 00:56:32 2018 -0700

    ESM preact-dom-renderer

commit 5d2cf1dbc0774778a3b9d55444fc54f9e311f2f2
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jun 6 00:56:20 2018 -0700

    ESM location

commit 48947cb822f501e0e878db4ac770d33df4b5c210
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jun 6 00:56:06 2018 -0700

    ESM: history

commit 31c53cc99e48f78cfb8011b633c5315df9e200e5
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jun 6 00:48:57 2018 -0700

    ESM routes

commit a9390926ee8c2402af68f2ee40136070352cb2e1
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 5 19:42:25 2018 -0700

    ESM sw

commit a2efe62e916659bfc1c990fa82d02d843eee8bdf
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 5 19:41:57 2018 -0700

    ESM sw

commit 7e1e6b74da2da6426fa3833cdda730ecce1db17e
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 5 19:40:36 2018 -0700

    ESM search

commit eee693918493804da9f1a912f400b35a13856411
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 5 19:40:22 2018 -0700

    ESM search-page

commit 641dad7edcd1c8a55d3b30f056ac58201e85319f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 5 19:40:08 2018 -0700

    ESM page-component

commit 86e442fefb9ef0782c3f995b7c82f3ce93f4acb1
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 5 19:39:50 2018 -0700

    ESM midi

commit 9bdf7bd1341798977337b980b2a10dc4ca169a26
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 5 19:39:38 2018 -0700

    ESM midi-page

commit db7f0c8d7c4e2e14d008bda4556c798e5990b746
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 5 19:39:20 2018 -0700

    ESM loader

commit 4ae75269d13f7bf08fec341efe744952f5aa3a90
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 5 19:39:08 2018 -0700

    ESM link

commit fdab443c28eddfc28a69f10da35c719b9630f21f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 5 19:38:59 2018 -0700

    ESM icon

commit 485534fbd176322fb5fcf77868020fd535a6f5e6
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 5 19:38:54 2018 -0700

    ESM input

commit 63eba198d960cacd26d91654c52ef0037391faae
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 5 19:30:01 2018 -0700

    ESM image

commit 4bf60cf84b196ae17b5c8956392a711728be344c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 5 19:28:57 2018 -0700

    ESM icon

commit 2c1c95e714f087f9a2574cb912a37bddefb9b7c0
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 5 19:28:21 2018 -0700

    ESM header-page

commit 1d46a70a43e4cb07d1f1cbe45c98289a1c68eab6
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 5 19:27:31 2018 -0700

    ESM heading

commit c8ffa233931a30f1c97d646849c5c83d06eb0c4a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 5 19:26:28 2018 -0700

    ESM error-page

commit a18f97c66f9506cd5022d9a81f4d2c47e22f4b61
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 5 19:25:20 2018 -0700

    ESM: footer

commit 08abf7b38e6ce44c243454fa92e6222829ba4a8c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 5 19:24:09 2018 -0700

    delete unused code editor

commit 81fa0b179b4b9e11a79c87c7aa247e0e55e20ce4
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 5 19:21:32 2018 -0700

    ESM: title

commit 1c184a799b2c56dd4b0ac0a571b04e5d72765b32
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 5 19:19:44 2018 -0700

    link

commit 8b65773e3f71c05857dbbf67d55031520be62df2
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 5 19:19:09 2018 -0700

    Add MIDIjs player

commit 574ad39fadf8ec23582795a4a6106342d2f3a214
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 5 19:18:42 2018 -0700

    limit homepage until pagination works

commit 16798c96ea2643bd224d9c0e66c1fb9b34435773
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 5 18:39:03 2018 -0700

    fix knexfile path

commit 2f2f63c7eb9f63ff543942eef0253b0f4532fcd8
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 5 18:38:56 2018 -0700

    header button

commit 30bbe4cbba28e5ef31dbb048db51fce87de1e7fa
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 5 18:38:50 2018 -0700

    serve uploads/ folder

commit 115c07b1e715c02bce44fce300564e36253818cf
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 5 18:37:29 2018 -0700

    allow where query on any column

commit 706c2c5bdbdf3970850f731b4599e1d6b13eea9a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 5 18:37:16 2018 -0700

    Import script

commit 16712d0ad2c87ac521c55bafed8fe7c10f1b8b46
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 5 18:35:51 2018 -0700

    ESM: always use default exports

commit 25c67ff096c6b8a4c6dee28d207be41057f1d434
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 5 18:34:46 2018 -0700

    fix knex command

commit 016f86f6efc164254a12502f61b3d10fe6567ca1
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 5 18:34:28 2018 -0700

    ignore uploads folder

commit 8d62f22678a1cc199341e1bb8582487d880a8eac
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 5 18:33:52 2018 -0700

    travis: remove sudo: required

commit 4250e11090e57d5432ab326bdc2a825c4e78e990
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 2 12:37:48 2018 -0700

    misc

commit 3837db074fe07dc4545cf0a39259fc9ce50955d8
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 2 12:37:41 2018 -0700

    modify simple-fetch to support promises

commit 606e387b209cda51cc3242bb25b57be96adcd300
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 2 12:37:32 2018 -0700

    better debugging: attach debug variables to window before first render

commit 519e3a78317146b4535cae6639b981f4a096ad21
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 2 12:37:13 2018 -0700

    update browser apis for midi

commit 9a6c16ade2e2939a42ee8ceb33ab883f1b9dcd36
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 2 12:35:49 2018 -0700

    add ?ssr=0 query param to disable server-side rendering

commit 82404ba77b7b8cd4b08336f997a95680883647e4
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 2 12:35:33 2018 -0700

    remove unused icon

commit 535230437304dc00fd218e7965d5dbda8491bfa0
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 2 12:35:25 2018 -0700

    update feed ejs for midis

commit 8740ccbdd2997522cb61e5ec3acdccc5eeb2a890
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 2 12:35:16 2018 -0700

    update api router for midi apis

commit 397eed577ff56deeaf5fa4f4cf71521cdfb0ee2a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 2 12:34:37 2018 -0700

    update feed router for midi api

commit 142f10dd4ded339260edf266fab0c92cfe1b3abe
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 2 12:34:25 2018 -0700

    update snippet for midi

commit f95e815001303fd780d7fa025d97ccb10570a168
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 2 12:34:03 2018 -0700

    update snippet page for midi

commit 421a1c220b263af2e6936b96f870f7f4bb4ed84e
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 2 12:33:26 2018 -0700

    update homepage for midis

commit ad190790eea990b994adfbc53cc82e5b78915005
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 2 12:33:17 2018 -0700

    store: add midi events

commit a89cea3104d586e783ee41fd467af5a0f468b310
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 2 12:32:53 2018 -0700

    remove unused store events

commit 1499d0b497571cb682fa27f5f957d313726d6446
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 2 12:32:08 2018 -0700

    remove twitter auth route

commit 928d807cd0e0ceb1eca81d0389cb37030947114f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 2 12:31:55 2018 -0700

    update routes

commit ec4c991fabd1a40a8d552d25fbf238406ff98ddf
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 2 12:31:48 2018 -0700

    add midi knex model

commit f4bda215984d1b0b9ee1b1893c737278cf0a321a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 2 12:31:32 2018 -0700

    fix brower replace src/api

commit d2e6bf8e7752c785b77a23a4b2397fc7193b0e8a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 2 12:31:20 2018 -0700

    remove twitter api

commit 1a1ab5122e9f7a34a4a1905fad101f804eb61a33
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 2 12:31:06 2018 -0700

    add promise MIDI api

commit 59ab30ae210a796724224c595e1ebd14ecb36cfd
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 2 12:29:22 2018 -0700

    add knex

commit 6c3691000cb9dbc43d08cbd6bf6b32cadf05385f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 2 12:28:23 2018 -0700

    config DRY

commit d710a7448a2219c91ce3d58dfb6b461916ee7df4
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 2 12:28:04 2018 -0700

    ESM: api.js

commit a665815afc4d6cb9525137dd2a790c5b5b895e8d
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 2 00:24:16 2018 -0700

    Remove legacy JS build
    
    Even with the legacy build, Chrome 41 still doesn't support fetch(), and other basic features we use, so JS still throws an exception.
    
    Let's just wait for Google Search to support a newer Chrome version. Google I/O 2018 talk says it's likely by the end of the year.
    
    In the meantime, we have server-side rendering. So we're still being indexed, it's just that Google can't run our JS.

commit e35c3fc914c19eb8b2b4a4195ee40cbce992bc80
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jun 1 05:17:40 2018 -0700

    don't minify legacy bundle

commit 0146c017312b563a8e580969dd829a3bdf5a3173
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jun 1 05:06:02 2018 -0700

    don't minify legacy bundle

commit 483291ba948ea78b978afaa33ddc153289ac5212
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jun 1 05:05:27 2018 -0700

    preload bundle.js in the right mode

commit 0576e11cdf998e83c5f0bf706051b6b80966b968
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jun 1 04:32:46 2018 -0700

    forgot type="module"

commit db9203bfa548bbdb5a8119737561a8bbdcb8c785
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jun 1 03:10:47 2018 -0700

    fix typo

commit 049d8a1456dd13e4ef76a8c64755c7416d8d95f6
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jun 1 03:09:02 2018 -0700

    style

commit 742b5b3879acc5f5ad0db58d81f8181b3e1ac619
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jun 1 03:06:27 2018 -0700

    Add additional JS bundle "bundle.legacy.js"

commit d35c184231306e7bd352b9d69db510e77050b09d
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jun 1 02:41:12 2018 -0700

    SEO: Use babel-preset-env for Chrome 41 support
    
    Googlebot uses Chrome 41

commit 97115b88246d6589a2deb5d1b7798e1371118064
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jun 1 02:10:15 2018 -0700

    import consistently

commit 93f906e03c4b545e601754ac355b45de36157825
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 22:39:21 2018 -0700

    newline

commit af0631b9c32e630d74df97854902a08222a12ab1
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 11:19:48 2018 -0700

    readme

commit 5e6e45a93a8da764da748b70c30b38dc04389f3f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 11:11:22 2018 -0700

    readme

commit 8f338020f3100f6c7dd9b01c1e22b9c47212793a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 11:10:07 2018 -0700

    readme

commit e8cb7352b4349941d8d0c19e43bb16708b0933f2
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 11:03:36 2018 -0700

    Replace 'gtag.js' with 'analytics.js'
    
    See: https://twitter.com/feross/status/1002244898840428544

commit 85e45cad1341e875e146a09b7fe327eed7d101e8
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 10:43:14 2018 -0700

    fix first page view tracking

commit 8f9febc06d371755b04b1a5f55f7bf003099e13a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 10:28:02 2018 -0700

    ESM: header

commit 101a9c556091b529899822115615caf3c0c49417
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 10:27:39 2018 -0700

    fixpack

commit 84b7ed855bc74aa4bbe7fa85a6178ad5c6af0e8c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 10:27:36 2018 -0700

    watchify: don't exclude process global in development builds
    
    It's needed for the if (process.env.NODE_ENV !== 'production') check to work for conditionally loading 'preact/devtools'

commit c3b18077023d4e00db140fd72c32d099db6de801
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 10:15:01 2018 -0700

    fix nodemon ignore

commit b7fdaa2212f0e874094ee2e981f40782e101f948
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 10:11:19 2018 -0700

    ESM: buttom

commit 68a29ca74bdedcf28f5f5ccba4a6e1db46d0595f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 10:11:07 2018 -0700

    ESM: app

commit b42ad586b15f0743cae08b74260b32e93525df5c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 10:10:33 2018 -0700

    log runtime browser errors

commit fa8e3393da4a812f84d0de45b17f89eda2886f54
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 10:10:08 2018 -0700

    Use new Google Analytics tracking code

commit 927884a21af5e2033919cbebfd7433440b43a0d8
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 10:09:44 2018 -0700

    Update site description

commit 9e35c63ce7e15933ee3fec5e1ef23ef5f1a609cb
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 09:17:24 2018 -0700

    fix build-css to detect .ejs files

commit a66fbfcc0dab57d0664bf0431ca4c60f2d7b6f35
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 09:00:48 2018 -0700

    expose debug functions on window

commit 1a35cc1c816a8c8d77ec8119f1e064ce5bff3621
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 08:56:51 2018 -0700

    remove unused deps

commit 16625a5ec4a812e6249aa63bb5ceef37f19040cd
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 08:42:24 2018 -0700

    fix supervisor start command

commit 74e1b84fa776ee585231056ac44c20283a891abe
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 08:35:15 2018 -0700

    build-css: print verbose message

commit 309e02b4c11e87e993de221e16a9c73374996531
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 08:10:28 2018 -0700

    add `npm run size-disc` command

commit 28dea9edc0a0c99b1532e3188d77aa5786d92313
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 08:10:03 2018 -0700

    browserify: skip inclusion of globals like `process`
    
    Saves bytes!

commit 90f9f91a5d50fa752f0542db75c70f790da76956
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 07:53:54 2018 -0700

    standard

commit f063b2de5353ef4f05b15f4f2fe0285186add0f1
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 07:52:18 2018 -0700

    exclude 'preact/devtools' in production

commit a4d70da8cf4524709295e390811467900ca748fc
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 07:47:22 2018 -0700

    browser: expose debug variables on window.App

commit 08b32fa433d22bc05d7c63d9670a5b0dbc56f583
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 07:47:08 2018 -0700

    add 'npm run size-css'

commit 15da81a8446d966c50cf245171107f76fd6cdb92
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 07:46:59 2018 -0700

    ESM: build-css

commit 9a224169489e498d574b650176bf32dd313e8fd2
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 07:42:43 2018 -0700

    replace rollup with browserify

commit 8677ccf7f2647bd0914d7977d23905861413160a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 07:17:36 2018 -0700

    purify-css.js -> build-css.js

commit 4b5e6e44653ea24ab68675d8e6ee2974af23ede7
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 07:15:59 2018 -0700

    rollup -> browserify: remove --experimental-modules

commit 833e62bb278c5b788009f5ff01d51c47247fb966
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 07:15:32 2018 -0700

    rollup -> browserify: start.mjs -> start.js (move @babel/register)

commit 88b5f5507c572443a262f322e80771f59783e1aa
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 07:12:55 2018 -0700

    ESM: provider.js

commit 9fc9fdc6877ab472bd809dc90397e3b427cda562
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 07:12:23 2018 -0700

    rollup -> browserify: delete rollup

commit 09583155112eeb24486f73d40b49762b422cbadf
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 07:09:55 2018 -0700

    rollup -> browserify: use babel for ES modules

commit 4f5e9b1ba23c58bfcb21ca37cff2fcc6f480229f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 07:08:47 2018 -0700

    standard: don't ignore /tmp

commit 517c6a922ec6f208e78610b78c30a73cc89fa454
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 06:38:32 2018 -0700

    remove nodefoo highlight.js / codemirror

commit a894bb6cd27251cde7dd4a974d8e67e64cc8615c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 03:32:54 2018 -0700

    remove unused .gitignore line

commit e1f54f4cc173502a4944162c32a94e9a5e48720b
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 03:31:20 2018 -0700

    Remove ava
    
    Has tons of babel depedencies with conflicting peerDeps, ugh

commit f8151e5cfd2f5dc914c2276af5abef4833bf37c5
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 03:30:21 2018 -0700

    update all babel to 7.0.0-beta.49

commit 0215a00e3502653adbb192af44e70ab3cc652449
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 03:08:30 2018 -0700

    ESM: debug-helper

commit ea05b0ce336874d0627df45dab1569eaeae0a942
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 03:04:34 2018 -0700

    ESM: store.mjs

commit cc96bfdf60632e9cd8d840838a84f0cdeeaf55d0
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 02:22:27 2018 -0700

    remove package-lock.json

commit c430dd6ebdd861d0dfe146d07b1535a0f602e33e
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 02:21:52 2018 -0700

    package-lock.json

commit 0d074a1617b8e7b774b7fde726cc293a2ebac729
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 02:21:33 2018 -0700

    disable opbeat

commit c63a8fa2aea086d5bf709ec52c1126e77b46be46
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 02:09:57 2018 -0700

    remove sonarwhal

commit ed316ce65d43c98300021499d988250dea7c3be4
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 02:09:27 2018 -0700

    add placeholder logo

commit 66ebf357d226e832629abd0a97b373c4d4f97fd3
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 01:44:02 2018 -0700

    set port to 7070

commit 807e90166e2d5abd9ced727a7ff7a4f342cc2f4f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 01:37:59 2018 -0700

    remove nodefoo SubmitPage and DocPage

commit 49c166090ba19eddcbb5a951ada133e29b77ceb9
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 01:37:44 2018 -0700

    nodefoo.com -> bitmidi.com

commit 0c242c0d50c1cce6e6de3617e1ee779df4386a11
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 01:37:17 2018 -0700

    export browser globals on 'window.App'

commit 77ff294bd6b283677b6b40f349d680142b50a372
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 01:23:06 2018 -0700

    remove nodefoo.com files

commit 52b290b177ed53099ec86627a938107b21384d3c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 01:23:04 2018 -0700

    remove nodefoo.com files

commit 210ddd64538af1d9b8797a5b5d7b8a701ce3af2b
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 01:06:19 2018 -0700

    purify-css: disable logs

commit 59acaec161ef64d62cb54108a626d8b95a0d269f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 00:38:42 2018 -0700

    bin/ -> tools/

commit 27c11d0aaebf03cac9b4273d6018c90175c26877
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 00:37:02 2018 -0700

    delete unused nodefoo.com files

commit 5e3e8b85a699392124c50fd32c3690e5de8b7dc2
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 00:36:03 2018 -0700

    package-lock.json

commit db421cf8274a0e0f69184a919c75d5828022712c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 00:35:58 2018 -0700

    delete nodefoo files

commit 8a8042b089713efa9a950eaa9f881755c97eafc5
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 00:35:47 2018 -0700

    nodefoo.com -> bitmidi.com

commit c66e3d93be8ab467ff869f7b4f4488f0b4fe91cf
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 00:35:32 2018 -0700

    sonar -> sonarwhal

commit 778b40a5f724172e98c90988a87384052f08399b
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 00:16:44 2018 -0700

    package-lock.json

commit 1dafee588101c3d1994e9cb8929e43b74b875997
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 00:16:39 2018 -0700

    skip ava tests

commit 748c8ac82a81d0b10d17cbd74d1c88c6cde8d06f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 00:10:43 2018 -0700

    Replace @std/esm with --experimental-modules

commit 54423cec71f0836869d8c1a113aa2be102b781c2
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 00:03:50 2018 -0700

    Pre-emptively add watch.clearScreen=false
    
    This makes `rollup --watch` not clear the screen

commit e1fe333db5c19865263971ac235c7a64c88bdb90
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 00:03:07 2018 -0700

    START BitMidi.com – Fork NodeFoo.com

commit 45bd92497908dafa7b1becf99e75921dea915109
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed May 16 14:53:49 2018 +0200

    Remove X-Frame-Options header
    
    This header is much more widely supported than the CSP frame-ancestors directive, but we don't support IE11 anymore anyway.
    
    https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Security-Policy/frame-ancestors

commit 8ba04cc4653ebafd239b759cdea4d9901fbf625a
Merge: 8c4cc18 388573f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue May 15 00:35:10 2018 -0700

    Merge pull request #15 from feross/greenkeeper/rollup-0.59.0
    
    Update rollup to the latest version 🚀

commit 388573f8a16bf5aea474671022b602a561d31a5b
Author: greenkeeper[bot] <greenkeeper[bot]@users.noreply.github.com>
Date:   Tue May 15 06:40:56 2018 +0000

    chore(package): update rollup to version 0.59.0

commit 8c4cc1899aaf8b1f94ff102362baf74efe262863
Merge: 70fe0c8 430bd65
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Apr 16 18:36:03 2018 -0700

    Merge pull request #14 from feross/greenkeeper/rollup-0.58.0
    
    Update rollup to the latest version 🚀

commit 430bd65db953d6ef9a290bb5224bba4e1476a5bc
Author: greenkeeper[bot] <greenkeeper[bot]@users.noreply.github.com>
Date:   Mon Apr 16 13:39:56 2018 +0000

    chore(package): update rollup to version 0.58.0

commit 70fe0c8cff5f8c34c91c4d5a35ed5d4033c06317
Merge: 1896076 9dbc25d
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Apr 12 18:37:46 2018 -0700

    Merge pull request #13 from feross/greenkeeper/babel-minify-0.4.0
    
    Update babel-minify to the latest version 🚀

commit 9dbc25dc819620497af2bc407ba54fdf4eef1cb4
Author: greenkeeper[bot] <greenkeeper[bot]@users.noreply.github.com>
Date:   Sun Apr 8 08:32:11 2018 +0000

    chore(package): update babel-minify to version 0.4.0

commit 1896076456eeba6452ff753e67d43f0c2ade7966
Merge: 92ebf14 59b99e0
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Mar 23 23:18:42 2018 -0700

    Merge pull request #11 from feross/greenkeeper/rollup-plugin-commonjs-9.1.0
    
    chore(package): update rollup-plugin-commonjs to version 9.1.0

commit 92ebf1424ee951db00497d911355f2559809b808
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Mar 23 18:44:59 2018 -0700

    Revert "Use 'npm ci' for faster install with lockfile"
    
    This reverts commit 4204951c03c6b8447cbbdc3e8312dce6ae8414ad.

commit f26ed9bc1953ad0b938c39526a6e63286d25adab
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Mar 23 18:36:44 2018 -0700

    deploy: fix package-lock.json getting updated
    
    HACK HACK HACK HACK HACK - fix package-lock.json getting updated when 'npm install' is run. This happens when package.json and package-lock.json are out of sync, and happens anytime a Greenkeeper PR is merged, for instance.

commit 36cf649a3eee46ae66cd38c87f6740351e524be8
Merge: 4204951 26c3172
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Mar 23 17:07:14 2018 -0700

    Merge pull request #8 from feross/greenkeeper/rollup-0.57.0
    
    Update rollup to the latest version 🚀

commit 4204951c03c6b8447cbbdc3e8312dce6ae8414ad
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Mar 23 16:42:29 2018 -0700

    Use 'npm ci' for faster install with lockfile

commit 5b52bb465d964d508c31152fff16b508e326f7cc
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Mar 23 15:36:33 2018 -0700

    package lock

commit 8ec3e54e7955c87f6cc02277519ceedb8e1aaeb0
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Mar 23 15:34:16 2018 -0700

    package lock

commit 0b3490408596ea0db2a16c2554e37a7a3b2b460b
Merge: d7a644e b3d65d2
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Mar 23 15:26:45 2018 -0700

    Merge pull request #10 from feross/greenkeeper/clipboard-copy-2.0.0
    
    Update clipboard-copy to the latest version 🚀

commit b3d65d271dcc6f8afa5e0a1f25d19d69ab3dffd7
Author: greenkeeper[bot] <greenkeeper[bot]@users.noreply.github.com>
Date:   Sun Mar 18 06:08:19 2018 +0000

    fix(package): update clipboard-copy to version 2.0.0

commit d7a644e3cd84800bd76dcdc109321b1c87411a2e
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Mar 15 10:47:38 2018 -0700

    package-lock.json

commit a6fe54de5482a9c3d3cb06ff77bea174a08f63b4
Merge: deac111 d304e4d
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Mar 15 10:31:53 2018 -0700

    Merge pull request #9 from feross/greenkeeper/sqlite3-4.0.0
    
    Update sqlite3 to the latest version 🚀

commit d304e4d08f0e4e07151af44845760f73689ff798
Author: greenkeeper[bot] <greenkeeper[bot]@users.noreply.github.com>
Date:   Thu Mar 15 15:31:56 2018 +0000

    fix(package): update sqlite3 to version 4.0.0

commit 26c3172f0234feeef171354a203c7967064d45d6
Author: greenkeeper[bot] <greenkeeper[bot]@users.noreply.github.com>
Date:   Thu Mar 15 07:41:44 2018 +0000

    chore(package): update rollup to version 0.57.0

commit 59b99e0c2b486397885b3f2f67bc0db5b3d31196
Author: greenkeeper[bot] <greenkeeper[bot]@users.noreply.github.com>
Date:   Mon Mar 12 05:38:56 2018 +0000

    chore(package): update rollup-plugin-commonjs to version 9.1.0
    
    Closes #7

commit deac1113c9c9f5527c34d313fee38e96b84296ed
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Mar 2 14:12:20 2018 -0800

    Chrome sandbox doesn't work in Travis Docker containers due
    to Spectre/Meldown mitigation.
    
    https://github.com/travis-ci/travis-ci/issues/8836#issuecomment-356362524
    
    Use old Travis infrastructure for now.

commit 29bd9c783957402fc989f308bc31be7e2746488b
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Mar 2 13:57:29 2018 -0800

    ignore sonar test failure

commit 5822e350ec782f3107f5457c23c54b6ae5c5f1db
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Mar 2 13:35:18 2018 -0800

    update standard

commit 71608990c6005df4651b15ea4b3b63550e8067c4
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Mar 2 13:32:54 2018 -0800

    npm update

commit be5967f2e938d0767c22a95fd2f2843a6631edbe
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Mar 2 13:26:27 2018 -0800

    remove greenkeeper badge

commit c63ccac3dbe7c4ed65a7489cc267fbc8c8e297ab
Merge: fbf8618 2b227ef
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Mar 2 13:26:01 2018 -0800

    Merge pull request #5 from feross/greenkeeper/initial
    
    Update dependencies to enable Greenkeeper 🌴

commit 2b227ef654230a056f6e3c3cee20f89b053df8b2
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Mar 2 13:25:52 2018 -0800

    undo @std/esm update

commit 842eeb45a232e9b88509b8d0cddde7cc182b3789
Author: greenkeeper[bot] <greenkeeper[bot]@users.noreply.github.com>
Date:   Fri Feb 23 01:52:37 2018 +0000

    docs(readme): add Greenkeeper badge

commit 8b649ab43f120cf0c755a805a2c0e7ea2fa086e2
Author: greenkeeper[bot] <greenkeeper[bot]@users.noreply.github.com>
Date:   Fri Feb 23 01:52:34 2018 +0000

    chore(package): update dependencies

commit fbf8618f3a09ece2b7163d8f12bc305c2f29b4ab
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Feb 16 02:36:34 2018 -0800

    fix for puppeteer@1

commit f63549b124f4a4d521d505a3f357a0466c833cce
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Feb 16 02:36:27 2018 -0800

    puppeteer@1

commit cf112c9539b0979216116246f51d508d9d8369c1
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Feb 16 02:33:12 2018 -0800

    npm update

commit 6ac0b85fe6650c0553a54f8dab2b7a7f0931e48d
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Feb 16 02:31:06 2018 -0800

    package lock

commit be8f1c7d3328962018121a8af7178a611f26ec5e
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Feb 16 02:31:01 2018 -0800

    rollup@0.56

commit c9ef3745d35ddf34729af10b4bb6d4856c519f00
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Feb 16 02:30:49 2018 -0800

    rollup-plugin-node-resolve 3.0.3

commit 940c4ce10be3be9624600bc9c6a3b5d522a02c71
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Feb 7 12:29:50 2018 -0800

    ava@^1.0.0-beta.1
    
    This version of ava includes Babel 7.
    
    The ava options "babel" and "compileEnhancements" are set to disable ava's built-in babel compilation which is overkill. Every tool you install shouldn't do it's own babel processing on your files.
    
    We include @babel/register manually so that our own babel config is used at runtime, without including any of ava's crap.

commit a3c30aeb5e49d52ecab3f19555231a637a408646
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Feb 7 12:08:27 2018 -0800

    remove babel-plugin-external-helpers dep

commit b936a018053cc884307d47a8c6234dc6a4243523
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Feb 7 11:47:51 2018 -0800

    update rollup config for new rollup-plugin-babel version

commit 1a7327d6f8f91739dd4c8add3ee38b0ce695855e
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Feb 7 11:47:36 2018 -0800

    update rollup config for new version

commit b750bf64ffc2f5c2f874b36d2b536a0f8ca55366
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Feb 7 11:46:58 2018 -0800

    rollup-plugin-babel@4.0.0-beta.1
    
    Note: this is buggy and includes a huge number of babel helper functions even though only one (objectWithoutProperties) is used.
    
    This bloats the bundle size by ~6kb
    
    Issue here: https://github.com/rollup/rollup-plugin-babel/issues/187

commit 9f81829fede2c67b6f50473dd188a8680915ff16
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Feb 7 11:46:05 2018 -0800

    stop including custom babel-helpers file

commit 74437c1725dac58be0747f572b921168bc724598
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Feb 7 11:41:38 2018 -0800

    move babel config to .babelrc

commit df8a90f967c34b96e083ce43280e1229b1455eea
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Feb 7 10:26:52 2018 -0800

    fixpack

commit f6802a2d529d40cb664c8ce22c34aff793dc9c26
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Feb 7 10:22:17 2018 -0800

    rollup@0.55

commit 4fc3051f1c3a285f4677db260344fecc78f3a1ed
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Feb 7 10:12:47 2018 -0800

    Remove Edge from supported Sonar browsers
    
    Edge doesn't support 'noopener' so it's giving false positives

commit 656e7e57f47118b26400e0fbf228e933ac17aa9c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Feb 7 10:12:25 2018 -0800

    Fix sonar warnings

commit 58c045f0e228784930cbfddd2504825ec55ed9d5
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Feb 7 10:07:09 2018 -0800

    @babel/plugin-proposal-class-properties@7

commit 7ab64f1aeb778fa7c55ecd645dd79ffae89de6d7
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Feb 7 10:04:06 2018 -0800

    @babel/plugin-proposal-object-rest-spread@7

commit 018b357d5c4a51fae74df76ed3bd569f99c1c9c9
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Feb 7 09:56:53 2018 -0800

    @babel/plugin-transform-react-jsx@7

commit ef9004d80a4b4fbc7a46569322f211296fbdaa86
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Feb 7 09:23:53 2018 -0800

    Lock @std/esm to fix regression
    
    See https://github.com/standard-things/esm/issues/269

commit 3722b96411bc05b9e301df38b54f8286efab9038
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Feb 7 09:10:52 2018 -0800

    load babel-register before opbeat

commit 5e11a0401a0be0efaed99e023132d91a84ba0afe
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Feb 7 09:03:24 2018 -0800

    npm update

commit 763a7474ddd02f65ed51bfd3c25cc2525aba0112
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Feb 7 08:41:18 2018 -0800

    Update experimental async image loading attribute

commit 9465f5b624985ab98c07f4db31070c08b49b2333
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Feb 7 08:40:33 2018 -0800

    explicitly set httpOnly

commit a6a4a6d4dd3ccbf284cd8129c33e33d38240ce98
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Feb 7 08:40:02 2018 -0800

    Prevent cookies from being sent with cross-site requests

commit 48e2a0d53a826dcb47b380cf1602e363e5206df5
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Feb 7 08:28:54 2018 -0800

    move maxAgeCookie setting to config

commit eeff41219d9f7a29cf0522c73f88bb76aa744a36
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Feb 7 08:28:26 2018 -0800

    config.maxAge -> config.maxAgeStatic

commit 4e3a46fc2b862d64c20771ee6f4f7397f9f6777a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Feb 7 08:27:54 2018 -0800

    Reduce HSTS time to 1 year; move to config

commit e27d9ae678db4b5630b3073f3800f656369234a9
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jan 16 21:49:18 2018 -0500

    package lock

commit dcc3e2fd84f49ba87c36e2bbc583f89ab0d4ac97
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jan 16 21:49:09 2018 -0500

    @std/esm@^0.19.4

commit 1d0fa8f482fc76d67f0eb76bc4ba6cc0690a2769
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jan 16 21:47:03 2018 -0500

    make optional deps into dev deps

commit f981895325029e5d67264aaf6087f190964d6724
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jan 16 20:50:33 2018 -0500

    tape -> ava

commit a058d9cc5cf2ce5fdeac80ddef7c5d5e05d037de
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jan 18 13:02:30 2018 -0500

    correct website link

commit 565451104a16224f7f9d41a3c7af6738859b5e56
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jan 15 10:58:55 2018 -0500

    Lock @std/esm to fix regression
    
    See https://github.com/standard-things/esm/issues/236

commit 56ca12bc347de275900c459d74f4eb4d06686abd
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jan 15 10:45:16 2018 -0500

    Lock rollup to fix regression
    
    See https://github.com/rollup/rollup/issues/1875

commit 0b615bd978fdbba7471680f28fe64075854be011
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jan 15 10:11:02 2018 -0500

    rollup@0.54

commit 89fc9512157ecca772bf36ce714da0417cf2aec3
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jan 15 10:10:01 2018 -0500

    mollusc@2

commit d54300d3df72fa2483ed1febee887dc9e3ee49fd
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jan 15 10:04:41 2018 -0500

    Lock rollup-plugin-node-resolve to fix regression
    
    See https://github.com/rollup/rollup-plugin-node-resolve/issues/131
    See https://github.com/rollup/rollup-plugin-node-resolve/pull/133

commit d964c712c8022d22821b3f9a86f230408dcf5584
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jan 15 09:19:38 2018 -0500

    add package-lock.json

commit 73ccea47861a4034b611d215fb8290ff6e50bdde
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jan 14 21:02:41 2018 -0500

    use async-await

commit f8cedc5c34ba55b8dbe02383c4fb9740ec50020d
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jan 14 21:02:23 2018 -0500

    readme

commit c9f66766a725d0eb968fba1e1e7e3275b83d2b73
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Nov 25 18:14:27 2017 -0800

    google site verification

commit 7aae7358cae3f82cffddca11eddd03f0f29b0d88
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Nov 25 14:04:18 2017 -0800

    disable babel cache in production
    
    The node process runs as "www-data" user but the ~/www/nodefoo.com folder is owned by "feross" user. So it can't write into ~/www/nodefoo.com/node_modules/.cache

commit 470636ba7829af78e1119f1e9ce48415c8f2d081
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Nov 18 11:09:47 2017 -0500

    disable babel cache

commit 66b755ef2dde529a3d8b5cfde3c8a2fc975318f4
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Nov 18 05:29:22 2017 -0800

    rollup@0.51

commit bf803b63ed1eab01e3c71a19dd1c210d3a4ecbf2
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Nov 18 05:25:08 2017 -0800

    remove BABEL_DISABLE_CACHE

commit 8b309fa1608fe2f50b998e5140a22a725538afaf
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Nov 18 05:24:16 2017 -0800

    @std/esm 0.16

commit 25380b66a6b93587a71f323a23d6627f45f915a7
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Nov 16 11:19:22 2017 -0800

    travis: attempt to remove compiler toolchain (simpler)

commit eef90581638982c1938c3eef744e1a7692ef83f4
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Nov 16 11:15:09 2017 -0800

    fill in secret/index-sample with TODO

commit 00d69481b491b6efc88ed09ba6caf4d8b14da5e0
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Nov 16 10:31:45 2017 -0800

    travis: test latest Node LTS version

commit 188fdb3d6c7030e1527a85c8d37898c4a989f6f2
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Nov 16 10:31:37 2017 -0800

    travis: create secret file so integration tests don't crash

commit b623bb82d460e3250d6a4cc13ecb71fda64e5b63
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Nov 16 10:31:06 2017 -0800

    tape: actually run tests

commit 88dfeb5b06a576003c2d9f46ecc1d214c5c2222d
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Nov 16 10:06:59 2017 -0800

    supervisor: use @std/esm

commit c6ce8f17a5adc4a3f82a0980c99ce34ec2bae81c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Nov 16 10:05:29 2017 -0800

    use @std/esm on test files

commit 6c8d88b083331c465828476038d331c2f45fbbd9
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Nov 16 09:57:17 2017 -0800

    re-enable @babel/register configuration

commit 482e0d9fc86cd49bfc8545b1d500bba4717236cb
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Nov 16 09:56:57 2017 -0800

    tell rollup to resolve mjs files

commit 603f210dadaacbc0930d78a78aa0c155646b3294
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Nov 16 09:56:40 2017 -0800

    fix standard command for ESM

commit 711bac469ddf3366e52319148b7bb550385d8304
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Nov 16 09:44:49 2017 -0800

    use babel 7 beta

commit ab2f6728051248bcdb2dbcf69e5ff9975872b1c2
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Nov 16 09:42:30 2017 -0800

    use @std/esm; port more files to ESM

commit 81fe2289b068f30ba24719aae9803630a19b1ae7
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Nov 8 04:27:08 2017 -0800

    BABEL_DISABLE_CACHE=1

commit 8ee714867744ac0d80ef324dc2193e935a330eae
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Nov 7 02:52:46 2017 -0800

    csp: allow service worker

commit 412c469af60a0cb20f3ee3a4a20a48959d7e9a92
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Nov 7 02:33:00 2017 -0800

    improve bundle banner

commit 93fca19e524ef9cf316388a541f43de3335f3204
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Nov 7 02:32:50 2017 -0800

    strip indent from bundle banner

commit 34c56c78b2c69bdee11cba99e760ab7ba9c503af
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Nov 7 02:23:26 2017 -0800

    storeInit -> initStore

commit f1c2b36b09c37cbb3b96f1189c1dd31ca36edcb6
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Nov 7 02:22:56 2017 -0800

    Add ARIA landmark roles
    
    Role banner: High <header> has role="banner".
     Role navigation: High <nav> has role="navigation".
     Role main: High <main> has role="main".

commit 297b901680c8945c4916a6b9d92e6a3d6df018e2
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Nov 7 02:17:44 2017 -0800

    Much cleaner 500 page

commit 0e7e525b7f90494242942debd7ed66cbc4e4b97a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Nov 7 02:17:23 2017 -0800

    cleanup offline page

commit 2bc31214849ea38a84b36b5a66bbdaf0a8bd3cb5
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Nov 7 01:59:42 2017 -0800

    add robots.txt file

commit 3b84e039abbfa5647b6d1e51308a6c70084c1ad1
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Nov 7 01:46:52 2017 -0800

    csp: add 'unsafe-inline' fallback for older browsers
    
    script-src nonce-{random} 'unsafe-inline' The nonce directive means that <script> elements will be allowed to execute only if they contain a nonce attribute matching the randomly-generated value which appears in the policy.
    
    Note: In the presence of a CSP nonce the unsafe-inline directive will be ignored by modern browsers. Older browsers, which don't support nonces, will see unsafe-inline and allow inline scripts to execute.

commit 3ed3832b84da3a4eb07b095c39a797705efe42c3
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Nov 7 01:46:26 2017 -0800

    csp: script-src 'strict-dynamic'
    
    strict-dynamic' allows the execution of scripts dynamically added to the page, as long as they were loaded by a safe, already-trusted script (see the specification).
    
    Note: In the presence of 'strict-dynamic' the https: and http: whitelist entries will be ignored by modern browsers. Older browsers will allow the loading of scripts from any URL.

commit a51a7f8ef1bde89f5c7cfb44682f9cb853d4aec7
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Nov 7 00:57:04 2017 -0800

    csp: remove 'data:' url
    
    the error in console is due to uBlock Origin. Google Analytics does not actually require a 'data:' exception

commit fafa09276a7ceeb628efe3a6e3d1dbc9ab5785df
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Nov 7 00:54:37 2017 -0800

    Nonces should only use the base64 charset

commit dcb1947ad61f4ac4d3d8c3d5899510e86f2786f5
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Nov 7 00:08:48 2017 -0800

    remove stray log

commit 39ef825309d96e0c3f88693cad71e4cb3ee2629a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Nov 7 00:08:17 2017 -0800

    csp: dissallow site framing

commit 1a7f246880307666e5fa2b1cd4cda8d457e81fbf
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Nov 7 00:08:05 2017 -0800

    csp: dissallow setting <base> tag

commit 9ad210f844c3aa06fc59b9001c9e0f1ed7d7d5b5
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Nov 6 23:56:59 2017 -0800

    add Referrer-Policy header

commit 9424bbc6ea470021ee95248887f9be5df430404e
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Nov 6 23:50:56 2017 -0800

    link: undo noreferrer
    
    we don't want to hide referrer information from sites we link to

commit 1f0c9c7df39e042b4f299b0d469686c7bfb6ec6b
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Nov 6 23:35:30 2017 -0800

    remove conflicting sonar package (for now)
    
    See comment: https://github.com/standard/standard/issues/969#issuecomment-342399228

commit e9bf114a6e165a7a3b568e646aaf1063f13048ca
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Nov 6 23:35:17 2017 -0800

    npm update

commit 69f03df9b8fd54446deee29d06c68b6c1bd92346
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Nov 6 23:22:33 2017 -0800

    npm update

commit 8f356bb966b2a729e347863fa15ceb388885a76e
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Nov 6 23:22:24 2017 -0800

    jsx style

commit f7d06448dbb89c14526b7bfd9f33c6be0f75fb04
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Nov 6 23:20:54 2017 -0800

    convert common-tags oneLine to use just the needed file

commit 77e6e47be79ae354a3c83c4ceec1c130bf4ae883
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Nov 6 23:16:01 2017 -0800

    sw: log failed fetch url

commit b598dc38c893425af5e9d3d4fb8cec616586dd62
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Nov 6 23:14:26 2017 -0800

    csp: allow manifest to be fetched

commit 4e2f1dae40e9f46894b4a2f9e026b7f090d4ce46
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Nov 6 22:50:50 2017 -0800

    remove `unlimited` and `downgrade` deps
    
    The `posix` module (which both of these depend on) doesn't seem to work on Node.js 7+ anyway.
    
    We start the node process as `root`, which was causing problems with `babel-register` because that creates a .cache folder which is owned by root and can't be deleted

commit 6b345b0225e134cd7ab11618f0d8ee2238c45a36
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Nov 6 22:05:28 2017 -0800

    Revert "hack: debug port reuse issue"
    
    This reverts commit 81c43fc9aa9d99c9e503cb9289aae81db4001b19.

commit e5262aeeaf1ac25f4cbec9929912243cfdbd6c02
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Nov 6 21:40:04 2017 -0800

    port 7800 -> 7060

commit c042fc1f14b40d04d8e1a96cd2a61dd0fdf442ed
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Nov 6 21:39:54 2017 -0800

    supervisor: startsecs and startretries

commit 706c7aa7ac893f79cadbc23b44fdeaae6909d6c7
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Nov 6 21:39:42 2017 -0800

    supervisor: process name is not needed

commit 175f7c6ba6bd42cb4380974de6c5dd47d86b5bc3
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Nov 6 20:18:27 2017 -0800

    change start command to node (not npm)

commit ff7923472793fbfe0e590e0ab7a7eb100da711a8
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Nov 6 17:16:16 2017 -0800

    exclude local-only deps on server

commit 81c43fc9aa9d99c9e503cb9289aae81db4001b19
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Nov 6 16:49:26 2017 -0800

    hack: debug port reuse issue

commit 8fae44d49d0a539f84f1ab46827e4fbc78c4be11
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Nov 6 05:58:29 2017 -0800

    add 'npm run test-sonar' lint step

commit e631930db22be4440b09e228b82d9bdd6b4a82af
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Nov 6 05:51:11 2017 -0800

    add rel='noreferrer' to newtab links

commit 5f20d88687aacb38880c47d187882da9d94d7ff9
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Nov 6 05:18:17 2017 -0800

    don't set security headers on API responses

commit 7e60059c54b3e604e564c2ab47693b3b18011ea4
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Nov 6 04:58:54 2017 -0800

    Use .webmanifest extension for web manifest file

commit b7f1a18c5622b7aeb6a20e52e179970008c13308
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Nov 6 04:53:20 2017 -0800

    apple-touch-icon: no need for sizes attr

commit f82283c94d1d598b2dd2aa3ec2d651201cd1eba6
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Nov 6 04:51:30 2017 -0800

    CSP: disable unsafe-inline; add nonce support!!

commit 7ae12f8e123270474fc0dc779fda9e4a390cd0c4
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Nov 6 04:45:17 2017 -0800

    don't serve CSP headers on static content

commit a0126d3c926b1358a381d3b4827631ff3789fd8c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Nov 6 04:44:46 2017 -0800

    style

commit f2c96cf6f344eb02c2060b36065ef60e3c1060a9
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Nov 6 04:26:13 2017 -0800

    do not send X-XSS-Protection or X-Frame-Options for non-html responses

commit 245861c3bcac4233816b9078ef397e1e79cf12eb
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Nov 6 03:53:10 2017 -0800

    Revert "Merge branch 'inline-css'"
    
    This reverts commit 68b32b5c63d5fdf054a3248b72deb37158df10c6, reversing
    changes made to 707e891706e8c0908eac79758ac6756943206003.

commit 27cb42ca03aa7f238b2ad3e38a8e42bad5495584
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Nov 6 03:52:48 2017 -0800

    Revert "temporarily disable service worker"
    
    This reverts commit d4ad6722e8bfb86385eae95e0273a42ead4af5ea.

commit d4ad6722e8bfb86385eae95e0273a42ead4af5ea
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Nov 6 03:23:57 2017 -0800

    temporarily disable service worker

commit ef37a3e894af29390dcd9886f95517ea2c78809a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Nov 6 03:23:52 2017 -0800

    rely on nginx for gzip compression

commit 4463c55966c4e6ece6249d78f7036af734ce04a6
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Nov 6 02:30:57 2017 -0800

    add CSP headers

commit 68b32b5c63d5fdf054a3248b72deb37158df10c6
Merge: 707e891 ffe0019
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Nov 5 22:59:18 2017 -0800

    Merge branch 'inline-css'

commit 707e891706e8c0908eac79758ac6756943206003
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Nov 5 22:49:25 2017 -0800

    downgrade to babel 6
    
    Fix error:
    
    rm: cannot remove 'nodefoo.com-old/node_modules/.cache/@babel/register/.babel.7.0.0-beta.31.production.json': Permission denied

commit 2f2b162e2b341203a539ecbac3e5f3bc00461739
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Nov 5 22:21:09 2017 -0800

    lighthouse: attempt to get start_url test to pass

commit 569b1aea632224b2dd309997a8de2874f21b3f34
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Nov 5 21:57:22 2017 -0800

    server-side ESM is not ready yet :(
    
    too many struggles

commit ffe00194a67154493825b235561c5c26033f377c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Nov 5 21:47:07 2017 -0800

    inline css

commit 8a3836990073b4ef3dc5466da7b6c2927ce3b841
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Nov 5 21:46:18 2017 -0800

    image optim

commit c9c86c9e64f662e4fef9924cc78819f83c281420
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Nov 5 21:17:02 2017 -0800

    Support boolean attributes correctly

commit 35fed6a89a4ea30fbe8bd973a854a225c04f9215
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Nov 5 21:16:51 2017 -0800

    Only self-close valid tags (void elements)

commit 0c8fe5d08dca24229f97a47439a25ef9c03c403d
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Nov 5 20:26:42 2017 -0800

    do slow rm -rf operation while app is running

commit 3872db0589c06756698ddac0846162d5eca1cbd3
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Nov 5 20:26:28 2017 -0800

    deploy: add extra check for old folder

commit dfbdcf4e8ea083c65cbeef4b6d191978f29713a6
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Nov 5 20:10:28 2017 -0800

    Add Atom Feed and JSON Feed support

commit 8eb320a56c8f9566d1fc68a5d6ed89bf4884887f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Nov 5 20:03:48 2017 -0800

    router-login.js -> router-auth.js

commit 9ef5dbef7dade7696cd51303e1410409c447475b
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Nov 5 18:24:18 2017 -0800

    move index.css and index.ejs to src/server/

commit 6f2a10041a20dab5daaa050213acadfda48c0ebf
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Nov 5 18:18:31 2017 -0800

    style

commit aa56ec9b5374ca653ae99b41f6a4e90177eccd8e
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Nov 5 18:00:39 2017 -0800

    Use rel="canonical" to avoid duplicate content

commit 436c67aad88c851b9f1a78b339d471d69d81da11
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Nov 5 17:01:10 2017 -0800

    just pass store into server-side template

commit 4a77a0594cae6755fa40d91f8cda2fe6ee6a68e0
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Nov 5 17:00:49 2017 -0800

    for icon meta tags, use site title from config

commit a6ac98ef113bd5705fce3cd82cf9d20f8b13a809
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Nov 3 18:36:27 2017 -0700

    add TODO

commit 4656effbd1ebfe5f525b7dfa2099b89b593a73f6
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Nov 3 18:06:00 2017 -0700

    update babel deps

commit e5b8f06b1ecfc9c53489093f367140287f477d69
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Nov 3 18:05:28 2017 -0700

    hide verbose purify-css output

commit 3378c633dc7e69a86e5a3330856889f43af2e5d5
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Nov 3 17:26:00 2017 -0700

    make description show up in one line

commit ae97d731019b693c573251075ecd40e09510cc01
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Nov 3 17:23:29 2017 -0700

    add <meta name="description"> tag

commit 6b0891f6684073eda51a8d46a013288c7b309188
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Nov 3 17:19:55 2017 -0700

    config.name -> config.title

commit 431d99d446086bb01b3998f2965080f95c4d0aba
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Nov 3 15:58:48 2017 -0700

    add experimental async attribute to <img>

commit e4f81f8b38038a500ca6a73c31107b25831becc6
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Nov 3 13:00:23 2017 -0700

    style

commit 2120a9e385c1e9bd579eacf259a73a320605ca64
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Nov 3 12:58:28 2017 -0700

    Run `npm run build` before integration test

commit adf7d54fb2b7306c65fa8e1fc6192dab59ca8be2
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Nov 3 12:53:50 2017 -0700

    test: add puppeteer integration test

commit 8539916b5b964825aafa014c3121362bb0f727af
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Nov 3 12:41:10 2017 -0700

    npm update

commit bc6e9b815524f349d8d2f6d2803b13f6f47e3709
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Nov 3 12:41:02 2017 -0700

    add @babel/core peer-dep for @babel/register
    
    required, according to docs

commit b8d4256a3b5ea15a4dccf76ecd7a73815b05e015
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Nov 3 12:40:41 2017 -0700

    fix jsx pragma

commit e0062cad9b55a29145a5bad8fc713235af79fe64
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Nov 3 12:39:55 2017 -0700

    babel-register configuration is broken, so comment it out

commit 24f1ae810ff6cbfa9648fbe473898bf0c271e101
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Nov 3 12:18:49 2017 -0700

    doc: better rollup.config.js comments

commit 7860002016f3e87382a44f3f3a2092847394bb6b
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Nov 3 12:18:27 2017 -0700

    rebuild babel-helpers.js for babel 7

commit 9bf65696b4826e92b0d034f5ab1ae992fc8f78b1
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Nov 3 12:18:17 2017 -0700

    babel-cli -> @babel/cli

commit c6a060e6d0ce9ac62746e08b3cac55a724cd1cfb
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Nov 3 11:59:41 2017 -0700

    Put browser debugging globals on `NodeFoo`
    
    NodeFoo.store
    NodeFoo.dispatch
    NodeFoo.update
    NodeFoo.debug

commit eda831148c78fbdd2b6cf7b58bf6c02ace6c05fc
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Nov 3 11:58:56 2017 -0700

    Tell @babel/register to only transpile files with JSX
    
    All JSX now lives in the src/view/ folder

commit 62fd773ef350193fabe1dabc48ca0258d6f91c62
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Nov 3 11:55:31 2017 -0700

    Move all JSX into views/ folder
    
    This lets us update the @babel/register configuration to only transpile files in the views/ folder, which should speed up the startup of the server

commit 6792bf64ab8ca2dc10376d2534404a6cd3bb0fd9
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Nov 3 11:53:47 2017 -0700

    standard: ignore /tmp/

commit 35c796844d52464472ced6b943b9daa5cc73f55f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Nov 3 11:53:23 2017 -0700

    ESM: tests

commit ba04401e9656ed9701f0c652f59de1de9055eb56
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Nov 3 11:52:57 2017 -0700

    ESM: test/slug

commit df8bc91541a3a084e2269e131a662748ba408a80
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Nov 3 11:49:53 2017 -0700

    babel-register -> @babel/register

commit 2ce43f59217a503f372fea2a8ee13598a36b7ff5
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Oct 30 21:29:57 2017 -0700

    ensure tests pass before `git push`

commit 7f908ed6b631d068f2afe83043b136c7fdf0cd0d
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Oct 30 16:14:45 2017 -0700

    Fix browser api include

commit 83b9125792940411d7bdeb4ba06b9c85f28f05b7
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Oct 27 23:55:13 2017 -0700

    standard

commit f6ea9b4cb5a493911bc24f69812cdf70f62c977c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Oct 27 23:55:09 2017 -0700

    js -> mjs

commit e0b14a02b325f4464fa74d31b79c5e17844686f2
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Oct 27 23:34:27 2017 -0700

    port a few files to ES Modules

commit 909b2dc6b0a6dd4a97d0a9b78ad0ffd1b1b44c9f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Oct 27 23:32:22 2017 -0700

    config.root -> config.rootPath

commit 975c6971bb4289ca559036b2f16afe67e775ac39
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Oct 27 19:40:59 2017 -0700

    switch browserify to rollup

commit b2ea42dc2cee2dc18165e7b7aeff50c44304521e
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Oct 27 19:25:17 2017 -0700

    don't auto-refresh when offlien

commit aa66c96b597d70cfb5d705e79e1d4f04a0521426
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Oct 27 18:22:56 2017 -0700

    supervisor: use npm start

commit 64e894f2c6027d1416114426766311035d49dce2
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Oct 27 18:20:39 2017 -0700

    use latest purify-css

commit 8d88cef5a2d44a6a3f6b8a5d07f364e912c2eeb6
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Oct 27 18:20:09 2017 -0700

    npm run watch-server: reload on json changes, ignore src/browser

commit f1b168dd8bb95a03388be181be6462efb63f0e51
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Oct 27 18:18:58 2017 -0700

    style

commit 8ac689f7212954ae811c32047d418e37d70151c1
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Oct 27 18:17:50 2017 -0700

    add DEBUG env var to purify-css.js

commit 221ae3d4cdd31f7ed00d86f63030c38d743e6cc0
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Oct 27 18:17:20 2017 -0700

    avoid requiring global.__dirname in browser

commit f8bc3f080f06911332d46f06c7739be38ca11ada
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Oct 27 12:21:45 2017 -0700

    Cleaner fetchStart() / fetchDone() handling

commit 9f427b2875a9917af0c0758b49cd88e533ffb5b6
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Oct 27 12:08:16 2017 -0700

    Rename built style.css to bundle.css

commit 5ed2574dcfe7c4fae73cafbf462cb33269c2f825
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Oct 27 11:39:33 2017 -0700

    clean up service worker comments

commit a189ce4e334ab34b593a68c41698079105464117
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Oct 27 11:05:52 2017 -0700

    Add OpenSearch

commit e8bcd8635888a4894d1aed50d117e9391e3e7390
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Oct 26 13:54:43 2017 -0700

    simple-fetch: Fix for Edge

commit 7fbaad2eaca07cdcf450e60e5d45defa05a041b8
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Oct 26 02:08:27 2017 -0700

    don't inline css

commit d6f2cf1dfd31fe7247ec8c4530f70cf3f1c43ee8
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Oct 26 01:48:57 2017 -0700

    inline the css in the <head>

commit 675cfa9efe3874c567a54e19f6f2c82f6da7d076
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Oct 26 01:25:55 2017 -0700

    properly ignore style.css

commit c49a76ace33a3f54d3b8f09b86b7751fd16dc5d3
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Oct 26 01:24:08 2017 -0700

    delete style.css

commit 4369481819cbd6f39a9e2df08fa19f78f915c7be
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Oct 26 01:22:39 2017 -0700

    Purify CSS to reduce size by 60%

commit f29017a61675f5909a6581ee811ffe2eab106930
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Oct 25 23:04:00 2017 -0700

    lighthouse: add aria-label on input

commit 0bf0449d893289c39c51bd009cff2fbe52de805a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Oct 25 22:59:45 2017 -0700

    lighthouse: fix image aspect ratios

commit 78012b63e46cdb04178c4961da795a17fd52e6e3
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Oct 25 22:20:43 2017 -0700

    cache start url for Lighthouse audit

commit 50626a4347b3cdc4621ab2d99329357b3b14ea5a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Oct 25 21:37:41 2017 -0700

    add favicons / web manifest

commit c05fb41cfd801d3e2e38fc34fcaf84f657aceb25
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Oct 25 20:25:12 2017 -0700

    remove inline svgs

commit adcc084cd99871b6c57a0e53ab1907ce82d0b68c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Oct 25 19:17:58 2017 -0700

    style

commit c557e8de0c63b9628969165bae7d3186977c653c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Oct 25 19:08:44 2017 -0700

    remove console.time('load')
    
    redundant with dev tools

commit 0e1ccef5036bcb727a5dc15309a6783ee9830deb
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Oct 25 19:07:05 2017 -0700

    fix falsy style properties (like 0) from being filtered out

commit 1763d928c4ededd073aa7fa562188916ac9944bd
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Oct 25 18:53:38 2017 -0700

    eliminate styles with empty prop values

commit b26820a59d9d6029bb0df3efdfd7ee171d859a17
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Oct 25 18:53:25 2017 -0700

    eliminate empty attributes

commit 8f603abbda4cb459c8c028c653b82336c5751c6f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Oct 25 18:52:54 2017 -0700

    [weird] fix bug where style doesn't get updated

commit b620ff07683a9e6e0004a1fb88c2199cc1b80bf0
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Oct 25 18:32:03 2017 -0700

    Support self-closing tags

commit 86d9e773af948b77ba31ce504acab4667cbc261b
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Oct 25 18:31:55 2017 -0700

    Remove deprecated charset='utf-8' from stylesheet links

commit 38535ef8d0e3db2f18580ebabcb5e06f4880d99d
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Oct 25 18:07:02 2017 -0700

    self close link tag

commit 1eb6baacd643e603a07617ddf3710f49b9b514c9
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Oct 25 18:04:30 2017 -0700

    better offline page layout

commit 18bb4980088b590adf67e60fd95b60ad7ae21bbd
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Oct 25 17:56:52 2017 -0700

    add basic service worker

commit 5657bf16e57508048a99a8e5f330d73d9e0a1567
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Oct 25 15:22:00 2017 -0700

    <link rel='preload' href='/bundle.js' ...>

commit 3849c4366632b4a1c105e59559c3660eb71d9052
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Oct 25 15:10:05 2017 -0700

    apple-mobile-web-app-capable = yes

commit 4ba53b4f612c97e21c7fee3ee4013800d6dc6af9
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Oct 25 15:09:54 2017 -0700

    Remove favicon tags

commit fc6fa0611ffd4c747b2e4a1c669ed661f1f043b4
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Oct 25 14:31:31 2017 -0700

    test on latest node

commit 5e0e18473dfbae3aa0d55e7b15fdfb66d2db4d60
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Oct 23 23:27:39 2017 -0700

    fix travis lts syntax

commit 596eae53f98cd11b6c942f970e88203bf291f427
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Oct 23 23:23:48 2017 -0700

    .travis.yml

commit 4708830f69b621bf4be0e1ffe68026fea872b4f1
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Oct 23 09:42:24 2017 -0700

    npm update

commit 627d955cae5637b8f24be5beeb0326fb3accadc8
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Oct 23 09:42:17 2017 -0700

    browser-pack-flat@3

commit 4234fee59a81a96f170aae54a45db42729bd77ce
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Oct 15 19:32:46 2017 -0700

    slug: increase max words to 15

commit 9cbb321cc8da43454ba15ea5a9a120a35f8e2103
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Oct 15 19:03:46 2017 -0700

    remove grow-subtle from codemirror and inputs
    
    codemirror can't handle it and the cursor position gets messed up

commit a74b46b219733b6595b2998d790b3ceb1aafec9c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Oct 14 16:40:14 2017 -0700

    better rainbow animation on mobile

commit 4f1ccccb7e753c35d1fdb26f52a01505e2146de2
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Oct 14 16:31:24 2017 -0700

    Add rainbow header loading animation! 🌈

commit 829c597dd1abe2bc09f8e0be10c7953ff07d02da
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Oct 14 16:25:31 2017 -0700

    rename #app container to #root

commit 4f7b5d577010f2f2835e7d7789affc2a07255f57
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Oct 14 15:01:28 2017 -0700

    Footer items should wrap as units, not by word

commit f788d7368c20b043fb3e80265c5b3f3faa5080f7
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Oct 14 14:42:49 2017 -0700

    revert header height to 50

commit 221580acd378af6c82bc1ae0db4c48cc94c66997
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Oct 14 14:38:50 2017 -0700

    Reset scroll position on page nav

commit 398ed4f9dc60d73171a5ef8d672f45628d1bc85e
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Oct 14 00:22:56 2017 -0700

    shorter

commit ef33eb543f04b666588077b768fbb2efdefcb9d8
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Oct 14 00:20:56 2017 -0700

    more fUn!~~ UX

commit 8758aaa4ade533b845a5cb2d5b2b84d0029cd6ac
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Oct 14 00:17:29 2017 -0700

    fix search back bug

commit 7c13b7280dad731c08144103630041f495887f81
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Oct 13 22:41:40 2017 -0700

    handle err

commit 20c96696c9c32b3c8f5b27df23ca6e44b1e54eff
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Oct 13 22:41:36 2017 -0700

    add nodefoo logo

commit b76d101a60388c205c9b3fbb1d68514d993ad7ac
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Oct 13 20:40:11 2017 -0700

    handle hash consistently

commit 657992edf3ef3b5f2b8c46a557146562d6e1413e
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Oct 13 20:39:11 2017 -0700

    don't include hash in store.location.url

commit 746ecf06d2a06abf53083d5ac00ce6ba9c1b2977
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Oct 13 19:58:59 2017 -0700

    Fix location link interception
    
    If the search part of the url (part after? in the url) is different,
    then it should be intercepted and handled by the app's router.
    Otherwise the browser handles it and it causes a full page refresh

commit 3902de63f0df02e4c2156a53b2ad6c8f5bb97dd2
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Oct 13 19:49:08 2017 -0700

    implement search!

commit 73930371a67efce95c6dfd311522e41fc28dbbf5
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Oct 13 19:42:15 2017 -0700

    router: add url and query options

commit bbcef2740e69e57f012fd4241f847942ff16a10b
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Oct 13 19:41:24 2017 -0700

    page component: better detection of changed params

commit 2819cdacf81b7110364fbcd75fbb01f46093329f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Oct 13 19:32:43 2017 -0700

    populate search results

commit 4cc5739c15ca54cac78bc9a426356e001634f2f2
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Oct 13 19:32:25 2017 -0700

    start implementing search

commit 3dc7eec7ee2e3e2534ed8869378af12d976237c3
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Oct 13 17:57:29 2017 -0700

    location: support url containing pathname+query

commit 41f932da0d35f0038175cdb3588369d991cdb6ae
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Oct 13 17:55:31 2017 -0700

    history: style

commit efa68bf099d34fa2781562a39b0b1e989e9615d5
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Oct 13 17:10:55 2017 -0700

    add search api method

commit ade0a734c6a9567b59a719371b5db5987eaa03a3
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Oct 13 14:43:08 2017 -0700

    better default codemirror placeholder color

commit 5be98570c7a7ac0cb0a74cde88da05f87f148ed6
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Oct 13 12:42:58 2017 -0700

    proper pluralization

commit b564ea29299cbbd229558f1677252f20c77c8f01
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Oct 13 12:38:40 2017 -0700

    sort snippets by votes

commit c81fbb76e06de56491b9402d424fa167f39c6c61
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Oct 13 12:34:55 2017 -0700

    Allow anonymous voting

commit 11fc713c596cd48c8fb764e95f1cf614572991a3
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Oct 13 12:05:01 2017 -0700

    Fix bug: submit button gets permanently disabled
    
    fill out snippet name, leave code blank. click submit. error shows,
    submit button does not get undisabled to allow submission

commit 376af08658325aea161c13676b2c4449763fc46a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Oct 13 11:57:56 2017 -0700

    Handle duplicate slugs, gracefully pick an alternative

commit af88ccda02e6832f9b345bf4f9e0c41c9d740295
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Oct 13 11:48:59 2017 -0700

    style

commit 1f6f2639422f21eb211d3fc907b32b508e97b754
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Oct 13 11:33:52 2017 -0700

    add slug as id column; change id to rowid

commit 02125615b0a3e3c9a39f912cd361f11a60bfc314
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Oct 13 11:33:39 2017 -0700

    Return 404 status on invalid snippet slug

commit 6b0c30fea4af8970f789160b48f2ffa88dc5b15b
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Oct 13 10:52:18 2017 -0700

    remove link focus outline css

commit 4c9a64eb47f4f8979422a70e36bb59001ad3ce6c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Oct 13 09:44:32 2017 -0700

    style

commit 47835a3e73d0a12e8848861ae28ab1205afd5afd
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Oct 12 19:35:44 2017 -0700

    style

commit 63ab438561996848d292c9b32819ecf118384515
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Oct 12 19:35:39 2017 -0700

    add slug method

commit d4b9b707aac7a9ae8fa21124a3c4c7fda31b6610
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Oct 12 19:35:23 2017 -0700

    Improve desc and readme

commit 49cd8ade2a9775a7bfe9b64a11b5be8d8e559923
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Oct 12 19:15:20 2017 -0700

    use ...rest on code-editor

commit b8ede7509c6b5acd97c9c74640409e4f57f47b95
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Oct 12 18:35:18 2017 -0700

    better codemirror design on submit page

commit 76dc56ddf3eb11be42d61da034af3ea73930ccbd
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Oct 12 18:26:14 2017 -0700

    Link to snippets from home page

commit 1b8235237660d3f69950573357dea9bf21faa7f8
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Oct 12 18:26:07 2017 -0700

    Better <Link> defaults (white color, underline hover)

commit f9c72cc9da1e39551af930f536866458a33e8170
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Oct 12 18:08:59 2017 -0700

    Fix navigating between same page type = no change

commit fe880ac8709a281786064a1252787e03a695a7d3
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Oct 12 17:49:56 2017 -0700

    improve <Loader>

commit d9a44297c85a1e6112e78e87595903e8c5dfd789
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Oct 12 17:01:30 2017 -0700

    use <Loader> on submit-page

commit 5ec1c3b35211abf9ac0bd2abc8c4e8186a455a5c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Oct 12 17:01:19 2017 -0700

    fix <Loader> double fade in

commit cc2034afa4a42b82c9142a7ce4204549f7f48cbb
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Oct 12 16:55:25 2017 -0700

    style

commit 1ecf7286b2adb80f0a45cb7146ede89ff84dd6c1
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Oct 12 16:53:15 2017 -0700

    add SnippetPage

commit 311811c79cdaf7bc82557ea7a8e67bfd3dcde4e8
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Oct 12 16:53:03 2017 -0700

    change <Loader> to take children and 'show' prop

commit c1ae543bf5882b5a01123697891f0195eeee9a05
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Oct 12 16:36:35 2017 -0700

    style

commit 96e4d98626f9163c5686add4cbae7fa79fd00429
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Oct 12 15:33:25 2017 -0700

    Make icon-loader component instead of using svg file

commit 2b457036474f364352c349c32cab80fe8529584a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Oct 12 15:33:14 2017 -0700

    highlight.js: make folder path match module name

commit 774d36aba30d6455c404b2eba912ed5ebec9895b
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Oct 12 15:32:50 2017 -0700

    Remove `npm run size-css`
    
    It was incomplete, missing several css files

commit 5b1a577c376023620232952d0305170634e292ac
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Oct 12 14:29:52 2017 -0700

    Make Image component that throws on missing alt tag

commit e3389ee8c0b1c01923416eafedf66d6993e6e240
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Oct 12 14:17:27 2017 -0700

    note that search is unimplemented

commit 46cda84340928e8733e3b3fa84fbe6eb25d72767
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Oct 12 14:17:19 2017 -0700

    remove default search autofocus

commit 247377145f0007cba49ce753c33daceaa146c8fa
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Oct 12 14:17:12 2017 -0700

    Change upvote to copy-to-clipboard button

commit 9ab659827b13b8d16fface6ef0374087d1262ce7
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Oct 12 13:11:53 2017 -0700

    style

commit cee82119330467126db561fe7d73538273046934
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Oct 12 13:11:46 2017 -0700

    simply browser entry-point

commit 0755e2449431ab399ffed0ef210d5bdc793e0f8a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Oct 12 12:37:07 2017 -0700

    add common-shakeify; replace bundle-collapser w/ browser-pack-flat

commit e4ded7b770736261035aff1c9ac069b1ac61558c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Oct 12 12:24:05 2017 -0700

    don't run breakdown in "npm run size"

commit 9d42e799fce188d21c65289858f3ec982b3137fd
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Oct 12 12:17:10 2017 -0700

    babel-eslint@8

commit a102114c724c20f53471f6cd26616771bc99d025
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Sep 3 11:23:31 2017 -0700

    rename FETCH_ to API_

commit b6f66ef8b89b2818b9d5b9806ca455dcc5d59229
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Sep 3 11:09:59 2017 -0700

    header link should be a span

commit badb45fe9d88f094f9f91e6c50b96c86633f78d3
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Sep 3 00:27:42 2017 -0700

    set initial vote count correctly

commit c600ea1c49259c096ac25961c2969773ec8a28b1
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Sep 3 00:14:48 2017 -0700

    send full voter list

commit ce17b8a89597f256b712775ab340ec8bcd00869d
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Sep 3 00:07:18 2017 -0700

    Add upvoting

commit 7d047f06866d83114e42fbfe9ff830874339bf23
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Sep 2 18:11:19 2017 -0700

    add autofocus to header search and submit name input

commit 574d1495fb67bb58d6c4553cc9cc845766321613
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Sep 2 17:46:29 2017 -0700

    remove stray console log

commit 5e3effc48297d86340fe63beb3a5911accd99b1d
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Sep 2 17:46:15 2017 -0700

    Set cookie for 1 year

commit 1d1d9685e13826adb1de0879cfb0e75514c88dbd
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Sep 2 17:45:52 2017 -0700

    remove logout button from header

commit 4622ee152ef929b0cfa54bba9e532b52e8a65be7
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Sep 2 17:45:31 2017 -0700

    pink theme

commit d85792f792fe884b5c08662fc917a27a84becc64
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Sep 2 17:29:15 2017 -0700

    clear submit page after submission

commit a4e299375539c2ed0d889647606e49fb82f9fd47
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Sep 2 17:28:42 2017 -0700

    better error handling

commit 0ccab103cdd0cd43f08cacfc7f8fdd7bd743d42c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Sep 2 17:12:19 2017 -0700

    fix error message display

commit 6f6dbb9c17f5face6a393a6c5fb3e2bc8b6cfe48
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Sep 2 17:12:12 2017 -0700

    fix disabled button opacity

commit c994a11ca37122aa53d7aab48a6f8227515193de
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Sep 2 01:09:10 2017 -0700

    redirect to homepage after submit

commit 069a1821a5d1952873cd5c633e6c1490d0f88dce
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Sep 2 01:06:02 2017 -0700

    lots of progress

commit e20ae7a5da8c7092a1493aff2fe5dcef18ca9794
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Sep 1 17:59:01 2017 -0700

    snippet style

commit bd159db1410b68f80522cc752c7e5e2df19c0c27
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Sep 1 17:40:23 2017 -0700

    snippet style tweaks

commit 14becbbe99b47e7b37ab698eb0cb908fb45deb8f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Sep 1 16:56:39 2017 -0700

    Fix invalid html entity escaping

commit 7aa882ce4fe2c91e8878480476811f2c1a322252
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Sep 1 16:38:18 2017 -0700

    add "powered by" to footer

commit 678fb0be7c4cc1e732820cf5c7c711758ed347dc
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Sep 1 16:21:48 2017 -0700

    make submit page look better

commit c2252a96ba5b62d9a7332cc06d9a7793640401db
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Sep 1 16:20:50 2017 -0700

    fix button style inconsistency between ButtonElements

commit 3be6e6d1f7954baafc9cce7e1c8a2fca7aa1436d
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Sep 1 16:20:31 2017 -0700

    Use .sans-serif class instead of .body-font

commit dc17850d8d35e81c4a1f1eff34cb6829a252d81a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Sep 1 14:48:08 2017 -0700

    fix case sensitive exception

commit f5284c83d03ca93382380aee724bf9d6178b99a4
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Aug 31 18:40:55 2017 -0700

    hide submit link on submit page

commit 6cb4e6686fef1f5f0922f62d9b2f566e23535ae8
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Aug 31 18:34:54 2017 -0700

    Add a footer

commit 7a1375087a40043ef101bebc69e1da4fcaf56061
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Aug 29 19:44:03 2017 -0700

    Lots of style improvements and progress

commit 3ce46c3fb4048abb988b7dc67b9da2f7a6055914
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Aug 29 19:43:36 2017 -0700

    simpler button and link onClick handling

commit 4010c97abb8a9ef09fac5728b58ab8c80179236a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Aug 29 19:42:08 2017 -0700

    truncate debug output from large objects on server

commit 6b692571d9cf291bbf4120da854a6e874ed7e1ca
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Aug 29 14:38:34 2017 -0700

    use http2

commit 6d83bd68e40b33b3f327bfa8c903372f5030dd64
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Aug 29 14:16:43 2017 -0700

    location: better matching of rel='external'

commit 805a438af9a4d6d7f34488f65c55e3d172ff3423
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Aug 27 22:44:03 2017 -0700

    fix for path-to-regexp@2

commit 779015da025bd414248e9f141eb93d86148ab939
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Aug 24 23:02:05 2017 -0700

    Prevent XSS with '</script>'

commit ac8c8095c3c105e3194408989a519faffc1174b7
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Aug 24 23:00:31 2017 -0700

    Fix HTML entities showing up in the page

commit 730c1de4e701b3e0c95598da9168c01f577675a4
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Aug 24 16:26:31 2017 -0700

    path-to-regexp@2

commit adac9d411076c3881c02ee1c426da7089f56dbd0
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Aug 24 16:26:23 2017 -0700

    add twitter profile pics to snippets

commit c3bd1741929ecb3422cb7ea7804d47033b921177
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Aug 24 16:26:09 2017 -0700

    better code editor padding; add auto scroll

commit a792fc1d6abf87ab510f303ed8b8549d3f771281
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Aug 24 16:25:39 2017 -0700

    don't bundle preact devtools

commit 2475e7ed35aa5e723712b3826c5fd586e5b5a924
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Aug 24 16:23:49 2017 -0700

    fix browser bundle bloat

commit b832b98dd5934067a3fa1524dabf159f535ecb68
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Aug 24 15:07:23 2017 -0700

    add author image to api

commit 4b3d1b82133a25c2be24610bc8bc4720d9f5254a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Aug 24 14:20:12 2017 -0700

    unify how api route errors are handled

commit 5ae9bc41c584804ed684d15b9049644765c81a6d
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Aug 24 13:59:20 2017 -0700

    make 404 error take the same code path as all errors

commit 2583a01d3276a6ba117b2069ce3d1c44c131397a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 23 19:45:57 2017 -0700

    code style; add title to error page

commit 33a6fdf72be903de16456567a7873bedd5fc51ea
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 23 18:53:27 2017 -0700

    add disabled button styling

commit 2951fee429a5b7a5f3b24814a84958b0be55a5e5
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 23 18:48:08 2017 -0700

    add loader to doc page

commit 5113b0dc46129b0571658401c8d137b9538ce5d5
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 23 18:44:49 2017 -0700

    add loader to home page

commit cb3f072da71e2c7e64a1be9302211b2c7c16db08
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 23 18:11:41 2017 -0700

    move unlimited() to server.listen() callback

commit b6000f70a4e26ac0ebdb22bcd2ce8a39c69e10ae
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 23 18:01:25 2017 -0700

    Fix unstyled flash on load

commit 7c512304ef81188ad9030abf99a8a752cfd852b5
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 23 18:00:45 2017 -0700

    Add Google Analytics

commit bac2288d8c0b404172b207ebd1605422b5a32651
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 23 17:49:44 2017 -0700

    Fix unstyled flash on load

commit 0345a5c90f1085d03cf6c1c6f7f8f112c60bc8ee
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 23 01:55:57 2017 -0700

    move handleRender() out

commit 9f4a7a8469cb4c097512c6687c5fc7a5165e09b9
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 23 01:02:31 2017 -0700

    not found page -> error page

commit 08796b53df19ac79efb20f11fc06021b8097e2a8
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 23 00:30:12 2017 -0700

    Move render router to app.js so the error route actually catches errors

commit 3a6325b330aa6a403175d57a1ac08444bedaf734
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 23 00:25:17 2017 -0700

    Handle errors with the server-side render path

commit 4f891e5cf9a5238e38a4331d6d5a0111b213956e
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 23 00:22:36 2017 -0700

    remove stray log

commit 284600428cf8c1aa743fb40943a3b1ccceeb3f82
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 23 00:20:48 2017 -0700

    don't clear errors

commit fb1ae69585e4cf1982c45ef38d819a9742d2a32f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Aug 20 21:26:15 2017 -0700

    Make buttons use the semantic element depending on context
    
    <a> vs. <button>

commit 5bf082d71e7eebff84921c57c3054365b2289f31
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Aug 20 21:25:41 2017 -0700

    make submitting snippets work! 👍

commit f77941cd1e37cb048c3586aa81176c05c30dfba4
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Aug 20 19:31:18 2017 -0700

    hook up home page to the db backend

commit 26afb39f1fc0f8bc8d80b9689680d2ea13cf49ae
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Aug 20 18:34:11 2017 -0700

    add snippet add/get/all API endpoint

commit e9e4c1bd700713b2c2ddae7c6bc506d1924b3dd7
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Aug 20 17:16:11 2017 -0700

    Add Twitter Login and Logout, with header button

commit 34598fd934b03c89b6b950bc5b3ef99be600517e
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Aug 19 22:27:33 2017 -0700

    Snippet List on home page

commit 61253ec326d831199f27607da4962474c83b53ca
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Aug 19 20:44:22 2017 -0700

    SubmitPage: add submit button

commit b7007227f55dac1378725bd21b29237bd15bb219
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Aug 19 20:44:14 2017 -0700

    CodeEditor: add placeholder support

commit d73ca8ab5e4c989f16a1f123a995210d293be10c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Aug 19 20:43:44 2017 -0700

    add button component

commit 829cd1341c6f0e46a35b259a819d8e8d29aff7f6
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Aug 19 20:11:52 2017 -0700

    add basic /submit page

commit 06e041c222eae742946285e710e0ad95007a5a6d
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Aug 19 20:11:20 2017 -0700

    use babel-plugin-transform-class-properties

commit 5f01ee7ea0658f286977b89eac848de30b2eeeaa
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Aug 19 15:32:03 2017 -0700

    Queue a final update() call when dispatch() is called during an update()
    
    That way synchronous dispatches that change the page title from a Page
    component during a render will actually get applied.
    
    Previously, the update() triggered by the title change was getting
    ignored by the check in update() to prevent infinite recursion.

commit 45ba97936f2e24b4244fac67690539fe251093b1
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Aug 19 15:21:59 2017 -0700

    use <Title> component to set the title

commit 5d973aa84aba52734b16ef94e118b782e45f7425
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Aug 19 15:20:29 2017 -0700

    change skipped logs to verbose logs

commit 4ab80f991567d452e90ac17b17e403ce45708b9f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Aug 19 15:20:11 2017 -0700

    add convenience debug() function
    
    debug(true) // enable logs
    debug(true, true) // enable verbose logs
    debug(false) // disable logs

commit 1bb4e08ff4820798e73fb0012af869925261345e
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Aug 19 15:19:37 2017 -0700

    add "npm run size-js-breakdown" script

commit 33f72142aec33edf6d683e37b3d1d32ee65e6724
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Aug 19 02:13:47 2017 -0700

    make docs page look nice

commit 5a2eee0b8916819c726ac97e95fceb8eea23ee93
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Aug 17 22:24:38 2017 -0700

    Doc pages return 404 errors correctly

commit 1350b89e12d0048dee1c398e7f53194f0c0a53ba
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Aug 17 21:55:05 2017 -0700

    api: return 404 from api endpoint

commit ba71ec472f6316690a7531dc0e07ecdce60028be
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Aug 17 20:14:24 2017 -0700

    api.doc: don't crash on error

commit fb77e53aef9dbf939b4f84b84fb0fb14ea512332
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Aug 17 19:45:08 2017 -0700

    improve first load on doc page (reuse server store state)

commit c7718ec1bd0c63174ffb25d85e772861f3d920b5
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Aug 17 19:15:43 2017 -0700

    remove unused dep

commit d8f48f6b3cbef22dc4ea4b8045e32a5250534bd6
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Aug 17 15:37:33 2017 -0700

    use babel-minify instead of babili

commit 0a8b0de98234e15eafeb7989de80ea6d20ff85fb
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Aug 17 15:25:16 2017 -0700

    debug@3

commit f3e25b89de9ddcc4837980963b0d05bc4421554b
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Aug 17 15:23:05 2017 -0700

    case sensitive filesystem

commit 4c122c93f2b82be0e6a49fd97c8f7be39f932b4f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Aug 17 15:18:05 2017 -0700

    babel-plugin-transform-object-rest-spread is a production dep

commit 4a3c4e23487e21733119f5f437d343b21819483d
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Aug 17 15:12:57 2017 -0700

    add missing dep

commit f047018198bf143900194c33264f7887a717129d
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Aug 17 15:09:51 2017 -0700

    supervisor

commit 9fd90c31008fcbdcebba1e0524dcdf608564b62a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Aug 17 15:03:43 2017 -0700

    render markdown

commit 775d6d15ce317335d441a51448ed004db6f64c0e
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 16 19:49:35 2017 -0700

    server side rendering works!

commit 2fb81199038dc7c94a826621347bce0541c873bd
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 9 14:45:43 2017 -0700

    progress

commit 69f01d93570b3b45c4758ed43260de4f4e157566
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Aug 8 18:17:47 2017 -0700

    doc page progress

commit 71fbb6d5f53bc4cdbb5109e5bbcc29824093bae7
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Aug 8 18:08:38 2017 -0700

    progress

commit 6d6f12d07632a66b72c19d217ba2cc13f6e30f82
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Aug 8 16:32:03 2017 -0700

    start transition to preact

commit 835517cd9c237c01806f11b438b1d988b36ee719
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Aug 8 16:14:53 2017 -0700

    update docs

commit 413d6aaa4afe009af60aecbfea97cafd69dc599a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jun 23 16:03:37 2017 -0700

    progress

commit b63c0313c60bad683b54a37c84287ef2bd49aac9
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jun 19 16:42:50 2017 -0700

    add nanologger

commit 1fa47ff1bf27bdd384d1fdc823bd28aae02df2ba
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jun 19 16:36:44 2017 -0700

    progress

commit 3973a727a906c70dd987775da80ae1964409c539
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jun 19 16:14:42 2017 -0700

    unassertify, yo-yoify, bundle-collapser

commit 465ddcaa6436efdcd9ff70b43b0b4f8e00acdd86
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jun 19 15:21:00 2017 -0700

    progress

commit d8cd86dbf2065a1998250450682f386d07d10434
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 18 16:51:00 2017 -0700

    enable and force ssl

commit 2ae4645f4e15042dea5b65ef6054ef1568971e8c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 18 16:05:31 2017 -0700

    add style.css

commit d7fb9bc311c6b29a4576fd5413f719d08625f53d
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 18 15:59:36 2017 -0700

    disable ssl

commit 8ec521a49604b08f7087348763389ab65a8df5c6
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 18 15:42:45 2017 -0700

    add choo stuff

commit 6d0ba3210f9b2740a88f6f51c97e08ebb1142e96
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 17 01:19:33 2017 -0700

    secret sample

commit bc52dcba02abc9fc41e14264eefee9b7df54ca96
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 17 01:19:20 2017 -0700

    placeholder for db folder

commit 0c982e713140359e694789259995b6439e6500c1
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 17 01:18:40 2017 -0700

    add deploy.sh

commit c520b1f245c612f925885b79d7eb4dfb3c0e043c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 17 01:18:32 2017 -0700

    add 500.html

commit 78cd1fafcbe57dfcdb8e86f8114476354ee3cfb2
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 17 00:53:09 2017 -0700

    nginx supervisor

commit 1cc732e63b4889f7334fc724c0ab655640c3c227
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 17 00:53:04 2017 -0700

    readme

commit a33628baefc1badee252058e5de6d76ad2862fd6
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jun 16 23:27:00 2017 -0700

    add fs docs

commit 2f491d99e23adb5c6169d8b5c4dac53b01126327
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jun 16 23:26:54 2017 -0700

    add fs doc generator

commit 699389a73370975c491e48d3b44f439569445618
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jun 15 17:21:27 2017 -0700

    gitignore

commit bc89aafd6c41726d9e06c5a6d9f4660328d6ff27
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jun 15 17:19:49 2017 -0700

    pull node docs

commit eb73862de13b77683e9a1210be543f0b90443084
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jun 15 15:43:02 2017 -0700

    initial commit
======================: FILES :======================
======================: BRANCHES :======================
======================: LOGINFO :======================
commit cdc4c52461c2057a795df72aa9ed652da41b9aa5
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jun 23 18:35:07 2022 -0700

    add "free midi" to title

commit 1e2a49422999984bcede753b58492644ad832138
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jun 16 07:55:48 2022 -0700

    Update footer.js

commit 56953960a505a8a19529acaab38aec3ac42a8f68
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Apr 5 14:40:50 2022 -0700

    double rate limit

commit 81b9ae82f1d4ca783ffb82fb43ba96e77a5af262
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Apr 5 14:37:34 2022 -0700

    trust cloudflare ips for 'trust proxy'

commit 233a94e09dd77efaa331df221295176432100265
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Apr 4 12:15:27 2022 -0700

    better error logging

commit 963a010b09c1199e49c9c928f74ab6f0983c15b0
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Nov 18 02:16:19 2021 -0800

    Revert "remove bubblewrap cli"
    
    This reverts commit 85825dff5ec1e7057c1e72b3ce65fc861519e7d8.

commit 85825dff5ec1e7057c1e72b3ce65fc861519e7d8
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Nov 18 02:07:41 2021 -0800

    remove bubblewrap cli

commit 180e63775c1a6e2985ae2a919c9bd60ef9c5c9bd
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Nov 18 01:48:27 2021 -0800

    Don't rate limit Googlebot

commit 45b6366492448c856f50967d22747d466afba12d
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri May 14 19:32:13 2021 -0700

    remove blocked bot from robots.txt

commit 1d90d06aa0618d9e4792c740739d67154c6d0d19
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 6 16:00:16 2021 -0700

    slow down more annoying bots

commit 35a05227696995d4c57e03f1eb15ee059573c7f5
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 6 15:36:41 2021 -0700

    slow down annoying bots

commit 1635a98c84d4b6ea9d69014bf8c9607679903be8
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 6 15:29:34 2021 -0700

    Increase memo cache size

commit 810737f63e5d9128d32e03d60cc110efbc576959
Merge: 0f4b35b ece3e6f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Mar 3 12:35:18 2021 -0800

    Merge pull request #107 from feross/dependabot/npm_and_yarn/ini-1.3.7
    
    Bump ini from 1.3.5 to 1.3.7

commit 0f4b35b7399b56a6b1a562df76d8cf54368be639
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jan 11 13:14:24 2021 -0800

    remove link units

commit a4628a772d6dbdb040cefde2aa27d6a48c3f67a0
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jan 11 13:14:20 2021 -0800

    Update deploy.sh

commit ece3e6fc9ad0b5ffe00eb1eb23ac90f0f71dbade
Author: dependabot[bot] <49699333+dependabot[bot]@users.noreply.github.com>
Date:   Thu Dec 10 20:43:35 2020 +0000

    Bump ini from 1.3.5 to 1.3.7
    
    Bumps [ini](https://github.com/isaacs/ini) from 1.3.5 to 1.3.7.
    - [Release notes](https://github.com/isaacs/ini/releases)
    - [Commits](https://github.com/isaacs/ini/compare/v1.3.5...v1.3.7)
    
    Signed-off-by: dependabot[bot] <support@github.com>

commit 3a998255f10eb2886a3c55f38865b906f7d42038
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Dec 7 15:07:53 2020 -0800

    fix Cannot read property 'maxPageSize' of undefined

commit 61a4162db85152f855538cea5c9a894b997700f1
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Dec 7 14:59:17 2020 -0800

    update ads.txt

commit a88e4739ce7ecf0de5dfe62ce0e0239e3d028346
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Dec 7 14:27:40 2020 -0800

    improve CLS for ads

commit c413e4eccc012d4439ad9a0826a2b8183f84cb3c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Dec 7 14:08:31 2020 -0800

    fix sitemap.xml to include more than 50 links

commit dacd6d4d3adc9a9565c136ec131a0c523ecc7aca
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Dec 3 13:08:31 2020 -0800

    update to Permissions-Policy and Document-Policy

commit 567e183f3963ffcb986bd5bfc2a8972a71c3c6dc
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Dec 1 12:11:01 2020 -0800

    remove purpleads script (already disabled)

commit 5f45b019de65c781dd1b8e8bbbdfa8cbb9470b7d
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Dec 1 11:46:43 2020 -0800

    fix search page: UNSAFE_ methods not in preact

commit 423e6ad30b0d82698e12ac9ed6762a4e610d1692
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Nov 25 14:18:31 2020 -1000

    Update package-lock.json

commit a12076fc6bff87960713c6cffa58ca91159637c7
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Nov 25 14:15:17 2020 -1000

    Update package-lock.json

commit fa57fc432ae9a265cfc3d8d20a577925ae0f2f49
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Nov 25 14:14:04 2020 -1000

    Revert "babel: remove object rest spread transform"
    
    This reverts commit 76b0bd47d92fa182a2f10035a222383d529ba10a.

commit 9b223222337291e7b4b72023e3560c8e98b805d2
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Nov 25 14:13:58 2020 -1000

    Revert "babel: remove optional catch binding"
    
    This reverts commit 8d9fbd440fd793d1f5d659744777a20fff6aa287.

commit 2452681557bcda4f5cedb83a0595c7623743cc55
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Nov 25 14:11:06 2020 -1000

    changes for purgecss 3

commit af0a15d6754b0af71127a1cb072fa8ac933f786f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Nov 25 14:11:00 2020 -1000

    purgecss@3

commit 5f233f712dfa0b58ab43c4503de887fb753ae3bc
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Nov 25 14:08:10 2020 -1000

    browserify@17

commit bbb98a377d9361ac2311f94e5a20a0b43e1a26a2
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Nov 25 14:07:51 2020 -1000

    express-sitemap-xml@3

commit ecb675b6f71db9df59c69a5b8e57dbc455a1d2c9
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Nov 25 14:05:52 2020 -1000

    change imports for preact ^10.5.7

commit 716c66dfc691d31146dbcfefca2bb6cc2320db0e
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Nov 25 14:01:41 2020 -1000

    bump preact to ^10.5.7

commit 8d9fbd440fd793d1f5d659744777a20fff6aa287
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Nov 25 14:00:05 2020 -1000

    babel: remove optional catch binding

commit 76b0bd47d92fa182a2f10035a222383d529ba10a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Nov 25 13:59:40 2020 -1000

    babel: remove object rest spread transform

commit bed8cdc5891ba677d77bb31772042f2e8f4eb5dd
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Nov 25 13:58:10 2020 -1000

    bump deps

commit f6dc598bedf35ef57789e4ca867bcec5fb97a774
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Nov 25 13:49:17 2020 -1000

    bump babel deps

commit 6d496800cb7d6cf0d6852cafe3a27cd33c14d8b3
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Nov 22 17:49:03 2020 -1000

    standard: use @babel/eslint-parser

commit d793afa359bf981e5d61125af7763e6344fd74ef
Merge: 18ceccc bebf790
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Nov 22 14:53:19 2020 -1000

    Merge branch 'tomayac-patch-1'

commit bebf7904aadc70f6fb654cd05a78ec81c581b58d
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Nov 22 14:52:30 2020 -1000

    Fix crash on SSR; use color mode from store

commit 4b7c23832aaa11e67cba115eaa2587ccecad076d
Author: Thomas Steiner <tomac@google.com>
Date:   Thu Nov 19 10:23:10 2020 +0100

    Make links hot pink in dark mode and leave dark blue in light mode

commit 027818ae3556a5dde04d611e5d2412b5f242e3f1
Author: Thomas Steiner <tomac@google.com>
Date:   Thu Nov 19 10:15:18 2020 +0100

    Make links hot pink instead of dark blue
    
    Fixes #101.

commit 18ceccc8804f1fdbaae14dbecc7b2f1a7b900d02
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Oct 29 11:32:01 2020 -1000

    Update package-lock.json

commit bbf832304ea0ddae5101066ce7d6cad53206dd42
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Oct 28 09:50:02 2020 -1000

    standard

commit 28c7d568b9f00ab01df5b591f7c99187db61b387
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Oct 27 18:34:01 2020 -1000

    standard

commit 5a736610f109832d7a9deaf8f9564623e99deee6
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Sep 17 12:05:26 2020 -0700

    ads

commit 2f78315ef8c2b6c26a71da38d38fb0e496b80604
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Sep 13 20:37:31 2020 -0700

    update deps

commit 6a80c74e44508cfee6ca211a6e40cf487535b136
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Sep 13 20:36:43 2020 -0700

    share-twitter: add better error message

commit be5b1b446f0fc421d11d1e6077058b617edeb9c0
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Sep 3 11:27:40 2020 -0700

    Update package-lock.json

commit f2a7ede04c1709af385d608b87d5279d9f072016
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Sep 3 11:27:38 2020 -0700

    deps

commit fdde851a8020038917f68aef83748150f62e7c8b
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 12 13:45:12 2020 -0700

    Update assetlinks.json

commit 69eb397bad391a9f4788830f8cf490b0b331101e
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 12 12:25:53 2020 -0700

    deps

commit 66e8f0b2078dea958cef4444def8096ed5aaa40c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 12 12:22:18 2020 -0700

    tinyify@3

commit a3438db330a1e1f4b629555805bfdbcba86262b9
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 12 12:22:06 2020 -0700

    ora@5

commit 883a9d068d6074833b525fdb033f477f5a4dab7a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 12 12:21:45 2020 -0700

    deps

commit 715df8e277a4173bcd60eaf70035f9f0ea26f678
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 12 12:02:27 2020 -0700

    reduce memo size by half

commit 1315437a8cb13943d9f4f142962c7fd14404b46d
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 5 10:44:59 2020 -0700

    fix syntax error

commit c2dddf0eaa7875b6c87109653b27cca1658aaec2
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 5 10:41:14 2020 -0700

    purpleads

commit ada17938de29981bcfb3fca517146c3e41e1f505
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 5 10:20:47 2020 -0700

    valid html

commit b90864e207f44fd326e5791218bb3aa634c3cb09
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 5 10:20:06 2020 -0700

    purpleads

commit ef2b4fa0f0fe4eea00ab6d5230a165f6c424ffcc
Merge: 01212cb d768376
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Aug 2 17:55:05 2020 -0700

    Merge pull request #103 from feross/dependabot/npm_and_yarn/elliptic-6.5.3
    
    Bump elliptic from 6.5.2 to 6.5.3

commit d7683760254a96976c953ee2b147e0566bc4208d
Author: dependabot[bot] <49699333+dependabot[bot]@users.noreply.github.com>
Date:   Thu Jul 30 01:48:18 2020 +0000

    Bump elliptic from 6.5.2 to 6.5.3
    
    Bumps [elliptic](https://github.com/indutny/elliptic) from 6.5.2 to 6.5.3.
    - [Release notes](https://github.com/indutny/elliptic/releases)
    - [Commits](https://github.com/indutny/elliptic/compare/v6.5.2...v6.5.3)
    
    Signed-off-by: dependabot[bot] <support@github.com>

commit 01212cbb50517d6d90d31225459eb5845f283af3
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jul 23 16:00:58 2020 -0700

    better virus.cafe ad

commit 070a2fbc1adb0bb64fe7345ae8f57fad0170de1b
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jul 23 15:55:24 2020 -0700

    Revert "promote bitmidi happy hour"
    
    This reverts commit 74e1b68c9e732b30f9941fb0330cb9a4736adca0.

commit 74e1b68c9e732b30f9941fb0330cb9a4736adca0
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jul 22 17:58:07 2020 -0700

    promote bitmidi happy hour

commit f2e0cf2fb98204f52f0a7fd2d32100841f5a47f4
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jul 22 17:25:22 2020 -0700

    deps

commit e01ce7739e0e36dafb17da5187962f151b23fe7f
Merge: 89e7d96 2c7f1e5
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 17 05:57:51 2020 +0200

    Merge pull request #100 from feross/dependabot/npm_and_yarn/lodash-4.17.19
    
    Bump lodash from 4.17.15 to 4.17.19

commit 2c7f1e540d0ed56a7ae9dd0b4db7e80b4dcbc780
Author: dependabot[bot] <49699333+dependabot[bot]@users.noreply.github.com>
Date:   Wed Jul 15 20:44:53 2020 +0000

    Bump lodash from 4.17.15 to 4.17.19
    
    Bumps [lodash](https://github.com/lodash/lodash) from 4.17.15 to 4.17.19.
    - [Release notes](https://github.com/lodash/lodash/releases)
    - [Commits](https://github.com/lodash/lodash/compare/4.17.15...4.17.19)
    
    Signed-off-by: dependabot[bot] <support@github.com>

commit 89e7d960a7a0b0460451a3644632d7c5a65ccfba
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jul 15 13:28:37 2020 -0700

    android app style

commit 40e8f719bc13f933b5136c10170107ec704c3dfa
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jul 15 13:24:34 2020 -0700

    manifest utm_source=homescreen

commit 69e07e6effd96a4d2325584d2d140c863f4d6bec
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jul 15 12:51:48 2020 -0700

    update deps

commit 65b8185dfee341a87051b499c775659a3918fa9a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jul 15 12:46:37 2020 -0700

    update deps

commit 54b1cc77eabe8a2ce4837cfb7b1e4bb4421faf32
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jul 15 12:38:38 2020 -0700

    add bubblewrap scripts

commit 458548df8e27cb549806ae73a8ebc29df859071a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jul 15 12:36:08 2020 -0700

    manifest fullscreen

commit b07f77b06fcd12770e6f075f818b4e31b5b54b13
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jul 4 13:13:07 2020 -0700

    add bubblewrap dev dependency

commit 707d30fdfd9e0357b512d5dda1febfdf3ddb6a3f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jul 4 12:59:01 2020 -0700

    add google managed fingerprint

commit 98a460da222ba43e64f6afc2b7d9cdf3c174a3bd
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jul 4 12:28:01 2020 -0700

    try catch around adsense push()

commit 91bf3c54a16798beeb25b82d5137d102d90ea493
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jul 4 12:04:19 2020 -0700

    android assetlinks.json

commit 09f5b19bce89558fa65849680bf001f93954f0d9
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jul 4 10:15:34 2020 -0700

    fix dev window.qc error

commit ce4c895078c487c40998072945cdb717f3e7bfe7
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jul 4 10:09:44 2020 -0700

    supervisor: bitmidi.com is still a group

commit 93927e3325c569dfc7ad61ca0bc129c29c2142d2
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jul 4 10:08:00 2020 -0700

    reduce node instances to 1

commit bd697765a1cfcd5cb64a3415f33d918e456149db
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jul 4 10:05:53 2020 -0700

    do not load analytics code in dev

commit c0f16ff5237f39e164a223ad387d1f9130eaff2f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jul 4 10:05:43 2020 -0700

    Fix API memoization (reduce DB load!)

commit 4a3bd1f2aa0bec046cd5689f963ce93b3f6e8a63
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jun 15 12:08:08 2020 -0700

    remove /500

commit 949a9348bedd747ee589b7360dfd33abd51981e3
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed May 27 13:51:59 2020 -0700

    ads

commit 16790c9fe34f32fdb0eaa48e242cd109101eb9c0
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed May 27 13:50:46 2020 -0700

    ads

commit afd9b2b66343a1040f63b4eff9ba609115475832
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed May 27 13:29:43 2020 -0700

    extra error info

commit a2796fac20817a6f397fb96f41844b2d32ec8e6a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed May 27 13:19:11 2020 -0700

    ads

commit bebd3f7f23e1aa290e82f621f9be849e8a970c0f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue May 26 17:59:32 2020 -0700

    ads

commit a9b63f9cf92dfb37d2c778f6c1b0b4d300d1771f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue May 26 17:55:55 2020 -0700

    ads

commit 5df00a9c9f825b684254315d02badcce3d419120
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon May 18 14:35:22 2020 -0700

    fix purgecss overly aggressive

commit 9c33c61dfba26a674b980fd97a302637974b2eed
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon May 18 14:22:54 2020 -0700

    Update build-css.js

commit 834c5a6dc8bafd34afccbca2c97a5504fb7c56f5
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun May 17 10:51:05 2020 -0700

    ads

commit e07bae9bdb6e788f68f5bb950aa61266f5de5a93
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue May 12 10:44:36 2020 -0700

    api: limit max page size

commit e0cc5b7261e216d90f5d8bba3e3b5f1f4eaea514
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue May 12 10:38:54 2020 -0700

    ads

commit 48801b293611d013ac6c96622ee289bbe450c998
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue May 12 10:37:36 2020 -0700

    ads

commit b9112d6e3bee20df19b80ba9c1ebfe786f7977ac
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue May 12 10:33:54 2020 -0700

    ads

commit 30224a734d57312a909fcfaa84cb571207d18a41
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue May 12 10:06:20 2020 -0700

    ads

commit 387e6cfede8b81afbcd9ad2c75f88aa7908a2bae
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue May 12 10:00:35 2020 -0700

    ads

commit 48054db85665cf6f216099ecd34fa2c279af8f10
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue May 12 09:56:01 2020 -0700

    ads

commit 56c0bf964e2ed4f4659f4e0a17b1b97f0ddd7873
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue May 12 09:50:39 2020 -0700

    ensure newor-ad css is not removed

commit 2f3ef3cc88825626dd2b2c5f7f84012a5ae3c992
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue May 12 09:38:41 2020 -0700

    ads

commit 05edd5ab9be34df733c85faf725c1f5b44735ed1
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue May 12 09:22:41 2020 -0700

    ads

commit f2e0cb6021e231976e5370fd0fa9c2d119484aa5
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue May 12 09:05:23 2020 -0700

    ads

commit a872313d75493829d5b44e4e9d64d4a54f983209
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue May 12 09:01:06 2020 -0700

    ads

commit 9a8b197ecd471b33afc87abfe44627e55ad638f9
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue May 12 08:51:39 2020 -0700

    Update ads-newor.txt

commit 4c31df76f683200dd4cf9c391941f49629e031e7
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue May 12 08:47:35 2020 -0700

    ads

commit 7fa268020d7b8b6b5277b6a803c64e1bc58295da
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun May 10 11:03:56 2020 -0700

    Create .npmrc

commit 63f6558411cdf46facdd7efa66b338461077f110
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue May 5 10:07:45 2020 -0700

    ads

commit 1804d10f0ef3196163abfdd0396224f510882acc
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon May 4 18:28:15 2020 -0700

    ads

commit 31b4e2ac07c883631d601b89209a33efe8a90626
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon May 4 14:23:40 2020 -0700

    ads

commit baa94c44e0d5b51bdd0bb81c18cccfc328cc0b2b
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon May 4 13:22:27 2020 -0700

    package lock

commit 5c94b9c7b6ce086dd6b95a076500be82fcbcf9a9
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon May 4 13:15:29 2020 -0700

    ads

commit 0de5e4bcc0bd6a0989c5eefe538354087da34028
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon May 4 11:43:11 2020 -0700

    Update deploy.sh

commit ed28c6f2d6e573b39d871d498dfbd85e04ad56b7
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon May 4 11:42:39 2020 -0700

    Create package-lock.json

commit 02e2c9490a5051d9fa176e462618910d59ceae23
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon May 4 11:42:15 2020 -0700

    ads

commit 9b75635ead468d8c8cbc0351c642d5a4ee6de3ac
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon May 4 11:28:27 2020 -0700

    ads

commit 74106d3d68dff380c02a9601e904259aa9cfc074
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon May 4 11:17:22 2020 -0700

    ads

commit 77b2149ce9b6c39b4343c826a65e59a0cea46a8f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Apr 27 11:31:11 2020 -0700

    Catch renderer errors and preserve context for rollbar

commit f389d57ae761ec2e9225383e4a4c374ed6c2d0a9
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Apr 7 15:26:09 2020 -0700

    optimize: add cache buster

commit 64c4692b2d71fcca975100dc15cb4ea3c854535e
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Apr 7 14:39:34 2020 -0700

    optimize: do not double load on first page load

commit 2e24be309cfbabb9c3e21e6b75f42a025278f5d1
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Apr 7 14:27:42 2020 -0700

    optimize ads, push on mount

commit f29b7cd49a9d46086c8feccd05791753f9c43062
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Apr 7 12:53:45 2020 -0700

    optimize ads

commit b7d7098c443dbc4e3154e021274ff364fa968589
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Apr 7 12:42:07 2020 -0700

    remove csp; not worth it with ads

commit de7eff02bc8053e96650f72080447348283f9bbc
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Apr 7 12:34:51 2020 -0700

    optimize ads

commit 7d1dbd9ce216fcd24dca9e65b77556daeb5507fd
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Apr 7 11:35:17 2020 -0700

    add privacy page

commit d01ed64e90f9f61872ae42a3da76197498d39609
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Apr 6 11:57:29 2020 -0700

    update csp for optimize

commit 6c8766d4b424b6263c71bddee669f24af2ebb869
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Apr 6 11:47:37 2020 -0700

    optimize ads.txt redirect

commit e420f6c642840d5cb7c4b70e6c3a3c93d352180c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Apr 6 11:42:43 2020 -0700

    Test optimize ads

commit 5c481aee619672e993f2ba43b700ec48f410d444
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Mar 25 18:51:09 2020 -0700

    carbon ad: remove hardcoded center

commit c596b599a31d36108d18cc05cc9fdfb6d6f4deb0
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Mar 24 21:18:10 2020 -0700

    remove promisify where possible

commit 54a72e06564b9493a7fc8e1c14eaa6db4ecfc663
Merge: 84aa369 8cae23e
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Mar 24 21:15:18 2020 -0700

    Merge pull request #87 from feross/manifest-maskable
    
    manifest: Remove white outline from android icon

commit 84aa369387118e831676324dd7b51f3d78d82e6c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Mar 24 21:13:55 2020 -0700

    remove mkdirp package

commit 87a891823e1b234b42220fa721a1c6c7c9ddcc48
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Mar 24 18:41:50 2020 -0700

    fixes for purgecss@2

commit 94cdc26f195b70f590af1c21c54ca5bbb1da9620
Merge: 54bc71f a2ae6e1
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Mar 24 18:44:33 2020 -0700

    Merge pull request #88 from feross/greenkeeper/husky-4.0.2
    
    Update husky to the latest version 🚀

commit 54bc71f03bfeb71598aad588a72d7a6bc4837b91
Merge: 22221af 5b5de5c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Mar 24 18:43:41 2020 -0700

    Merge pull request #91 from feross/greenkeeper/quick-lru-5.0.0
    
    Update quick-lru to the latest version 🚀

commit 22221afaf94617f388d71e1fdc0a407e85488fac
Merge: a51bf82 7a1cf95
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Mar 24 18:43:19 2020 -0700

    Merge pull request #92 from feross/greenkeeper/p-memoize-4.0.0
    
    Update p-memoize to the latest version 🚀

commit a51bf82b6b8ecea1ee9d631c1ebb83c4f3376fdd
Merge: ee29ed2 84e9525
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Mar 23 19:47:23 2020 -0700

    Merge pull request #89 from feross/greenkeeper/purgecss-2.0.3
    
    Update purgecss to the latest version 🚀

commit ee29ed25bab0a771b7c813a1c926566645998e41
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Mar 23 19:44:59 2020 -0700

    fix for uuid@7

commit 55d906cd56726ad49e0dfe1506ba4100bba35ed5
Merge: a6fda6b ed1bf75
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Mar 23 19:42:35 2020 -0700

    Merge pull request #93 from feross/greenkeeper/uuid-7.0.0
    
    Update uuid to the latest version 🚀

commit ed1bf7511e2f21331cd1c0575dbbc3fa3bc48b67
Author: greenkeeper[bot] <23040076+greenkeeper[bot]@users.noreply.github.com>
Date:   Mon Feb 24 13:25:45 2020 +0000

    fix(package): update uuid to version 7.0.0

commit 7a1cf95e001555af58659f249ace8e0b56267781
Author: greenkeeper[bot] <23040076+greenkeeper[bot]@users.noreply.github.com>
Date:   Mon Feb 17 16:31:55 2020 +0000

    fix(package): update p-memoize to version 4.0.0

commit 5b5de5c9aa4d4286e6b6d00229e65f01c1d0154d
Author: greenkeeper[bot] <23040076+greenkeeper[bot]@users.noreply.github.com>
Date:   Thu Feb 13 13:18:51 2020 +0000

    fix(package): update quick-lru to version 5.0.0

commit 84e9525b91966e80e91f6187a4daaafe1e39b844
Author: greenkeeper[bot] <23040076+greenkeeper[bot]@users.noreply.github.com>
Date:   Sat Jan 18 19:49:20 2020 +0000

    chore(package): update purgecss to version 2.0.3

commit a2ae6e13099b832874029b88a6a55b07f2e60624
Author: greenkeeper[bot] <23040076+greenkeeper[bot]@users.noreply.github.com>
Date:   Thu Jan 9 04:20:13 2020 +0000

    chore(package): update husky to version 4.0.2

commit a6fda6b0f312e202b7c53a783af7f2df0ced49f8
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jan 6 20:59:16 2020 -0800

    pageSize 10

commit 87d621b020d0908663316f255fbc94d58253ffb4
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jan 6 20:56:18 2020 -0800

    disable adsense

commit 4f78bf7f1cbc97fb45685d39997ab74bbf0a5679
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jan 6 20:56:07 2020 -0800

    make feed ads show multiples of 9

commit d2f5301e72afa4d105f3966247917ef6bed14e06
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jan 3 14:42:26 2020 -0800

    Update rollbar.js

commit 4c7114fd0a1b9e6d1da60fa5a3dc93fc10f4ce9c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Dec 30 21:20:57 2019 -0800

    make search placeholder text more explicit

commit cb430dde90a63407a35902b92d7c9f3f8d9c1f22
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Dec 30 00:50:55 2019 -0800

    add links to reddit and discord

commit 78555985829ab67c2be0867b86b0cb93590adc91
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Dec 30 00:11:50 2019 -0800

    fix Random so it doesn't re-randomize after picking one

commit 9176ef96b0b2c76b4caa8bd46b5b72df27cdaf9c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Dec 29 23:27:37 2019 -0800

    add RelatedPage

commit 939a4ae7c026c8cae9d4374deeaba8dd52c57986
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Dec 29 23:27:01 2019 -0800

    center carbon ad in carbon class

commit de3ac010251fad6de52068cba53812557a859c13
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Dec 29 22:50:58 2019 -0800

    search page: page 2 and later ads

commit b2a496b1de4924e3a28022e22652f6007a4686d7
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Dec 29 22:50:23 2019 -0800

    home-page: mid-feed ad

commit ba7ab97bee18618ecf7a5e63702a6bb65eb4d9ca
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Dec 29 21:37:26 2019 -0800

    listen on localhost only

commit 243148d3d520f777f2693ca688b4b973050bcb9d
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Dec 29 19:38:57 2019 -0800

    memoize: 50k items

commit 5b81dbfbadac74dbf1722e16b5d9066764ea5422
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Dec 29 19:38:48 2019 -0800

    style

commit 3cbac65069fb7aa17ff85b9e736e2dc882eca930
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Dec 29 19:38:43 2019 -0800

    pageSize = 20

commit 4354139678a3e3077ef1c9e48bbaf44e97b28910
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Dec 29 19:15:20 2019 -0800

    share-twitter: better messages

commit 915193c3dee8621b6db8c7cb391234a7c63f81ca
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Dec 29 17:26:04 2019 -0800

    unmute-ios-audio@3

commit 714bc6ff4eec4bef3162e579a65fc8b1fb328aa9
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Dec 29 13:22:37 2019 -0800

    share-reddit: add "MIDI file – " prefix

commit 464530573fb13278c494be45e6eda5c9bb331c9b
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Dec 29 11:14:35 2019 -0800

    Publish code to npm package 'reddit'

commit a1b4e0a2bc1ae5daef0d54675c0a37c970d768d7
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Dec 28 19:16:07 2019 -0800

    robots.txt: disallow /uploads/

commit 8ceaaede10ea88c5428be029a958631778729b68
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Dec 28 19:15:51 2019 -0800

    Post to reddit on correct schedule again

commit 165baedbc20d0463e41334d2ee2ea77622422fbc
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Dec 28 19:02:08 2019 -0800

    temp test reddit posting

commit a548c1289a82e675a0e1aaae95c6c7180260892c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Dec 28 19:01:47 2019 -0800

    fix reddit posting

commit 53925ace66933638f4f1c8b857862f0f8a7d2f8a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Dec 28 18:53:45 2019 -0800

    temp test reddit posting

commit fe5c4cfa77a90e4ba584fc54330ea5363d5c52e9
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Dec 28 18:49:14 2019 -0800

    temp test reddit posting

commit fe4d74c8f12b172d32ef97d9a1c4efbacf1d2bff
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Dec 28 18:33:24 2019 -0800

    temp test reddit posting

commit 49c85dafb09e4f61a9f5d4582a8079b912cb8bf5
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Dec 28 18:30:23 2019 -0800

    add daily post to reddit

commit 81509f57fca9bad03ab5199adaee5051e12b506e
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 27 19:47:56 2019 -0800

    supervisor: rely on package.json main field for filename

commit 4d301889c2ebfd42b514a12504aed11c0df516ed
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 27 19:45:07 2019 -0800

    cleanup

commit b458e5c11bc102f5af59ea296fd7315811b859f9
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 27 19:42:03 2019 -0800

    move css file to src/css folder

commit 420f4a13d730d7fc6253bf19d61756f22ef72a4e
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 27 19:28:05 2019 -0800

    *.mjs -> *.js

commit 704c1490daf9fef543687fa48bacbaa1471a80b8
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 27 19:23:50 2019 -0800

    *.mjs -> *.js

commit 7f00ef3ce317fd90ebeb790893e150cc01f69fad
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 27 18:58:19 2019 -0800

    readme: note which deps needed for prebuilt cwebp on linux

commit 97c21faefb9b1e4518ba537e1e7a92083819afa4
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 27 18:36:07 2019 -0800

    model: Avoid calling runAfter when debug is disabled

commit 0cccb96b7066d55d7290c935df3aeb250cdcac84
Merge: 81014cc f6adecd
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 27 18:41:23 2019 -0800

    Update path-to-regexp to the latest version 🚀 (#83)
    
    Update path-to-regexp to the latest version 🚀

commit 81014cc966ad6d76743cb292ddb0deec06bc1d1a
Merge: 94de5c3 37d0a58
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 27 18:39:11 2019 -0800

    Update ejs to the latest version 🚀 (#85)
    
    Update ejs to the latest version 🚀

commit 94de5c3fbe9d4aabb0039bdc452f9f4587bba911
Merge: 9496e44 f476e27
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 27 18:37:30 2019 -0800

    Update nodemon to the latest version 🚀 (#84)
    
    Update nodemon to the latest version 🚀

commit 9496e44c8c0e791f2e8bc494ff31529eae733abc
Merge: f70bb9a 116b9d4
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 27 18:34:30 2019 -0800

    Update objection to the latest version 🚀 (#86)
    
    Update objection to the latest version 🚀

commit 116b9d40ee3c72690526bee1b3203efc6bd53d8e
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 27 18:31:55 2019 -0800

    Fixes for objection 2

commit 8cae23e35b00de54364018d82350fba580eb85f6
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Dec 27 17:57:21 2019 -0800

    manifest: Remove white outline from android icon

commit 15b7a139bc13f0d85e966109087733deab3618d1
Author: greenkeeper[bot] <23040076+greenkeeper[bot]@users.noreply.github.com>
Date:   Sat Nov 30 20:32:31 2019 +0000

    fix(package): update objection to version 2.0.0

commit 37d0a584217469c13b772442cc58bc6fa8dbba05
Author: greenkeeper[bot] <23040076+greenkeeper[bot]@users.noreply.github.com>
Date:   Sun Nov 24 01:51:01 2019 +0000

    fix(package): update ejs to version 3.0.1

commit f476e2795af302b7bdddc7be02f3f10fbfa7c632
Author: greenkeeper[bot] <23040076+greenkeeper[bot]@users.noreply.github.com>
Date:   Wed Nov 20 15:48:53 2019 +0000

    chore(package): update nodemon to version 2.0.0

commit f6adecd8625146ef73a780842263b457fdb0c67f
Author: greenkeeper[bot] <23040076+greenkeeper[bot]@users.noreply.github.com>
Date:   Wed Nov 20 04:14:46 2019 +0000

    fix(package): update path-to-regexp to version 6.0.0

commit f70bb9af64fa2af33baf88bb6b6635c7dc5f5223
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Nov 16 17:08:44 2019 -0800

    Fix uncaught exception

commit 92564c5f6c10d083ccb3787ed5b1ca10928afa47
Merge: ffe4165 f4cea80
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Nov 12 16:12:42 2019 -0800

    Merge pull request #82 from feross/greenkeeper/drag-drop-6.0.0
    
    Update drag-drop to the latest version 🚀

commit f4cea803adfde9bafc112d8011788d9003bb64f0
Author: greenkeeper[bot] <23040076+greenkeeper[bot]@users.noreply.github.com>
Date:   Wed Nov 13 00:07:15 2019 +0000

    fix(package): update drag-drop to version 6.0.0

commit ffe4165170e916945c8d757097a9461ef34e1290
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Nov 12 12:39:48 2019 -0800

    update for path-to-regex 5

commit 90ab169d3730337d95b13bff976e3dfe5aacf709
Merge: ba2f71f 341339e
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Nov 12 12:11:50 2019 -0800

    fix(package): update path-to-regexp to version 5.0.0 (#81)
    
    fix(package): update path-to-regexp to version 5.0.0

commit 341339ed7ffad37b2944eaa09d32170ce5f9c440
Author: greenkeeper[bot] <23040076+greenkeeper[bot]@users.noreply.github.com>
Date:   Tue Nov 12 12:04:02 2019 +0000

    fix(package): update path-to-regexp to version 5.0.0
    
    Closes #80

commit ba2f71f2d0c37103ef4dac4ff610f684ab7f20ee
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Nov 6 09:12:35 2019 -0800

    remove rollbar info log

commit a255470a67fed25dd16a8ec4a819a9dc5b90f60c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Nov 6 08:52:43 2019 -0800

    Update deploy.sh

commit 4bdeda7254aa369a818c2a7b707390f9ab80da0d
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Nov 1 12:07:29 2019 -0700

    Handle invalid/unparseable URLs

commit 209eb127e41e0e9bbdba0981069f8fb2d3636a31
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Oct 26 17:07:19 2019 -0700

    tweak limiter

commit d2c7843e2ca8c881c37a396b8d9321814615fb79
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Oct 26 16:51:55 2019 -0700

    limiter: add rollbar

commit 0d589f7ba5c53bbbfde652027383b7cc3a8f4b47
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Oct 26 16:41:53 2019 -0700

    tweak rate limiter

commit e5243569a902defbd1553c69ef9afa2124761a11
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Oct 26 16:05:48 2019 -0700

    block bots

commit 88492cffea3d658c06dea9acdc27c0798b29b9e5
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Oct 25 23:16:01 2019 -0700

    fix href='false'

commit f91a23083123b37c93c78cfdd681280f09054c63
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Oct 25 23:15:53 2019 -0700

    Update package.json

commit 5d91f3935a9468e6f23f175139b969948d4b36ea
Merge: c39f747 22dd512
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Oct 25 19:23:36 2019 -0700

    Update knex to the latest version 🚀 (#79)
    
    Update knex to the latest version 🚀

commit c39f747dafd43cd7d6a0dc3d4d4c8aceaadf53a5
Merge: c18d915 786a7fc
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Oct 25 19:19:01 2019 -0700

    Update puppeteer to the latest version 🚀 (#78)
    
    Update puppeteer to the latest version 🚀

commit 22dd512d42d3844e71be3879fd3e07f15d025a82
Author: greenkeeper[bot] <23040076+greenkeeper[bot]@users.noreply.github.com>
Date:   Fri Oct 25 21:20:59 2019 +0000

    fix(package): update knex to version 0.20.0

commit 786a7fc24691bb3908e1a3d9e4a5b09bf0d678ca
Author: greenkeeper[bot] <23040076+greenkeeper[bot]@users.noreply.github.com>
Date:   Thu Oct 24 13:26:04 2019 +0000

    chore(package): update puppeteer to version 2.0.0

commit c18d915ee030b4b68098ee8b9ae8205d0f35570b
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Oct 23 19:08:58 2019 -0700

    Update trigger-deploy.sh

commit 0b4e0bb7dc2c456707d6b6c39050ca4311a274e9
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Oct 23 18:58:16 2019 -0700

    Update deploy.sh

commit 583ea5faa902c145be93121914b1295cfc26bb18
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Oct 23 18:45:13 2019 -0700

    fix deploy script

commit 829a99f1a34d2b44faa9d770ea083f043d299b0a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Oct 23 18:26:36 2019 -0700

    add trigger deploy script

commit 7e3a8861ffa20342c2778632ea46862d78e03a28
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Oct 2 14:35:52 2019 -0700

    bump deps

commit fd1ed166097bb7db312d75146d609d51b29907d5
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Oct 2 14:13:00 2019 -0700

    midi page: only carbon

commit adee4dd36973914255955916e8b11ba3500daed3
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Oct 2 13:56:53 2019 -0700

    autoplay timeout 1 min

commit 9c138593d7cf59ec9d1149847e8583afc8c436c3
Merge: 4beb438 3fc1de2
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Oct 1 21:47:47 2019 -0700

    Merge branch 'autoplay'

commit 3fc1de2f0c709af3ac5596d97ed0d990b6daffde
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Oct 1 21:32:22 2019 -0700

    add autoplay

commit 4beb438852281397121979f70e08609bc67a47ed
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Oct 1 21:31:53 2019 -0700

    add autoplay

commit 0e94243ef5bae287cb75b54c676436ae5f1045c3
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Oct 1 20:11:16 2019 -0700

    Update to Preact X

commit 946460a0dccbff436e75747bd1a406e03a876476
Merge: 11a1a91 d6cf50f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Sep 22 11:28:55 2019 -0700

    Update ora to the latest version 🚀 (#75)
    
    Update ora to the latest version 🚀

commit d6cf50f8b41c55c5f40ff23703231206aae8a4ac
Author: greenkeeper[bot] <23040076+greenkeeper[bot]@users.noreply.github.com>
Date:   Sun Sep 22 09:00:47 2019 +0000

    chore(package): update ora to version 4.0.0

commit 11a1a912c8709ac530acffca9d1c0659d8e1ca47
Merge: 7a5e670 3fd0df2
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Sep 17 17:33:32 2019 -0700

    Update image-size to the latest version 🚀 (#74)
    
    Update image-size to the latest version 🚀

commit 3fd0df296881e3d4068766a2b1fe7b042bebc753
Author: greenkeeper[bot] <23040076+greenkeeper[bot]@users.noreply.github.com>
Date:   Tue Sep 17 11:42:19 2019 +0000

    fix(package): update image-size to version 0.8.0

commit 7a5e6709a0d4dd4d3faa73e5a9032499cf5fec3e
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 28 22:52:53 2019 -0700

    force babel-eslint@^10.0.3

commit edb2da82ffa40722ac05bdb10516d1e8f97c160b
Merge: 7941b4e 6e23d07
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 28 13:13:50 2019 -0700

    Merge pull request #72 from feross/greenkeeper/drag-drop-5.0.1
    
    fix(package): update drag-drop to version 5.0.1

commit 6e23d072fb871a8485ccb5b9dea26a762609f546
Author: greenkeeper[bot] <23040076+greenkeeper[bot]@users.noreply.github.com>
Date:   Wed Aug 28 20:04:31 2019 +0000

    fix(package): update drag-drop to version 5.0.1
    
    Closes #71

commit 7941b4e29820756e93c3ac801d9aefc3a77d38e6
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Aug 23 17:00:45 2019 -0700

    ads: disable AdsenseFeed2

commit a256ba3a6ca8860675c3e0682f027561e6f3e03f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 14 18:18:21 2019 -0700

    sort all props

commit e0e25d6c006532733d2898248e0306b6789570a9
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 14 17:48:12 2019 -0700

    standard

commit 9c3e0a5e818cfce6288ca821c2787e02b7b7d2ae
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 14 17:19:08 2019 -0700

    standard

commit 67ed076abf17b0560a7bad60a249fcb4b97eb95c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 14 17:10:45 2019 -0700

    standard

commit 139f30f75055ebef597c5a44a59888609eb49654
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 14 17:07:38 2019 -0700

    standard

commit 5ec3bba6310d1ba22a2a9713eb0bf1c088eaaa8b
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 14 16:29:41 2019 -0700

    standard

commit 18e781fc74e933e8c360073e109abb4d33970e84
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 14 16:13:11 2019 -0700

    standard

commit 5741108ea9e3ef09ed8654f2120768d199e35b9f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 14 13:21:25 2019 -0700

    Update deploy.sh

commit d2bea8274e53b05da39dae4d47caecdfcf05d16d
Merge: 2ce6c92 3f3775e
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 14 13:14:10 2019 -0700

    Merge pull request #70 from feross/greenkeeper/rimraf-3.0.0
    
    Update rimraf to the latest version 🚀

commit 3f3775e1cf0cc1685491d8c59b23e95edaba2646
Author: greenkeeper[bot] <23040076+greenkeeper[bot]@users.noreply.github.com>
Date:   Wed Aug 14 18:22:30 2019 +0000

    chore(package): update rimraf to version 3.0.0

commit 2ce6c92edf366c21147d3ccbdb600888097e20dc
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Aug 13 20:32:14 2019 -0700

    standard

commit d116d05c4fe941fdcff09b18d0584535a124170c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Aug 13 17:02:48 2019 -0700

    standard

commit 7151511ec37cf935db1139ceceba182c6d42cc77
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Aug 13 17:01:59 2019 -0700

    prep for standard 14

commit 7286959fd36a9f9721430ae5298e831a6317622f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jul 22 18:18:07 2019 -0700

    api: add CORS to /midi/get and /midi/search

commit dc6df70db5d395bb7bfcdd4ac366a3f89c0b95dc
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jul 22 08:35:05 2019 -0700

    only show display ad at top

commit 97664c26b8746941878d24ea1f307dbc2cdcb1a6
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 19 14:22:16 2019 -0700

    add cors to timidity files

commit f2983415ec4081a7c12f7976598a450aac851e24
Merge: 2344b1b a67077d
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jul 11 14:57:05 2019 -0700

    Merge pull request #68 from feross/greenkeeper/knex-0.19.0
    
    Update knex to the latest version 🚀

commit 2344b1ba24784d462d1d74d54d566d945677f396
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jul 11 14:10:41 2019 -0700

    standard

commit a67077de656965e67029882b23734e59906e91db
Author: greenkeeper[bot] <23040076+greenkeeper[bot]@users.noreply.github.com>
Date:   Thu Jul 11 13:41:37 2019 +0000

    fix(package): update knex to version 0.19.0

commit f780d0a1a4a958249cd8853d96f159ad17239ed9
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jul 8 12:58:54 2019 -0700

    nginx: fix upstream syntax

commit c0d6b1a866edbe9c94a55014acda1a53c9b12143
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jul 8 12:55:24 2019 -0700

    nginx: use both node backends

commit 44311d684908331b3e0b9ebfd15542ad3b317e79
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jul 3 16:53:26 2019 -0700

    midi page: show 2 adsense

commit 9e636a9a71eb1002c284e135831ae0440cc1b0dc
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jul 3 16:45:16 2019 -0700

    remove link unit ad from midi page

commit bdae4e441ae1f7472f6fc3e2252f65829c5a1d68
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jul 3 16:45:04 2019 -0700

    Rotate carbon/adsense on midi page

commit ed7a7432435bdcdfc5ca8a52223aef0cbb6f1901
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jul 3 16:43:34 2019 -0700

    home page: extra ad at top

commit 49103fc2639742f63a1030a34e593a72cf5595df
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jul 3 16:40:02 2019 -0700

    configure page size

commit c5a1c733549a8b1b1d2084b1ab98e191ee20c522
Merge: edc7a9d 5da1f9e
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jul 3 15:26:04 2019 -0700

    Merge pull request #67 from feross/greenkeeper/husky-3.0.0
    
    Update husky to the latest version 🚀

commit edc7a9d98a541e60b910b88705c1a00e22f20262
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jul 1 13:37:26 2019 -0700

    slightly gray images in dark mode

commit 5da1f9e825fd89b145711d018e5329d85bb8fc91
Author: greenkeeper[bot] <23040076+greenkeeper[bot]@users.noreply.github.com>
Date:   Mon Jul 1 19:47:11 2019 +0000

    chore(package): update husky to version 3.0.0

commit c9fb1d164843ae094dba28e9f9534dc9c8be11be
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 29 22:33:34 2019 -0700

    router should return api error for all method types

commit 1374b44b5da724b580762aa6091bba17ed00c431
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 29 17:38:40 2019 -0700

    fix knex migrations script

commit 346ee6995ae959bead3c1332531703f374ac1597
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 29 16:50:07 2019 -0700

    Update index-sample.mjs

commit b098dae1c7b70a176e045b822d8e2f9108f4fa0b
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 29 14:10:49 2019 -0700

    remove 500 file

commit e00fbe276694bc3f006fa9861b7e9fbd13aad509
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 29 13:46:19 2019 -0700

    remove polyfill for node 8

commit 0447acbb695857723696059f6415130117cbbba3
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jun 28 21:26:55 2019 -0700

    properly center carbon on mobile

commit b4253b6771798ef7686eb5d9b0e2e2843d5bff09
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jun 28 21:14:28 2019 -0700

    fix carbon ads in dark mode

commit da03718711364dd5115ca19b362565b1591f2f34
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jun 28 18:18:24 2019 -0700

    add deploy script

commit 70194bf0f5c4b57b100234d499e1b5b0c60b7321
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jun 28 18:05:46 2019 -0700

    Update nginx.conf

commit b43cff3f9338d3bad0c4fbd46f4b100f24d72404
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jun 28 17:12:56 2019 -0700

    express-sitemap-xml@1.1

commit b8ea6bbd7a3d829581a5d023fc68ed6a7a5f83bd
Merge: f33b0b9 ea7fe64
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jun 28 17:18:19 2019 -0700

    Merge pull request #66 from feross/greenkeeper/knex-0.18.0
    
    Update knex to the latest version 🚀

commit ea7fe64c57b3a40539aa928d818c1d392fc731a7
Merge: 9650d62 f33b0b9
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jun 28 17:16:39 2019 -0700

    Merge branch 'master' into greenkeeper/knex-0.18.0

commit f33b0b94d383ca9ba94661fa6965751797ff2553
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jun 28 14:30:05 2019 -0700

    load-script2@2

commit 02e11e4c0f1f5057c249a45917f18f45f1be62a0
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jun 28 13:48:31 2019 -0700

    add missing load-script2

commit b22d71a33b1e0604c8bddcfbb2872c42c7483cdb
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jun 28 13:40:12 2019 -0700

    standard

commit ca578509c66a7a040359b4670db9fab2e81edaa4
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jun 28 13:36:13 2019 -0700

    fix carbon ad

commit 3746a947aeb55bc815c17f70fc01b69ca36734d1
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jun 28 12:47:39 2019 -0700

    standard

commit 07110bd139f1c4ffc086fed506c5986baf70761f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jun 28 12:45:38 2019 -0700

    carbon: test ads

commit 0bee9cbdcc6e870216dcc1f3e3a217a626cee6ae
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jun 28 12:45:31 2019 -0700

    adsense: add more checks for props

commit 4d6aa7474ee1bde44ce1250a5d9d12a86e634e09
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jun 28 12:45:11 2019 -0700

    move adsense script to bottom of page

commit abe10ae15b21e03a17efeae202c298bf473a9048
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jun 27 17:19:32 2019 -0700

    disable security headers for ads

commit ab4c7e31a63a214a567eaabd10fed8dc20216886
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jun 27 16:49:21 2019 -0700

    temp re-enable all security headers

commit 25d3d7ae342d4bbf35226c028aa1a4f6e2c06bf9
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jun 27 16:47:32 2019 -0700

    adsense: remove commented code

commit 2b06c15e2dbee53546cf9918a6a4103b041dc6e9
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jun 27 16:30:55 2019 -0700

    Update nginx.conf

commit 85f92f92fcac6d463874141405a792a7507b5efb
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jun 27 16:11:45 2019 -0700

    block bad user agents

commit 9650d621bdabe73b62e51a801c49708dddb881ca
Author: greenkeeper[bot] <23040076+greenkeeper[bot]@users.noreply.github.com>
Date:   Wed Jun 26 14:32:49 2019 +0000

    fix(package): update knex to version 0.18.0

commit 9eac0061ca93bd86e23b9388d6cdfc88589600df
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 25 17:00:06 2019 -0700

    fix date feed exception

commit ba4c04dae00f6e05ab40cea0a99c11dc81a5de80
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 25 16:59:27 2019 -0700

    fix date feed exception

commit 274b5ef50aeb30f95b1d2fa1b08abbe999809426
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 25 15:52:04 2019 -0700

    always return string dates

commit a2141c2264af900d9e5f94f601da334ef848cdf0
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 25 14:56:16 2019 -0700

    timidity@1.1

commit a8ddcddc60ce74d242cba87b54e2e92cf5da072a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 25 12:56:12 2019 -0700

    don't load adsense script in dev

commit 010d42cd9c046816cc5a532e1d5fd512015ef4d1
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 25 01:35:03 2019 -0700

    fix padding

commit 9a3b08cf826bb9ebc633bcb5aa64c930c71fa61b
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 25 01:33:06 2019 -0700

    update ad styles

commit d132ca9640532b8b02f8a1ed2d1aabb820881642
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 25 01:24:42 2019 -0700

    adsense: fix class getting overridden

commit 34636977e532bd0d3474262101bdaafde4d72700
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 25 01:20:35 2019 -0700

    add related midi ad

commit 3ad596e8f9e39c118f26187c4f864fbc23f0badd
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 25 01:01:31 2019 -0700

    add random midifeedad, with images + without

commit 1403651ca1aece2e88e56d4f71f8a397b58294a7
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 25 00:50:50 2019 -0700

    adsense: add back surrounding div

commit b4170aa3a70b38a86eeede9c376b38d7d74a6281
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 25 00:39:59 2019 -0700

    add feed ad

commit 449112de3c18d07053c4d1a01bb44cace9c2f01f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jun 24 18:43:30 2019 -0700

    standard

commit 1adb9c7485ebd873dd73e009732db5f2f9166c55
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jun 24 18:41:44 2019 -0700

    remove frame-ancestors so embeds work again

commit c61489f51f9a683e39476469cfc7743008562dba
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jun 24 18:38:53 2019 -0700

    adsense: go full client-side react component approach

commit 5f3fe8f73d33f4a070680563a9d0b6f012c2292c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jun 24 17:50:29 2019 -0700

    adsense: only ssr the ads. do nothing on client (in progress)

commit b80149d57bcdbdc44c02aa9d27c87e28d499889f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jun 24 17:45:31 2019 -0700

    move div#root to site layout

commit 6ff131618059fe09f547fd33765fc81a393de1dd
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jun 24 17:42:44 2019 -0700

    Use preact-render-to-string; remove my implementation

commit 434f5e86ea3098a2fcb70f662fb05336ea180c2e
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jun 24 17:40:59 2019 -0700

    bump preact

commit b1b44a0d1abc583d3965a9bd4803d9874dbe8d36
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jun 24 17:12:59 2019 -0700

    don't crash on ssr=0

commit ea821752592b9e991a05b8045dd524684238637a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jun 24 14:52:15 2019 -0700

    testing: disable all CSP

commit ee7a78a88ad8842bf3f2b6b80aaa9b6c270d2ceb
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jun 24 14:51:56 2019 -0700

    correctly output adsense script for ssr

commit 4c4995d0779dec49422d5ad08c831346a451d66a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jun 24 14:50:35 2019 -0700

    dom renderer: pull out regexs

commit 7d5add8fbca2ddcc705c89359affd040e038494c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jun 24 14:44:24 2019 -0700

    dom renderer: output ='true' for data- attributes

commit 8d97d32d7ee5c03860d942e5841a0cf7fdc57f1a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jun 24 14:25:03 2019 -0700

    Include adsense script in ssr

commit f8f0cc796baa3a75bbe86d237580ee891cc9cf94
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jun 24 13:34:41 2019 -0700

    Move adsense to head

commit c21d75036555580949e8d0d60f957e00eb726461
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jun 24 09:29:04 2019 -0700

    adsense: never update component

commit 7fa81b366acb088c536ff07901c20c72436495e6
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jun 24 09:15:57 2019 -0700

    add adsense

commit 21bd5e8d37a61e1c85b2eecfaa0c2cac09a7fce9
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jun 24 08:52:04 2019 -0700

    Update ads.txt

commit 75ed7d3f40327047623de015dfb0c318f0bc67ea
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 23 22:08:59 2019 -0700

    move adsense script to bottom of page

commit ea4d964dd426e8475c53e2e7b29ced00e39bcb63
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 23 21:50:59 2019 -0700

    Remove strict-dynamic to enable AdSense
    
    UGH :( :( :(

commit 2764892e796009810f82ad54ba64ed9c0d11c1fe
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 23 21:36:53 2019 -0700

    deploy: stop removing node_modules

commit 2d58d9733196c04e0868feb44129f08a18a019c3
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 23 21:35:18 2019 -0700

    fix CSP

commit a1fcc271bb3dfe08628289b11b0b9166641e2deb
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 23 21:29:42 2019 -0700

    CSP: frame-src: * for AdSense

commit 91c93e989fd118a7f5351955eb45f72d9205dde5
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 23 20:51:25 2019 -0700

    add nonce to adsense script

commit 99adbdd26a5d9f680d69896754460840b961f0a6
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 23 20:49:33 2019 -0700

    Create ads.txt

commit 92136bfb12bbdf950e02bec881898f732c682a7b
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 23 20:46:26 2019 -0700

    add adsense to head

commit 4569355deed58500860c2301fbf1a23fc324e7f5
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 23 20:39:27 2019 -0700

    remove conflicting class

commit 1d960239060fe0e8955ae9ff2da9134d5670b49a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 23 20:38:21 2019 -0700

    embed: move play button to the top

commit 5a85701e4dc405afe562a2c2494bbdf8adfb28f5
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 23 20:28:05 2019 -0700

    embed: Raise play button so it's not blocked on Twitter iOS

commit d9bc5315504dbcf5517e86f3942341447c9c9fce
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 23 20:11:57 2019 -0700

    autoplay in Firefox or when useractivation is present

commit abbf9c56ea8a543fd96ac659b33ad2933161f4ad
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 23 19:57:22 2019 -0700

    fix embed page crash with ssr

commit 5ce2500ef49cc1e45553880f049f58219d1d5c56
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 23 19:48:02 2019 -0700

    add hack to autoplay on Chrome/Firefox only

commit d03d5085aaba0ff293326cc9c4d5515fc2676baf
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 23 19:43:30 2019 -0700

    Revert "test embed autoplay in safari with Cross-Origin-Opener-Policy disabled"
    
    This reverts commit 83bf2a487d4189299ffd9d789d8e1eccc95c6920.

commit c30279c7075331e8db38573607c500b0ce4ba24b
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 23 19:43:02 2019 -0700

    Revert "twitter embed: test fix for safari"
    
    This reverts commit 32fe2430fe22f78d272e91cf6fab8ea43ced6f26.

commit 08206cd95ef906a1604d228165963c9538e91533
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 23 19:42:58 2019 -0700

    Revert "embed: test fix for safari"
    
    This reverts commit 1614319f2c549c41996b1fbdd7d8adc1ebbe9365.

commit 1614319f2c549c41996b1fbdd7d8adc1ebbe9365
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 23 18:57:38 2019 -0700

    embed: test fix for safari

commit 32fe2430fe22f78d272e91cf6fab8ea43ced6f26
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 23 18:50:46 2019 -0700

    twitter embed: test fix for safari

commit 83bf2a487d4189299ffd9d789d8e1eccc95c6920
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 23 18:38:36 2019 -0700

    test embed autoplay in safari with Cross-Origin-Opener-Policy disabled

commit b93661d40a711569ed62919ab280fe1bd7b51cb1
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 23 18:29:16 2019 -0700

    Revert "Revert "add back header for Chrome bug report""
    
    This reverts commit 8ea783c4fbce639d3e25c1d458bc9f9256bb2049.

commit bce5edf0b684819e8059bc3f9db9c9949476baca
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 23 18:22:00 2019 -0700

    try hasBeenActive

commit 45b24f7d1a46e2d3e800cfcb541a986b2104b0cc
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 23 18:15:56 2019 -0700

    twitter embed: only autoplay when userActivation is active

commit 5989545d5f3705e1080adf2970aef64b399bc605
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 23 17:57:42 2019 -0700

    fix twitter embed size

commit a4308274d0594f662a23347ef4f5691382d8ea8b
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 23 17:50:15 2019 -0700

    embed: always show image, height 100%

commit ef2718881ed359aad4dbc040407e72efd6968687
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 23 17:19:57 2019 -0700

    tweak twitter card dimensions

commit ca15684bf0102e2a0521409a95a40bd8632d7967
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 23 17:11:28 2019 -0700

    Prevent embed page from being indexed

commit f2bac43d038f81be45f4ac861e8dc009929a946c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 23 17:08:15 2019 -0700

    Properly size twitter player card, include images

commit 72042c7c5d46c5d96f7949a24f9fa45456c3d066
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 23 16:57:12 2019 -0700

    embed: Add autoplay url param support

commit a23f8d39136644f2d401e3c2a9bbece39fc2c3ee
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 23 16:40:12 2019 -0700

    show twitter player card at 100% width

commit e57aed9d6ed823882879dffe2022d99c54445656
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 23 16:35:22 2019 -0700

    twitter player card tweak

commit 584a935c08534379d3dd3b9f066ef0cf20bf94e6
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 23 16:24:46 2019 -0700

    loosen frame-ancestors for Twitter Player Card

commit 50bfbae330726c946e193fc33bc5d240fd7627ba
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 23 16:07:07 2019 -0700

    cleanup context access

commit e36969983a84b1af3b8bee65dbbf20d19d82259c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 23 16:05:11 2019 -0700

    add basic embed page

commit 599db4f8765089f9b3e3fca36b37907b6b767313
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 23 15:58:16 2019 -0700

    add static variables to pages to show/hide header/footer

commit a942c684681eb695ab0602b091f7ba7ed9b828fd
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 23 15:10:17 2019 -0700

    remove Redirect from /1 to /009count-mid

commit a0606e8400fbca5816bbd417356eee2d90130019
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 23 14:45:33 2019 -0700

    add twitter:creator meta tag

commit 94c20294ac7a8c11121e2ed60b944235878c9a6e
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 23 12:20:34 2019 -0700

    add bug link to TODO comment

commit 6334bb579893a34501a88f965881bed6778f35b9
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 23 12:15:49 2019 -0700

    Add Dark Mode support

commit 384223e25251607447249e450dfd9c5e9435cbb2
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 23 11:43:01 2019 -0700

    remove invalid class

commit 9c38a06a8ec2faf457ff0deef4c8bc76b0ee6b1b
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 23 11:40:26 2019 -0700

    rebuild css on ejs changes

commit ef7177e5ba7caa7b2c24b96a20c71ba59755d3c4
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 23 10:26:59 2019 -0700

    Make Quantcast work in SPA

commit b4017fef31a94189bef0fca0ce9c43688ad2f5ed
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 23 10:23:27 2019 -0700

    Correct mime-type for streaming wasm compilation is set by express now

commit 3ffa0c6385403684658f0f97e800f53c7bb0ce13
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 23 09:47:00 2019 -0700

    inline css for offline page

commit a6dc3eedca92a7a76434bbb1138a8d3276572813
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 23 09:10:02 2019 -0700

    Serve MIDIs with CORS headers
    
    For https://twitter.com/notwaldorf :)

commit 8ea783c4fbce639d3e25c1d458bc9f9256bb2049
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 23 08:58:27 2019 -0700

    Revert "add back header for Chrome bug report"
    
    This reverts commit 19e72689fd9b3697d28edc7c9ae7e8c223b70527.

commit 57ecb5d3de956b016d57ee58948ed26914f398ac
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 23 08:58:21 2019 -0700

    Revert "use crossOrigin-'use-credentials' for chrome bug report"
    
    This reverts commit 6862fcc7da2ee1b555473eec9901bd8cab12c70d.

commit 6862fcc7da2ee1b555473eec9901bd8cab12c70d
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 23 08:28:43 2019 -0700

    use crossOrigin-'use-credentials' for chrome bug report
    
    https://bugs.chromium.org/p/chromium/issues/detail?id=977829#c2

commit 19e72689fd9b3697d28edc7c9ae7e8c223b70527
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 23 08:15:14 2019 -0700

    add back header for Chrome bug report
    
    https://bugs.chromium.org/p/chromium/issues/detail?id=977829#c2

commit fa9040f8ee12a3cd8adda4fc27c097de73a04411
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 22 23:14:19 2019 -0700

    fix 500 page on mobile

commit 0f6146d68d437f157c6da265385c6bcee10901c1
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 22 22:51:57 2019 -0700

    add background to apple touch icon

commit 9318d748973ea9fc038734d8c29767d03d989fb1
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 22 22:32:34 2019 -0700

    fix Offline page is too small on mobile

commit e1aae36294dd051065d7c78e2179d2a468a94bcc
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 22 22:16:27 2019 -0700

    add comment explaining why header was disabled

commit 23c91966e8a26e0dbce6c56e2e1596525e637049
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 22 21:58:33 2019 -0700

    service worker: comment

commit eb681588564971f21ab39496004b0fcad23ca0f7
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 22 21:54:27 2019 -0700

    Revert "test: pwa"
    
    This reverts commit 45920c2870f17302fb47ccf14c3990aab89b4a7f.

commit 45920c2870f17302fb47ccf14c3990aab89b4a7f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 22 21:54:09 2019 -0700

    test: pwa

commit 3f664a9445c15dd5d09a99ca2560ca3a4e8cdc5c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 22 21:53:30 2019 -0700

    Revert "test: use uncompressed images, fixes add to homescreen?"
    
    This reverts commit bedeec9ba12838364849d1f96569b9041c9d8c26.

commit d7f2a4f662f9ffc999e176800e818be34fea8bdd
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 22 21:53:28 2019 -0700

    Revert "test: use directly exported image"
    
    This reverts commit ecbd7480d0c784300113177c339be7dfdaf83d02.

commit d669e6a65ef33ebe0e89c109b9805725c160d8ed
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 22 21:48:34 2019 -0700

    test: revert pwa testing changes

commit 0b81ffe44bff0af118558152935657727102c59c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 22 21:43:27 2019 -0700

    test: pwa

commit 11b967d135cb0bdcfffbf6fbbf9c600cd1605e01
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 22 21:33:16 2019 -0700

    test: pwa

commit ac6d6cc1a114e7e48a0641deb8e2e3c87d30a299
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 22 21:28:35 2019 -0700

    test: pwa

commit 2a79def07e83c640f651a879e03e20cb6f96e719
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 22 21:02:29 2019 -0700

    test: now that WebAPK works, undo some changes

commit bd7bb88aaac71129c3da01fdc8ea275442216361
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 22 20:54:32 2019 -0700

    test: make manifest file match study notes's

commit cee036abc43c69495bd36093ba4521bf5ac04053
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 22 20:40:03 2019 -0700

    Revert "Revert "test: caching homepage for android pwa""
    
    This reverts commit c21e8bbee7d21f186c9e301d8d6b75e0b593bb0e.

commit ecbd7480d0c784300113177c339be7dfdaf83d02
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 22 20:16:14 2019 -0700

    test: use directly exported image

commit c7a79f763539bb869d0a2eb8405309cb81200619
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 22 20:06:20 2019 -0700

    test: serve offline page even for non navigations, attempt to pass the add to homescreen test

commit bedeec9ba12838364849d1f96569b9041c9d8c26
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 22 19:50:44 2019 -0700

    test: use uncompressed images, fixes add to homescreen?

commit c21e8bbee7d21f186c9e301d8d6b75e0b593bb0e
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 22 19:46:41 2019 -0700

    Revert "test: caching homepage for android pwa"
    
    This reverts commit 1b7cd85b8d0d7511e26f38341444abf06003073a.

commit 1b7cd85b8d0d7511e26f38341444abf06003073a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 22 19:39:53 2019 -0700

    test: caching homepage for android pwa

commit a3896aee68208ff0629f8f0635461429df336fa4
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 22 18:55:30 2019 -0700

    hardcode a circle icon for android
    
    Fixes this issue: "Just noticed that the bitmidi icon is the same color as the inferred launcher icon background on Android P"

commit 3dd966570d52c3ae81aa2daab4d14c014d3429fe
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 22 18:34:55 2019 -0700

    manifest: change theme color to white

commit 84fd00422a1e21d3898d6561c067f67facd001e8
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 22 18:34:42 2019 -0700

    alphabetize meta tags

commit 53a1fe2a8114ba3c36b0c4bf3facff074ebe6075
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 22 16:35:12 2019 -0700

    Add image policies for fast load times and more

commit 410cec1d312971ce09a54cd8ab8114ad9cc48a0c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 22 16:27:19 2019 -0700

    fix log

commit 686da6229ac9829ddee60a7254d6e097309020d6
Merge: d590022 ffc7ab1
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 22 16:10:36 2019 -0700

    Merge pull request #65 from feross/greenkeeper/monorepo.babel7-20190426211543
    
    Update babel to 7.4.4

commit d590022e1ec3e1fa0f93c009fd9406e85eca42e6
Merge: 938eed7 4507f8c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 22 16:09:37 2019 -0700

    Merge pull request #64 from feross/greenkeeper/nodemon-1.19.1
    
    chore(package): update nodemon to version 1.19.1

commit 938eed72968d6654e7d02f8f0427ee2915d020e2
Merge: 0c95d5a 9c297b9
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 22 16:09:04 2019 -0700

    Merge pull request #63 from feross/greenkeeper/husky-2.4.1
    
    chore(package): update husky to version 2.4.1

commit 0c95d5a0a3859a386e984d571b00c2ad94b67f77
Merge: ba64cdd 075c59f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 22 16:08:07 2019 -0700

    Merge pull request #62 from feross/greenkeeper/send-0.17.1
    
    fix(package): update send to version 0.17.1

commit ba64cdd44a26a565b23b291993f4b0d365be2754
Merge: 14e0aa8 d7aa2b7
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 22 16:06:02 2019 -0700

    Merge pull request #61 from feross/greenkeeper/knex-0.17.0
    
    Update knex to the latest version 🚀

commit 14e0aa828447247114989a98340c2f585eae301a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 22 15:26:25 2019 -0700

    Enable/unmute WebAudio on iOS, even while mute switch is on

commit 2408946a6b936f7e7771e4380ef30ccade8a57d9
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 22 12:34:45 2019 -0700

    hero background lighter gray

commit af4086888565fe841d78d36750be6584e476f888
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 22 12:30:54 2019 -0700

    show gray background behind hero while loading so text is readable

commit 095d76eb86d8cf48561dc829873144d0780cf59a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 22 12:26:34 2019 -0700

    Add graphicsmagick note

commit 1ca28882318beda171b79d0217b7e3bd7fcbc542
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 22 12:19:34 2019 -0700

    Resize low quality images to max width of 960

commit 98a71dfa20f88235101e23707bda00ee083e91b7
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 22 11:23:41 2019 -0700

    Only cache offline page; serve offline homepage

commit b606be00cc1cb16dc18dac59db754d5f0a740840
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jun 20 21:03:01 2019 -0700

    service worker: Add navigation preload

commit 6df2782c539728251ff4e9aab1a31302fc798c48
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jun 20 21:02:28 2019 -0700

    Simplify service worker, drop code for old Chrome

commit d31c298c1e1c3f5895ee02406cf00004e292040e
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jun 20 21:01:26 2019 -0700

    fix service worker detection

commit dfbea3bae8ea96438ce4f4a8c8a80ba45c8de618
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jun 20 18:23:35 2019 -0700

    Use 2 bitmidi processes

commit 9c297b92a8b5373aad7e303a7ac52586b3134838
Author: greenkeeper[bot] <greenkeeper[bot]@users.noreply.github.com>
Date:   Tue Jun 11 22:36:35 2019 +0000

    chore(package): update husky to version 2.4.1
    
    Closes #59

commit ff744dddd4cfc0a23bdf29170c7542a5b0cd5c56
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 9 19:53:42 2019 -0700

    double max memo size

commit f1d303255e48e50b70ab65b3a6497f1e84b05d8e
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jun 5 15:07:32 2019 -0700

    Fix feature policy header syntax

commit 47398271f6919ebf20d5ffe5978af23dd22516c7
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jun 5 15:07:21 2019 -0700

    Prevent click-jacking attacks on static resources

commit bfca18461e7b8ea61023c68a41ffde50fdddcdd2
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jun 5 11:54:06 2019 -0700

    always set HSTS header (does nothing in development)

commit 2e404d84cdc4004752d8ce912b15db0602818929
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jun 5 11:53:52 2019 -0700

    CSP: allow easier local development

commit ac5b842d598554269108f0edeb02f3e645187582
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jun 5 11:40:04 2019 -0700

    Loosen CSP
    
    - Allow connect-src to any https: domain (strict-dynamic for scripts doesn't cascade to requests to extrenal domains. connect-src is blocking requests to Google Analytics in Safari)
    
    - Switch all * to https: to be a bit safer, and possibly prevent mixed content warnings
    
    - Change default-src from 'self' to https: and just block object-src (plugins)

commit 01efcb1080ff69761799d1674ce19ef528039937
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jun 5 11:22:22 2019 -0700

    Don't autorefresh page

commit ce6914478c11ae51c4051e82eb2748dfb635e52a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jun 5 10:41:47 2019 -0700

    Fix error in Firefox Private Browsing mode

commit 46c09ffcc556499969f59a771e30a3d5f20f3a72
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 2 18:19:09 2019 -0700

    make random even faster

commit 4981a39b6e258d49f032bb621100c049d6874625
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 2 18:01:43 2019 -0700

    Fix deploy script to actually restart server

commit b3bb8611034de13b2232c55e6cafe6ac2c5e3c52
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 2 17:54:48 2019 -0700

    Include missing nonce info

commit 6ee762c86540736ae9373fc364efc1a6cdf84c57
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 2 17:48:37 2019 -0700

    Fix syntax error: Use multiple script tags

commit ea19617ba475735522d2756b4c700fefbb261040
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 2 17:43:35 2019 -0700

    memoize get, all, search APIs

commit 4cbb7e2d873fb6918680fc2187376059fe9597c6
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 2 17:02:42 2019 -0700

    compress css further

commit b49fe3627343491e5aac4296427cc29c7c7f085e
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 2 16:23:55 2019 -0700

    Don't send JS comments in HTML

commit c5f4241c62632146d2d9222726c6dda66b4fc07b
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 2 16:19:28 2019 -0700

    ship Cross-Origin-Opener-Policy
    
    It is behind a flag in Firefox and will ship in Chrome 77
    
    https://bugs.chromium.org/p/chromium/issues/detail?id=922191

commit 7cdd7b00b8c20d4bc45bd65e31bd3d38efc40ec5
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 2 15:56:16 2019 -0700

    improve tweet text; less verbose

commit 05c2bfbccf8417181c5039601b9bc705f0fe5227
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 2 15:33:44 2019 -0700

    Run scheduled jobs on main process only

commit c62b754a33a47ef64262ad0ad7e4e9024e66fd35
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 2 15:19:55 2019 -0700

    Delete google66f372b7d00add35.html

commit 6ef84f6d5f85e053081f25538db835d4639d9045
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue May 28 16:52:43 2019 -0700

    Run 4 bitmidi processes

commit d7aa2b78769018243107b1a05302efbbe29335c7
Author: greenkeeper[bot] <greenkeeper[bot]@users.noreply.github.com>
Date:   Tue May 28 22:09:06 2019 +0000

    fix(package): update knex to version 0.17.0

commit d094761f139645d4fe163a1043df180b0bf3e0e4
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon May 27 17:22:26 2019 -0700

    fix inset on iphone X

commit fc4a73b28c84a7b9ec4ee1b6537d42c3113beb56
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon May 27 14:48:21 2019 -0700

    Fix husky deprecation

commit 0d5eabce50892069f86a298191d5dbc5fc0da489
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon May 27 14:47:20 2019 -0700

    Pre-cache random queries because they're a bit slow

commit 28c0a150a85520ed937bdbe45e2f1fba97763fe9
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon May 27 14:12:20 2019 -0700

    Minify CSS (saves 1KB before gzip)

commit ba1c40b399b2153a172ffd37682a08b2ff2a4d49
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon May 27 13:43:35 2019 -0700

    Add Cross-Origin-Resource-Policy

commit 8bde1e2e7d0384c53ae29d56212ff09b621a126c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon May 27 13:43:23 2019 -0700

    purgecss is a dev dep

commit 32f573761f7acbe0b44ac75261bb9ccebe42374f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon May 27 00:39:11 2019 -0700

    Reduce webp quality on mobile devices

commit f420c85a4983664c365f0ff334adde1e6f339dc6
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon May 27 00:23:07 2019 -0700

    Replace purify-css with purgecss

commit 704b69d850ea6758a1c1d4d36a7283b5b604b0ef
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon May 27 00:22:52 2019 -0700

    Fix safe area css for Chrome/Firefox

commit bde3f2fc488768672dad3f21decdef56e5233df1
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon May 27 00:22:40 2019 -0700

    remove unused css

commit 391666f95410b4819d83cd1eb6b50eba51e63b77
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun May 26 23:03:14 2019 -0700

    Add encCssDeclaration function

commit 7a265a7d23f400821c7519f835a4080911be7d22
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun May 26 23:02:50 2019 -0700

    Fix bitmidi logo flash (extra style="" attribute)

commit 4507f8cb79528f015b6978ff1d2b9562f82c1c62
Author: greenkeeper[bot] <greenkeeper[bot]@users.noreply.github.com>
Date:   Sat May 25 18:32:58 2019 +0000

    chore(package): update nodemon to version 1.19.1

commit 075c59fe0eb118398628620b69e46da6a0fcea32
Author: greenkeeper[bot] <greenkeeper[bot]@users.noreply.github.com>
Date:   Sat May 11 01:42:09 2019 +0000

    fix(package): update send to version 0.17.1
    
    Closes #60

commit ffc7ab11cec752d6847fcd7f3222407cb970b72e
Author: greenkeeper[bot] <greenkeeper[bot]@users.noreply.github.com>
Date:   Fri Apr 26 21:50:03 2019 +0000

    chore(package): update @babel/register to version 7.4.4

commit 9422298fa0655d945aabb5d64601568fbe98e0eb
Author: greenkeeper[bot] <greenkeeper[bot]@users.noreply.github.com>
Date:   Fri Apr 26 21:49:54 2019 +0000

    chore(package): update @babel/plugin-transform-modules-commonjs to version 7.4.4

commit de74aa1326be9a308e260db10545ef4586725b30
Author: greenkeeper[bot] <greenkeeper[bot]@users.noreply.github.com>
Date:   Fri Apr 26 21:49:46 2019 +0000

    chore(package): update @babel/plugin-proposal-object-rest-spread to version 7.4.4

commit bf9f7447e00b543e1c013684633a1dabde0ed585
Author: greenkeeper[bot] <greenkeeper[bot]@users.noreply.github.com>
Date:   Fri Apr 26 21:49:39 2019 +0000

    chore(package): update @babel/plugin-proposal-class-properties to version 7.4.4

commit 7a31be58d77c03bb0ec0b3ac3443683c599894e0
Author: greenkeeper[bot] <greenkeeper[bot]@users.noreply.github.com>
Date:   Fri Apr 26 21:49:30 2019 +0000

    chore(package): update @babel/core to version 7.4.4

commit 4eb9071bdd8652f5bc0b5df18e2717bede2a5aac
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Apr 14 21:58:44 2019 -0700

    Image: Rename 'load' attribute to 'loading'

commit 18753b6f6822e724173cc05b6bc049c27169e051
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Apr 6 13:53:35 2019 -0700

    fix missing feature policy warning

commit 81c1864670a23373a62da0fe94c1e50393d51eba
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Apr 6 13:53:26 2019 -0700

    bump babel versions

commit 125637e099744018c18df07f033b13399f77bf8f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Apr 6 13:53:11 2019 -0700

    Update objection version (1.6.4 bug was fixed)

commit 9d0b86a324cb28e9527a5c6e593b2163e3680929
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Apr 6 13:17:06 2019 -0700

    Using <img loading> instead of IntersectionObserver

commit d6e4eed2630518c3c3277b15b52e351457078848
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Apr 2 12:43:30 2019 -0700

    add quantcast

commit 445df26ab479dac66afed27b86c75e9057a45765
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Mar 26 18:02:06 2019 -0700

    Ignore web share failure

commit 32f1e6aa0ecd614f00f648f95b285b5d801822da
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Mar 26 17:55:47 2019 -0700

    path-to-regexp@3

commit 084cfef295f52783f73a1a56debd8036fec9a42c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Mar 26 17:51:40 2019 -0700

    Upgrade objection to 1.6.3 (1.6.4 is broken!)

commit 0851ec1c5bdd8beea9ba0640406d55c4d49a0f99
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Mar 26 17:25:00 2019 -0700

    Lock objection version to fix bug

commit 8581f67fc6cca7f6051e604c53ad48b4b28fb028
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Mar 25 17:19:04 2019 -0700

    Ignore 'Precondition Failed' errors

commit cf91b90e80b2729fc1559340155065c42fa78218
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Feb 11 17:48:14 2019 -0800

    readme

commit ed5b1d103cfe09e1d2b47fc4b5b142934193d5c6
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jan 23 16:54:00 2019 -0800

    Create brave-rewards-verification.txt

commit be4ef4ceecef6ef6bc9c5c80dd7616bf01b74221
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jan 6 08:51:56 2019 -0800

    Break all long lines
    
    Resolves Search Console issue

commit c6613f4c5c700ef06d602fd1e48602cbc214aeb3
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Dec 18 14:54:54 2018 -0800

    Fix capitalization
    
    Fixes https://github.com/feross/bitmidi.com/pull/53

commit d6d81c0f4c0241208207b2258ff573c22cf7d282
Merge: 13f061a fb4bbe0
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Dec 18 14:52:26 2018 -0800

    Merge pull request #47 from feross/greenkeeper/babel-eslint-10.0.0
    
    Update babel-eslint to the latest version 🚀

commit 13f061a96288d294e63cac09d83447fb1820ea80
Merge: 7ee14ef b24fa92
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Dec 18 14:50:26 2018 -0800

    Merge pull request #51 from feross/greenkeeper/knex-0.16.0
    
    Update knex to the latest version 🚀

commit 7ee14ef6815363c80c25b2c7758ee5bbe011b07b
Merge: 310f82c a1c4e3a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Dec 18 14:48:30 2018 -0800

    Merge pull request #52 from feross/greenkeeper/imagemin-webp-5.0.0
    
    Update imagemin-webp to the latest version 🚀

commit 310f82cc1bdf9b1d9f55f5dcb8cab41a3df05c3c
Merge: 8d2b78a aec1dcc
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Dec 18 14:43:45 2018 -0800

    Merge pull request #48 from feross/greenkeeper/husky-1.0.0
    
    Update husky to the latest version 🚀

commit 8d2b78a064aed77b5ab71f0d2d43af3abe2ee9e1
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Dec 9 16:49:22 2018 -0800

    307 -> 302 redirect

commit 2af4342e19b22000664c95756b518b73699946f0
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Dec 5 17:54:02 2018 -0800

    Use style to set width or height of images

commit 64a1580d97a9d09bf56233bf0c3908591aebc2ca
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Dec 5 17:46:45 2018 -0800

    code style

commit 9ab6033a3859de85d5a002c2e03bdf6b0c220073
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Dec 5 17:46:39 2018 -0800

    Include empty alt tag on presentational images

commit e2977bac3de995760755ac3c1f5cb8ea654d3298
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Dec 5 17:17:04 2018 -0800

    icon

commit a6e734e08fdb91f732feb2063076bdcb4e711709
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Dec 5 17:16:55 2018 -0800

    Hide play button until midi page
    
    Fixes HTML validation error

commit a1c4e3aaf515b3af4839889b1f8d70219339063f
Author: greenkeeper[bot] <greenkeeper[bot]@users.noreply.github.com>
Date:   Fri Nov 30 13:02:56 2018 +0000

    fix(package): update imagemin-webp to version 5.0.0

commit b24fa9215346a3151c08ef7c548330e311780437
Author: greenkeeper[bot] <greenkeeper[bot]@users.noreply.github.com>
Date:   Tue Nov 27 10:05:32 2018 +0000

    fix(package): update knex to version 0.16.0

commit 6aea82d9ef07bf28ef56a82ecaaa73467cd26832
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Oct 21 20:13:51 2018 -0700

    ignorer 400 errors

commit 65244d4499d8a465be61741e99c79fcd850036ed
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Oct 3 17:23:41 2018 -0700

    Icon: Ensure that rest params get

commit 43b556b90c4657358c66204203830fbb56728268
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Sep 29 23:23:05 2018 -0700

    Fix TypeError: Cannot read property 'slug' of undefined

commit aec1dcc6e5409d6113e89e31fb7ddd48b8bc5d96
Author: greenkeeper[bot] <greenkeeper[bot]@users.noreply.github.com>
Date:   Wed Sep 26 09:33:40 2018 +0000

    chore(package): update husky to version 1.0.0

commit fb4bbe01b31aae73876dae5f8179acd23e459208
Author: greenkeeper[bot] <greenkeeper[bot]@users.noreply.github.com>
Date:   Tue Sep 25 22:06:39 2018 +0000

    chore(package): update babel-eslint to version 10.0.0

commit bfde02221bb8afb9b095ff66c231ce1ebd25551f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Sep 21 18:10:20 2018 -0700

    more descriptive error

commit 12d07b69d8524d746163dffc1e1e53c2615c494a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Sep 21 18:10:04 2018 -0700

    style

commit 86a1f50d3cb4c6722d4a76b673666a029b17ea1f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Sep 20 21:43:02 2018 -0700

    Fix use of dispatch() out of scope

commit 8f8baec4b92b67a933fd6cb4924ee0ef543d1e17
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Sep 20 21:41:44 2018 -0700

    fix switch fallthrough bug

commit 78f17d5bfc3d0bec2dd373c42486f88f0b6a4245
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Sep 20 21:41:35 2018 -0700

    run standard

commit a3562ab69cb3a63921fb47b2b6ea3ddfd129c23a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Sep 20 21:41:30 2018 -0700

    standard

commit 43fe16c2087e8e28d712ad8b626c74b14fdfb186
Merge: 28ce132 c5e9a73
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Sep 11 19:33:09 2018 -0700

    Merge pull request #44 from feross/greenkeeper/debug-4.0.0
    
    Update debug to the latest version 🚀

commit 28ce132e04c50e6945270c2547adb86a6ee4beb8
Merge: 80b9297 d624689
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Sep 11 19:30:54 2018 -0700

    Merge pull request #42 from feross/greenkeeper/babelify-10.0.0
    
    Update babelify to the latest version 🚀

commit 80b9297fca35645a1f8c5700fc0769690146066c
Merge: c1cc3f0 1d3a633
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Sep 11 19:28:23 2018 -0700

    Merge pull request #43 from incessantmeraki/master
    
    Fix minor bug

commit c5e9a73edcb8eeddc054a28c01a94d3ba4c6c7db
Author: greenkeeper[bot] <greenkeeper[bot]@users.noreply.github.com>
Date:   Tue Sep 11 13:24:03 2018 +0000

    fix(package): update debug to version 4.0.0

commit 1d3a633144167f0c2df9c63c35065b10177d9937
Author: Ashwin Kandel <incessantmeraki@gmail.com>
Date:   Tue Sep 11 15:32:22 2018 +1000

    Fix minor bug
    
    duplicate[0] is existing file duplicate[1] the new one.

commit c1cc3f0c778059b311ca37b4be71d3d1898bce04
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Sep 10 15:50:35 2018 -0700

    improve serve-webp implementation
    
    - Skip unneeded extname() call
    - Only run accessAsync to ensure original file exists before running imagemin, always try to find webp image in cache folder first
    - if conversion to webp fails, return the error
    
    - handle send() errors after conversion

commit 01ac3aa6f8dde89f08b7c19af916b20c97d85eba
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Sep 10 15:27:09 2018 -0700

    Perf: Use slice() instead of replace()

commit 5d93cce5b8ce64e69210bcaab2589988d326eefb
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Sep 10 15:15:41 2018 -0700

    style

commit 193493dfa239b1b4b3a54f9d6e699102cea4c3a2
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Sep 10 13:38:58 2018 -0700

    ensure 'nonce' template variable exists for static middleware errors

commit b44100550c08671cd10abb141b05117c74518060
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Sep 10 13:38:37 2018 -0700

    style

commit cf4ae92994a2b68d4e9de9e540a9e035ee40af89
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Sep 10 13:38:22 2018 -0700

    Ignore 'Range Not Satisfiable' errors

commit af5de0ed3ec13c49cc395928c1c49ed8019962e9
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Sep 10 13:27:49 2018 -0700

    Move initialization to top of init()

commit d624689bc9ec040d818ae615db21aed1696496d9
Author: greenkeeper[bot] <greenkeeper[bot]@users.noreply.github.com>
Date:   Fri Sep 7 00:26:23 2018 +0000

    chore(package): update babelify to version 10.0.0

commit b6cd24f535eaefcbe472063ad5da8418055d77a2
Merge: c0735a0 80bdeb2
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Aug 30 13:35:26 2018 -0700

    Merge pull request #36 from feross/greenkeeper/babel-eslint-9.0.0
    
    Update babel-eslint to the latest version 🚀

commit c0735a0fddc97ff9af7a2b7b860e44b1237e92ae
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Aug 30 12:30:50 2018 -0700

    tweak tweets

commit b4896595debe43acf98b492cb5f0e683a4787262
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Aug 30 01:59:48 2018 -0700

    Add SSL stapling

commit a6c36b9fb69cea643a864c54e8f52f33f8a18a25
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 29 13:30:19 2018 -0700

    standard *

commit 75a33c0f1c90d1d082243e12f65553d900cc03ab
Merge: ea6ff6b 2dff069
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 29 13:28:24 2018 -0700

    Merge pull request #39 from feross/greenkeeper/standard-12.0.0
    
    Update standard to the latest version 🚀

commit 2dff06982eddf0898ea17cec805fcda33deed9bd
Author: greenkeeper[bot] <greenkeeper[bot]@users.noreply.github.com>
Date:   Wed Aug 29 09:43:29 2018 +0000

    chore(package): update standard to version 12.0.0

commit 80bdeb2ada60636f7e1ec07cad2d6e9209b041fc
Author: greenkeeper[bot] <greenkeeper[bot]@users.noreply.github.com>
Date:   Tue Aug 28 02:17:56 2018 +0000

    chore(package): update babel-eslint to version 9.0.0

commit ea6ff6b44da351f4fa9208f293a3097ad5d2dcab
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Aug 23 19:03:32 2018 -0700

    MidiPage: Add related MIDIs

commit f5e293b18c94158e2abb495780b575f5ea8c8dc3
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Aug 23 19:03:13 2018 -0700

    hide images on search page

commit 1b16b9437c26f339e346facad4829c20c73a5608
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Aug 23 19:03:04 2018 -0700

    always includes images in API responses

commit 42aa435af99b511cfab69f37e3f52c1821fdc628
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Aug 23 19:02:47 2018 -0700

    Midi: add showImage prop

commit d6c7da167b1ee9877c6304de25ffe2a7efffb022
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Aug 23 18:21:04 2018 -0700

    Include related results in get API

commit 5cad0eafa7b9186fd75bd4e5a6e78dc8e005b4f2
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Aug 23 18:20:33 2018 -0700

    Increment view count asynchronously

commit f22c457594628c9396424c784830d6fd0cf962ec
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Aug 23 18:18:59 2018 -0700

    omit generated fields when necessary columns are not selected

commit a562d0767de750de3350f031631589d24f71b916
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Aug 23 17:51:06 2018 -0700

    Add related API

commit 22843a62c2757fd7e810b1d54cffde8a5eb17522
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Aug 23 17:23:03 2018 -0700

    api/midi.mjs: use named exports

commit 30acca56a8d263f7359073c49752889c363597b2
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Aug 23 17:04:24 2018 -0700

    error: better fit on mobile

commit 06a08cf5c6cfd1315faf29565e13dd7c3165b07b
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 22 22:35:42 2018 -0700

    Feature-Policy: Exclude image policies in production

commit 95f87dffd4e2d15dfb20e860bd9e0f989bce7ce8
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 22 22:31:22 2018 -0700

    Feature-Policy: add more image policies

commit 0f666e4b6bea83b7f0a3d59366ba74b622169bbf
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 22 22:31:06 2018 -0700

    Serve "low" quality webp images to mobile

commit c22c85247b0e703b6e4379ee135357cb1ad25240
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 22 21:11:21 2018 -0700

    Explicitly specify width/height for faster render
    
    Caught by unsized-media Feature-Policy

commit d59ea5de4a21b194f6af93d19407a1f9c5cae3fe
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 22 21:06:17 2018 -0700

    delete stray logs

commit 36c7e0bd46125fd736232ebea798ae4f51812628
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 22 20:59:13 2018 -0700

    include updatedAt in API responses

commit f67f463f858949f23ee333addc40c291edfc1ea7
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 22 20:30:57 2018 -0700

    Save 100KB, using WebP for homepage hero image

commit a59db4d1cb644e19e25d31187eff2e08798bf709
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 22 20:24:38 2018 -0700

    Exclude unneeded fields from API responses

commit 4f233b4dfba612f3811d27c4a0a2c2c4ddd7160e
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 22 19:46:34 2018 -0700

    Skip first load() when page is server rendered
    
    - To prevent pages waiting for this.loaded, even though data is available, showing a flash of white. Data is already in the store!
    
    - To prevent API request for data from immediately being sent
    
    - To prevent double view incrementing

commit 91faa549ca6066f667d1be099a58695b9127ebce
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 22 19:32:45 2018 -0700

    style

commit c80e30e65f9470d69a1e4d544a2b20fcdbe2c8e0
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 22 19:12:48 2018 -0700

    remove .cache from gitignore

commit d1fe2d39f9a99a307a86d38bdfd265510613b00f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 22 18:44:54 2018 -0700

    remove stray logs

commit bd3fbcf62c4b7df6e176efdfbdd9567453efe40a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 22 18:36:22 2018 -0700

    Pagination links should remove uncanonical URLs

commit 372fafc551661b7a44be2de6fba73f9166fbc905
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 22 18:29:23 2018 -0700

    Add cuter error page

commit 134066d57e61a2d914786e21104e27c24059699d
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 22 17:57:19 2018 -0700

    Replace imagemin globbing with less magic

commit 053b86d19166f799b2a485b52bc80cf53aa2a187
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 22 17:13:38 2018 -0700

    fix file handle leak

commit 5580ec828b6ef3514a0bdfbb58ca822ce57db076
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 22 16:55:40 2018 -0700

    style

commit 9ff54f4cee448a435970cab079e14f41fa37c44c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 22 16:50:37 2018 -0700

    logo height tweak

commit e23afb6c6230bf450417c5c2f8e4ee8aa8878411
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 22 16:46:42 2018 -0700

    random: Make Random tip only change once per minute

commit 61cdf8d8d611c9e274ef4eefebb22f905380b57b
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 22 16:42:53 2018 -0700

    make Random component

commit 0f6233033bee1c0a033625c7b4282e12a4dc5d10
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 22 14:10:02 2018 -0700

    Image: Never render an <img> without a src attribute

commit 81af5dec915d18c2d26867e50fff57c1e857eb17
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 22 14:09:40 2018 -0700

    header: only show header animation when app.pending > 0

commit 548f67577ee9b62f11f700f4c0e51f9db0e9482c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 22 14:09:13 2018 -0700

    style

commit de0e661d59b6f0605156dba4f0d8abd1720cf1c7
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 22 13:32:42 2018 -0700

    increase nonce/hash length

commit 45a4de8c41e0ef7af785068e5b94734860f8ad9c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Aug 16 11:29:33 2018 -0700

    Use real error objects with express only
    
    Fix "Error: [object Object]" showing up in rollbar

commit 3aaa0e297839eaf76789cbcfbbde2d3859dafbef
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 15 22:10:47 2018 -0700

    add player debug logs, don't leak listener

commit 53e4f3c4e00bbcaf72a3d807a0d7618fc6a19c9b
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 15 21:50:23 2018 -0700

    Fix twitter link in footer

commit 5fbab747b3b8bedf3304059a8e7d698574183585
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 15 21:50:16 2018 -0700

    link: warn if href and onClick are missing

commit e0ffd839f058e8c0323519b3b11bc77c7b67bc9c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 15 21:32:38 2018 -0700

    Fix #30, Play button change to stop after song end

commit a1afdf17851a05aacd5a44e4d6015e8b0e31d784
Merge: 8d28d9c 7ce3f3f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 15 21:20:51 2018 -0700

    Merge pull request #30 from flxwu/bugfix/update-on-track-end
    
    Update store on track end - turn stop button back to play button when player ends

commit 8d28d9cd763dcb9ad156eb78120dac961b34a968
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 15 17:59:24 2018 -0700

    massive cleanup of SSR approach

commit ca01746070c46d93c2622333c4c537bc016349bc
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 15 17:58:19 2018 -0700

    do not change store.location during render
    
    yikes!

commit f1dad3a6756b10450efc7f85243b96cc4204a309
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 15 17:57:51 2018 -0700

    default err.code to null if not available

commit 8f682b72395f5052e2cc5de7d61989af5c300529
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 15 17:57:34 2018 -0700

    rollbar: ignore 404 errors

commit a9a4daf758d9ecb177e2c24c8a53dbe242f7abd1
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 15 17:57:20 2018 -0700

    Log server errors

commit 7b12c9257bbe2ab906e04394ef8f6fa1cf284aef
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 15 17:57:10 2018 -0700

    style

commit 7897f2cbf84fa39e9eb81270d2b2e7881dead7f5
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 15 17:57:05 2018 -0700

    immediately log HTTP request in development

commit f17c13bb010d5ff619f0499a92a43ffa14834c21
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 15 17:54:07 2018 -0700

    show errors one per line

commit 5461ef88444a80612e8b17663d55b3375901d02d
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 15 17:53:48 2018 -0700

    api: more detailed database errors

commit 7ce3f3f8ddea6923a90a08e4c4428f3228e74bd7
Author: Felix Wu <mail@flxwu.com>
Date:   Wed Aug 15 10:57:02 2018 +0200

    ignore undefined dispatch

commit f7936adbf531c8c2667ca2daad6371df85d0dad4
Author: Felix Wu <mail@flxwu.com>
Date:   Wed Aug 15 10:48:51 2018 +0200

    CRC

commit d68877c045cea03aef16c4d88ded01c22c288081
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Aug 14 23:21:08 2018 -0700

    tweak midi list spacing

commit a5190b9c021ccc9c9ba4ef5fefc45d582e3ca070
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Aug 14 22:44:21 2018 -0700

    Fix midi component showing too little text on smalls screens

commit 34c0418a4e35f08bc0a1477db49318a2dfe7a7d2
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Aug 14 22:36:49 2018 -0700

    delete unused favicon images

commit f0a09bd351019aef3e25906423f7a0377587916d
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Aug 14 22:36:43 2018 -0700

    shrink midi padding on small screens

commit 472c99197b32d61ddc4952627753b6e3cccb9b58
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Aug 14 22:36:30 2018 -0700

    consistent horiz padding on all screen sizes

commit 561de69f61facd978b1744515030f52b9c69d889
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Aug 14 22:36:08 2018 -0700

    hide logo text on small screens

commit 63631fd5ee28c76c3a33f12b6f93ef53b2ad59b3
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Aug 14 22:21:53 2018 -0700

    don't shrink logo

commit 4f5146a4f29036f8994606f7907c917511aec339
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Aug 14 22:18:08 2018 -0700

    apply safe-padding more consistently

commit 33a282efa4ed0f0a6483be6a061c2c638b885681
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Aug 14 21:15:39 2018 -0700

    link: make links bold

commit aae5c9c570266dab1d86572d50ab68bc3b0039b6
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Aug 14 21:15:33 2018 -0700

    Add random tips to footer

commit 47ac76839bc01f9fc1b9ad3e834e074c3acaeea9
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Aug 14 20:57:09 2018 -0700

    midi page styles

commit 41bf2043967ba83b6be9e64104487e12590c89d0
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Aug 14 20:53:26 2018 -0700

    improve header style -- use flexbox

commit 7babfa889af3e797024cc62867718e01c0b51e3d
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Aug 14 20:53:12 2018 -0700

    style

commit 736743214def481f1668076458fa5f7ce2d0cf8c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Aug 14 20:48:38 2018 -0700

    style

commit b30277684ba38a6d1acca4aa6befc35f5f004221
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Aug 14 20:29:13 2018 -0700

    Make margins/padding on main more consistent

commit be7a65629832aa0033dbb99c8da492d6085f27e1
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Aug 14 18:26:41 2018 -0700

    style

commit 320142f13de7a6de37c543e575557f6d7b457b9a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Aug 14 18:18:54 2018 -0700

    Hide footer while page is loading

commit 202ce05bdcf74e42dfe6ed009a46f16227c44978
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Aug 14 18:12:28 2018 -0700

    Fix site spacing

commit e462106d94d2fab7d732b62204b8a0116bebd6fa
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Aug 14 17:19:01 2018 -0700

    Fix “Random MIDI” button not showing on mobile

commit cfc3eaaad4f2b9b8b0657fce4f855329852d317e
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Aug 14 16:08:38 2018 -0700

    use a cache folder in /tmp, since that's guaranteed to be writable

commit c6bb2e84f769877f8135e519101998066caa52ba
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Aug 14 15:53:49 2018 -0700

    make npm install more verbose

commit 5a1ed6628d3ccfb24b5a1965af5c409a1fef5690
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Aug 14 15:42:54 2018 -0700

    Use automatic server-side WebP conversion on absolutely specified images

commit 08cdc20d08cab1c0c5ae69bf49fec45df95d2978
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Aug 14 15:12:20 2018 -0700

    optimize static load order

commit 0aafcd8b2de9204ab6438f1d653cdc6af5138461
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Aug 14 15:12:12 2018 -0700

    if path does not exist, abort before checking cache or running imagemin

commit 5786ede2563261c01b740d97c16cddb1832a6109
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Aug 14 14:54:18 2018 -0700

    Image: attempt to serve webp version, when possible

commit be2ba4df30e15f7fc491f272a13ad146dbc76f64
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Aug 14 14:53:40 2018 -0700

    serve /webp/icons

commit 5709491a2a6358d9cfb0384b9d1652d70722319d
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Aug 14 14:53:32 2018 -0700

    serve-webp: request must end in .webp extname

commit 52785c698f7cb5c2441da4e35e589f4e8466a97a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Aug 14 14:49:39 2018 -0700

    gitignore .cache folder

commit 9056ad9927ed21e626cb8d06ffd4c69344277065
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Aug 14 13:34:50 2018 -0700

    style

commit 4c3694bc55b815428fec2e78f10b36e57d3ebf5e
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Aug 14 12:57:59 2018 -0700

    add runtime WebP conversion

commit c8339194581303a3b181c7171a0e7c6c0c7d9919
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Aug 14 11:07:32 2018 -0700

    Move share-twitter.mjs to server/

commit be01fdff585d5b20c55b6a0568f72c5c5a5428f0
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Aug 13 22:31:20 2018 -0700

    Icon: vertical-align: bottom by default

commit 4d7c990902a2b86bab8d87b7d1b4607ea9237ddc
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Aug 13 22:31:07 2018 -0700

    Icon: black is default color

commit 342290202c10f975cc21c1fca7ba83804b8373f2
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Aug 13 22:26:29 2018 -0700

    Icon: Use PNG images or CSS mask with SVG and background-color instead of WebFont
    
    Use PNG images or CSS mask with SVG and background-color instead of WebFont
    
    When the color is white or black, we can just include a white or black PNG image.
    
    Otherwise, we include use div with a background-color and an SVG mask. This approach is less compatible (doesn't work in EdgeHTML 17), so it's not preferred.

commit 9e1b5eaaaee9c15b80425620a244fb8b931c982f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Aug 13 22:18:23 2018 -0700

    Image: allow alt to be set to null for decorative images

commit d011c680fdcbccd7806a06ea3636249e8a573c09
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Aug 13 22:18:08 2018 -0700

    Image: hide default missing image (looks bad)

commit 15a7352cc4c271af5958d3277cc10708085a8662
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Aug 13 19:14:08 2018 -0700

    Fixes for iPhone X notch

commit 84515c19edd7faa6e884c5f0f8ff7c955eeef333
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Aug 13 18:45:16 2018 -0700

    Image: add 300px rootMargin

commit ad118befa7f0a63fa217d514c8f2ab5debc31ad3
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Aug 13 18:34:19 2018 -0700

    Image: Add `lazyload` feature

commit d48c2448051d7df2854edd143e621d97252d955f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Aug 13 18:29:18 2018 -0700

    midi: Use Image instead of div with background image

commit 5b604df3532b877cddb289f10da1f47cbf513479
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Aug 13 18:28:58 2018 -0700

    Consistent error message text

commit be0141fbc31968f45a8b8cbfc5344a2e0bc2745f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Aug 13 18:28:38 2018 -0700

    css: add hide-no-js utility

commit 46ea21f1620eadf9f2444a0b4a78614552ecdeae
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Aug 13 13:45:26 2018 -0700

    css perf: Add will-change to header

commit c63812ab48e38c44ed2fb5fa3f164ee6b6b9500d
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Aug 13 13:44:51 2018 -0700

    remove geolocation feature-policy

commit 370265eadf426418900dc6c9a04b3896b60a0819
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Aug 13 13:12:01 2018 -0700

    bump puppeteer

commit e0739ce340d2e888dfb12ae549fd35b4cbaf0e28
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Aug 13 13:11:54 2018 -0700

    bump preact

commit 4fa50f942a6584d160bf53bd99597a78a12c38fe
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Aug 13 13:11:48 2018 -0700

    bump express-mysql-session

commit 715105eadda5850e2338843c50199da5393fe0f3
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Aug 13 13:11:42 2018 -0700

    bump dayjs

commit a1a5fb53809bd1fc814f47e5a1c3d38c903ff467
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Aug 13 13:11:37 2018 -0700

    bump babel deps

commit 749fa9d4fa9d3262643ddb34447835836fd6bbca
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Aug 13 13:01:51 2018 -0700

    skip standard tests until standard 13 is released

commit 6ca99593df9ba9126effe2b16d4f39901d846495
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Aug 13 12:38:46 2018 -0700

    Fix dev server crash: Use external stylesheet in dev
    
    So that in development server does not crash when bundle.css is being built for the first time, or is still building when server starts

commit 9e89720b4174bf273ff8bd46397e4ef32e32dc57
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Aug 13 12:37:53 2018 -0700

    ejs: Remove debug code generation (runtime perf)

commit 1e96d035d376afaf6920d581b186ad5e980ea5dd
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Aug 13 12:37:34 2018 -0700

    ejs: Remove excess whitespace (save 300b)

commit 37d9d47ac1a7f52955fb4e48470db6515139df9c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Aug 13 12:00:30 2018 -0700

    Ignore errors in component load
    
    Errors are already handled by dispatch()

commit 57fe667570b4734acde356536d7632a9ec8cce0e
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Aug 13 11:42:52 2018 -0700

    style

commit 30898bcc475d46bb3b24a6131affc701d41fe3c4
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Aug 13 11:42:40 2018 -0700

    Add @babel/plugin-proposal-optional-catch-binding

commit 3f3fcaaaf2059c069a03ddc13b944c61e085e097
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Aug 12 23:29:09 2018 -0700

    Perf: Move app template variables out of middleware

commit a071f6de4d871966cd75fa433eaa7901c385002a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Aug 12 23:21:02 2018 -0700

    Perf: Inline CSS

commit abd5f27e96a4e98b6d80e781309de6bde3c48cc2
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Aug 12 23:04:07 2018 -0700

    cookie expiration 5 years

commit 44d9fb92afeee4b197672afa7253585200b1f37d
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Aug 12 23:03:59 2018 -0700

    cache 365 days

commit 59ccde98bb34b0578b26e130c2c0d5545862de16
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Aug 12 23:02:14 2018 -0700

    accessibility: improve color contrast  Feross Aboukhadijeh committed

commit 211aa8abc1b481a9d800b94a45773e8167414f91
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Aug 12 22:57:37 2018 -0700

    cache 90 days

commit c80741e8d17117433f1d409612c19b67fc456ea0
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Aug 12 22:49:52 2018 -0700

    accessibility: improve color contrast

commit 7121e6acb86260cab2a9d6c0923ea593f1239599
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Aug 12 22:48:08 2018 -0700

    cache 30 days

commit ecf1538cfe8a440696bd78153fec5e98eb0b627a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Aug 12 22:39:08 2018 -0700

    cache 14 days

commit a627188c942cd268852cff6e5a53cab6b279e1ac
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Aug 11 14:34:46 2018 -0700

    Fix errors when URLSearchParams is undefined

commit ece0c5ae9c4373911b91e44b5e2eedd379ef2771
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Aug 11 13:28:06 2018 -0700

    search: switch to natural language mode

commit 718e0538f63a4aabf585e5ed988c33a7691e2a01
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Aug 11 11:55:05 2018 -0700

    Revert "Expose correct route to rollbar"
    
    This reverts commit 19dd7378c8b1fe8c333d0598c21fe3fd0ab0c9d6.

commit 19dd7378c8b1fe8c333d0598c21fe3fd0ab0c9d6
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Aug 11 11:49:11 2018 -0700

    Expose correct route to rollbar

commit 4390c23862eca4eec87d1215429d7a80cf969f42
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Aug 10 15:59:58 2018 -0700

    cron -> schedule

commit d8af1c6c56537c849b7c3704dee8612a600736f3
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Aug 10 15:57:26 2018 -0700

    Revert "Log store state upon render"
    
    This reverts commit 4fcb313dea519f124172aa32c215423289ccc6f2.

commit 21debd4a12676126d2ac46e926b4dd0485b4e9ae
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Aug 10 15:56:37 2018 -0700

    opbeat -> rollbar
    
    Fixes #1

commit 6c3002f10caf64a16e15516584f59619f04e2a34
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Aug 10 15:17:41 2018 -0700

    secret: cleanup

commit 6f012957650b8b88faff3c4a9c637e3394056ac7
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Aug 10 15:03:58 2018 -0700

    readme cleanup

commit 13841ce85f35de1f86441f91153db511bfe4282c
Author: Felix Wu <mail@flxwu.com>
Date:   Sat Aug 11 00:00:27 2018 +0200

    fix style

commit 16338a58823dc974455d19f1b6cf0d7190c9cf1e
Author: Felix Wu <mail@flxwu.com>
Date:   Fri Aug 10 23:59:26 2018 +0200

    add a callback to play() to call when player ends

commit f63e1f0c72a5bc6ebaac5cb15393184e5ef4cf23
Author: Felix Wu <mail@flxwu.com>
Date:   Fri Aug 10 23:59:11 2018 +0200

    update store on player end and reset the play/pause icon

commit 54ec4a112007fc16db8180af0f812ee12194cfb7
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Aug 10 14:45:08 2018 -0700

    Fix theme color not showing

commit c7f1f1a2598cb501019ef59ad3d5dfff1957897d
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Aug 10 14:29:20 2018 -0700

    Follow up to PR #28

commit 5ebcaa417b645e355e6b797043071ce7673a23cc
Merge: 2ab1acc e7bc1b9
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Aug 10 14:26:41 2018 -0700

    Merge pull request #28 from colmose/only-increment-plays-on-play
    
    Increments plays when playing, not on pause

commit 2ab1accf29db408360f64ac1d6a1ddc27af19e16
Merge: e7ca5ce 2865b94
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Aug 10 14:24:44 2018 -0700

    Merge pull request #29 from flxwu/docs/basic-setup
    
    Add Setup Docs

commit e7ca5ce7f5ea2985a587c3df30bcaab6fd5c8bfa
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Aug 10 14:21:45 2018 -0700

    SEO: Fix duplicate meta description on home-page and search-page
    
    Happens on Page 2, 3, 4, etc.

commit 2865b940bbc43361a3c0d7e016f572a807ab7a6e
Author: Felix Wu <mail@flxwu.com>
Date:   Fri Aug 10 23:20:17 2018 +0200

    style fix

commit b4074ef6a6ddec459a8cf8273ebdc5cd86330f0d
Author: Felix Wu <mail@flxwu.com>
Date:   Fri Aug 10 23:18:56 2018 +0200

    add setup docs

commit e7bc1b9080720f78dc10c583f120ea444b2bdf58
Author: Colm O'Shea <colmose@gmail.com>
Date:   Fri Aug 10 22:18:28 2018 +0100

    Increments plays when playing, not on pause

commit 84fc0ae37d5c7f6789547fd82485805d5f71c4af
Author: Felix Wu <mail@flxwu.com>
Date:   Fri Aug 10 23:17:20 2018 +0200

    adapt for easier initial setup

commit 4fcb313dea519f124172aa32c215423289ccc6f2
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Aug 10 13:45:17 2018 -0700

    Log store state upon render

commit 85f74928559111546f82880f94990fa9fcce43e6
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Aug 9 01:51:14 2018 -0700

    cron: schedule at midnight

commit 7013400adc0df4def39f01ec7a5b3656835fffd8
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Aug 9 01:26:46 2018 -0700

    change to 1:35am

commit 6fa01e33f0ba11ad5da495898af807ba1a7394bd
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Aug 9 01:20:45 2018 -0700

    cron: 1:26am

commit 079fabbbe70e85af07be86596b52e9b3a249fb08
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Aug 9 01:19:55 2018 -0700

    secret: add buffer

commit af07da6ccdd56f99e3838da9db92b1c537319a09
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Aug 9 01:14:19 2018 -0700

    schedule tweets 1:19am

commit 2971cea43630801ba0cda737421f4ef0ebb9c5c5
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Aug 9 00:19:04 2018 -0700

    Auto-share tweet every day at 12:25am

commit fd11c5eac7e5705f727a79d6d6ed87cb1b310d78
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Aug 9 00:18:34 2018 -0700

    knex: add shared_twitter column

commit f55b1270febb78b7298440237357526e8e87eacc
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 8 23:44:01 2018 -0700

    mark secret import with secret in name

commit 4a2a45292538d10cbca83be4b5eb122ca7ca0090
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 8 17:39:24 2018 -0700

    typo

commit 621f9c6d3fa51bd055c146acd0c9230330f3881a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 8 17:39:21 2018 -0700

    add @BitMidi twitter to footer

commit f9922e8a5e2cc129ffae3544e9e84ff07358a5f8
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 8 17:26:55 2018 -0700

    about page

commit 3c38c1f7b61c60400839c2c9cf8b19fa10053ba7
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 8 15:24:22 2018 -0700

    Remove Affinity Design files from repo

commit c868f618f3209339197fc791420a1e3e14801dcc
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Aug 4 18:26:13 2018 -0700

    route-render: more succinct error handling

commit ac2ff68e78ce126c6dd5e2b4d9403f7857290eba
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Aug 4 18:25:34 2018 -0700

    use correct favicon package

commit 8977c1b97ed86b24a1faed7eba2c326de5dbab7a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Aug 4 17:51:06 2018 -0700

    app.mjs comments

commit 604f8dcf6159509a6df62c1f5de1791feb4c43f3
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Aug 4 17:50:56 2018 -0700

    Serve favicon using express-favicon

commit e7d7eb6f546f2b3c71ec834cbc0703a9371329ac
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Aug 4 17:34:02 2018 -0700

    Log HTTP requests

commit 962992d9c4081ddfee065d0a922767ed3e05db60
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Aug 4 17:33:52 2018 -0700

    Use unminified CSS in development

commit 5e11cd90332a96ff6bc39f09e14728884c403aa1
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Aug 4 14:36:56 2018 -0700

    config.keywords -> config.siteKeywords

commit 286a8bf2e101651993e07e0a645d2a51e8fb8626
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Aug 4 14:35:07 2018 -0700

    config.twitterUser -> config.siteTwitter

commit 561bfa232e4868ff261d7dc98af79dd541208c84
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Aug 4 14:34:34 2018 -0700

    config.description -> config.siteDesc

commit d2c4424697a261a57f08806eb9d0732d8ab061fb
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Aug 4 14:32:25 2018 -0700

    description

commit df368e848b27aca02212fcca50fa3b2bbf225479
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Aug 4 14:31:01 2018 -0700

    update OpenSearch description

commit 4e860e9886695bd3fe50163132f8f93f4078d09d
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Aug 4 14:30:51 2018 -0700

    config.title -> config.siteName

commit af57bf6b97c1422677be7336dd0df52f60757876
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Aug 4 14:26:01 2018 -0700

    EJS: use escaping for hashes

commit 8799c787d426a357c18c3fa19db52f6c855daf21
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jul 26 12:50:36 2018 -0700

    fix travis

commit efc65bdcb82784db7c1048d9609920a6d9a98057
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jul 26 11:58:37 2018 -0700

    Add og:type meta tag

commit b7df268d8c24c2b7baa93ab6686d92cbd3be328d
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jul 25 17:21:09 2018 -0700

    Fix OpenGraph hero image URL

commit eb7486834185bc5d511e0c7e7b32c04e2a9897bc
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jul 25 17:09:07 2018 -0700

    minify CSS in production

commit 6fccea7daedb313e71c819439c8527fa87afa7a5
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jul 22 14:25:22 2018 -0700

    add share meta tags

commit 90a5c3f5c39d1d1eacf2d681f190a57f64a610c5
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jul 21 03:02:37 2018 -0700

    style

commit a14bf97e5bfe7c9fa96cd5b377977b7e96f7cbe3
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jul 21 02:56:10 2018 -0700

    shorten nonce

commit bffa41d5d9082e90c353afd5d03ceb977d27fb78
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jul 21 01:43:04 2018 -0700

    try making manifest background color #fff

commit 1615ef0f73cf101c160a1106fd6122c18264ee8d
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jul 21 01:35:55 2018 -0700

    Omit wordy description text

commit 400097a78319324b33bd546384dc403dd009648d
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jul 21 01:32:47 2018 -0700

    GA: log event when share is successful

commit 60672e167d1d1d75b7d6e5b083bdd9825ef5598d
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jul 21 01:25:52 2018 -0700

    add Share Button

commit a1127d5427a1d189127f33956d762cd65be45521
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jul 21 01:04:59 2018 -0700

    header: padding

commit ae78c41539efdd9e07b2382b83e4035eeb488b17
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jul 21 01:04:50 2018 -0700

    style

commit 629aeed86717b2d161d955711f93fc73dc84e604
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jul 21 00:30:48 2018 -0700

    header: add max width

commit c92e7fbc1f1e77a3d78a84b6ff85b658905d3849
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jul 21 00:28:22 2018 -0700

    New favicon

commit db22d68010e9c57c3034faa1e399ac487d02fbbd
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jul 21 00:06:33 2018 -0700

    New logo

commit 877497fa1f9dde14c50e6d1d3f97c59f59ce66f5
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jul 21 00:05:14 2018 -0700

    Escape style property values

commit 5c28230b3fc35d0aa8297f1b8bf034143b1cfba5
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 20 19:06:41 2018 -0700

    update logo

commit 468e8b8d38cafa4fdf375dd4ae5487d0b368d8af
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 20 19:06:36 2018 -0700

    update favicon

commit 301af34258aa0af2e03fc7f320c83006e18f375a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 20 18:36:54 2018 -0700

    lossy ImageOptim

commit 00bd234d4a6216227d6e0038c4017cc9bcd8b0c8
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 20 18:04:05 2018 -0700

    Add `sitemap` option to routes.mjs

commit ca9b31f6c6fa043deda12e617a2a2dd9b0bdd357
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 20 17:27:02 2018 -0700

    router-app -> router-render

commit 3733d7071a3fba3e2be5db3ad8a5b0857561d57c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 20 17:25:13 2018 -0700

    Use 307 redirect for /random

commit b7667bd5b4d2b0675754ced03a4e2c6bcee2a6bc
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 20 17:03:11 2018 -0700

    httpOrigin -> origin

commit 7d39a5c0f594c10c511603b5f88712e6a8ff5ecc
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 20 17:02:12 2018 -0700

    style

commit 024c2dbb16e7790990f9e680f00b9df483104355
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 20 16:55:37 2018 -0700

    style

commit 95b43e4d729e986811bc74e9c514c54d8d6cd7db
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 20 16:55:19 2018 -0700

    use named imports

commit 4e27b016b63e938e108e53923df8eed2cb234310
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 20 16:31:11 2018 -0700

    ESM: secret/index.js -> secret/index.mjs

commit f4c4e77ee4c3dfb98fc1638079ae94089cd6d515
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 20 16:23:57 2018 -0700

    style

commit 9c7a8890aa3668988a7f60da903fb1f7318a8f2e
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 20 16:22:41 2018 -0700

    app: use named imports on 'path'

commit 74c86ddba781f82e2cac4a92689b8fa1656b8261
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 20 16:22:30 2018 -0700

    ESM: config.js -> config.mjs

commit 91dff94cd68bcef16d7e66d32f2a049deb0b9c11
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 20 16:20:19 2018 -0700

    animate delay -> 0.25s

commit 52d57f60f964c1ff7ee9dcc965d32c05d0dd402e
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 20 15:58:21 2018 -0700

    style

commit 74f05ac9f67651b2e13a0f24d226d63a31f9ac04
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 20 14:34:08 2018 -0700

    Remove secret.js dependency on config

commit 3d65ba451936cc7c5eb79d488f9d95c8a04bb57b
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 20 14:33:39 2018 -0700

    shrink bundle; import common-tags/lib/oneLine

commit 46b4046539e395dceb058483ac1e4a3f7fc26283
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 20 14:33:24 2018 -0700

    move config.js to src/config.js

commit a05938970d5e0591244728edf2da14fce7243854
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 20 14:08:09 2018 -0700

    Remove canonicalUrl view paramenter, just pull it off store

commit 41889d1002930786e7abda75c5eec59603066731
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 20 14:02:21 2018 -0700

    PageComponent -> Page

commit b59512377da97a466c5ded8b30e6f0bf12db0af4
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 20 13:59:50 2018 -0700

    header spacing

commit 06a2eea06ef39cddca3ee397ee0f29be5fb7ae87
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 20 13:53:30 2018 -0700

    Header should not be fixed

commit 49fa1aa7686e8ba9ac64b4cd3bb19bd843c201fd
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 20 13:51:51 2018 -0700

    add About Page stub

commit 060369dc636e28c6f894538b3abaae5abb8f0047
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 20 13:50:00 2018 -0700

    Refactor pages to use this.loaded

commit f03d802d83c184b4f23ea2871681994e369d2507
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 20 13:49:35 2018 -0700

    loader, default loading label

commit 6c11fb3e2f2f03e32280b22d3734d3e29de8afb7
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 20 13:49:27 2018 -0700

    simplify RelativeTime, use datetime prop to match native <time>

commit 1c1a717e2354c02e24af4ef487a5577d4021fc67
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 20 13:48:54 2018 -0700

    Add this.loaded helper to page components

commit e190a60912c37777ba03803d0c4a2dc88d081564
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 20 13:47:19 2018 -0700

    Simplify loader component

commit 120248f9974be7500895de50255ff39017ab7d51
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 20 12:57:35 2018 -0700

    add pulsate back to logo, but no bounce

commit c1b9360f4603c1e6a2d42ea82ac3804fa784267c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 20 12:52:25 2018 -0700

    don't pulsate the logo

commit b1ca05b67e28157e4703e73c31572aed184cea17
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 20 12:51:41 2018 -0700

    tweak animate-bg-rainbow style

commit 2214b6851b8d5e6fb863cd545d5160968bfd2367
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 20 11:58:23 2018 -0700

    Remove unused APP_RESIZE event

commit d3cbf9eeecb8fa5c205c8fefb34ac937f44adb4f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 20 11:50:08 2018 -0700

    heading: add level prop

commit a383f44a1fe15f8ff890800a2f5d9edd550f0495
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 20 11:47:52 2018 -0700

    style

commit 850e5be2542cf5a5e3c73b1e09f90f35cf98def8
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jul 19 21:59:36 2018 -0700

    Fix footer about link

commit fee419e3cf145989ded0e23d9797b7d40179fa36
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jul 19 17:09:21 2018 -0700

    description

commit 136faf7bd57f1b623970516c7fa987d29853f5d7
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jul 19 16:38:32 2018 -0700

    Fix loader

commit c9fb8aa2ceb70fdcc7560c83d3723bb131f8df66
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jul 19 16:37:53 2018 -0700

    If server-side route changes location, do redirect

commit dd484e35a7786d5566eeaa90e8b738720584c077
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jul 19 16:37:13 2018 -0700

    Shorter animation delay

commit 1143d2238bb561bd7aee1539708090d87317bac5
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jul 19 16:37:07 2018 -0700

    Add random page

commit f631e38fe6003872a8b7df031af1bc7fa4c2116a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jul 19 16:35:57 2018 -0700

    fix footer random link

commit 9b73026c97e17a1dad7a0fdce98b5929b3979e66
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jul 19 16:35:47 2018 -0700

    store: fix pending update render

commit c5ab1e05d24f090e24b3aa58c350ef7af7a4ac3d
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jul 19 16:23:51 2018 -0700

    midi random action: use replace, not push

commit caf5d18ba7184b4eaf7d398547de768c4fbbd7a1
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jul 19 16:20:46 2018 -0700

    Refactor header; random button links to /random

commit ba877c276d120674cc38868d4ac6da6bef2648d3
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jul 19 15:59:41 2018 -0700

    simplify router

commit 2eb0774d8ceb01cb8e8f6759c04d98d42991460d
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jul 19 15:59:35 2018 -0700

    fix bug in router when ssr=0 and no route.query is defined

commit d322caacc04bb932604480068e2836b1d3d84b8d
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jul 19 15:59:00 2018 -0700

    expose debugging functions earlier

commit e7a9a6daa2f30da5c4966e94a97ab70764ae8bdf
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jul 19 15:05:34 2018 -0700

    style

commit bbb8f66f790ba98755d75dfb853fda6e74a9bc33
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jul 19 15:05:29 2018 -0700

    SEO: Improve MIDI page meta description

commit 3ed94751fb2f3697ba3ea29595d7cca0c37b0383
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jul 19 14:55:52 2018 -0700

    router: simplify query handling

commit 102c6dc92d6eddd3d2039da699615ab50761eee1
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jul 19 14:55:32 2018 -0700

    Don't redirect /500

commit 2bec3d17dea1cf4a6bf10216b025b1e17ca3ff60
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jul 19 14:45:31 2018 -0700

    update footer links

commit d7ad4c422ef95fdff80ded70715b4cfb443cab31
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jul 19 14:45:21 2018 -0700

    Add basic about page

commit 471acc2e4064b31ed2f90dbb0b996dcbb279c379
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jul 19 14:45:12 2018 -0700

    meta info

commit 9bde2baf73cffc4ed0b4ce3a15aff113ecce7ee8
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jul 19 14:20:29 2018 -0700

    horiz-list: tweaks

commit b7220059f1cc587c97c7a9893e37a03dd1abdae7
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jul 19 14:19:48 2018 -0700

    link to blog

commit 067fd72c4d972384d7c1f6925426bb611e2eb5df
Merge: 69a5410 eb615d6
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jul 19 10:58:27 2018 -0700

    Merge pull request #24 from feross/greenkeeper/ora-3.0.0
    
    Update ora to the latest version 🚀

commit eb615d651daa0db38008fc1bff9cf085a13b8210
Author: greenkeeper[bot] <greenkeeper[bot]@users.noreply.github.com>
Date:   Tue Jul 17 22:44:15 2018 +0000

    chore(package): update ora to version 3.0.0

commit 69a541009b38f2ecb711c101cb7de6e029c403b1
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jul 14 21:18:06 2018 -0700

    bigger pagination buttons

commit afee6e3820cbcc214c196cc890a7aeb85719e6d6
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jul 14 21:17:56 2018 -0700

    header button no pill

commit d7da79ea2b273d492227f670dc21297647b36420
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jul 14 21:17:50 2018 -0700

    fix button bug, tweaks

commit d1aac9267fb7a400c32933dd022920485fad6c0c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jul 14 21:17:38 2018 -0700

    remoe unused styles

commit 7cfe1d88a08eb54395fff9a47bfb9be52e88bd4b
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jul 14 21:17:27 2018 -0700

    change theme color to dark-blue

commit 6d0adc2f5f397d93e763adb305a2cb0fce4dcd8d
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jul 14 21:17:21 2018 -0700

    watch css better, reload on config.js changes

commit 7a901ebb44846e1b8b0ec2fb0955dc42f2a64a60
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jul 14 20:47:55 2018 -0700

    Show relative time on MIDI Page, plus small redesign

commit b825eaedbcb5c51a5fbbfc61d91472f61839d2b9
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jul 14 20:47:39 2018 -0700

    Decompose HorizListItem and HorizListDivider out

commit be0c2b2362707b448e921e6dc3a3449aa57b4d83
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jul 14 20:47:22 2018 -0700

    Add RelativeTime component

commit b99b276be3df4c6ea7544a032bceea142f0d92e2
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jul 14 20:10:27 2018 -0700

    style

commit 4ef987d61302edf726dd30c14f8b00e30374b4c8
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jul 14 19:29:46 2018 -0700

    Use express-sitemap-xml

commit bbb04996edff06c64127ffed79f347439110ed9d
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jul 14 17:57:20 2018 -0700

    Add sitemap.xml

commit e835219a112ecee5b0a20c630655775e398ecadd
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jul 14 17:54:57 2018 -0700

    api.midi: don't crash on missing result.name

commit 9155fbd3ee6d321fcbd3b5995367280956eb3d95
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jul 14 17:54:47 2018 -0700

    allow selecting specific fields

commit 37c9ed8fe1645bce857f4759d7368f9c288c6145
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jul 14 17:05:41 2018 -0700

    server: always print error stack trace

commit c41bfaa55d1b9618bf55758963bb454d47588b9d
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jul 14 16:49:55 2018 -0700

    Suppress knex warning ("A valid integer must be provided to limit")

commit 6f6358f2e962df7de8899f9ecb9e7b05bc79861c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jul 14 16:49:42 2018 -0700

    style

commit 32facc3d323ec02839f991c3278c1e7e7371226f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jul 14 15:09:41 2018 -0700

    remove unused variables

commit 8a7d7d5b6d90070f1e7ea35847d3e0d7ded6418d
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jul 14 15:09:27 2018 -0700

    Ensure the URL polyfill is defined in advance

commit a5d11dcb8a985a9bb2d4504e93cb76f06d09629f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jul 14 15:09:09 2018 -0700

    pageTotal should take into account pageSize

commit 1a9d42e6a9fb8da70a46f3fd6acf7d9efab2a7df
Merge: 454b4d7 d5d1ba1
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jul 14 00:17:35 2018 -0700

    Merge pull request #23 from feross/greenkeeper/knex-0.15.1
    
    fix(package): update knex to version 0.15.1

commit d5d1ba15d27ee7633f18b45c8a50a7ea18a8e0d2
Merge: f343190 454b4d7
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jul 14 00:14:36 2018 -0700

    Merge branch 'master' into greenkeeper/knex-0.15.1

commit 454b4d76ec7e94fd0a5779f73f6ff49628b8892b
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 13 21:44:43 2018 -0700

    Improve feed content

commit e8b07c4528aeae8e1727025f436fed5ccbf1d838
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 13 21:38:54 2018 -0700

    Redirect from /1 to /009count-mid

commit 9b7920437795ddb1492bfa83197e87a50cdb5a43
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 13 21:38:51 2018 -0700

    Fix model timestamps

commit 7c33d6b5bc8193d99b5024325de62da882769fef
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 13 21:16:35 2018 -0700

    search api: don't include score in api response

commit fbbc8c4bb590c1ea0f7622ffa3becb08e267c8de
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 13 21:16:24 2018 -0700

    feed: Order by newest first

commit 71e02a8a47e8a225fca31a177a75ec42b64cfe97
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 13 20:58:35 2018 -0700

    feed: increase items to 100

commit de1b47bf8743e72f0531dfeebfa337662d3d229d
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 13 20:52:54 2018 -0700

    feed.xml: use absolute url (to pass validation)

commit e7c212085715d0ee2bbfa6eb377e2be8ab34f2e7
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 13 20:52:41 2018 -0700

    feed.xml: set correct mime type

commit 4331f0ddaa1249c5f8df3e6c85baa33d5385bef3
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 13 20:52:29 2018 -0700

    feed.json: use res.json()

commit b6bc3f7112e0b39ebd6a8916bdfd0d4f2d23e844
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 13 20:43:41 2018 -0700

    include MIDI image when possible

commit 1628284707cd4bedbd4a51e9a38d8620389c5c4c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 13 20:39:01 2018 -0700

    feed: include dates in feed entries

commit 3390c6b59bf00364363c78a85a6c44f3df6a3e6c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 13 20:38:46 2018 -0700

    don't select minimal (too annoying to update)

commit 952e1642d57677faf7d481f2ec360f8912c5e9b0
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 13 20:38:34 2018 -0700

    use snake_case in DB and camelCase in app

commit b239a6d2689079373156e981084d900aa93d45ad
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 13 20:38:15 2018 -0700

    midi: add created_at and updated_at columns

commit 0b4c71558a925f1f449be50f079754b832765faf
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 13 20:05:42 2018 -0700

    knex: Specify MySQL version
    
    This tells knex to use improved timestamp precision

commit e6d0f650a35b63b4e9d51f26d7b14eda8e0099c2
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 13 19:48:40 2018 -0700

    Use jsonfeed-to-atom instead of my custom approach

commit 642350e8c5bb805af730e22ecca8febdf6c414a0
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jul 13 19:12:11 2018 -0700

    app.ejs -> layout.ejs

commit f343190d16369adb9d01c8fa27d4575bab738d75
Author: greenkeeper[bot] <greenkeeper[bot]@users.noreply.github.com>
Date:   Fri Jul 13 03:20:43 2018 +0000

    fix(package): update knex to version 0.15.1
    
    Closes #19

commit 8537aacf1a8e7995843bcdf4fef05e48f13bce05
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jul 9 23:56:35 2018 -0700

    add jingle bells image

commit 3662a452ebfde46f636fca76451e1b62e0bf3cbc
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jul 9 23:41:44 2018 -0700

    add more images

commit 0e43985ed13754b3140e92f2cd86ff22d2862249
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jul 9 23:35:59 2018 -0700

    change theme mainColor to dark-gray

commit 8a9d6bf185f7696caa5b4ef447e546c53eb68dc1
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jul 9 23:31:22 2018 -0700

    remove stray console log

commit e10fa71d4c0f7850848f0aa29227132497721743
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jul 9 23:31:08 2018 -0700

    hero

commit 3d2b34c67579c29f39c4ffec4552b8d4c9e780a8
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jul 9 22:54:41 2018 -0700

    hack: hardcode images

commit 829ed015694d4d4f5d5db543701237cd9fb763d6
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jul 9 22:18:49 2018 -0700

    link changes

commit d358d42189c0d4ea54c68f9eada75e2cb17b57bf
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jul 9 22:18:43 2018 -0700

    add images to midi files

commit 7f1e52b94c11bf17beaeba161d0608c4af48aa49
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jul 9 22:18:21 2018 -0700

    add intro explainer text

commit 69c4538618de975fb5da42fb0dcd462fef640531
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jul 9 22:10:33 2018 -0700

    fix case sensitive requires

commit ae99a3bfbc193d5bbb2b7c5c74e9386339c6c3ff
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jul 9 21:09:44 2018 -0700

    add logo

commit 92ca76c01e3aaa7219b9d0b67ad62f6cf3e2e110
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jul 9 20:52:37 2018 -0700

    add pause/button, show playing state in button

commit a9662f1d56475183d3decf367cc6bd9c10172e13
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jul 9 20:38:58 2018 -0700

    play button improvements

commit 4e78a8e88624fd5074f84c325950aab2093b9e85
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jul 9 20:25:53 2018 -0700

    add Play button

commit a8a748e638698c3b25611b8518776d239b48aa63
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jul 9 20:22:21 2018 -0700

    use material icons

commit e7c45c8fc5aaf52909a9b09b0a6f17dc62cee98f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jul 9 20:22:12 2018 -0700

    rebuild css on view changes

commit b0a0022fd776d8fa45fb402a382ddf37e244a52f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jul 9 20:22:04 2018 -0700

    restart server on view changes

commit 38f028554bd1925674b45a4d0d3430ead99fbb21
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jul 9 19:55:53 2018 -0700

    Add Material Design Icons

commit b9806e9b685391607b49d20bd0bec0a1aa43f6ae
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jul 9 19:44:05 2018 -0700

    Pagination: Add total results count

commit ac52c22cca55affd90ec750f83a58dccfa2562c8
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jul 9 19:36:26 2018 -0700

    style

commit d48fdeb181bebc3edb34d4f3de4093dd0487f19b
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jul 9 19:33:37 2018 -0700

    add index to midi.plays column

commit 29a276150aca6b66ce8f22cd9203f6df80fdbef4
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jul 9 19:33:29 2018 -0700

    order homepage by plays

commit 761a8df4bcbe74701d2468ef79eed56b9ed88b84
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jul 9 19:33:23 2018 -0700

    remove unused var

commit c48716025c934e999d06a0bb21f3656604360105
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jul 9 19:33:15 2018 -0700

    API all, search: send total and pageTotal

commit 9984a42f5022cc4ef4dcd2aeefad63b31831081a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jul 9 19:25:21 2018 -0700

    fix ?ssr=0 crash in dev

commit 4220b5b4ecdcec79578351bc71a6fa2307637ecd
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jul 9 19:09:31 2018 -0700

    Show stats on midi page

commit c391496dc74f9e548802a4d5f73bf4a40a963990
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jul 9 19:09:25 2018 -0700

    Track plays

commit 5f0105510bb601d0d0b79e3f0a06aaf81c129324
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jul 9 19:09:02 2018 -0700

    Track views

commit 8e95d9b5078bc303c6cdd48856c765d960d67fa9
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jul 9 19:08:56 2018 -0700

    expose /play API

commit 237b7432444f017eb1d33290c66607582c4ede05
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jul 9 18:32:00 2018 -0700

    add views column

commit 85e39a1c53cd3aa1658fe7127033ea9d1f516552
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jul 9 18:19:41 2018 -0700

    Fix pagination numbering and width

commit 6b156e951d6dd1bd71b975bcf0379497b425d2c7
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jul 9 17:56:08 2018 -0700

    Fix truncation not working on iOS

commit ac38ca6e4a64b040e5b83e5dad3a83be435c7a44
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jul 9 17:44:56 2018 -0700

    Add Feature Policy header
    
    https://developers.google.com/web/updates/2018/06/feature-policy

commit 7087f251a60fec9d6c723a54e7d2bb34877c6997
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jul 9 17:42:30 2018 -0700

    Fix header loading animation not ending

commit 7a58c60536bd89453ae1a39851c7ba1e82af2fc9
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jul 9 17:30:39 2018 -0700

    css: remove unneeded search path

commit e6b42edd4282d2dca23778b0e1a4851daa0165df
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jun 28 20:22:06 2018 -0700

    Fix exception on 404 page

commit 8b311fda172fe94d26b8509720478f9a7b6df088
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jun 28 19:39:04 2018 -0700

    standard

commit 2bae38f7bd5f773fd90a0da5b858d2d60c96ec78
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jun 28 19:38:57 2018 -0700

    add store.location.canonicalUrl

commit d9deae0ad9f7b203a38964989d2e63b93b67c5ac
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jun 28 19:38:07 2018 -0700

    remove unused pathname from location

commit 53bc576262be2ae76f2d30f07228330ba5275520
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jun 28 19:07:44 2018 -0700

    add examples to readme

commit 0bc8aa8e489c068b41da38044ed3deab5f6458e5
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jun 28 19:06:39 2018 -0700

    implement more actions!

commit 3f4ce938f4e3beb67b78967b73b175c4fe82ebf9
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jun 28 18:14:37 2018 -0700

    SEO: Fix MIDI page title (introduce thunks like redux-thunk)

commit 34bd29a1851b5a97451348c451cd0a238190fae6
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jun 28 18:14:13 2018 -0700

    style

commit 1d76134b2d307cbe06310e7d7de7be5dda0bfb9c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jun 28 17:06:03 2018 -0700

    SEO homepage

commit f9cb4f5f8b64f24c55ffeb27a6afb2d1f751e389
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jun 28 16:31:26 2018 -0700

    Remove unused slug code

commit bd35131865a4e603c0f8281df13c93259d486524
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jun 28 16:31:22 2018 -0700

    Publish objection-slug to npm; use it

commit dec47e63c0fcb4bede370242e1003e2589b749a9
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jun 28 16:02:59 2018 -0700

    Use midi slug urls

commit 28c4de977556867f4a400702b6756a6b2bcc0a15
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jun 28 15:53:08 2018 -0700

    add slugs to MIDI model

commit 719d4a1fec8e2164ad4b3de2d4b306f5b7cdb47c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jun 28 15:45:57 2018 -0700

    drop db and merge migrations

commit a4e76ebf55d09c240140e5638e3d0f2b6b69f730
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jun 28 13:55:59 2018 -0700

    Fix CSP on localhost

commit 7dbaeca7d54ed9493c4fa8fa4aeee412bc2b768c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jun 28 13:49:05 2018 -0700

    CSP: connect-src https://www.google-analytics.com

commit a0e4b0ec22c0d768587233529cb3552f9fd1f081
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jun 28 13:48:46 2018 -0700

    CSP: Remove twitter.com images

commit f202ec9d865c99b97236d0188f300c770201e2d1
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jun 28 13:16:42 2018 -0700

    timidity@1

commit c2c49430ff4a69f914d71d2af53a539b2cc90cab
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jun 28 13:10:24 2018 -0700

    listen for all events

commit 0e4a484dba3876f01526a62726f3666d0360befa
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jun 28 12:01:06 2018 -0700

    only init player once, lazily

commit ac1758b6b743504930c68a17012476f9ae70eed9
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jun 28 11:59:58 2018 -0700

    Refresh page data on an interval so it's always fresh

commit 73298b47c57ff18357b7fb380d44228828ecf718
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jun 28 11:57:49 2018 -0700

    remove redundant and unused description in package.json

commit 182c958cd731f4696684c9ecfbb2573bd4125476
Merge: 42f9ebf 35e55dc
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jun 27 13:42:51 2018 -0700

    Merge pull request #17 from feross/greenkeeper/express-mysql-session-2.0.0
    
    Update express-mysql-session to the latest version 🚀

commit 35e55dc880a988ad5066cae8bbdc7e65a95b5ec1
Author: greenkeeper[bot] <greenkeeper[bot]@users.noreply.github.com>
Date:   Wed Jun 27 14:03:15 2018 +0000

    fix(package): update express-mysql-session to version 2.0.0

commit 42f9ebf58197ebd3fc5d628997e535b43c0834ed
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jun 21 12:43:57 2018 -0700

    use URLSearchParams instead of querystring

commit 747f21dd6cbf5771c4f6852a2288d844d1ad234b
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jun 21 12:35:57 2018 -0700

    use 'fromentries' instead of inline function

commit 1d2cb1e01d76fb700afa9ff5c934bea0d8474055
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jun 21 12:35:36 2018 -0700

    move URL polyfill to server/index.mjs

commit 1c20346191f42ec7546f781c4f664c7ef3ad51b7
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jun 21 11:45:22 2018 -0700

    style

commit ffb780c7c2af78d58531abaa6a192065cedbb976
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jun 21 11:45:18 2018 -0700

    Move hacky URL shim to one place

commit e819642ab77d70cef8b281fbe2bbd8c4a93be82a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jun 20 22:07:24 2018 -0700

    attempt to fix uglify-es bug

commit c4ea9ca72edb9b5618214b84ccffbb222ab10a11
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jun 20 21:13:47 2018 -0700

    Set correct mime type for .pat (Gravis Ultrasound) files

commit 7689755273ad759785fa7874ba4b0f621cd7c2c5
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jun 20 20:04:01 2018 -0700

    remove db/ reference

commit 0e4cfc4d863cb1b6cdbbd0ba1c26dfcbff3c6bd4
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jun 20 19:57:12 2018 -0700

    standard

commit 6b2b9a6c19cf966869b31646dd0156b41a3b1e88
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jun 20 19:55:13 2018 -0700

    mount timidity at /timidity

commit 90fc947e97627bc234088056dd43154beb660f4e
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jun 20 19:41:38 2018 -0700

    serve timidity and freepats static files

commit 88c6d791cbd2f078292b6eae5cdad7c7a70972de
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jun 20 19:41:29 2018 -0700

    add freepats and timidity deps

commit c87ad1110c0911987b32f38c896f48db7190aed5
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jun 20 18:16:57 2018 -0700

    cleanup deploy.sh script

commit 045edbe2da0fc9391b16c89e06612e9207cdf2dd
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jun 20 14:21:49 2018 -0700

    Serve timidity files

commit 8888a9e700c8f939d80262c2c6d6697b3975b016
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jun 20 14:21:12 2018 -0700

    fix path

commit 313af17b94395194ea09043cfe4a5e0f0bba00ea
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jun 20 14:21:01 2018 -0700

    Enable WASM to stream

commit 33b9d81a6622f105407ceaa92b4dada33409bbd9
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jun 20 14:20:31 2018 -0700

    Replace MIDIjs with Timidity

commit b60c1a5b0b54a4ed221148acb6901f1167555320
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jun 20 13:34:34 2018 -0700

    Play drag-and-dropped MIDI files

commit f2a94fc1f2ae9f200fa615a1bd52796cacce73b0
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jun 20 13:23:47 2018 -0700

    Assume service worker support exists

commit fdb6437a80d369ef0e3b9e95982a4ab31807c0a0
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jun 20 13:23:39 2018 -0700

    style

commit e318eac2efcba7ae9b7b91667b6a27cf8dafd7a2
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jun 20 13:04:51 2018 -0700

    undom@0.4

commit c39da42a1cacc0a352f2b6180477f97054983f13
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jun 20 13:04:31 2018 -0700

    npm update

commit 50e5f4882c18cf93171fb8441634013574cd5aba
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 12 19:05:08 2018 -0700

    add link to thanks page

commit 67a6421018122fc1b731437fa40bcc2b3c45f626
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 12 19:05:03 2018 -0700

    Remove submit links

commit 5ace66d2230e6c3388e95e8e9d021f248eb8975e
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 12 19:04:44 2018 -0700

    add scripts to upload the uploads/ dir

commit 8e9afbcc08abb8bc8ad959a669422ef6ae9ca56d
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 12 19:04:31 2018 -0700

    simplify rsync/ssh commands

commit 26112b4e397442e6f72f718dd9ea32d3d480022b
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 12 18:45:59 2018 -0700

    Show page numbers in title

commit 666e5a7c20a186627e102ebb72f444e48b474f01
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 12 18:17:19 2018 -0700

    style

commit f4a423a3e8feb1d280e7846782183c76949960c5
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 12 18:17:13 2018 -0700

    add Download MIDI button

commit b4a31c646c3e6daff9a62caee5825b8820c8102c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 12 18:16:56 2018 -0700

    add "random MIDI" button

commit ff77daff3a8a0e4980fe411eebb881bf15064c21
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 12 18:16:32 2018 -0700

    api: add random api

commit 9d1829c372d38c2eedb2b336c43cf086b75be0a6
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 12 15:49:22 2018 -0700

    Fix feed output to be valid

commit 38d4f4cc7a574c3c92d3c84ff683076766562984
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 12 15:49:06 2018 -0700

    midi page: Show alternate names

commit 30cea9d1755a45dc3e9a53d5dfe860e17ec6b2b9
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 12 15:41:14 2018 -0700

    midi.get returns all data

commit bc587257c496ab6385b30e926f68b010f73b51c2
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 12 15:40:56 2018 -0700

    fix config keywords

commit d75cd5bd8ab17611f809b5be9eb21eb3f2dd35d4
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 12 15:40:50 2018 -0700

    nodemon: ignore views

commit 0c4416297177aec43b89aafe6d76d4a780831ddd
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 12 15:40:31 2018 -0700

    midi model: add virtual `url` prop

commit cc9e52a0561d09c3acf134014d94b2517931dc3f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 12 15:10:10 2018 -0700

    fix query logging

commit 305a69a4b1fecd1d1eeb3d12351ee3f209c1f132
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 12 14:59:28 2018 -0700

    fix base-model imports

commit 86a8ed05debecdabd09b11578d2184f350f043aa
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 12 14:59:05 2018 -0700

    fix base-model imports

commit 4e64f0b74dfbf4af6dbd36c3e9942ccf35485fbf
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 12 14:58:31 2018 -0700

    import alternate names

commit 9fc1c61fd1eefd197940e910c700cde335796041
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 12 14:58:25 2018 -0700

    midi model: add alternate names

commit 83a33083bbfd6e3581077a87b6ac1edabf088243
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 12 14:58:07 2018 -0700

    midi model: hash is required

commit 9141001c30dd0b1ad0d93813bbc58834129a67c1
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 12 14:57:38 2018 -0700

    base-model: rename to model

commit 881f15f5e2d0f8d81a3a47c85b554252ea2da899
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 12 14:56:13 2018 -0700

    base-model: add raw SQL logging

commit 02581c81a8b2c0aa1f5d500768e1d0ad3b339783
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 12 11:55:54 2018 -0700

    Remove extraneous ?page=0 from first page

commit b7f271d2ef474a8e92389146ce6ccbabb7e8388c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 12 11:27:22 2018 -0700

    Add pagination to search page

commit 0f493a4819ae2704411143bf85cb12d310975683
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 12 09:55:21 2018 -0700

    style

commit b71db81e80426f466f0b458f112a520f7c01a64c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 12 09:51:07 2018 -0700

    midi-page: fix

commit 6cfbd96f735bf75de74454120fe2f0d932c56145
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jun 11 18:48:33 2018 -0700

    add pagination to homepage

commit 2add77bfb053039be6ce902324e77362ecc02c8e
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jun 11 18:15:49 2018 -0700

    simplify

commit 7267e98c0822ca71ee53efecd64666b5aac9742b
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jun 11 18:15:46 2018 -0700

    Don't include ? in URLs without a search param

commit efc49eace766a205507b07268e794332337f4f92
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jun 11 17:41:43 2018 -0700

    prep for pagination

commit 44d1b13ba04c0d0e34a782a1ff4814aae573dfaf
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jun 11 17:07:54 2018 -0700

    homepage: show page 0 of midis

commit 9ddc52c1cdd9e9af3a181e40dd59123be0988a74
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jun 11 17:06:55 2018 -0700

    support defaultQuery; drop 'querystring' dep (use URLSearchParams)

commit 855fef3075de4a7a86851336076dcf8767fc89a3
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jun 11 16:39:45 2018 -0700

    routes: switch to object format

commit aa0b5cdfe31195c3a70a03b54580b54fbb5849f6
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jun 11 16:04:17 2018 -0700

    api: Add pagination to search/all apis

commit af66dddbc3e0626e4b2a833d45fe875855b375a4
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jun 11 16:03:40 2018 -0700

    Add limit(1) to first() and getOne() queries

commit 1fdf2b1905f16be6c495fa8b68c0cb60598432d2
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jun 11 16:03:34 2018 -0700

    style

commit 6a8c47829416fb5052c5119c2fcb637c5415b03b
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jun 11 16:03:23 2018 -0700

    loader: better centering

commit f9479d8951dd7e82e78f076fbe354b794cfa0f0d
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jun 11 13:37:17 2018 -0700

    RUN_PENDING_DISPATCH -> PENDING_DISPATCH

commit 9a7d096545e0c5edd6fb9659a1b6f6cd37d9f11e
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jun 11 13:32:48 2018 -0700

    add SearchPage

commit 5176052858094de8b2943d1cd6d19fea899389aa
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jun 11 13:05:26 2018 -0700

    Add search API

commit abe530328d95b1d750cfbc422666f92592e85de9
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 10 18:22:36 2018 -0700

    Move app router to router-app.mjs

commit ca20f867e0910066d3114961d6101e86875bf558
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 10 17:48:34 2018 -0700

    Move sessions store from SQLite3 to MySQL

commit 45927f495ae94477b0b824d174f414e0981240aa
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 10 17:26:37 2018 -0700

    Remove deprecated document.write()

commit ee0b368391dc458abb0938b8dfcacd6f9b7cf319
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 10 17:21:41 2018 -0700

    Never cache service-worker.mjs
    
    See for information about the updateViaCache option https://developers.google.com/web/updates/2018/06/fresher-sw

commit a7928b2dbef5509dddecea7d8c4f1e22ba3b2c16
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 10 17:14:32 2018 -0700

    fix service-worker.mjs location

commit 6cdaaff695a4011cd76ca0e27a5d8e21c45daf25
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 10 17:13:35 2018 -0700

    sw.mjs -> service-worker.mjs

commit a2388834478bef7cf68e4cc0f470dc0571fb22dc
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 10 17:13:09 2018 -0700

    Rename sw.js to service-worker.js

commit 1fd38aeb905eec90b466f2732812cef28bfd7cf5
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 10 17:12:34 2018 -0700

    fetchCount -> pending

commit 64c4840be33b3dad021aed1dd14a764f4fc97b19
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 10 17:07:34 2018 -0700

    Decrement fetchCount on error

commit 65990bd53a003b900067425961eed5187d87df67
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 10 17:05:42 2018 -0700

    preact-dom-renderer: error if html() called before render()

commit bbc04bb7acc525265a6a561367b4594c43c3a1a2
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 10 17:05:15 2018 -0700

    style

commit 6e198215b8fed6593c2ff9661638b486cd722ce4
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 10 16:17:41 2018 -0700

    npm watch: also start tunnel

commit 96c1aa245d72c30ae5b3b6eda31fb50bde62bc8f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 10 16:10:20 2018 -0700

    ava config

commit 803f910aab0203547ca1c9b6ff4f1a449a5399e0
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jun 6 03:14:37 2018 -0700

    comment out dead code

commit 1cdec22237a05e2ddbefcb7a7f99a67c26ef9736
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jun 6 03:07:56 2018 -0700

    import: ensure required argument is passed

commit 84ab9af2b691eaafc5d0e16ae73a7428dd609067
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jun 6 03:07:46 2018 -0700

    import: ensure uploads directory exists

commit 08e3eb9bcecb196922a9df6bf80dd1892f160dc7
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jun 6 02:57:45 2018 -0700

    add missing simple-sha256 dep

commit 18e92c9739c541fdf4643a13e5dab77cd05ab57a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jun 6 02:57:39 2018 -0700

    import: fix file permissions on import

commit 5f3480b13d60a348abb8bbbf689f3c0ace128034
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jun 6 02:51:21 2018 -0700

    db: do not throw if DB is empty

commit a568d948c0d47025638e8284c724182b634fc4c6
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jun 6 02:49:06 2018 -0700

    add mysql dep

commit 4c0a9b784455d1b9adf0f3e21cbb0b9438e3ceed
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jun 6 02:49:03 2018 -0700

    add npm run db-tunnel command

commit 8abf6b97f94429adc4f442962d8c8193229c2002
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jun 6 02:48:57 2018 -0700

    style

commit 8535aa56d9796c14a21cee4f57a3c2d146eb3099
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jun 6 02:48:43 2018 -0700

    cleaner common-tags import

commit a3d220ff2279b7bb5eaa8d94cb0804ecb8e520d5
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jun 6 02:48:28 2018 -0700

    move db info to secret/

commit 7fd5f5ca859368d7c8f54629fe549118fd111e7b
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jun 6 02:47:00 2018 -0700

    remove db info from config

commit d4d6007529b0c97971bffa170ae78a9b89a28e57
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jun 6 02:46:47 2018 -0700

    gitignore

commit e1b7874c9a7d1eda126a7be9f73a612e1158b1e5
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jun 6 02:46:41 2018 -0700

    JS index-sample

commit 362407447a99918818c9d6f8580e86280e6856d7
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jun 6 02:21:32 2018 -0700

    gitignore

commit c18410e78a86e9b2b5ff1ca82a5c960272e75dc4
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jun 6 02:21:28 2018 -0700

    ESM secret/index-sample

commit fa28851d95bddde0a4875eccd5fdc3da25576758
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jun 6 00:57:05 2018 -0700

    ESM slug

commit 9fdba8ba637fbde6575d0d3107b806e59508af1e
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jun 6 00:56:56 2018 -0700

    ESM simple-fetch

commit fff74925b8a8c5ab4991ea36f85c52289c3b4c57
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jun 6 00:56:45 2018 -0700

    ESM router

commit d666eb0dd2e448d1ce14321dfbe1c620d12f5dd1
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jun 6 00:56:32 2018 -0700

    ESM preact-dom-renderer

commit 5d2cf1dbc0774778a3b9d55444fc54f9e311f2f2
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jun 6 00:56:20 2018 -0700

    ESM location

commit 48947cb822f501e0e878db4ac770d33df4b5c210
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jun 6 00:56:06 2018 -0700

    ESM: history

commit 31c53cc99e48f78cfb8011b633c5315df9e200e5
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Jun 6 00:48:57 2018 -0700

    ESM routes

commit a9390926ee8c2402af68f2ee40136070352cb2e1
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 5 19:42:25 2018 -0700

    ESM sw

commit a2efe62e916659bfc1c990fa82d02d843eee8bdf
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 5 19:41:57 2018 -0700

    ESM sw

commit 7e1e6b74da2da6426fa3833cdda730ecce1db17e
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 5 19:40:36 2018 -0700

    ESM search

commit eee693918493804da9f1a912f400b35a13856411
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 5 19:40:22 2018 -0700

    ESM search-page

commit 641dad7edcd1c8a55d3b30f056ac58201e85319f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 5 19:40:08 2018 -0700

    ESM page-component

commit 86e442fefb9ef0782c3f995b7c82f3ce93f4acb1
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 5 19:39:50 2018 -0700

    ESM midi

commit 9bdf7bd1341798977337b980b2a10dc4ca169a26
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 5 19:39:38 2018 -0700

    ESM midi-page

commit db7f0c8d7c4e2e14d008bda4556c798e5990b746
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 5 19:39:20 2018 -0700

    ESM loader

commit 4ae75269d13f7bf08fec341efe744952f5aa3a90
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 5 19:39:08 2018 -0700

    ESM link

commit fdab443c28eddfc28a69f10da35c719b9630f21f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 5 19:38:59 2018 -0700

    ESM icon

commit 485534fbd176322fb5fcf77868020fd535a6f5e6
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 5 19:38:54 2018 -0700

    ESM input

commit 63eba198d960cacd26d91654c52ef0037391faae
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 5 19:30:01 2018 -0700

    ESM image

commit 4bf60cf84b196ae17b5c8956392a711728be344c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 5 19:28:57 2018 -0700

    ESM icon

commit 2c1c95e714f087f9a2574cb912a37bddefb9b7c0
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 5 19:28:21 2018 -0700

    ESM header-page

commit 1d46a70a43e4cb07d1f1cbe45c98289a1c68eab6
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 5 19:27:31 2018 -0700

    ESM heading

commit c8ffa233931a30f1c97d646849c5c83d06eb0c4a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 5 19:26:28 2018 -0700

    ESM error-page

commit a18f97c66f9506cd5022d9a81f4d2c47e22f4b61
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 5 19:25:20 2018 -0700

    ESM: footer

commit 08abf7b38e6ce44c243454fa92e6222829ba4a8c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 5 19:24:09 2018 -0700

    delete unused code editor

commit 81fa0b179b4b9e11a79c87c7aa247e0e55e20ce4
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 5 19:21:32 2018 -0700

    ESM: title

commit 1c184a799b2c56dd4b0ac0a571b04e5d72765b32
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 5 19:19:44 2018 -0700

    link

commit 8b65773e3f71c05857dbbf67d55031520be62df2
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 5 19:19:09 2018 -0700

    Add MIDIjs player

commit 574ad39fadf8ec23582795a4a6106342d2f3a214
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 5 19:18:42 2018 -0700

    limit homepage until pagination works

commit 16798c96ea2643bd224d9c0e66c1fb9b34435773
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 5 18:39:03 2018 -0700

    fix knexfile path

commit 2f2f63c7eb9f63ff543942eef0253b0f4532fcd8
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 5 18:38:56 2018 -0700

    header button

commit 30bbe4cbba28e5ef31dbb048db51fce87de1e7fa
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 5 18:38:50 2018 -0700

    serve uploads/ folder

commit 115c07b1e715c02bce44fce300564e36253818cf
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 5 18:37:29 2018 -0700

    allow where query on any column

commit 706c2c5bdbdf3970850f731b4599e1d6b13eea9a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 5 18:37:16 2018 -0700

    Import script

commit 16712d0ad2c87ac521c55bafed8fe7c10f1b8b46
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 5 18:35:51 2018 -0700

    ESM: always use default exports

commit 25c67ff096c6b8a4c6dee28d207be41057f1d434
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 5 18:34:46 2018 -0700

    fix knex command

commit 016f86f6efc164254a12502f61b3d10fe6567ca1
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 5 18:34:28 2018 -0700

    ignore uploads folder

commit 8d62f22678a1cc199341e1bb8582487d880a8eac
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jun 5 18:33:52 2018 -0700

    travis: remove sudo: required

commit 4250e11090e57d5432ab326bdc2a825c4e78e990
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 2 12:37:48 2018 -0700

    misc

commit 3837db074fe07dc4545cf0a39259fc9ce50955d8
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 2 12:37:41 2018 -0700

    modify simple-fetch to support promises

commit 606e387b209cda51cc3242bb25b57be96adcd300
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 2 12:37:32 2018 -0700

    better debugging: attach debug variables to window before first render

commit 519e3a78317146b4535cae6639b981f4a096ad21
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 2 12:37:13 2018 -0700

    update browser apis for midi

commit 9a6c16ade2e2939a42ee8ceb33ab883f1b9dcd36
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 2 12:35:49 2018 -0700

    add ?ssr=0 query param to disable server-side rendering

commit 82404ba77b7b8cd4b08336f997a95680883647e4
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 2 12:35:33 2018 -0700

    remove unused icon

commit 535230437304dc00fd218e7965d5dbda8491bfa0
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 2 12:35:25 2018 -0700

    update feed ejs for midis

commit 8740ccbdd2997522cb61e5ec3acdccc5eeb2a890
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 2 12:35:16 2018 -0700

    update api router for midi apis

commit 397eed577ff56deeaf5fa4f4cf71521cdfb0ee2a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 2 12:34:37 2018 -0700

    update feed router for midi api

commit 142f10dd4ded339260edf266fab0c92cfe1b3abe
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 2 12:34:25 2018 -0700

    update snippet for midi

commit f95e815001303fd780d7fa025d97ccb10570a168
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 2 12:34:03 2018 -0700

    update snippet page for midi

commit 421a1c220b263af2e6936b96f870f7f4bb4ed84e
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 2 12:33:26 2018 -0700

    update homepage for midis

commit ad190790eea990b994adfbc53cc82e5b78915005
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 2 12:33:17 2018 -0700

    store: add midi events

commit a89cea3104d586e783ee41fd467af5a0f468b310
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 2 12:32:53 2018 -0700

    remove unused store events

commit 1499d0b497571cb682fa27f5f957d313726d6446
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 2 12:32:08 2018 -0700

    remove twitter auth route

commit 928d807cd0e0ceb1eca81d0389cb37030947114f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 2 12:31:55 2018 -0700

    update routes

commit ec4c991fabd1a40a8d552d25fbf238406ff98ddf
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 2 12:31:48 2018 -0700

    add midi knex model

commit f4bda215984d1b0b9ee1b1893c737278cf0a321a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 2 12:31:32 2018 -0700

    fix brower replace src/api

commit d2e6bf8e7752c785b77a23a4b2397fc7193b0e8a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 2 12:31:20 2018 -0700

    remove twitter api

commit 1a1ab5122e9f7a34a4a1905fad101f804eb61a33
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 2 12:31:06 2018 -0700

    add promise MIDI api

commit 59ab30ae210a796724224c595e1ebd14ecb36cfd
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 2 12:29:22 2018 -0700

    add knex

commit 6c3691000cb9dbc43d08cbd6bf6b32cadf05385f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 2 12:28:23 2018 -0700

    config DRY

commit d710a7448a2219c91ce3d58dfb6b461916ee7df4
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 2 12:28:04 2018 -0700

    ESM: api.js

commit a665815afc4d6cb9525137dd2a790c5b5b895e8d
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 2 00:24:16 2018 -0700

    Remove legacy JS build
    
    Even with the legacy build, Chrome 41 still doesn't support fetch(), and other basic features we use, so JS still throws an exception.
    
    Let's just wait for Google Search to support a newer Chrome version. Google I/O 2018 talk says it's likely by the end of the year.
    
    In the meantime, we have server-side rendering. So we're still being indexed, it's just that Google can't run our JS.

commit e35c3fc914c19eb8b2b4a4195ee40cbce992bc80
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jun 1 05:17:40 2018 -0700

    don't minify legacy bundle

commit 0146c017312b563a8e580969dd829a3bdf5a3173
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jun 1 05:06:02 2018 -0700

    don't minify legacy bundle

commit 483291ba948ea78b978afaa33ddc153289ac5212
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jun 1 05:05:27 2018 -0700

    preload bundle.js in the right mode

commit 0576e11cdf998e83c5f0bf706051b6b80966b968
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jun 1 04:32:46 2018 -0700

    forgot type="module"

commit db9203bfa548bbdb5a8119737561a8bbdcb8c785
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jun 1 03:10:47 2018 -0700

    fix typo

commit 049d8a1456dd13e4ef76a8c64755c7416d8d95f6
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jun 1 03:09:02 2018 -0700

    style

commit 742b5b3879acc5f5ad0db58d81f8181b3e1ac619
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jun 1 03:06:27 2018 -0700

    Add additional JS bundle "bundle.legacy.js"

commit d35c184231306e7bd352b9d69db510e77050b09d
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jun 1 02:41:12 2018 -0700

    SEO: Use babel-preset-env for Chrome 41 support
    
    Googlebot uses Chrome 41

commit 97115b88246d6589a2deb5d1b7798e1371118064
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jun 1 02:10:15 2018 -0700

    import consistently

commit 93f906e03c4b545e601754ac355b45de36157825
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 22:39:21 2018 -0700

    newline

commit af0631b9c32e630d74df97854902a08222a12ab1
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 11:19:48 2018 -0700

    readme

commit 5e6e45a93a8da764da748b70c30b38dc04389f3f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 11:11:22 2018 -0700

    readme

commit 8f338020f3100f6c7dd9b01c1e22b9c47212793a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 11:10:07 2018 -0700

    readme

commit e8cb7352b4349941d8d0c19e43bb16708b0933f2
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 11:03:36 2018 -0700

    Replace 'gtag.js' with 'analytics.js'
    
    See: https://twitter.com/feross/status/1002244898840428544

commit 85e45cad1341e875e146a09b7fe327eed7d101e8
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 10:43:14 2018 -0700

    fix first page view tracking

commit 8f9febc06d371755b04b1a5f55f7bf003099e13a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 10:28:02 2018 -0700

    ESM: header

commit 101a9c556091b529899822115615caf3c0c49417
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 10:27:39 2018 -0700

    fixpack

commit 84b7ed855bc74aa4bbe7fa85a6178ad5c6af0e8c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 10:27:36 2018 -0700

    watchify: don't exclude process global in development builds
    
    It's needed for the if (process.env.NODE_ENV !== 'production') check to work for conditionally loading 'preact/devtools'

commit c3b18077023d4e00db140fd72c32d099db6de801
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 10:15:01 2018 -0700

    fix nodemon ignore

commit b7fdaa2212f0e874094ee2e981f40782e101f948
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 10:11:19 2018 -0700

    ESM: buttom

commit 68a29ca74bdedcf28f5f5ccba4a6e1db46d0595f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 10:11:07 2018 -0700

    ESM: app

commit b42ad586b15f0743cae08b74260b32e93525df5c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 10:10:33 2018 -0700

    log runtime browser errors

commit fa8e3393da4a812f84d0de45b17f89eda2886f54
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 10:10:08 2018 -0700

    Use new Google Analytics tracking code

commit 927884a21af5e2033919cbebfd7433440b43a0d8
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 10:09:44 2018 -0700

    Update site description

commit 9e35c63ce7e15933ee3fec5e1ef23ef5f1a609cb
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 09:17:24 2018 -0700

    fix build-css to detect .ejs files

commit a66fbfcc0dab57d0664bf0431ca4c60f2d7b6f35
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 09:00:48 2018 -0700

    expose debug functions on window

commit 1a35cc1c816a8c8d77ec8119f1e064ce5bff3621
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 08:56:51 2018 -0700

    remove unused deps

commit 16625a5ec4a812e6249aa63bb5ceef37f19040cd
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 08:42:24 2018 -0700

    fix supervisor start command

commit 74e1b84fa776ee585231056ac44c20283a891abe
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 08:35:15 2018 -0700

    build-css: print verbose message

commit 309e02b4c11e87e993de221e16a9c73374996531
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 08:10:28 2018 -0700

    add `npm run size-disc` command

commit 28dea9edc0a0c99b1532e3188d77aa5786d92313
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 08:10:03 2018 -0700

    browserify: skip inclusion of globals like `process`
    
    Saves bytes!

commit 90f9f91a5d50fa752f0542db75c70f790da76956
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 07:53:54 2018 -0700

    standard

commit f063b2de5353ef4f05b15f4f2fe0285186add0f1
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 07:52:18 2018 -0700

    exclude 'preact/devtools' in production

commit a4d70da8cf4524709295e390811467900ca748fc
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 07:47:22 2018 -0700

    browser: expose debug variables on window.App

commit 08b32fa433d22bc05d7c63d9670a5b0dbc56f583
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 07:47:08 2018 -0700

    add 'npm run size-css'

commit 15da81a8446d966c50cf245171107f76fd6cdb92
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 07:46:59 2018 -0700

    ESM: build-css

commit 9a224169489e498d574b650176bf32dd313e8fd2
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 07:42:43 2018 -0700

    replace rollup with browserify

commit 8677ccf7f2647bd0914d7977d23905861413160a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 07:17:36 2018 -0700

    purify-css.js -> build-css.js

commit 4b5e6e44653ea24ab68675d8e6ee2974af23ede7
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 07:15:59 2018 -0700

    rollup -> browserify: remove --experimental-modules

commit 833e62bb278c5b788009f5ff01d51c47247fb966
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 07:15:32 2018 -0700

    rollup -> browserify: start.mjs -> start.js (move @babel/register)

commit 88b5f5507c572443a262f322e80771f59783e1aa
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 07:12:55 2018 -0700

    ESM: provider.js

commit 9fc9fdc6877ab472bd809dc90397e3b427cda562
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 07:12:23 2018 -0700

    rollup -> browserify: delete rollup

commit 09583155112eeb24486f73d40b49762b422cbadf
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 07:09:55 2018 -0700

    rollup -> browserify: use babel for ES modules

commit 4f5e9b1ba23c58bfcb21ca37cff2fcc6f480229f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 07:08:47 2018 -0700

    standard: don't ignore /tmp

commit 517c6a922ec6f208e78610b78c30a73cc89fa454
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 06:38:32 2018 -0700

    remove nodefoo highlight.js / codemirror

commit a894bb6cd27251cde7dd4a974d8e67e64cc8615c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 03:32:54 2018 -0700

    remove unused .gitignore line

commit e1f54f4cc173502a4944162c32a94e9a5e48720b
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 03:31:20 2018 -0700

    Remove ava
    
    Has tons of babel depedencies with conflicting peerDeps, ugh

commit f8151e5cfd2f5dc914c2276af5abef4833bf37c5
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 03:30:21 2018 -0700

    update all babel to 7.0.0-beta.49

commit 0215a00e3502653adbb192af44e70ab3cc652449
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 03:08:30 2018 -0700

    ESM: debug-helper

commit ea05b0ce336874d0627df45dab1569eaeae0a942
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 03:04:34 2018 -0700

    ESM: store.mjs

commit cc96bfdf60632e9cd8d840838a84f0cdeeaf55d0
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 02:22:27 2018 -0700

    remove package-lock.json

commit c430dd6ebdd861d0dfe146d07b1535a0f602e33e
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 02:21:52 2018 -0700

    package-lock.json

commit 0d074a1617b8e7b774b7fde726cc293a2ebac729
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 02:21:33 2018 -0700

    disable opbeat

commit c63a8fa2aea086d5bf709ec52c1126e77b46be46
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 02:09:57 2018 -0700

    remove sonarwhal

commit ed316ce65d43c98300021499d988250dea7c3be4
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 02:09:27 2018 -0700

    add placeholder logo

commit 66ebf357d226e832629abd0a97b373c4d4f97fd3
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 01:44:02 2018 -0700

    set port to 7070

commit 807e90166e2d5abd9ced727a7ff7a4f342cc2f4f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 01:37:59 2018 -0700

    remove nodefoo SubmitPage and DocPage

commit 49c166090ba19eddcbb5a951ada133e29b77ceb9
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 01:37:44 2018 -0700

    nodefoo.com -> bitmidi.com

commit 0c242c0d50c1cce6e6de3617e1ee779df4386a11
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 01:37:17 2018 -0700

    export browser globals on 'window.App'

commit 77ff294bd6b283677b6b40f349d680142b50a372
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 01:23:06 2018 -0700

    remove nodefoo.com files

commit 52b290b177ed53099ec86627a938107b21384d3c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 01:23:04 2018 -0700

    remove nodefoo.com files

commit 210ddd64538af1d9b8797a5b5d7b8a701ce3af2b
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 01:06:19 2018 -0700

    purify-css: disable logs

commit 59acaec161ef64d62cb54108a626d8b95a0d269f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 00:38:42 2018 -0700

    bin/ -> tools/

commit 27c11d0aaebf03cac9b4273d6018c90175c26877
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 00:37:02 2018 -0700

    delete unused nodefoo.com files

commit 5e3e8b85a699392124c50fd32c3690e5de8b7dc2
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 00:36:03 2018 -0700

    package-lock.json

commit db421cf8274a0e0f69184a919c75d5828022712c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 00:35:58 2018 -0700

    delete nodefoo files

commit 8a8042b089713efa9a950eaa9f881755c97eafc5
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 00:35:47 2018 -0700

    nodefoo.com -> bitmidi.com

commit c66e3d93be8ab467ff869f7b4f4488f0b4fe91cf
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 00:35:32 2018 -0700

    sonar -> sonarwhal

commit 778b40a5f724172e98c90988a87384052f08399b
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 00:16:44 2018 -0700

    package-lock.json

commit 1dafee588101c3d1994e9cb8929e43b74b875997
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 00:16:39 2018 -0700

    skip ava tests

commit 748c8ac82a81d0b10d17cbd74d1c88c6cde8d06f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 00:10:43 2018 -0700

    Replace @std/esm with --experimental-modules

commit 54423cec71f0836869d8c1a113aa2be102b781c2
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 00:03:50 2018 -0700

    Pre-emptively add watch.clearScreen=false
    
    This makes `rollup --watch` not clear the screen

commit e1fe333db5c19865263971ac235c7a64c88bdb90
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu May 31 00:03:07 2018 -0700

    START BitMidi.com – Fork NodeFoo.com

commit 45bd92497908dafa7b1becf99e75921dea915109
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed May 16 14:53:49 2018 +0200

    Remove X-Frame-Options header
    
    This header is much more widely supported than the CSP frame-ancestors directive, but we don't support IE11 anymore anyway.
    
    https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Security-Policy/frame-ancestors

commit 8ba04cc4653ebafd239b759cdea4d9901fbf625a
Merge: 8c4cc18 388573f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue May 15 00:35:10 2018 -0700

    Merge pull request #15 from feross/greenkeeper/rollup-0.59.0
    
    Update rollup to the latest version 🚀

commit 388573f8a16bf5aea474671022b602a561d31a5b
Author: greenkeeper[bot] <greenkeeper[bot]@users.noreply.github.com>
Date:   Tue May 15 06:40:56 2018 +0000

    chore(package): update rollup to version 0.59.0

commit 8c4cc1899aaf8b1f94ff102362baf74efe262863
Merge: 70fe0c8 430bd65
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Apr 16 18:36:03 2018 -0700

    Merge pull request #14 from feross/greenkeeper/rollup-0.58.0
    
    Update rollup to the latest version 🚀

commit 430bd65db953d6ef9a290bb5224bba4e1476a5bc
Author: greenkeeper[bot] <greenkeeper[bot]@users.noreply.github.com>
Date:   Mon Apr 16 13:39:56 2018 +0000

    chore(package): update rollup to version 0.58.0

commit 70fe0c8cff5f8c34c91c4d5a35ed5d4033c06317
Merge: 1896076 9dbc25d
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Apr 12 18:37:46 2018 -0700

    Merge pull request #13 from feross/greenkeeper/babel-minify-0.4.0
    
    Update babel-minify to the latest version 🚀

commit 9dbc25dc819620497af2bc407ba54fdf4eef1cb4
Author: greenkeeper[bot] <greenkeeper[bot]@users.noreply.github.com>
Date:   Sun Apr 8 08:32:11 2018 +0000

    chore(package): update babel-minify to version 0.4.0

commit 1896076456eeba6452ff753e67d43f0c2ade7966
Merge: 92ebf14 59b99e0
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Mar 23 23:18:42 2018 -0700

    Merge pull request #11 from feross/greenkeeper/rollup-plugin-commonjs-9.1.0
    
    chore(package): update rollup-plugin-commonjs to version 9.1.0

commit 92ebf1424ee951db00497d911355f2559809b808
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Mar 23 18:44:59 2018 -0700

    Revert "Use 'npm ci' for faster install with lockfile"
    
    This reverts commit 4204951c03c6b8447cbbdc3e8312dce6ae8414ad.

commit f26ed9bc1953ad0b938c39526a6e63286d25adab
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Mar 23 18:36:44 2018 -0700

    deploy: fix package-lock.json getting updated
    
    HACK HACK HACK HACK HACK - fix package-lock.json getting updated when 'npm install' is run. This happens when package.json and package-lock.json are out of sync, and happens anytime a Greenkeeper PR is merged, for instance.

commit 36cf649a3eee46ae66cd38c87f6740351e524be8
Merge: 4204951 26c3172
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Mar 23 17:07:14 2018 -0700

    Merge pull request #8 from feross/greenkeeper/rollup-0.57.0
    
    Update rollup to the latest version 🚀

commit 4204951c03c6b8447cbbdc3e8312dce6ae8414ad
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Mar 23 16:42:29 2018 -0700

    Use 'npm ci' for faster install with lockfile

commit 5b52bb465d964d508c31152fff16b508e326f7cc
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Mar 23 15:36:33 2018 -0700

    package lock

commit 8ec3e54e7955c87f6cc02277519ceedb8e1aaeb0
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Mar 23 15:34:16 2018 -0700

    package lock

commit 0b3490408596ea0db2a16c2554e37a7a3b2b460b
Merge: d7a644e b3d65d2
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Mar 23 15:26:45 2018 -0700

    Merge pull request #10 from feross/greenkeeper/clipboard-copy-2.0.0
    
    Update clipboard-copy to the latest version 🚀

commit b3d65d271dcc6f8afa5e0a1f25d19d69ab3dffd7
Author: greenkeeper[bot] <greenkeeper[bot]@users.noreply.github.com>
Date:   Sun Mar 18 06:08:19 2018 +0000

    fix(package): update clipboard-copy to version 2.0.0

commit d7a644e3cd84800bd76dcdc109321b1c87411a2e
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Mar 15 10:47:38 2018 -0700

    package-lock.json

commit a6fe54de5482a9c3d3cb06ff77bea174a08f63b4
Merge: deac111 d304e4d
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Mar 15 10:31:53 2018 -0700

    Merge pull request #9 from feross/greenkeeper/sqlite3-4.0.0
    
    Update sqlite3 to the latest version 🚀

commit d304e4d08f0e4e07151af44845760f73689ff798
Author: greenkeeper[bot] <greenkeeper[bot]@users.noreply.github.com>
Date:   Thu Mar 15 15:31:56 2018 +0000

    fix(package): update sqlite3 to version 4.0.0

commit 26c3172f0234feeef171354a203c7967064d45d6
Author: greenkeeper[bot] <greenkeeper[bot]@users.noreply.github.com>
Date:   Thu Mar 15 07:41:44 2018 +0000

    chore(package): update rollup to version 0.57.0

commit 59b99e0c2b486397885b3f2f67bc0db5b3d31196
Author: greenkeeper[bot] <greenkeeper[bot]@users.noreply.github.com>
Date:   Mon Mar 12 05:38:56 2018 +0000

    chore(package): update rollup-plugin-commonjs to version 9.1.0
    
    Closes #7

commit deac1113c9c9f5527c34d313fee38e96b84296ed
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Mar 2 14:12:20 2018 -0800

    Chrome sandbox doesn't work in Travis Docker containers due
    to Spectre/Meldown mitigation.
    
    https://github.com/travis-ci/travis-ci/issues/8836#issuecomment-356362524
    
    Use old Travis infrastructure for now.

commit 29bd9c783957402fc989f308bc31be7e2746488b
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Mar 2 13:57:29 2018 -0800

    ignore sonar test failure

commit 5822e350ec782f3107f5457c23c54b6ae5c5f1db
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Mar 2 13:35:18 2018 -0800

    update standard

commit 71608990c6005df4651b15ea4b3b63550e8067c4
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Mar 2 13:32:54 2018 -0800

    npm update

commit be5967f2e938d0767c22a95fd2f2843a6631edbe
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Mar 2 13:26:27 2018 -0800

    remove greenkeeper badge

commit c63ccac3dbe7c4ed65a7489cc267fbc8c8e297ab
Merge: fbf8618 2b227ef
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Mar 2 13:26:01 2018 -0800

    Merge pull request #5 from feross/greenkeeper/initial
    
    Update dependencies to enable Greenkeeper 🌴

commit 2b227ef654230a056f6e3c3cee20f89b053df8b2
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Mar 2 13:25:52 2018 -0800

    undo @std/esm update

commit 842eeb45a232e9b88509b8d0cddde7cc182b3789
Author: greenkeeper[bot] <greenkeeper[bot]@users.noreply.github.com>
Date:   Fri Feb 23 01:52:37 2018 +0000

    docs(readme): add Greenkeeper badge

commit 8b649ab43f120cf0c755a805a2c0e7ea2fa086e2
Author: greenkeeper[bot] <greenkeeper[bot]@users.noreply.github.com>
Date:   Fri Feb 23 01:52:34 2018 +0000

    chore(package): update dependencies

commit fbf8618f3a09ece2b7163d8f12bc305c2f29b4ab
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Feb 16 02:36:34 2018 -0800

    fix for puppeteer@1

commit f63549b124f4a4d521d505a3f357a0466c833cce
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Feb 16 02:36:27 2018 -0800

    puppeteer@1

commit cf112c9539b0979216116246f51d508d9d8369c1
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Feb 16 02:33:12 2018 -0800

    npm update

commit 6ac0b85fe6650c0553a54f8dab2b7a7f0931e48d
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Feb 16 02:31:06 2018 -0800

    package lock

commit be8f1c7d3328962018121a8af7178a611f26ec5e
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Feb 16 02:31:01 2018 -0800

    rollup@0.56

commit c9ef3745d35ddf34729af10b4bb6d4856c519f00
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Feb 16 02:30:49 2018 -0800

    rollup-plugin-node-resolve 3.0.3

commit 940c4ce10be3be9624600bc9c6a3b5d522a02c71
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Feb 7 12:29:50 2018 -0800

    ava@^1.0.0-beta.1
    
    This version of ava includes Babel 7.
    
    The ava options "babel" and "compileEnhancements" are set to disable ava's built-in babel compilation which is overkill. Every tool you install shouldn't do it's own babel processing on your files.
    
    We include @babel/register manually so that our own babel config is used at runtime, without including any of ava's crap.

commit a3c30aeb5e49d52ecab3f19555231a637a408646
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Feb 7 12:08:27 2018 -0800

    remove babel-plugin-external-helpers dep

commit b936a018053cc884307d47a8c6234dc6a4243523
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Feb 7 11:47:51 2018 -0800

    update rollup config for new rollup-plugin-babel version

commit 1a7327d6f8f91739dd4c8add3ee38b0ce695855e
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Feb 7 11:47:36 2018 -0800

    update rollup config for new version

commit b750bf64ffc2f5c2f874b36d2b536a0f8ca55366
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Feb 7 11:46:58 2018 -0800

    rollup-plugin-babel@4.0.0-beta.1
    
    Note: this is buggy and includes a huge number of babel helper functions even though only one (objectWithoutProperties) is used.
    
    This bloats the bundle size by ~6kb
    
    Issue here: https://github.com/rollup/rollup-plugin-babel/issues/187

commit 9f81829fede2c67b6f50473dd188a8680915ff16
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Feb 7 11:46:05 2018 -0800

    stop including custom babel-helpers file

commit 74437c1725dac58be0747f572b921168bc724598
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Feb 7 11:41:38 2018 -0800

    move babel config to .babelrc

commit df8a90f967c34b96e083ce43280e1229b1455eea
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Feb 7 10:26:52 2018 -0800

    fixpack

commit f6802a2d529d40cb664c8ce22c34aff793dc9c26
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Feb 7 10:22:17 2018 -0800

    rollup@0.55

commit 4fc3051f1c3a285f4677db260344fecc78f3a1ed
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Feb 7 10:12:47 2018 -0800

    Remove Edge from supported Sonar browsers
    
    Edge doesn't support 'noopener' so it's giving false positives

commit 656e7e57f47118b26400e0fbf228e933ac17aa9c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Feb 7 10:12:25 2018 -0800

    Fix sonar warnings

commit 58c045f0e228784930cbfddd2504825ec55ed9d5
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Feb 7 10:07:09 2018 -0800

    @babel/plugin-proposal-class-properties@7

commit 7ab64f1aeb778fa7c55ecd645dd79ffae89de6d7
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Feb 7 10:04:06 2018 -0800

    @babel/plugin-proposal-object-rest-spread@7

commit 018b357d5c4a51fae74df76ed3bd569f99c1c9c9
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Feb 7 09:56:53 2018 -0800

    @babel/plugin-transform-react-jsx@7

commit ef9004d80a4b4fbc7a46569322f211296fbdaa86
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Feb 7 09:23:53 2018 -0800

    Lock @std/esm to fix regression
    
    See https://github.com/standard-things/esm/issues/269

commit 3722b96411bc05b9e301df38b54f8286efab9038
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Feb 7 09:10:52 2018 -0800

    load babel-register before opbeat

commit 5e11a0401a0be0efaed99e023132d91a84ba0afe
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Feb 7 09:03:24 2018 -0800

    npm update

commit 763a7474ddd02f65ed51bfd3c25cc2525aba0112
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Feb 7 08:41:18 2018 -0800

    Update experimental async image loading attribute

commit 9465f5b624985ab98c07f4db31070c08b49b2333
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Feb 7 08:40:33 2018 -0800

    explicitly set httpOnly

commit a6a4a6d4dd3ccbf284cd8129c33e33d38240ce98
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Feb 7 08:40:02 2018 -0800

    Prevent cookies from being sent with cross-site requests

commit 48e2a0d53a826dcb47b380cf1602e363e5206df5
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Feb 7 08:28:54 2018 -0800

    move maxAgeCookie setting to config

commit eeff41219d9f7a29cf0522c73f88bb76aa744a36
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Feb 7 08:28:26 2018 -0800

    config.maxAge -> config.maxAgeStatic

commit 4e3a46fc2b862d64c20771ee6f4f7397f9f6777a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Feb 7 08:27:54 2018 -0800

    Reduce HSTS time to 1 year; move to config

commit e27d9ae678db4b5630b3073f3800f656369234a9
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jan 16 21:49:18 2018 -0500

    package lock

commit dcc3e2fd84f49ba87c36e2bbc583f89ab0d4ac97
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jan 16 21:49:09 2018 -0500

    @std/esm@^0.19.4

commit 1d0fa8f482fc76d67f0eb76bc4ba6cc0690a2769
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jan 16 21:47:03 2018 -0500

    make optional deps into dev deps

commit f981895325029e5d67264aaf6087f190964d6724
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Jan 16 20:50:33 2018 -0500

    tape -> ava

commit a058d9cc5cf2ce5fdeac80ddef7c5d5e05d037de
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jan 18 13:02:30 2018 -0500

    correct website link

commit 565451104a16224f7f9d41a3c7af6738859b5e56
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jan 15 10:58:55 2018 -0500

    Lock @std/esm to fix regression
    
    See https://github.com/standard-things/esm/issues/236

commit 56ca12bc347de275900c459d74f4eb4d06686abd
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jan 15 10:45:16 2018 -0500

    Lock rollup to fix regression
    
    See https://github.com/rollup/rollup/issues/1875

commit 0b615bd978fdbba7471680f28fe64075854be011
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jan 15 10:11:02 2018 -0500

    rollup@0.54

commit 89fc9512157ecca772bf36ce714da0417cf2aec3
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jan 15 10:10:01 2018 -0500

    mollusc@2

commit d54300d3df72fa2483ed1febee887dc9e3ee49fd
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jan 15 10:04:41 2018 -0500

    Lock rollup-plugin-node-resolve to fix regression
    
    See https://github.com/rollup/rollup-plugin-node-resolve/issues/131
    See https://github.com/rollup/rollup-plugin-node-resolve/pull/133

commit d964c712c8022d22821b3f9a86f230408dcf5584
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jan 15 09:19:38 2018 -0500

    add package-lock.json

commit 73ccea47861a4034b611d215fb8290ff6e50bdde
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jan 14 21:02:41 2018 -0500

    use async-await

commit f8cedc5c34ba55b8dbe02383c4fb9740ec50020d
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jan 14 21:02:23 2018 -0500

    readme

commit c9f66766a725d0eb968fba1e1e7e3275b83d2b73
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Nov 25 18:14:27 2017 -0800

    google site verification

commit 7aae7358cae3f82cffddca11eddd03f0f29b0d88
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Nov 25 14:04:18 2017 -0800

    disable babel cache in production
    
    The node process runs as "www-data" user but the ~/www/nodefoo.com folder is owned by "feross" user. So it can't write into ~/www/nodefoo.com/node_modules/.cache

commit 470636ba7829af78e1119f1e9ce48415c8f2d081
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Nov 18 11:09:47 2017 -0500

    disable babel cache

commit 66b755ef2dde529a3d8b5cfde3c8a2fc975318f4
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Nov 18 05:29:22 2017 -0800

    rollup@0.51

commit bf803b63ed1eab01e3c71a19dd1c210d3a4ecbf2
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Nov 18 05:25:08 2017 -0800

    remove BABEL_DISABLE_CACHE

commit 8b309fa1608fe2f50b998e5140a22a725538afaf
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Nov 18 05:24:16 2017 -0800

    @std/esm 0.16

commit 25380b66a6b93587a71f323a23d6627f45f915a7
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Nov 16 11:19:22 2017 -0800

    travis: attempt to remove compiler toolchain (simpler)

commit eef90581638982c1938c3eef744e1a7692ef83f4
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Nov 16 11:15:09 2017 -0800

    fill in secret/index-sample with TODO

commit 00d69481b491b6efc88ed09ba6caf4d8b14da5e0
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Nov 16 10:31:45 2017 -0800

    travis: test latest Node LTS version

commit 188fdb3d6c7030e1527a85c8d37898c4a989f6f2
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Nov 16 10:31:37 2017 -0800

    travis: create secret file so integration tests don't crash

commit b623bb82d460e3250d6a4cc13ecb71fda64e5b63
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Nov 16 10:31:06 2017 -0800

    tape: actually run tests

commit 88dfeb5b06a576003c2d9f46ecc1d214c5c2222d
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Nov 16 10:06:59 2017 -0800

    supervisor: use @std/esm

commit c6ce8f17a5adc4a3f82a0980c99ce34ec2bae81c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Nov 16 10:05:29 2017 -0800

    use @std/esm on test files

commit 6c8d88b083331c465828476038d331c2f45fbbd9
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Nov 16 09:57:17 2017 -0800

    re-enable @babel/register configuration

commit 482e0d9fc86cd49bfc8545b1d500bba4717236cb
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Nov 16 09:56:57 2017 -0800

    tell rollup to resolve mjs files

commit 603f210dadaacbc0930d78a78aa0c155646b3294
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Nov 16 09:56:40 2017 -0800

    fix standard command for ESM

commit 711bac469ddf3366e52319148b7bb550385d8304
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Nov 16 09:44:49 2017 -0800

    use babel 7 beta

commit ab2f6728051248bcdb2dbcf69e5ff9975872b1c2
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Nov 16 09:42:30 2017 -0800

    use @std/esm; port more files to ESM

commit 81fe2289b068f30ba24719aae9803630a19b1ae7
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Nov 8 04:27:08 2017 -0800

    BABEL_DISABLE_CACHE=1

commit 8ee714867744ac0d80ef324dc2193e935a330eae
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Nov 7 02:52:46 2017 -0800

    csp: allow service worker

commit 412c469af60a0cb20f3ee3a4a20a48959d7e9a92
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Nov 7 02:33:00 2017 -0800

    improve bundle banner

commit 93fca19e524ef9cf316388a541f43de3335f3204
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Nov 7 02:32:50 2017 -0800

    strip indent from bundle banner

commit 34c56c78b2c69bdee11cba99e760ab7ba9c503af
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Nov 7 02:23:26 2017 -0800

    storeInit -> initStore

commit f1c2b36b09c37cbb3b96f1189c1dd31ca36edcb6
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Nov 7 02:22:56 2017 -0800

    Add ARIA landmark roles
    
    Role banner: High <header> has role="banner".
     Role navigation: High <nav> has role="navigation".
     Role main: High <main> has role="main".

commit 297b901680c8945c4916a6b9d92e6a3d6df018e2
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Nov 7 02:17:44 2017 -0800

    Much cleaner 500 page

commit 0e7e525b7f90494242942debd7ed66cbc4e4b97a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Nov 7 02:17:23 2017 -0800

    cleanup offline page

commit 2bc31214849ea38a84b36b5a66bbdaf0a8bd3cb5
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Nov 7 01:59:42 2017 -0800

    add robots.txt file

commit 3b84e039abbfa5647b6d1e51308a6c70084c1ad1
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Nov 7 01:46:52 2017 -0800

    csp: add 'unsafe-inline' fallback for older browsers
    
    script-src nonce-{random} 'unsafe-inline' The nonce directive means that <script> elements will be allowed to execute only if they contain a nonce attribute matching the randomly-generated value which appears in the policy.
    
    Note: In the presence of a CSP nonce the unsafe-inline directive will be ignored by modern browsers. Older browsers, which don't support nonces, will see unsafe-inline and allow inline scripts to execute.

commit 3ed3832b84da3a4eb07b095c39a797705efe42c3
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Nov 7 01:46:26 2017 -0800

    csp: script-src 'strict-dynamic'
    
    strict-dynamic' allows the execution of scripts dynamically added to the page, as long as they were loaded by a safe, already-trusted script (see the specification).
    
    Note: In the presence of 'strict-dynamic' the https: and http: whitelist entries will be ignored by modern browsers. Older browsers will allow the loading of scripts from any URL.

commit a51a7f8ef1bde89f5c7cfb44682f9cb853d4aec7
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Nov 7 00:57:04 2017 -0800

    csp: remove 'data:' url
    
    the error in console is due to uBlock Origin. Google Analytics does not actually require a 'data:' exception

commit fafa09276a7ceeb628efe3a6e3d1dbc9ab5785df
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Nov 7 00:54:37 2017 -0800

    Nonces should only use the base64 charset

commit dcb1947ad61f4ac4d3d8c3d5899510e86f2786f5
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Nov 7 00:08:48 2017 -0800

    remove stray log

commit 39ef825309d96e0c3f88693cad71e4cb3ee2629a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Nov 7 00:08:17 2017 -0800

    csp: dissallow site framing

commit 1a7f246880307666e5fa2b1cd4cda8d457e81fbf
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Nov 7 00:08:05 2017 -0800

    csp: dissallow setting <base> tag

commit 9ad210f844c3aa06fc59b9001c9e0f1ed7d7d5b5
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Nov 6 23:56:59 2017 -0800

    add Referrer-Policy header

commit 9424bbc6ea470021ee95248887f9be5df430404e
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Nov 6 23:50:56 2017 -0800

    link: undo noreferrer
    
    we don't want to hide referrer information from sites we link to

commit 1f0c9c7df39e042b4f299b0d469686c7bfb6ec6b
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Nov 6 23:35:30 2017 -0800

    remove conflicting sonar package (for now)
    
    See comment: https://github.com/standard/standard/issues/969#issuecomment-342399228

commit e9bf114a6e165a7a3b568e646aaf1063f13048ca
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Nov 6 23:35:17 2017 -0800

    npm update

commit 69f03df9b8fd54446deee29d06c68b6c1bd92346
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Nov 6 23:22:33 2017 -0800

    npm update

commit 8f356bb966b2a729e347863fa15ceb388885a76e
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Nov 6 23:22:24 2017 -0800

    jsx style

commit f7d06448dbb89c14526b7bfd9f33c6be0f75fb04
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Nov 6 23:20:54 2017 -0800

    convert common-tags oneLine to use just the needed file

commit 77e6e47be79ae354a3c83c4ceec1c130bf4ae883
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Nov 6 23:16:01 2017 -0800

    sw: log failed fetch url

commit b598dc38c893425af5e9d3d4fb8cec616586dd62
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Nov 6 23:14:26 2017 -0800

    csp: allow manifest to be fetched

commit 4e2f1dae40e9f46894b4a2f9e026b7f090d4ce46
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Nov 6 22:50:50 2017 -0800

    remove `unlimited` and `downgrade` deps
    
    The `posix` module (which both of these depend on) doesn't seem to work on Node.js 7+ anyway.
    
    We start the node process as `root`, which was causing problems with `babel-register` because that creates a .cache folder which is owned by root and can't be deleted

commit 6b345b0225e134cd7ab11618f0d8ee2238c45a36
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Nov 6 22:05:28 2017 -0800

    Revert "hack: debug port reuse issue"
    
    This reverts commit 81c43fc9aa9d99c9e503cb9289aae81db4001b19.

commit e5262aeeaf1ac25f4cbec9929912243cfdbd6c02
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Nov 6 21:40:04 2017 -0800

    port 7800 -> 7060

commit c042fc1f14b40d04d8e1a96cd2a61dd0fdf442ed
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Nov 6 21:39:54 2017 -0800

    supervisor: startsecs and startretries

commit 706c7aa7ac893f79cadbc23b44fdeaae6909d6c7
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Nov 6 21:39:42 2017 -0800

    supervisor: process name is not needed

commit 175f7c6ba6bd42cb4380974de6c5dd47d86b5bc3
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Nov 6 20:18:27 2017 -0800

    change start command to node (not npm)

commit ff7923472793fbfe0e590e0ab7a7eb100da711a8
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Nov 6 17:16:16 2017 -0800

    exclude local-only deps on server

commit 81c43fc9aa9d99c9e503cb9289aae81db4001b19
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Nov 6 16:49:26 2017 -0800

    hack: debug port reuse issue

commit 8fae44d49d0a539f84f1ab46827e4fbc78c4be11
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Nov 6 05:58:29 2017 -0800

    add 'npm run test-sonar' lint step

commit e631930db22be4440b09e228b82d9bdd6b4a82af
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Nov 6 05:51:11 2017 -0800

    add rel='noreferrer' to newtab links

commit 5f20d88687aacb38880c47d187882da9d94d7ff9
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Nov 6 05:18:17 2017 -0800

    don't set security headers on API responses

commit 7e60059c54b3e604e564c2ab47693b3b18011ea4
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Nov 6 04:58:54 2017 -0800

    Use .webmanifest extension for web manifest file

commit b7f1a18c5622b7aeb6a20e52e179970008c13308
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Nov 6 04:53:20 2017 -0800

    apple-touch-icon: no need for sizes attr

commit f82283c94d1d598b2dd2aa3ec2d651201cd1eba6
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Nov 6 04:51:30 2017 -0800

    CSP: disable unsafe-inline; add nonce support!!

commit 7ae12f8e123270474fc0dc779fda9e4a390cd0c4
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Nov 6 04:45:17 2017 -0800

    don't serve CSP headers on static content

commit a0126d3c926b1358a381d3b4827631ff3789fd8c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Nov 6 04:44:46 2017 -0800

    style

commit f2c96cf6f344eb02c2060b36065ef60e3c1060a9
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Nov 6 04:26:13 2017 -0800

    do not send X-XSS-Protection or X-Frame-Options for non-html responses

commit 245861c3bcac4233816b9078ef397e1e79cf12eb
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Nov 6 03:53:10 2017 -0800

    Revert "Merge branch 'inline-css'"
    
    This reverts commit 68b32b5c63d5fdf054a3248b72deb37158df10c6, reversing
    changes made to 707e891706e8c0908eac79758ac6756943206003.

commit 27cb42ca03aa7f238b2ad3e38a8e42bad5495584
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Nov 6 03:52:48 2017 -0800

    Revert "temporarily disable service worker"
    
    This reverts commit d4ad6722e8bfb86385eae95e0273a42ead4af5ea.

commit d4ad6722e8bfb86385eae95e0273a42ead4af5ea
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Nov 6 03:23:57 2017 -0800

    temporarily disable service worker

commit ef37a3e894af29390dcd9886f95517ea2c78809a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Nov 6 03:23:52 2017 -0800

    rely on nginx for gzip compression

commit 4463c55966c4e6ece6249d78f7036af734ce04a6
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Nov 6 02:30:57 2017 -0800

    add CSP headers

commit 68b32b5c63d5fdf054a3248b72deb37158df10c6
Merge: 707e891 ffe0019
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Nov 5 22:59:18 2017 -0800

    Merge branch 'inline-css'

commit 707e891706e8c0908eac79758ac6756943206003
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Nov 5 22:49:25 2017 -0800

    downgrade to babel 6
    
    Fix error:
    
    rm: cannot remove 'nodefoo.com-old/node_modules/.cache/@babel/register/.babel.7.0.0-beta.31.production.json': Permission denied

commit 2f2b162e2b341203a539ecbac3e5f3bc00461739
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Nov 5 22:21:09 2017 -0800

    lighthouse: attempt to get start_url test to pass

commit 569b1aea632224b2dd309997a8de2874f21b3f34
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Nov 5 21:57:22 2017 -0800

    server-side ESM is not ready yet :(
    
    too many struggles

commit ffe00194a67154493825b235561c5c26033f377c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Nov 5 21:47:07 2017 -0800

    inline css

commit 8a3836990073b4ef3dc5466da7b6c2927ce3b841
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Nov 5 21:46:18 2017 -0800

    image optim

commit c9c86c9e64f662e4fef9924cc78819f83c281420
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Nov 5 21:17:02 2017 -0800

    Support boolean attributes correctly

commit 35fed6a89a4ea30fbe8bd973a854a225c04f9215
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Nov 5 21:16:51 2017 -0800

    Only self-close valid tags (void elements)

commit 0c8fe5d08dca24229f97a47439a25ef9c03c403d
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Nov 5 20:26:42 2017 -0800

    do slow rm -rf operation while app is running

commit 3872db0589c06756698ddac0846162d5eca1cbd3
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Nov 5 20:26:28 2017 -0800

    deploy: add extra check for old folder

commit dfbdcf4e8ea083c65cbeef4b6d191978f29713a6
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Nov 5 20:10:28 2017 -0800

    Add Atom Feed and JSON Feed support

commit 8eb320a56c8f9566d1fc68a5d6ed89bf4884887f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Nov 5 20:03:48 2017 -0800

    router-login.js -> router-auth.js

commit 9ef5dbef7dade7696cd51303e1410409c447475b
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Nov 5 18:24:18 2017 -0800

    move index.css and index.ejs to src/server/

commit 6f2a10041a20dab5daaa050213acadfda48c0ebf
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Nov 5 18:18:31 2017 -0800

    style

commit aa56ec9b5374ca653ae99b41f6a4e90177eccd8e
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Nov 5 18:00:39 2017 -0800

    Use rel="canonical" to avoid duplicate content

commit 436c67aad88c851b9f1a78b339d471d69d81da11
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Nov 5 17:01:10 2017 -0800

    just pass store into server-side template

commit 4a77a0594cae6755fa40d91f8cda2fe6ee6a68e0
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Nov 5 17:00:49 2017 -0800

    for icon meta tags, use site title from config

commit a6ac98ef113bd5705fce3cd82cf9d20f8b13a809
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Nov 3 18:36:27 2017 -0700

    add TODO

commit 4656effbd1ebfe5f525b7dfa2099b89b593a73f6
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Nov 3 18:06:00 2017 -0700

    update babel deps

commit e5b8f06b1ecfc9c53489093f367140287f477d69
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Nov 3 18:05:28 2017 -0700

    hide verbose purify-css output

commit 3378c633dc7e69a86e5a3330856889f43af2e5d5
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Nov 3 17:26:00 2017 -0700

    make description show up in one line

commit ae97d731019b693c573251075ecd40e09510cc01
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Nov 3 17:23:29 2017 -0700

    add <meta name="description"> tag

commit 6b0891f6684073eda51a8d46a013288c7b309188
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Nov 3 17:19:55 2017 -0700

    config.name -> config.title

commit 431d99d446086bb01b3998f2965080f95c4d0aba
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Nov 3 15:58:48 2017 -0700

    add experimental async attribute to <img>

commit e4f81f8b38038a500ca6a73c31107b25831becc6
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Nov 3 13:00:23 2017 -0700

    style

commit 2120a9e385c1e9bd579eacf259a73a320605ca64
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Nov 3 12:58:28 2017 -0700

    Run `npm run build` before integration test

commit adf7d54fb2b7306c65fa8e1fc6192dab59ca8be2
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Nov 3 12:53:50 2017 -0700

    test: add puppeteer integration test

commit 8539916b5b964825aafa014c3121362bb0f727af
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Nov 3 12:41:10 2017 -0700

    npm update

commit bc6e9b815524f349d8d2f6d2803b13f6f47e3709
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Nov 3 12:41:02 2017 -0700

    add @babel/core peer-dep for @babel/register
    
    required, according to docs

commit b8d4256a3b5ea15a4dccf76ecd7a73815b05e015
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Nov 3 12:40:41 2017 -0700

    fix jsx pragma

commit e0062cad9b55a29145a5bad8fc713235af79fe64
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Nov 3 12:39:55 2017 -0700

    babel-register configuration is broken, so comment it out

commit 24f1ae810ff6cbfa9648fbe473898bf0c271e101
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Nov 3 12:18:49 2017 -0700

    doc: better rollup.config.js comments

commit 7860002016f3e87382a44f3f3a2092847394bb6b
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Nov 3 12:18:27 2017 -0700

    rebuild babel-helpers.js for babel 7

commit 9bf65696b4826e92b0d034f5ab1ae992fc8f78b1
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Nov 3 12:18:17 2017 -0700

    babel-cli -> @babel/cli

commit c6a060e6d0ce9ac62746e08b3cac55a724cd1cfb
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Nov 3 11:59:41 2017 -0700

    Put browser debugging globals on `NodeFoo`
    
    NodeFoo.store
    NodeFoo.dispatch
    NodeFoo.update
    NodeFoo.debug

commit eda831148c78fbdd2b6cf7b58bf6c02ace6c05fc
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Nov 3 11:58:56 2017 -0700

    Tell @babel/register to only transpile files with JSX
    
    All JSX now lives in the src/view/ folder

commit 62fd773ef350193fabe1dabc48ca0258d6f91c62
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Nov 3 11:55:31 2017 -0700

    Move all JSX into views/ folder
    
    This lets us update the @babel/register configuration to only transpile files in the views/ folder, which should speed up the startup of the server

commit 6792bf64ab8ca2dc10376d2534404a6cd3bb0fd9
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Nov 3 11:53:47 2017 -0700

    standard: ignore /tmp/

commit 35c796844d52464472ced6b943b9daa5cc73f55f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Nov 3 11:53:23 2017 -0700

    ESM: tests

commit ba04401e9656ed9701f0c652f59de1de9055eb56
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Nov 3 11:52:57 2017 -0700

    ESM: test/slug

commit df8bc91541a3a084e2269e131a662748ba408a80
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Nov 3 11:49:53 2017 -0700

    babel-register -> @babel/register

commit 2ce43f59217a503f372fea2a8ee13598a36b7ff5
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Oct 30 21:29:57 2017 -0700

    ensure tests pass before `git push`

commit 7f908ed6b631d068f2afe83043b136c7fdf0cd0d
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Oct 30 16:14:45 2017 -0700

    Fix browser api include

commit 83b9125792940411d7bdeb4ba06b9c85f28f05b7
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Oct 27 23:55:13 2017 -0700

    standard

commit f6ea9b4cb5a493911bc24f69812cdf70f62c977c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Oct 27 23:55:09 2017 -0700

    js -> mjs

commit e0b14a02b325f4464fa74d31b79c5e17844686f2
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Oct 27 23:34:27 2017 -0700

    port a few files to ES Modules

commit 909b2dc6b0a6dd4a97d0a9b78ad0ffd1b1b44c9f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Oct 27 23:32:22 2017 -0700

    config.root -> config.rootPath

commit 975c6971bb4289ca559036b2f16afe67e775ac39
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Oct 27 19:40:59 2017 -0700

    switch browserify to rollup

commit b2ea42dc2cee2dc18165e7b7aeff50c44304521e
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Oct 27 19:25:17 2017 -0700

    don't auto-refresh when offlien

commit aa66c96b597d70cfb5d705e79e1d4f04a0521426
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Oct 27 18:22:56 2017 -0700

    supervisor: use npm start

commit 64e894f2c6027d1416114426766311035d49dce2
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Oct 27 18:20:39 2017 -0700

    use latest purify-css

commit 8d88cef5a2d44a6a3f6b8a5d07f364e912c2eeb6
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Oct 27 18:20:09 2017 -0700

    npm run watch-server: reload on json changes, ignore src/browser

commit f1b168dd8bb95a03388be181be6462efb63f0e51
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Oct 27 18:18:58 2017 -0700

    style

commit 8ac689f7212954ae811c32047d418e37d70151c1
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Oct 27 18:17:50 2017 -0700

    add DEBUG env var to purify-css.js

commit 221ae3d4cdd31f7ed00d86f63030c38d743e6cc0
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Oct 27 18:17:20 2017 -0700

    avoid requiring global.__dirname in browser

commit f8bc3f080f06911332d46f06c7739be38ca11ada
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Oct 27 12:21:45 2017 -0700

    Cleaner fetchStart() / fetchDone() handling

commit 9f427b2875a9917af0c0758b49cd88e533ffb5b6
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Oct 27 12:08:16 2017 -0700

    Rename built style.css to bundle.css

commit 5ed2574dcfe7c4fae73cafbf462cb33269c2f825
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Oct 27 11:39:33 2017 -0700

    clean up service worker comments

commit a189ce4e334ab34b593a68c41698079105464117
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Oct 27 11:05:52 2017 -0700

    Add OpenSearch

commit e8bcd8635888a4894d1aed50d117e9391e3e7390
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Oct 26 13:54:43 2017 -0700

    simple-fetch: Fix for Edge

commit 7fbaad2eaca07cdcf450e60e5d45defa05a041b8
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Oct 26 02:08:27 2017 -0700

    don't inline css

commit d6f2cf1dfd31fe7247ec8c4530f70cf3f1c43ee8
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Oct 26 01:48:57 2017 -0700

    inline the css in the <head>

commit 675cfa9efe3874c567a54e19f6f2c82f6da7d076
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Oct 26 01:25:55 2017 -0700

    properly ignore style.css

commit c49a76ace33a3f54d3b8f09b86b7751fd16dc5d3
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Oct 26 01:24:08 2017 -0700

    delete style.css

commit 4369481819cbd6f39a9e2df08fa19f78f915c7be
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Oct 26 01:22:39 2017 -0700

    Purify CSS to reduce size by 60%

commit f29017a61675f5909a6581ee811ffe2eab106930
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Oct 25 23:04:00 2017 -0700

    lighthouse: add aria-label on input

commit 0bf0449d893289c39c51bd009cff2fbe52de805a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Oct 25 22:59:45 2017 -0700

    lighthouse: fix image aspect ratios

commit 78012b63e46cdb04178c4961da795a17fd52e6e3
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Oct 25 22:20:43 2017 -0700

    cache start url for Lighthouse audit

commit 50626a4347b3cdc4621ab2d99329357b3b14ea5a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Oct 25 21:37:41 2017 -0700

    add favicons / web manifest

commit c05fb41cfd801d3e2e38fc34fcaf84f657aceb25
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Oct 25 20:25:12 2017 -0700

    remove inline svgs

commit adcc084cd99871b6c57a0e53ab1907ce82d0b68c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Oct 25 19:17:58 2017 -0700

    style

commit c557e8de0c63b9628969165bae7d3186977c653c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Oct 25 19:08:44 2017 -0700

    remove console.time('load')
    
    redundant with dev tools

commit 0e1ccef5036bcb727a5dc15309a6783ee9830deb
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Oct 25 19:07:05 2017 -0700

    fix falsy style properties (like 0) from being filtered out

commit 1763d928c4ededd073aa7fa562188916ac9944bd
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Oct 25 18:53:38 2017 -0700

    eliminate styles with empty prop values

commit b26820a59d9d6029bb0df3efdfd7ee171d859a17
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Oct 25 18:53:25 2017 -0700

    eliminate empty attributes

commit 8f603abbda4cb459c8c028c653b82336c5751c6f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Oct 25 18:52:54 2017 -0700

    [weird] fix bug where style doesn't get updated

commit b620ff07683a9e6e0004a1fb88c2199cc1b80bf0
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Oct 25 18:32:03 2017 -0700

    Support self-closing tags

commit 86d9e773af948b77ba31ce504acab4667cbc261b
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Oct 25 18:31:55 2017 -0700

    Remove deprecated charset='utf-8' from stylesheet links

commit 38535ef8d0e3db2f18580ebabcb5e06f4880d99d
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Oct 25 18:07:02 2017 -0700

    self close link tag

commit 1eb6baacd643e603a07617ddf3710f49b9b514c9
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Oct 25 18:04:30 2017 -0700

    better offline page layout

commit 18bb4980088b590adf67e60fd95b60ad7ae21bbd
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Oct 25 17:56:52 2017 -0700

    add basic service worker

commit 5657bf16e57508048a99a8e5f330d73d9e0a1567
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Oct 25 15:22:00 2017 -0700

    <link rel='preload' href='/bundle.js' ...>

commit 3849c4366632b4a1c105e59559c3660eb71d9052
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Oct 25 15:10:05 2017 -0700

    apple-mobile-web-app-capable = yes

commit 4ba53b4f612c97e21c7fee3ee4013800d6dc6af9
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Oct 25 15:09:54 2017 -0700

    Remove favicon tags

commit fc6fa0611ffd4c747b2e4a1c669ed661f1f043b4
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Oct 25 14:31:31 2017 -0700

    test on latest node

commit 5e0e18473dfbae3aa0d55e7b15fdfb66d2db4d60
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Oct 23 23:27:39 2017 -0700

    fix travis lts syntax

commit 596eae53f98cd11b6c942f970e88203bf291f427
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Oct 23 23:23:48 2017 -0700

    .travis.yml

commit 4708830f69b621bf4be0e1ffe68026fea872b4f1
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Oct 23 09:42:24 2017 -0700

    npm update

commit 627d955cae5637b8f24be5beeb0326fb3accadc8
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Oct 23 09:42:17 2017 -0700

    browser-pack-flat@3

commit 4234fee59a81a96f170aae54a45db42729bd77ce
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Oct 15 19:32:46 2017 -0700

    slug: increase max words to 15

commit 9cbb321cc8da43454ba15ea5a9a120a35f8e2103
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Oct 15 19:03:46 2017 -0700

    remove grow-subtle from codemirror and inputs
    
    codemirror can't handle it and the cursor position gets messed up

commit a74b46b219733b6595b2998d790b3ceb1aafec9c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Oct 14 16:40:14 2017 -0700

    better rainbow animation on mobile

commit 4f1ccccb7e753c35d1fdb26f52a01505e2146de2
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Oct 14 16:31:24 2017 -0700

    Add rainbow header loading animation! 🌈

commit 829c597dd1abe2bc09f8e0be10c7953ff07d02da
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Oct 14 16:25:31 2017 -0700

    rename #app container to #root

commit 4f7b5d577010f2f2835e7d7789affc2a07255f57
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Oct 14 15:01:28 2017 -0700

    Footer items should wrap as units, not by word

commit f788d7368c20b043fb3e80265c5b3f3faa5080f7
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Oct 14 14:42:49 2017 -0700

    revert header height to 50

commit 221580acd378af6c82bc1ae0db4c48cc94c66997
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Oct 14 14:38:50 2017 -0700

    Reset scroll position on page nav

commit 398ed4f9dc60d73171a5ef8d672f45628d1bc85e
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Oct 14 00:22:56 2017 -0700

    shorter

commit ef33eb543f04b666588077b768fbb2efdefcb9d8
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Oct 14 00:20:56 2017 -0700

    more fUn!~~ UX

commit 8758aaa4ade533b845a5cb2d5b2b84d0029cd6ac
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Oct 14 00:17:29 2017 -0700

    fix search back bug

commit 7c13b7280dad731c08144103630041f495887f81
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Oct 13 22:41:40 2017 -0700

    handle err

commit 20c96696c9c32b3c8f5b27df23ca6e44b1e54eff
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Oct 13 22:41:36 2017 -0700

    add nodefoo logo

commit b76d101a60388c205c9b3fbb1d68514d993ad7ac
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Oct 13 20:40:11 2017 -0700

    handle hash consistently

commit 657992edf3ef3b5f2b8c46a557146562d6e1413e
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Oct 13 20:39:11 2017 -0700

    don't include hash in store.location.url

commit 746ecf06d2a06abf53083d5ac00ce6ba9c1b2977
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Oct 13 19:58:59 2017 -0700

    Fix location link interception
    
    If the search part of the url (part after? in the url) is different,
    then it should be intercepted and handled by the app's router.
    Otherwise the browser handles it and it causes a full page refresh

commit 3902de63f0df02e4c2156a53b2ad6c8f5bb97dd2
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Oct 13 19:49:08 2017 -0700

    implement search!

commit 73930371a67efce95c6dfd311522e41fc28dbbf5
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Oct 13 19:42:15 2017 -0700

    router: add url and query options

commit bbcef2740e69e57f012fd4241f847942ff16a10b
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Oct 13 19:41:24 2017 -0700

    page component: better detection of changed params

commit 2819cdacf81b7110364fbcd75fbb01f46093329f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Oct 13 19:32:43 2017 -0700

    populate search results

commit 4cc5739c15ca54cac78bc9a426356e001634f2f2
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Oct 13 19:32:25 2017 -0700

    start implementing search

commit 3dc7eec7ee2e3e2534ed8869378af12d976237c3
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Oct 13 17:57:29 2017 -0700

    location: support url containing pathname+query

commit 41f932da0d35f0038175cdb3588369d991cdb6ae
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Oct 13 17:55:31 2017 -0700

    history: style

commit efa68bf099d34fa2781562a39b0b1e989e9615d5
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Oct 13 17:10:55 2017 -0700

    add search api method

commit ade0a734c6a9567b59a719371b5db5987eaa03a3
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Oct 13 14:43:08 2017 -0700

    better default codemirror placeholder color

commit 5be98570c7a7ac0cb0a74cde88da05f87f148ed6
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Oct 13 12:42:58 2017 -0700

    proper pluralization

commit b564ea29299cbbd229558f1677252f20c77c8f01
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Oct 13 12:38:40 2017 -0700

    sort snippets by votes

commit c81fbb76e06de56491b9402d424fa167f39c6c61
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Oct 13 12:34:55 2017 -0700

    Allow anonymous voting

commit 11fc713c596cd48c8fb764e95f1cf614572991a3
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Oct 13 12:05:01 2017 -0700

    Fix bug: submit button gets permanently disabled
    
    fill out snippet name, leave code blank. click submit. error shows,
    submit button does not get undisabled to allow submission

commit 376af08658325aea161c13676b2c4449763fc46a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Oct 13 11:57:56 2017 -0700

    Handle duplicate slugs, gracefully pick an alternative

commit af88ccda02e6832f9b345bf4f9e0c41c9d740295
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Oct 13 11:48:59 2017 -0700

    style

commit 1f6f2639422f21eb211d3fc907b32b508e97b754
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Oct 13 11:33:52 2017 -0700

    add slug as id column; change id to rowid

commit 02125615b0a3e3c9a39f912cd361f11a60bfc314
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Oct 13 11:33:39 2017 -0700

    Return 404 status on invalid snippet slug

commit 6b0c30fea4af8970f789160b48f2ffa88dc5b15b
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Oct 13 10:52:18 2017 -0700

    remove link focus outline css

commit 4c9a64eb47f4f8979422a70e36bb59001ad3ce6c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Oct 13 09:44:32 2017 -0700

    style

commit 47835a3e73d0a12e8848861ae28ab1205afd5afd
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Oct 12 19:35:44 2017 -0700

    style

commit 63ab438561996848d292c9b32819ecf118384515
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Oct 12 19:35:39 2017 -0700

    add slug method

commit d4b9b707aac7a9ae8fa21124a3c4c7fda31b6610
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Oct 12 19:35:23 2017 -0700

    Improve desc and readme

commit 49cd8ade2a9775a7bfe9b64a11b5be8d8e559923
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Oct 12 19:15:20 2017 -0700

    use ...rest on code-editor

commit b8ede7509c6b5acd97c9c74640409e4f57f47b95
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Oct 12 18:35:18 2017 -0700

    better codemirror design on submit page

commit 76dc56ddf3eb11be42d61da034af3ea73930ccbd
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Oct 12 18:26:14 2017 -0700

    Link to snippets from home page

commit 1b8235237660d3f69950573357dea9bf21faa7f8
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Oct 12 18:26:07 2017 -0700

    Better <Link> defaults (white color, underline hover)

commit f9c72cc9da1e39551af930f536866458a33e8170
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Oct 12 18:08:59 2017 -0700

    Fix navigating between same page type = no change

commit fe880ac8709a281786064a1252787e03a695a7d3
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Oct 12 17:49:56 2017 -0700

    improve <Loader>

commit d9a44297c85a1e6112e78e87595903e8c5dfd789
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Oct 12 17:01:30 2017 -0700

    use <Loader> on submit-page

commit 5ec1c3b35211abf9ac0bd2abc8c4e8186a455a5c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Oct 12 17:01:19 2017 -0700

    fix <Loader> double fade in

commit cc2034afa4a42b82c9142a7ce4204549f7f48cbb
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Oct 12 16:55:25 2017 -0700

    style

commit 1ecf7286b2adb80f0a45cb7146ede89ff84dd6c1
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Oct 12 16:53:15 2017 -0700

    add SnippetPage

commit 311811c79cdaf7bc82557ea7a8e67bfd3dcde4e8
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Oct 12 16:53:03 2017 -0700

    change <Loader> to take children and 'show' prop

commit c1ae543bf5882b5a01123697891f0195eeee9a05
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Oct 12 16:36:35 2017 -0700

    style

commit 96e4d98626f9163c5686add4cbae7fa79fd00429
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Oct 12 15:33:25 2017 -0700

    Make icon-loader component instead of using svg file

commit 2b457036474f364352c349c32cab80fe8529584a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Oct 12 15:33:14 2017 -0700

    highlight.js: make folder path match module name

commit 774d36aba30d6455c404b2eba912ed5ebec9895b
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Oct 12 15:32:50 2017 -0700

    Remove `npm run size-css`
    
    It was incomplete, missing several css files

commit 5b1a577c376023620232952d0305170634e292ac
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Oct 12 14:29:52 2017 -0700

    Make Image component that throws on missing alt tag

commit e3389ee8c0b1c01923416eafedf66d6993e6e240
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Oct 12 14:17:27 2017 -0700

    note that search is unimplemented

commit 46cda84340928e8733e3b3fa84fbe6eb25d72767
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Oct 12 14:17:19 2017 -0700

    remove default search autofocus

commit 247377145f0007cba49ce753c33daceaa146c8fa
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Oct 12 14:17:12 2017 -0700

    Change upvote to copy-to-clipboard button

commit 9ab659827b13b8d16fface6ef0374087d1262ce7
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Oct 12 13:11:53 2017 -0700

    style

commit cee82119330467126db561fe7d73538273046934
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Oct 12 13:11:46 2017 -0700

    simply browser entry-point

commit 0755e2449431ab399ffed0ef210d5bdc793e0f8a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Oct 12 12:37:07 2017 -0700

    add common-shakeify; replace bundle-collapser w/ browser-pack-flat

commit e4ded7b770736261035aff1c9ac069b1ac61558c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Oct 12 12:24:05 2017 -0700

    don't run breakdown in "npm run size"

commit 9d42e799fce188d21c65289858f3ec982b3137fd
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Oct 12 12:17:10 2017 -0700

    babel-eslint@8

commit a102114c724c20f53471f6cd26616771bc99d025
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Sep 3 11:23:31 2017 -0700

    rename FETCH_ to API_

commit b6f66ef8b89b2818b9d5b9806ca455dcc5d59229
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Sep 3 11:09:59 2017 -0700

    header link should be a span

commit badb45fe9d88f094f9f91e6c50b96c86633f78d3
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Sep 3 00:27:42 2017 -0700

    set initial vote count correctly

commit c600ea1c49259c096ac25961c2969773ec8a28b1
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Sep 3 00:14:48 2017 -0700

    send full voter list

commit ce17b8a89597f256b712775ab340ec8bcd00869d
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Sep 3 00:07:18 2017 -0700

    Add upvoting

commit 7d047f06866d83114e42fbfe9ff830874339bf23
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Sep 2 18:11:19 2017 -0700

    add autofocus to header search and submit name input

commit 574d1495fb67bb58d6c4553cc9cc845766321613
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Sep 2 17:46:29 2017 -0700

    remove stray console log

commit 5e3effc48297d86340fe63beb3a5911accd99b1d
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Sep 2 17:46:15 2017 -0700

    Set cookie for 1 year

commit 1d1d9685e13826adb1de0879cfb0e75514c88dbd
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Sep 2 17:45:52 2017 -0700

    remove logout button from header

commit 4622ee152ef929b0cfa54bba9e532b52e8a65be7
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Sep 2 17:45:31 2017 -0700

    pink theme

commit d85792f792fe884b5c08662fc917a27a84becc64
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Sep 2 17:29:15 2017 -0700

    clear submit page after submission

commit a4e299375539c2ed0d889647606e49fb82f9fd47
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Sep 2 17:28:42 2017 -0700

    better error handling

commit 0ccab103cdd0cd43f08cacfc7f8fdd7bd743d42c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Sep 2 17:12:19 2017 -0700

    fix error message display

commit 6f6dbb9c17f5face6a393a6c5fb3e2bc8b6cfe48
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Sep 2 17:12:12 2017 -0700

    fix disabled button opacity

commit c994a11ca37122aa53d7aab48a6f8227515193de
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Sep 2 01:09:10 2017 -0700

    redirect to homepage after submit

commit 069a1821a5d1952873cd5c633e6c1490d0f88dce
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Sep 2 01:06:02 2017 -0700

    lots of progress

commit e20ae7a5da8c7092a1493aff2fe5dcef18ca9794
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Sep 1 17:59:01 2017 -0700

    snippet style

commit bd159db1410b68f80522cc752c7e5e2df19c0c27
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Sep 1 17:40:23 2017 -0700

    snippet style tweaks

commit 14becbbe99b47e7b37ab698eb0cb908fb45deb8f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Sep 1 16:56:39 2017 -0700

    Fix invalid html entity escaping

commit 7aa882ce4fe2c91e8878480476811f2c1a322252
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Sep 1 16:38:18 2017 -0700

    add "powered by" to footer

commit 678fb0be7c4cc1e732820cf5c7c711758ed347dc
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Sep 1 16:21:48 2017 -0700

    make submit page look better

commit c2252a96ba5b62d9a7332cc06d9a7793640401db
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Sep 1 16:20:50 2017 -0700

    fix button style inconsistency between ButtonElements

commit 3be6e6d1f7954baafc9cce7e1c8a2fca7aa1436d
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Sep 1 16:20:31 2017 -0700

    Use .sans-serif class instead of .body-font

commit dc17850d8d35e81c4a1f1eff34cb6829a252d81a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Sep 1 14:48:08 2017 -0700

    fix case sensitive exception

commit f5284c83d03ca93382380aee724bf9d6178b99a4
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Aug 31 18:40:55 2017 -0700

    hide submit link on submit page

commit 6cb4e6686fef1f5f0922f62d9b2f566e23535ae8
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Aug 31 18:34:54 2017 -0700

    Add a footer

commit 7a1375087a40043ef101bebc69e1da4fcaf56061
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Aug 29 19:44:03 2017 -0700

    Lots of style improvements and progress

commit 3ce46c3fb4048abb988b7dc67b9da2f7a6055914
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Aug 29 19:43:36 2017 -0700

    simpler button and link onClick handling

commit 4010c97abb8a9ef09fac5728b58ab8c80179236a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Aug 29 19:42:08 2017 -0700

    truncate debug output from large objects on server

commit 6b692571d9cf291bbf4120da854a6e874ed7e1ca
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Aug 29 14:38:34 2017 -0700

    use http2

commit 6d83bd68e40b33b3f327bfa8c903372f5030dd64
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Aug 29 14:16:43 2017 -0700

    location: better matching of rel='external'

commit 805a438af9a4d6d7f34488f65c55e3d172ff3423
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Aug 27 22:44:03 2017 -0700

    fix for path-to-regexp@2

commit 779015da025bd414248e9f141eb93d86148ab939
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Aug 24 23:02:05 2017 -0700

    Prevent XSS with '</script>'

commit ac8c8095c3c105e3194408989a519faffc1174b7
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Aug 24 23:00:31 2017 -0700

    Fix HTML entities showing up in the page

commit 730c1de4e701b3e0c95598da9168c01f577675a4
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Aug 24 16:26:31 2017 -0700

    path-to-regexp@2

commit adac9d411076c3881c02ee1c426da7089f56dbd0
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Aug 24 16:26:23 2017 -0700

    add twitter profile pics to snippets

commit c3bd1741929ecb3422cb7ea7804d47033b921177
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Aug 24 16:26:09 2017 -0700

    better code editor padding; add auto scroll

commit a792fc1d6abf87ab510f303ed8b8549d3f771281
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Aug 24 16:25:39 2017 -0700

    don't bundle preact devtools

commit 2475e7ed35aa5e723712b3826c5fd586e5b5a924
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Aug 24 16:23:49 2017 -0700

    fix browser bundle bloat

commit b832b98dd5934067a3fa1524dabf159f535ecb68
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Aug 24 15:07:23 2017 -0700

    add author image to api

commit 4b3d1b82133a25c2be24610bc8bc4720d9f5254a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Aug 24 14:20:12 2017 -0700

    unify how api route errors are handled

commit 5ae9bc41c584804ed684d15b9049644765c81a6d
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Aug 24 13:59:20 2017 -0700

    make 404 error take the same code path as all errors

commit 2583a01d3276a6ba117b2069ce3d1c44c131397a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 23 19:45:57 2017 -0700

    code style; add title to error page

commit 33a6fdf72be903de16456567a7873bedd5fc51ea
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 23 18:53:27 2017 -0700

    add disabled button styling

commit 2951fee429a5b7a5f3b24814a84958b0be55a5e5
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 23 18:48:08 2017 -0700

    add loader to doc page

commit 5113b0dc46129b0571658401c8d137b9538ce5d5
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 23 18:44:49 2017 -0700

    add loader to home page

commit cb3f072da71e2c7e64a1be9302211b2c7c16db08
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 23 18:11:41 2017 -0700

    move unlimited() to server.listen() callback

commit b6000f70a4e26ac0ebdb22bcd2ce8a39c69e10ae
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 23 18:01:25 2017 -0700

    Fix unstyled flash on load

commit 7c512304ef81188ad9030abf99a8a752cfd852b5
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 23 18:00:45 2017 -0700

    Add Google Analytics

commit bac2288d8c0b404172b207ebd1605422b5a32651
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 23 17:49:44 2017 -0700

    Fix unstyled flash on load

commit 0345a5c90f1085d03cf6c1c6f7f8f112c60bc8ee
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 23 01:55:57 2017 -0700

    move handleRender() out

commit 9f4a7a8469cb4c097512c6687c5fc7a5165e09b9
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 23 01:02:31 2017 -0700

    not found page -> error page

commit 08796b53df19ac79efb20f11fc06021b8097e2a8
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 23 00:30:12 2017 -0700

    Move render router to app.js so the error route actually catches errors

commit 3a6325b330aa6a403175d57a1ac08444bedaf734
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 23 00:25:17 2017 -0700

    Handle errors with the server-side render path

commit 4f891e5cf9a5238e38a4331d6d5a0111b213956e
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 23 00:22:36 2017 -0700

    remove stray log

commit 284600428cf8c1aa743fb40943a3b1ccceeb3f82
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 23 00:20:48 2017 -0700

    don't clear errors

commit fb1ae69585e4cf1982c45ef38d819a9742d2a32f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Aug 20 21:26:15 2017 -0700

    Make buttons use the semantic element depending on context
    
    <a> vs. <button>

commit 5bf082d71e7eebff84921c57c3054365b2289f31
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Aug 20 21:25:41 2017 -0700

    make submitting snippets work! 👍

commit f77941cd1e37cb048c3586aa81176c05c30dfba4
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Aug 20 19:31:18 2017 -0700

    hook up home page to the db backend

commit 26afb39f1fc0f8bc8d80b9689680d2ea13cf49ae
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Aug 20 18:34:11 2017 -0700

    add snippet add/get/all API endpoint

commit e9e4c1bd700713b2c2ddae7c6bc506d1924b3dd7
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Aug 20 17:16:11 2017 -0700

    Add Twitter Login and Logout, with header button

commit 34598fd934b03c89b6b950bc5b3ef99be600517e
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Aug 19 22:27:33 2017 -0700

    Snippet List on home page

commit 61253ec326d831199f27607da4962474c83b53ca
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Aug 19 20:44:22 2017 -0700

    SubmitPage: add submit button

commit b7007227f55dac1378725bd21b29237bd15bb219
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Aug 19 20:44:14 2017 -0700

    CodeEditor: add placeholder support

commit d73ca8ab5e4c989f16a1f123a995210d293be10c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Aug 19 20:43:44 2017 -0700

    add button component

commit 829cd1341c6f0e46a35b259a819d8e8d29aff7f6
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Aug 19 20:11:52 2017 -0700

    add basic /submit page

commit 06e041c222eae742946285e710e0ad95007a5a6d
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Aug 19 20:11:20 2017 -0700

    use babel-plugin-transform-class-properties

commit 5f01ee7ea0658f286977b89eac848de30b2eeeaa
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Aug 19 15:32:03 2017 -0700

    Queue a final update() call when dispatch() is called during an update()
    
    That way synchronous dispatches that change the page title from a Page
    component during a render will actually get applied.
    
    Previously, the update() triggered by the title change was getting
    ignored by the check in update() to prevent infinite recursion.

commit 45ba97936f2e24b4244fac67690539fe251093b1
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Aug 19 15:21:59 2017 -0700

    use <Title> component to set the title

commit 5d973aa84aba52734b16ef94e118b782e45f7425
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Aug 19 15:20:29 2017 -0700

    change skipped logs to verbose logs

commit 4ab80f991567d452e90ac17b17e403ce45708b9f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Aug 19 15:20:11 2017 -0700

    add convenience debug() function
    
    debug(true) // enable logs
    debug(true, true) // enable verbose logs
    debug(false) // disable logs

commit 1bb4e08ff4820798e73fb0012af869925261345e
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Aug 19 15:19:37 2017 -0700

    add "npm run size-js-breakdown" script

commit 33f72142aec33edf6d683e37b3d1d32ee65e6724
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Aug 19 02:13:47 2017 -0700

    make docs page look nice

commit 5a2eee0b8916819c726ac97e95fceb8eea23ee93
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Aug 17 22:24:38 2017 -0700

    Doc pages return 404 errors correctly

commit 1350b89e12d0048dee1c398e7f53194f0c0a53ba
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Aug 17 21:55:05 2017 -0700

    api: return 404 from api endpoint

commit ba71ec472f6316690a7531dc0e07ecdce60028be
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Aug 17 20:14:24 2017 -0700

    api.doc: don't crash on error

commit fb77e53aef9dbf939b4f84b84fb0fb14ea512332
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Aug 17 19:45:08 2017 -0700

    improve first load on doc page (reuse server store state)

commit c7718ec1bd0c63174ffb25d85e772861f3d920b5
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Aug 17 19:15:43 2017 -0700

    remove unused dep

commit d8f48f6b3cbef22dc4ea4b8045e32a5250534bd6
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Aug 17 15:37:33 2017 -0700

    use babel-minify instead of babili

commit 0a8b0de98234e15eafeb7989de80ea6d20ff85fb
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Aug 17 15:25:16 2017 -0700

    debug@3

commit f3e25b89de9ddcc4837980963b0d05bc4421554b
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Aug 17 15:23:05 2017 -0700

    case sensitive filesystem

commit 4c122c93f2b82be0e6a49fd97c8f7be39f932b4f
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Aug 17 15:18:05 2017 -0700

    babel-plugin-transform-object-rest-spread is a production dep

commit 4a3c4e23487e21733119f5f437d343b21819483d
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Aug 17 15:12:57 2017 -0700

    add missing dep

commit f047018198bf143900194c33264f7887a717129d
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Aug 17 15:09:51 2017 -0700

    supervisor

commit 9fd90c31008fcbdcebba1e0524dcdf608564b62a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Aug 17 15:03:43 2017 -0700

    render markdown

commit 775d6d15ce317335d441a51448ed004db6f64c0e
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 16 19:49:35 2017 -0700

    server side rendering works!

commit 2fb81199038dc7c94a826621347bce0541c873bd
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Wed Aug 9 14:45:43 2017 -0700

    progress

commit 69f01d93570b3b45c4758ed43260de4f4e157566
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Aug 8 18:17:47 2017 -0700

    doc page progress

commit 71fbb6d5f53bc4cdbb5109e5bbcc29824093bae7
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Aug 8 18:08:38 2017 -0700

    progress

commit 6d6f12d07632a66b72c19d217ba2cc13f6e30f82
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Aug 8 16:32:03 2017 -0700

    start transition to preact

commit 835517cd9c237c01806f11b438b1d988b36ee719
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Tue Aug 8 16:14:53 2017 -0700

    update docs

commit 413d6aaa4afe009af60aecbfea97cafd69dc599a
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jun 23 16:03:37 2017 -0700

    progress

commit b63c0313c60bad683b54a37c84287ef2bd49aac9
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jun 19 16:42:50 2017 -0700

    add nanologger

commit 1fa47ff1bf27bdd384d1fdc823bd28aae02df2ba
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jun 19 16:36:44 2017 -0700

    progress

commit 3973a727a906c70dd987775da80ae1964409c539
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jun 19 16:14:42 2017 -0700

    unassertify, yo-yoify, bundle-collapser

commit 465ddcaa6436efdcd9ff70b43b0b4f8e00acdd86
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Mon Jun 19 15:21:00 2017 -0700

    progress

commit d8cd86dbf2065a1998250450682f386d07d10434
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 18 16:51:00 2017 -0700

    enable and force ssl

commit 2ae4645f4e15042dea5b65ef6054ef1568971e8c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 18 16:05:31 2017 -0700

    add style.css

commit d7fb9bc311c6b29a4576fd5413f719d08625f53d
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 18 15:59:36 2017 -0700

    disable ssl

commit 8ec521a49604b08f7087348763389ab65a8df5c6
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sun Jun 18 15:42:45 2017 -0700

    add choo stuff

commit 6d0ba3210f9b2740a88f6f51c97e08ebb1142e96
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 17 01:19:33 2017 -0700

    secret sample

commit bc52dcba02abc9fc41e14264eefee9b7df54ca96
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 17 01:19:20 2017 -0700

    placeholder for db folder

commit 0c982e713140359e694789259995b6439e6500c1
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 17 01:18:40 2017 -0700

    add deploy.sh

commit c520b1f245c612f925885b79d7eb4dfb3c0e043c
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 17 01:18:32 2017 -0700

    add 500.html

commit 78cd1fafcbe57dfcdb8e86f8114476354ee3cfb2
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 17 00:53:09 2017 -0700

    nginx supervisor

commit 1cc732e63b4889f7334fc724c0ab655640c3c227
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Sat Jun 17 00:53:04 2017 -0700

    readme

commit a33628baefc1badee252058e5de6d76ad2862fd6
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jun 16 23:27:00 2017 -0700

    add fs docs

commit 2f491d99e23adb5c6169d8b5c4dac53b01126327
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Fri Jun 16 23:26:54 2017 -0700

    add fs doc generator

commit 699389a73370975c491e48d3b44f439569445618
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jun 15 17:21:27 2017 -0700

    gitignore

commit bc89aafd6c41726d9e06c5a6d9f4660328d6ff27
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jun 15 17:19:49 2017 -0700

    pull node docs

commit eb73862de13b77683e9a1210be543f0b90443084
Author: Feross Aboukhadijeh <feross@feross.org>
Date:   Thu Jun 15 15:43:02 2017 -0700

    initial commit
