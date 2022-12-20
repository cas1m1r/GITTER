======================: FILES :======================
======================: BRANCHES :======================
======================: LOGINFO :======================
commit b0495fcab19dbb5463172d3e80760c366ca8d43a
Merge: ac1e417 49919d5
Author: James Hawkins <47497682+jamesefhawkins@users.noreply.github.com>
Date:   Tue Mar 22 14:56:50 2022 +0000

    Merge pull request #25 from hspotorno/main
    
    Add getinsights.io as an alternative

commit 49919d57143e20763275ddada19b12270664e207
Author: Henrique Spotorno <henrique.spotorno@gmail.com>
Date:   Thu Feb 24 18:01:39 2022 +0100

    Add getinsights.io as an alternative

commit ac1e41703797711e9a16290e396da0b374b895d3
Merge: 587c544 25ff3de
Author: Eli Kinsey <eli@ekinsey.dev>
Date:   Thu Feb 10 10:57:57 2022 -0800

    Merge pull request #22 from PostHog/table-readability
    
    Table readability

commit 25ff3debd14489a861c2e185e183ec81ade0ca5a
Merge: fbf61c5 587c544
Author: Eli Kinsey <eli@ekinsey.dev>
Date:   Thu Feb 10 10:55:29 2022 -0800

    Merge branch 'main' into table-readability

commit 587c54442dc4f71f6f054e315bb5ef3015c783f3
Merge: 975ceeb c72f849
Author: Eli Kinsey <eli@ekinsey.dev>
Date:   Thu Feb 10 10:53:43 2022 -0800

    Merge pull request #13 from Kugelschieber/PostHog-main
    
    Add Pirsch Analytics

commit c72f84950715b9305e946c96584332d3fbb681e3
Merge: 90fd4fa 975ceeb
Author: Eli Kinsey <eli@ekinsey.dev>
Date:   Thu Feb 10 10:51:38 2022 -0800

    Merge branch 'main' into PostHog-main

commit 975ceeb7a7f0a06ad2df2b0d0e650df7694fefae
Merge: 187925d dfbaaa5
Author: Eli Kinsey <eli@ekinsey.dev>
Date:   Thu Feb 10 10:50:13 2022 -0800

    Merge pull request #11 from shafy/add_fugu
    
    Add Fugu to alternatives

commit dfbaaa5395a4d222ed88118ceaf59460748df102
Merge: 292051a 187925d
Author: Eli Kinsey <eli@ekinsey.dev>
Date:   Thu Feb 10 10:47:22 2022 -0800

    Merge branch 'main' into add_fugu

commit 292051a9921114547ed564f266b5d8fda9e78376
Author: Eli Kinsey <eli@ekinsey.dev>
Date:   Thu Feb 10 10:44:59 2022 -0800

    Delete .gitpod.yml

commit 90fd4fa25efa75e9c6c176d93a59b1e1146a39e7
Author: Marvin Blum <marvin.blum@emvi.com>
Date:   Thu Feb 10 19:44:26 2022 +0100

    Fixed missing brace.

commit 187925d2e62256d716735074d4aca22c335fb73f
Merge: 5c2a1be 7cff4d6
Author: Eli Kinsey <eli@ekinsey.dev>
Date:   Thu Feb 10 10:44:05 2022 -0800

    Merge pull request #19 from winsmith/main
    
    Add TelemetryDeck to the alternatives page

commit 7cff4d6bb6206773ea1ad0a036de6a73b9b0616f
Merge: 8b29c97 5c2a1be
Author: Eli Kinsey <eli@ekinsey.dev>
Date:   Thu Feb 10 10:41:39 2022 -0800

    Merge branch 'main' into main

commit 5c2a1be1c99101b87f49f710dbb0cde7d70165c8
Merge: 9493a3f 7a6f8aa
Author: Eli Kinsey <eli@ekinsey.dev>
Date:   Thu Feb 10 10:36:51 2022 -0800

    Merge pull request #18 from adriaanvanrossum/patch-1
    
    Add Simple Analytics

commit 7a6f8aae34f9beb22c56d6091efbf944e6ffae20
Merge: be28272 9493a3f
Author: Eli Kinsey <eli@ekinsey.dev>
Date:   Thu Feb 10 10:34:20 2022 -0800

    Merge branch 'main' into patch-1

