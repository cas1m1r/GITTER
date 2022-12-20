======================: FILES :======================
======================: BRANCHES :======================
======================: LOGINFO :======================
commit 4817a9f23e463c5b17f7374f521488423df3ffae
Author: Max Bigras <mbigras22@gmail.com>
Date:   Thu Nov 3 22:31:54 2022 -0700

    Pass GITHUB_TOKEN secret through GITHUB_TOKEN environment variable

commit fe811c933861ed8840e9a30ea96014aacd77ea20
Author: Max Bigras <mbigras22@gmail.com>
Date:   Thu Nov 3 22:29:40 2022 -0700

    Fix gh repo clone command

commit 36d71c6f22cc2e8248c4456b71da46f3c3d8db78
Author: Max Bigras <mbigras22@gmail.com>
Date:   Thu Nov 3 22:28:51 2022 -0700

    Fix gh repo checkout command

commit 375efa70adba8680797e5d034b8f1810c70e8ab0
Author: Max Bigras <mbigras22@gmail.com>
Date:   Thu Nov 3 22:26:44 2022 -0700

    Remove checkout.sh script since that's not checked out yet

commit 141079743e541967a29623bdef6dfa0d18f14fa0
Author: Max Bigras <mbigras22@gmail.com>
Date:   Thu Nov 3 22:21:22 2022 -0700

    Add checkout.sh script

commit 2e62b0853a5334bb92f2d2e9cee0328b48d8225c
Author: Max Bigras <mbigras22@gmail.com>
Date:   Wed Nov 2 18:33:50 2022 -0700

    Add test.sh script

commit ef7757b7158e530646455eeab4bbb0fe13563ebe
Author: Max Bigras <mbigras22@gmail.com>
Date:   Wed Nov 2 18:33:15 2022 -0700

    Add healthcheck

commit d5a64055b5efb67f352443b43b1b56666fa9e439
Author: Max Bigras <mbigras22@gmail.com>
Date:   Sun Oct 30 10:16:35 2022 -0700

    Add EXPOSE Dockerfile directive for Traefik port detection
    
    See https://doc.traefik.io/traefik/providers/docker/#port-detection.

commit 009299c62b208953973dd29f45fb03b34315c32a
Author: Max Bigras <mbigras22@gmail.com>
Date:   Thu Oct 27 23:21:15 2022 -0700

    Bump actions/checkout GitHub Action

commit 427796774e49ac1fc6ec8ca0e24368e9c9c54b17
Author: Max Bigras <mbigras22@gmail.com>
Date:   Thu Oct 27 23:19:26 2022 -0700

    Guess that single quote is a problem for GitHub Actions