commit 08949fada663617551453e253d0c49b462f5ee14
Merge: 20b3a81 9493a3f
Author: Marvin Blum <6115423+Kugelschieber@users.noreply.github.com>
Date:   Thu Feb 10 19:28:40 2022 +0100

    Merge branch 'main' into PostHog-main

commit 9493a3f0c6598bd95af3a4982cd2420993d6e27f
Merge: 687e368 a99e706
Author: Charles Cook <charles@posthog.com>
Date:   Thu Feb 10 18:26:02 2022 +0000

    Merge pull request #23 from PostHog/france
    
    Add France

commit a99e70655abd59ee7560b82f027d9875d45a813a
Author: Eli Kinsey <eli@ekinsey.dev>
Date:   Thu Feb 10 10:08:41 2022 -0800

    add france

commit fbf61c59da5e8b31a3bb5aa59fbc8b5114f9581a
Author: Cory Watilo <corywatilo@gmail.com>
Date:   Thu Feb 10 12:30:23 2022 -0500

    align trs

commit 9bb44f42a15f79af918150fd4338422b5f043d7f
Author: Cory Watilo <corywatilo@gmail.com>
Date:   Thu Feb 10 12:25:07 2022 -0500

    fit alternatives table better on narrow screens

commit 8b29c975bafd147fd339737dd0f699d6f8a15d58
Author: Daniel Jilg <winsmith@winsmith.de>
Date:   Mon Jan 24 13:06:59 2022 +0100

    Add TelemetryDeck to the alternatives page

commit be282728c1f700b201cb5d690f03077a13b4f2d2
Author: Adriaan <1079135+adriaanvanrossum@users.noreply.github.com>
Date:   Sat Jan 22 09:34:27 2022 -0800

    Remove .com

commit 67be38c05052eb734c6a7c0074a40157e5095cd5
Author: Adriaan <1079135+adriaanvanrossum@users.noreply.github.com>
Date:   Sat Jan 22 09:33:11 2022 -0800

    Add Simple Analytics

commit 687e3685e2c8358bab22d8b12235bde5e142e49c
Merge: 4661947 812aa1a
Author: Eli Kinsey <eli@ekinsey.dev>
Date:   Thu Jan 20 21:34:42 2022 -0800

    Merge pull request #14 from peterk/patch-2
    
    Update alternatives.js

commit 812aa1ab06e023bbe48c1fd16316b307eed3636c
Merge: 657b55e 4661947
Author: Eli Kinsey <eli@ekinsey.dev>
Date:   Thu Jan 20 21:31:56 2022 -0800

    Merge branch 'main' into patch-2

commit 46619473020ab26a912228e223a7ba18940b4856
Merge: ebcacb7 3490ffb
Author: Eli Kinsey <eli@ekinsey.dev>
Date:   Thu Jan 20 21:31:32 2022 -0800

    Merge pull request #17 from allinurl/main
    
    Add GoAccess as a Google Analytics alternative

commit 20b3a8185482b876294f6084b8db08a826c57c52
Author: Marvin Blum <6115423+Kugelschieber@users.noreply.github.com>
Date:   Thu Jan 20 16:01:52 2022 +0100

    Product description.
    
    Co-authored-by: Joe Martin <84011561+joethreepwood@users.noreply.github.com>

commit 3490ffb7dd6cba90a60753c483d2c1267d7ebfb5
Author: Gerardo O <goaccess@prosoftcorp.com>
Date:   Wed Jan 19 18:55:52 2022 -0600

    Add GoAccess as a Google Analytics alternative

commit 657b55eb0cb664ab7fd39db0548bb1b620204184
Author: Peter Krantz <peter.krantz@gmail.com>
Date:   Wed Jan 19 19:05:23 2022 +0100

    Update alternatives.js
    
    Added two new analytics services

commit 9cf3bf2864a94ff82c383fc0d706097edb3409f4
Merge: e8fe79d ebcacb7
Author: Marvin Blum <marvin.blum@emvi.com>
Date:   Wed Jan 19 18:40:09 2022 +0100

    Merge branch 'main' of https://github.com/PostHog/isgoogleanalyticsillegal.com into PostHog-main

commit eab7c417308c4bacececce5a2c09e675b315ba18
Author: Can Olcer <canolcer@hey.com>
Date:   Wed Jan 19 17:08:13 2022 +0000

    chore: added Fugu to alternatives

commit ebcacb721c0f06047a10810ee23ef1f47fa1ca34
Merge: 7e80c34 d7ec4a2
Author: Eli Kinsey <eli@ekinsey.dev>
Date:   Wed Jan 19 08:45:23 2022 -0800

    Merge pull request #10 from PostHog/fix-fonts-n-things
    
    Fix fonts n things

commit d7ec4a2d3d055850b202a573ba7ae50ebd457533
Author: Cory Watilo <corywatilo@gmail.com>
Date:   Wed Jan 19 11:42:35 2022 -0500

    back link color

commit f9b28d10ad672286e8890b134306c7349c136911
Author: Cory Watilo <corywatilo@gmail.com>
Date:   Wed Jan 19 11:40:07 2022 -0500

    give first letter a little breathing room

commit 046d2180edd7ec839e7201260c684d6f020bb503
Author: Cory Watilo <corywatilo@gmail.com>
Date:   Wed Jan 19 11:38:37 2022 -0500

    fix bold fonts

commit 7e80c34be498f5ae03d50a87157f1e40838c471d
Author: Eli Kinsey <eli@ekinsey.dev>
Date:   Wed Jan 19 08:06:13 2022 -0800

    redirect

commit 32e526e0d6cfa220d256dbe118d821573f8b26a3
Merge: 66061d3 a4bf450
Author: Eli Kinsey <eli@ekinsey.dev>
Date:   Wed Jan 19 07:57:20 2022 -0800

    conflicts

commit 66061d3e77902caf84482b11f888feea8dd615e9
Author: Eli Kinsey <eli@ekinsey.dev>
Date:   Wed Jan 19 07:56:38 2022 -0800

    self-host fonts

commit a4bf45065f1f2a06f59d51f2f54384c50874dd19
Merge: 96ef3a0 1f15f5c
Author: Tim Glaser <tim@posthog.com>
Date:   Wed Jan 19 15:48:20 2022 +0000

    Merge pull request #9 from PostHog/rename-alternative-page
    
    Add alternatives redirect

commit 96ef3a0e7cfc4ecce737e7ab7ad10dbd000a48d8
Merge: 9ab6d30 a749f8b
Author: Tim Glaser <tim@posthog.com>
Date:   Wed Jan 19 15:46:41 2022 +0000

    Merge pull request #8 from PostHog/clearer-wording
    
    avoid confusion around product analytics term

commit a749f8b150b7e5d77d4486608acf82fd28a437f6
Author: James Hawkins <47497682+jamesefhawkins@users.noreply.github.com>
Date:   Wed Jan 19 15:46:02 2022 +0000

    avoid confusion around product analytics term

commit 1f15f5cfc637e413db99576ff1a8e1efcf3ed4f7
Author: Tim Glaser <tim@glsr.nl>
Date:   Wed Jan 19 15:43:26 2022 +0000

    Add alternatives redirect

commit 9ab6d30ab76d2433a830313cab8bcc60887807ae
Merge: 94b133b a91ca6f
Author: Tim Glaser <tim@posthog.com>
Date:   Wed Jan 19 15:36:33 2022 +0000

    Merge pull request #7 from PostHog/rename-alternative-page
    
    Rename alternative page

commit a6135ebd67e6f6690952847bc40c8c8f5b52a3ea
Merge: 7a72928 94b133b
Author: Eli Kinsey <eli@ekinsey.dev>
Date:   Wed Jan 19 07:34:53 2022 -0800

    Merge branch 'main' of https://github.com/PostHog/isgoogleanalyticsillegal.com

commit 7a72928ef007fe4235032e945a0bb1e6ffae6d97
Author: Eli Kinsey <eli@ekinsey.dev>
Date:   Wed Jan 19 07:34:33 2022 -0800

    remove cookies

commit a91ca6f861b0d77bea01f5b135d23bb96d0d2870
Author: Tim Glaser <tim@glsr.nl>
Date:   Wed Jan 19 15:34:09 2022 +0000

    Rename alternative page

commit e8fe79d2bee99d7bcec328ea2eef22a91d0da008
Author: Marvin Blum <marvin.blum@emvi.com>
Date:   Wed Jan 19 16:13:14 2022 +0100

    Added Pirsch Analytics to list of alternatives.