commit 435fe859f3b743d95f82448a8df1f7c6f5c35379
Author: Max Bigras <mbigras22@gmail.com>
Date:   Thu Oct 27 23:17:43 2022 -0700

    Add work in progress deployment scripts (#4)

commit 3cc67f7982919be8530cd7600e1ed70fd60b99c8
Author: Max Bigras <mbigras22@gmail.com>
Date:   Thu Oct 27 19:37:12 2022 -0700

    Add GitHub Actions

commit 77447625d89aa09b9b80bebc89f13b83d118fcd6
Author: Max Bigras <mbigras22@gmail.com>
Date:   Thu Oct 27 18:23:01 2022 -0700

    Fix punctuation

commit 94b4ce8c8af73a160aac86c0d3c2c864442df2d8
Author: Max Bigras <mbigras22@gmail.com>
Date:   Thu Oct 27 18:11:24 2022 -0700

    Change from version to tag

commit b46edb54bb829b892e19dc72a640db45b0521a1f
Author: Max Bigras <mbigras22@gmail.com>
Date:   Sun Oct 16 18:55:14 2022 -0700

    Enable pretty print JSON

commit ec44d7ff31147b69264ffc08e54ead46b2ee2e1f
Author: Max Bigras <mbigras22@gmail.com>
Date:   Thu Oct 13 00:10:43 2022 -0700

    Add features array with feature1

commit 076de664d3dab10543e7cf48ab30da310bdd322b
Author: Max Bigras <mbigras22@gmail.com>
Date:   Sun Oct 9 18:33:50 2022 -0700

    Fix VERSION environment variable typo

commit 73a0f6c1ed89d2165bc99d37cbf0f4333f9a0fb6
Author: Max Bigras <mbigras22@gmail.com>
Date:   Sun Oct 9 18:20:03 2022 -0700

    Remove GitHub Actions

commit 24930172deffc1d1dacc38943fdf12e43cfeefbc
Author: Max Bigras <mbigras22@gmail.com>
Date:   Sun Oct 9 18:18:50 2022 -0700

    Push 1 image at a time

commit 6dc94853e7171e3c824a40c98156e7418178d449
Author: Max Bigras <mbigras22@gmail.com>
Date:   Sun Oct 9 18:17:58 2022 -0700

    Add build and push scripts

commit 353a152fae979f062f33745d22d3414e798adb3b
Author: Max Bigras <mbigras22@gmail.com>
Date:   Sun Oct 9 18:12:36 2022 -0700

    Return app, env, version, params, and path

commit 9e555bf70eec45791cb07014e6ccbbea81a6a932
Author: Max Bigras <mbigras22@gmail.com>
Date:   Wed Jun 15 14:52:49 2022 -0700

    Stop putting application delivery in titlecase

commit 941b0a26749ab0f731bd6f513e897e947d3d2ba0
Author: Max Bigras <mbigras22@gmail.com>
Date:   Thu Apr 22 13:15:45 2021 -0700

    Add ready, alive, and startup endpoints

commit 10d3dcaa35f24ad061262063c5edce41a83ad84a
Author: Max Bigras <mbigras22@gmail.com>
Date:   Thu Apr 22 10:54:15 2021 -0700

    Add MAKE_UNHEALTHY option

commit 937cc8307fbf5c1761561b4cbfcb39fac88e3edc
Author: Max Bigras <mbigras22@gmail.com>
Date:   Tue Apr 20 00:18:09 2021 -0700

    Add github CI workflow

commit df7b1bb4a1e460c39223f5e054fb032f0e607b22
Author: Max Bigras <mbigras22@gmail.com>
Date:   Tue Apr 20 00:11:43 2021 -0700

    Add prometheus-flask-exporter

commit 7762e6e2f3e788baff888242ded4fc7e196e4c6a
Author: Max Bigras <mbigras22@gmail.com>
Date:   Mon Apr 19 23:46:29 2021 -0700

    Add common utils

commit d80d0ef477207183d5f4111f3d2ae70e971d02b4
Author: Max Bigras <mbigras22@gmail.com>
Date:   Fri Apr 9 18:22:29 2021 -0700

    Add working flask app
======================: FILES :======================
======================: BRANCHES :======================
======================: LOGINFO :======================
commit 4817a9f23e463c5b17f7374f521488423df3ffae
Author: Max Bigras <mbigras22@gmail.com>
Date:   Thu Nov 3 22:31:54 2022 -0700

    Pass GITHUB_TOKEN secret through GITHUB_TOKEN environment variable

commit fe811c933861ed8840e9a30ea96014aacd77ea20
Author: Max Bigras <mbigras22@gmail.com>
Date:   Thu Nov 3 22:29:40 2022 -0700

    Fix gh repo clone command

commit 36d71c6f22cc2e8248c4456b71da46f3c3d8db78
Author: Max Bigras <mbigras22@gmail.com>
Date:   Thu Nov 3 22:28:51 2022 -0700

    Fix gh repo checkout command

commit 375efa70adba8680797e5d034b8f1810c70e8ab0
Author: Max Bigras <mbigras22@gmail.com>
Date:   Thu Nov 3 22:26:44 2022 -0700

    Remove checkout.sh script since that's not checked out yet

commit 141079743e541967a29623bdef6dfa0d18f14fa0
Author: Max Bigras <mbigras22@gmail.com>
Date:   Thu Nov 3 22:21:22 2022 -0700

    Add checkout.sh script

commit 2e62b0853a5334bb92f2d2e9cee0328b48d8225c
Author: Max Bigras <mbigras22@gmail.com>
Date:   Wed Nov 2 18:33:50 2022 -0700

    Add test.sh script

commit ef7757b7158e530646455eeab4bbb0fe13563ebe
Author: Max Bigras <mbigras22@gmail.com>
Date:   Wed Nov 2 18:33:15 2022 -0700

    Add healthcheck

commit d5a64055b5efb67f352443b43b1b56666fa9e439
Author: Max Bigras <mbigras22@gmail.com>
Date:   Sun Oct 30 10:16:35 2022 -0700

    Add EXPOSE Dockerfile directive for Traefik port detection
    
    See https://doc.traefik.io/traefik/providers/docker/#port-detection.

commit 009299c62b208953973dd29f45fb03b34315c32a
Author: Max Bigras <mbigras22@gmail.com>
Date:   Thu Oct 27 23:21:15 2022 -0700

    Bump actions/checkout GitHub Action

commit 427796774e49ac1fc6ec8ca0e24368e9c9c54b17
Author: Max Bigras <mbigras22@gmail.com>
Date:   Thu Oct 27 23:19:26 2022 -0700

    Guess that single quote is a problem for GitHub Actions

commit 435fe859f3b743d95f82448a8df1f7c6f5c35379
Author: Max Bigras <mbigras22@gmail.com>
Date:   Thu Oct 27 23:17:43 2022 -0700

    Add work in progress deployment scripts (#4)

commit 3cc67f7982919be8530cd7600e1ed70fd60b99c8
Author: Max Bigras <mbigras22@gmail.com>
Date:   Thu Oct 27 19:37:12 2022 -0700

    Add GitHub Actions

commit 77447625d89aa09b9b80bebc89f13b83d118fcd6
Author: Max Bigras <mbigras22@gmail.com>
Date:   Thu Oct 27 18:23:01 2022 -0700

    Fix punctuation

commit 94b4ce8c8af73a160aac86c0d3c2c864442df2d8
Author: Max Bigras <mbigras22@gmail.com>
Date:   Thu Oct 27 18:11:24 2022 -0700

    Change from version to tag

commit b46edb54bb829b892e19dc72a640db45b0521a1f
Author: Max Bigras <mbigras22@gmail.com>
Date:   Sun Oct 16 18:55:14 2022 -0700

    Enable pretty print JSON

commit ec44d7ff31147b69264ffc08e54ead46b2ee2e1f
Author: Max Bigras <mbigras22@gmail.com>
Date:   Thu Oct 13 00:10:43 2022 -0700

    Add features array with feature1

commit 076de664d3dab10543e7cf48ab30da310bdd322b
Author: Max Bigras <mbigras22@gmail.com>
Date:   Sun Oct 9 18:33:50 2022 -0700

    Fix VERSION environment variable typo

commit 73a0f6c1ed89d2165bc99d37cbf0f4333f9a0fb6
Author: Max Bigras <mbigras22@gmail.com>
Date:   Sun Oct 9 18:20:03 2022 -0700

    Remove GitHub Actions

commit 24930172deffc1d1dacc38943fdf12e43cfeefbc
Author: Max Bigras <mbigras22@gmail.com>
Date:   Sun Oct 9 18:18:50 2022 -0700

    Push 1 image at a time

commit 6dc94853e7171e3c824a40c98156e7418178d449
Author: Max Bigras <mbigras22@gmail.com>
Date:   Sun Oct 9 18:17:58 2022 -0700

    Add build and push scripts

commit 353a152fae979f062f33745d22d3414e798adb3b
Author: Max Bigras <mbigras22@gmail.com>
Date:   Sun Oct 9 18:12:36 2022 -0700

    Return app, env, version, params, and path

commit 9e555bf70eec45791cb07014e6ccbbea81a6a932
Author: Max Bigras <mbigras22@gmail.com>
Date:   Wed Jun 15 14:52:49 2022 -0700

    Stop putting application delivery in titlecase

commit 941b0a26749ab0f731bd6f513e897e947d3d2ba0
Author: Max Bigras <mbigras22@gmail.com>
Date:   Thu Apr 22 13:15:45 2021 -0700

    Add ready, alive, and startup endpoints

commit 10d3dcaa35f24ad061262063c5edce41a83ad84a
Author: Max Bigras <mbigras22@gmail.com>
Date:   Thu Apr 22 10:54:15 2021 -0700

    Add MAKE_UNHEALTHY option

commit 937cc8307fbf5c1761561b4cbfcb39fac88e3edc
Author: Max Bigras <mbigras22@gmail.com>
Date:   Tue Apr 20 00:18:09 2021 -0700

    Add github CI workflow

commit df7b1bb4a1e460c39223f5e054fb032f0e607b22
Author: Max Bigras <mbigras22@gmail.com>
Date:   Tue Apr 20 00:11:43 2021 -0700

    Add prometheus-flask-exporter

commit 7762e6e2f3e788baff888242ded4fc7e196e4c6a
Author: Max Bigras <mbigras22@gmail.com>
Date:   Mon Apr 19 23:46:29 2021 -0700

    Add common utils

commit d80d0ef477207183d5f4111f3d2ae70e971d02b4
Author: Max Bigras <mbigras22@gmail.com>
Date:   Fri Apr 9 18:22:29 2021 -0700

    Add working flask app