commit 94b133b7864fad273ae99bb7c984a6c9bd386248
Merge: 642a55d 24082eb
Author: Charles Cook <charles@posthog.com>
Date:   Wed Jan 19 14:36:24 2022 +0000

    Merge pull request #4 from PostHog/james-charles-edits
    
    added more alternatives and their detail, made it clearer this lists …

commit 24082eb70ad6a804bf693660e13cdd199fc0869e
Author: Cory Watilo <corywatilo@gmail.com>
Date:   Wed Jan 19 08:48:13 2022 -0500

    style cleanup

commit a960c4d42162d88ca3171d0b530141721bf4c306
Merge: 7b11296 642a55d
Author: James Hawkins <47497682+jamesefhawkins@users.noreply.github.com>
Date:   Wed Jan 19 13:20:34 2022 +0000

    Merge branch 'main' into james-charles-edits

commit 642a55dfb5feeadde845c538a34b7fb52ae9c4ff
Author: James Hawkins <47497682+jamesefhawkins@users.noreply.github.com>
Date:   Wed Jan 19 13:20:18 2022 +0000

    Update README.md

commit c5d8bdc6879ce504d7b133d839b5f92dde78d504
Author: James Hawkins <47497682+jamesefhawkins@users.noreply.github.com>
Date:   Wed Jan 19 13:12:09 2022 +0000

    Update README.md

commit b68b5c67ecc11abde385347f193ae2d327f3a836
Author: James Hawkins <47497682+jamesefhawkins@users.noreply.github.com>
Date:   Wed Jan 19 13:11:15 2022 +0000

    Update README.md

commit 7b11296724c5c46a77286b903b025c51eb8f0956
Merge: ba86bcc 64d7206
Author: James Hawkins <47497682+jamesefhawkins@users.noreply.github.com>
Date:   Wed Jan 19 12:30:10 2022 +0000

    Merge branch 'main' into james-charles-edits

commit 64d7206a6b47a6fab287e5e7d0cd5694bf7749a3
Author: James Hawkins <47497682+jamesefhawkins@users.noreply.github.com>
Date:   Wed Jan 19 12:27:17 2022 +0000

    Update README.md

commit 4c9e00f9369fcbab3cdb80b78344db3e67e9de8d
Author: James Hawkins <47497682+jamesefhawkins@users.noreply.github.com>
Date:   Wed Jan 19 12:22:17 2022 +0000

    Update README.md

commit ba86bcc98aa3d9f871fac0bea7b02cde4aa8c5ce
Author: James Hawkins <james@posthog.com>
Date:   Wed Jan 19 12:15:30 2022 +0000

    added more alternatives and their detail, made it clearer this lists rulings versus being guidance

commit db6840543e12afd4c6f6e78963e5311ff1752610
Author: Eli Kinsey <eli@ekinsey.dev>
Date:   Tue Jan 18 21:01:19 2022 -0800

    safari ticker

commit 68bd1aee68c597ef411c33f2b59bac53e70b382b
Merge: 0c7858f 0dc1145
Author: Eli Kinsey <eli@ekinsey.dev>
Date:   Tue Jan 18 20:41:28 2022 -0800

    Merge pull request #2 from PostHog/alternatives
    
    Add Google Analytics alternatives

commit 0dc1145c392f0c44232e26a5f1092807177c7bf4
Author: Eli Kinsey <eli@ekinsey.dev>
Date:   Tue Jan 18 20:26:18 2022 -0800

    add alternatives

commit 0c7858fb1311e97f0a805b17a00ad60e739e0d63
Merge: 99d3180 95cda7d
Author: Eli Kinsey <eli@ekinsey.dev>
Date:   Tue Jan 18 12:52:14 2022 -0800

    Merge pull request #1 from PostHog/polish
    
    Polish

commit 95cda7dc36a9c7f1dee8008a44bfc379bd770847
Author: Eli Kinsey <eli@ekinsey.dev>
Date:   Tue Jan 18 12:50:01 2022 -0800

    furnished by -> brought to you by

commit b2d1efb2f22433041ebfee70df4f8bf6e277777d
Author: Eli Kinsey <eli@ekinsey.dev>
Date:   Tue Jan 18 12:49:05 2022 -0800

    fix svg text on mobile

commit 681b0e97b96510c3464bde91df0ab39517d20421
Author: Eli Kinsey <eli@ekinsey.dev>
Date:   Tue Jan 18 12:43:02 2022 -0800

    add posthog

commit 321288337b0e06deb59b97fe232862df0dbf231f
Author: Eli Kinsey <eli@ekinsey.dev>
Date:   Tue Jan 18 12:37:00 2022 -0800

    add favicon

commit b572be18691c48b0e14980963f9c9c72680641b5
Author: Eli Kinsey <eli@ekinsey.dev>
Date:   Tue Jan 18 12:27:16 2022 -0800

    og image

commit b987329ea75713131e2b3a040eee86fcc14b69c1
Author: Eli Kinsey <eli@ekinsey.dev>
Date:   Tue Jan 18 12:25:38 2022 -0800

    mobile map

commit a6ba4b83163413f8ff497868d713f782a11b24a0
Author: Eli Kinsey <eli@ekinsey.dev>
Date:   Tue Jan 18 11:58:48 2022 -0800

    share text and hashtag

commit 5d59e87732a078d1920bfeedea18a3c3831c57d4
Author: Eli Kinsey <eli@ekinsey.dev>
Date:   Tue Jan 18 11:51:45 2022 -0800

    footer logo margin

commit 5e96f73eccbbb15f5f4579fb92d9b9378220f720
Author: Eli Kinsey <eli@ekinsey.dev>
Date:   Tue Jan 18 11:50:39 2022 -0800

    full-width buttons on mobile

commit bf86fe163db2577be59d96e8213e6c1d1c8ae022
Author: Eli Kinsey <eli@ekinsey.dev>
Date:   Tue Jan 18 11:44:57 2022 -0800

    center twitter on homepage mobile

commit b0eddaf5f2f0840f0a3e80fc83bb3afbe7faed34
Author: Eli Kinsey <eli@ekinsey.dev>
Date:   Tue Jan 18 11:41:05 2022 -0800

    add links

commit 3cbd03ec7eab85da8c31c34cdc3e880ea44180fb
Author: Eli Kinsey <eli@ekinsey.dev>
Date:   Tue Jan 18 11:38:09 2022 -0800

    credit amCharts

commit 1bc18a6588b2337d52741f341c4231ce7f9f66d0
Author: Eli Kinsey <eli@ekinsey.dev>
Date:   Tue Jan 18 11:29:32 2022 -0800

    footer border

commit 7ec8d84fe096b46af844a02a40d9b49b08ca13ad
Author: Eli Kinsey <eli@ekinsey.dev>
Date:   Tue Jan 18 11:26:03 2022 -0800

    fix svg text

commit 835260a0eec516254cdffeef94a4cf96a5284cb4
Author: Eli Kinsey <eli@ekinsey.dev>
Date:   Tue Jan 18 11:15:31 2022 -0800

    slow ticker

commit 847e1c2e8f4b3f16a4c03bbe7824caed12072f54
Author: Eli Kinsey <eli@ekinsey.dev>
Date:   Tue Jan 18 11:14:15 2022 -0800

    fonts

commit bd3236a85ff9db2da97d282c78f732f489a61702
Author: Eli Kinsey <eli@ekinsey.dev>
Date:   Tue Jan 18 10:46:16 2022 -0800

    update footer link

commit 99d31801b8dce6a7294416fdf9b6aee8c0d35f2a
Author: Eli Kinsey <eli@ekinsey.dev>
Date:   Tue Jan 18 10:16:48 2022 -0800

    update font

commit 2cc8e3755f38ce4d03dc9158b0af638bf54dff32
Author: Eli Kinsey <eli@ekinsey.dev>
Date:   Tue Jan 18 09:10:22 2022 -0800

    responsive

commit ecdae133dfbbd041730ee8cf7bc2c7059807c36d
Author: Eli Kinsey <eli@ekinsey.dev>
Date:   Tue Jan 18 08:58:50 2022 -0800

    update siteUrl

commit e812413f48d2ab217dcffb8854fab344c5b247cb
Author: Eli Kinsey <eli@ekinsey.dev>
Date:   Tue Jan 18 08:49:57 2022 -0800

    initial commit

commit b8d75a23d9f677db8e52b2dcac0ced8999bb4c07
Author: Eli Kinsey <eli@ekinsey.dev>
Date:   Mon Jan 17 16:04:31 2022 -0800

    Initial commit from gatsby
