======================: FILES :======================
======================: README CONTENT :======================
# Smali Code Injector (SCI)

[![Language](https://img.shields.io/badge/Lang-Java-blue.svg)](https://java.com)
[![Language](https://img.shields.io/badge/Lang-PHP-blue.svg)](https://www.php.net)
[![Language](https://img.shields.io/badge/Lang-Python-blue.svg)](https://www.python.org)
![Language](https://img.shields.io/badge/Lang-Smali-blue.svg)
[![License](https://img.shields.io/badge/License-Apache%202.0-red.svg)](https://opensource.org/licenses/Apache-2.0)

## Automate assembly code (`smali`) injection within `Android` applications.

The initial ambition of this project was to automate stack trace injections within `Android` applications in order to facilitate my master thesis work. Being able to log and display applications' runtime method calls along with their returned value greatly helps in reverse engineering complex applications by providing an insight into their logic and workflow.

Then, new features and payloads were progressively added in an attempt to create a framework fully capable of injecting any type of assembly code. Users familiar with `Android` development can easily implement compatible payloads. SCI is in charge of automating low level operation such as registers allocation, dependancie, type, etc.

_Tampering `Android` applications has never been that easy!_

Further information about `Android` reverse engineering can be found at:

- http://www.n00blinuxhacker.com/android-pentesting-reverse-engineering-android-app.html

### Automation for a simpler world...

Code injections are performed at the assembly level (`smali` files) making the differenciation process between legit and modified applications complicated and time consuming - it would require considerable forensic work such as network, permissions, signature and code analysis -.

A high level overview of the steps involved during code injection is:

1. Disassembling the application.
2. Collecting relevant information about the application.
   - Classes name.
   - Methods name.
   - Registers number and type.
   - etc.
3. Editing the AndroidManifest.xml to add permissions, services and broadcastReceivers (depending on the payload requirements).
4. Injecting and tweaking up the selected payload within the targeted method(s). Some `Android` libraries are also injected in order to defeat obfuscation.
5. Reassembling and signing the app with a valid self-signed certificate.

## Usage

- To list the available options:

  ```bash
  python3 sci.py -h

  -a APP, --app APP  	Android application to trojanize

  positional arguments:
      search          search command - identifies the main activity
      payload         payload command
  ```

- To list `search` options:

  ```bash
  python3 sci.py -a APP search -h

  -a APP, --app APP   Android application to trojanize
  ```

- To list `payload` options:

  ```bash
  python3 sci.py -a APP payload -h

  -a APP, --app APP   Android application to trojanize
  -d DESTINATION, --dest DESTINATION
                      the destination file or directoy for injection
  -k KEYWORDS, --keywords KEYWORDS
                      keywords (separated by ',') for injection filtering

  positional arguments:
      logger          logger command
      spyware         spyware command
  ```

  - To list `logger` options:

    ```bash
    python3 sci.py -a APP [-d DESTINATION] [-k KEYWORDS] logger -h

    -a APP, --app APP   Android application to trojanize
    -d DESTINATION, --dest DESTINATION
                        the destination file or directoy for injection
    -k KEYWORDS, --keywords KEYWORDS
                        keywords (separated by ',') for injection filtering
    ```

    Launch the `Android` debugger `adb` using the following command to view application's runtime method calls:

    ```bash
    adb logcat | grep "::trace"
    ```

  - To list `spyware` options:

    ```bash
    python3 sci.py -a APP payload [-d DESTINATION] [-k KEYWORDS] spyware -h

    -a APP, --app APP   Android application to trojanize
    -d DESTINATION, --dest DESTINATION
                        the destination file or directoy for injection
    -k KEYWORDS, --keywords KEYWORDS
                        keywords (separated by ',') for injection filtering
    -ppg PROPAGATE, --propagate PROPAGATE
                        spoofed SMS to send for the malware propagation
    -rh RHOST, --rhost RHOST
                        attacker's host/ip for stolen data transmission, e.g.
                        http://192.168.0.24/handler.php
    ```

    > [!IMPORTANT] 
    > For optimal results, inject `Spyware` on the `onCreate()` method of the application main activity.

    Server-side scripts used to insert and store the stolen data sent into an attacker-controlled `MySQL` database are available under [scripts](https://github.com/aress31/sci/tree/master/scripts).

    To enable `spyware` debugging mode set `DEV_MODE` to `true` in [payloads\smali\spyware](https://github.com/aress31/sci/blob/master/payloads/smali/spyware/Spyware.smali) at line 7. Then launch the `Android` debugger `adb` using the following command:

    ```bash
    adb logcat | grep "::trace"
    ```

## Roadmap

- [ ] Implement new payloads (e.g. `reverse shell`).
- [ ] Source code optimisation.

## Project Information

This framework was developed in the context of my [master thesis work](https://www.slideshare.net/AlexandreTeyar/security-in-mobile-banking-apps-154409860) in July 2015 and rewritten in 2017.

## Sponsor 💖

If you want to support this project and appreciate the time invested in developping, maintening and extending it; consider donating toward my next cup of coffee. ☕

It is easy, all you got to do is press the `Sponsor` button at the top of this page or alternatively [click this link](https://github.com/sponsors/aress31). 💸

## Reporting Issues

Found a bug? I would love to squash it! 🐛

Please report all issues on the GitHub [issues tracker](https://github.com/aress31/sci/issues).

## Contributing

You would like to contribute to better this project? 🤩

Please submit all `PRs` on the GitHub [pull requests tracker](https://github.com/aress31/sci/pulls).

## License

See [LICENSE](LICENSE).
====================== GIT HISTORY: ======================
f747f31 HEAD@{0}: clone: from https://github.com/aress31/sci
commit f747f31c5487e425990e96564ced8a72baca63c5
Author: Alexandre Teyar <11601622+aress31@users.noreply.github.com>
Date:   Sun Oct 16 00:28:36 2022 +0100

    Update README.md

commit 7a39eb94a57386926838c8f3ee2ef44790bdfe58
Author: Alexandre Teyar <11601622+aress31@users.noreply.github.com>
Date:   Sun Oct 16 00:27:43 2022 +0100

    Update README.md

commit ac575714efb6d02fe2b0dbbb1e3229c5c62d5216
Author: Alexandre Teyar <11601622+aress31@users.noreply.github.com>
Date:   Sun Oct 16 00:02:39 2022 +0100

    Delete images directory

commit 14f7b221c106ed9132fb5848ba4672273de9aaba
Author: Alexandre Teyar <11601622+aress31@users.noreply.github.com>
Date:   Fri Nov 22 08:16:04 2019 +0000

    Create FUNDING.yml

commit b819aa26f2531b0b4ce5d6e0d58a70999ab80408
Author: Alexandre Teyar <alexandre.teyar@gmail.com>
Date:   Thu Jan 25 23:37:07 2018 +0000

    Delete NOTICE

commit 9036ae9dc6eacfa1ab177fdbb3430000387a8037
Author: Alexandre Teyar <alexandre.teyar@gmail.com>
Date:   Thu Jan 11 11:56:48 2018 +0000

    Update README.md

commit 06530a98d051bcd67cb66f89fb08119b41078c80
Author: Alexandre Teyar <alexandre.teyar@gmail.com>
Date:   Thu Jan 11 11:56:29 2018 +0000

    Update README.md

commit cc57113b4f3d8f94f65a95fdcfb95f0329184107
Author: Alexandre Teyar <alexandre.teyar@gmail.com>
Date:   Thu Jan 11 11:54:10 2018 +0000

    Update README.md

commit 4a98ed7e16a07e29ec7ec60e1030a6ec1474137c
Author: Alexandre Teyar <alexandre.teyar@gmail.com>
Date:   Thu Jan 11 11:43:22 2018 +0000

    Update README.md

commit 124d792761b377551da97ce13fff5eb7c386191e
Author: Alexandre Teyar <alexandre.teyar@gmail.com>
Date:   Thu Jan 11 11:35:43 2018 +0000

    Update README.md

commit 4c8b23c8e55562e9b466e512531140efada63194
Author: Alexandre Teyar <alexandre.teyar@gmail.com>
Date:   Fri Aug 11 13:37:26 2017 +0100

    Update README.md
    
    correct licences section

commit f21ffbe1033094215704f58eeab6477362b80645
Author: Alexandre Teyar <alexandre.teyar@gmail.com>
Date:   Fri Aug 11 10:31:30 2017 +0100

    Update README.md

commit 4236788c440e47ba2b4f0a79a856c5ad9cbdea61
Author: Alexandre Teyar <alexandre.teyar@gmail.com>
Date:   Fri Aug 11 10:25:33 2017 +0100

    Update README.md
    
    Correct the licenses section

commit 1612d80ab8ac318e2b98688c56dd09d6aa79edce
Merge: 5f49180 5ad5c8c
Author: Alexandre Teyar <alexandre.teyar@gmail.com>
Date:   Fri Aug 11 10:20:05 2017 +0100

    Merge pull request #1 from AresS31/dev
    
    Dev

commit 5ad5c8c81b553b631023dbd09cf831111b724a84
Author: Alexandre Teyar <alexandre.teyar@gmail.com>
Date:   Fri Aug 11 10:17:28 2017 +0100

    update README.md

commit 4aa1070cf77eba7a3ff0585d076a1f1e988c04fd
Author: Alexandre Teyar <alexandre.teyar@gmail.com>
Date:   Fri Aug 11 10:12:36 2017 +0100

    Set debug mode to false

commit 44f28ce33291b6d5a80bd00f270e2033928dd301
Author: Alexandre Teyar <alexandre.teyar@gmail.com>
Date:   Fri Aug 11 10:09:04 2017 +0100

    update README.md

commit 23c40a44fc8ed615931bc73e44e071f26ae61bf4
Author: Alexandre Teyar <alexandre.teyar@gmail.com>
Date:   Thu Aug 10 16:49:15 2017 +0100

    spyware refactor

commit c9bb1d00102a192a6a9c38a1d0fa7cae2db633aa
Author: Alexandre Teyar <alexandre.teyar@gmail.com>
Date:   Thu Aug 10 16:46:31 2017 +0100

    server-side scripts refactor

commit b15804eaee27e3684648d612a3aea3050c5308ab
Author: Alexandre Teyar <alexandre.teyar@gmail.com>
Date:   Thu Aug 10 11:59:11 2017 +0100

    client-side refactoring

commit ae0cb76426c9edf9101b9fd278fa933badb22b31
Author: Alexandre Teyar <alexandre.teyar@gmail.com>
Date:   Wed Aug 2 17:21:56 2017 +0100

    refactoring

commit 952a4e274ba955d964b9d223638680e95f64a9ca
Author: AresS31 <alexandre.teyar@gmail.com>
Date:   Wed Aug 2 00:22:36 2017 +0100

    further refactor

commit 3b0e7ee1117467d512db8428cd4c5fa8fdab8921
Author: Alexandre Teyar <alexandre.teyar@gmail.com>
Date:   Tue Aug 1 17:18:17 2017 +0100

    further further refactor

commit 76cf35319edf77b5892413330fe0596c2e97292e
Author: AresS31 <alexandre.teyar@gmail.com>
Date:   Tue Aug 1 00:31:03 2017 +0100

    further code refactor

commit a6fe3e96f73168fbdbec0627b0296a9b86e08bfa
Author: Alexandre Teyar <alexandre.teyar@gmail.com>
Date:   Mon Jul 31 17:26:27 2017 +0100

    further refactoring

commit 3667d93e5eaf65a0813e471aaafab9591d4d975d
Author: AresS31 <alexandre.teyar@gmail.com>
Date:   Sun Jul 30 20:56:22 2017 +0100

    refactor

commit dc5b7224539e33596428ae827656ed639228bf95
Author: Alexandre Teyar <alexandre.teyar@gmail.com>
Date:   Fri Jul 28 17:26:59 2017 +0100

    Init refactor

commit 5f49180ce6dbd896f71ad5866762b55e5f2d2496
Author: Alexandre Teyar <alexandre.teyar@gmail.com>
Date:   Fri Jan 20 10:20:46 2017 +0000

    typo

commit 6eb3f7dc59e6542955fb2e96654fecad4ee0a022
Author: Alexandre Teyar <alexandre.teyar@gmail.com>
Date:   Fri Jan 20 13:49:12 2017 +0000

    typo

commit 4374ff5da9d0f5b01c71e04874803f8461c85033
Author: Alexandre Teyar <alexandre.teyar@gmail.com>
Date:   Mon Sep 5 17:06:34 2016 +0100

    Update README.md

commit e20c765ba82b2986c5f0624865743fc6bb750ede
Author: Alexandre Teyar <alexandre.teyar@gmail.com>
Date:   Mon Sep 5 17:05:36 2016 +0100

    Syntax

commit c77fc9cd89b80ba015ecf6efb3fbf44547589a74
Author: Alexandre Teyar <alexandre.teyar@gmail.com>
Date:   Mon Sep 5 17:03:04 2016 +0100

    Update README.md

commit 8bb0bc7d07e359352a8b965907f709d1d8d04f14
Author: Alexandre Teyar <alexandre.teyar@gmail.com>
Date:   Mon Sep 5 17:00:38 2016 +0100

    Update README.md

commit 97bec6cd9d060771344038f887c4ef6c5a290813
Author: Alexandre Teyar <alexandre.teyar@gmail.com>
Date:   Mon Sep 5 17:00:05 2016 +0100

    Update README.md

commit 591617d5fd756a8a1dda376e4afc8c98c4a1cc09
Author: Alexandre Teyar <alexandre.teyar@gmail.com>
Date:   Mon Sep 5 16:56:21 2016 +0100

    Update README.md

commit 088e2401d89b5e403fa57fcf873efb9878194601
Author: Alexandre Teyar <alexandre.teyar@gmail.com>
Date:   Mon Sep 5 16:54:55 2016 +0100

    Update README.md

commit 3a3faf219341383fa5a46e6a16a88514c4c5fa8f
Author: Alexandre Teyar <alexandre.teyar@gmail.com>
Date:   Mon Sep 5 16:53:49 2016 +0100

    Update README.md

commit 83181260ac36f0f2e3ef66cc7394f35d41f856be
Author: Alexandre Teyar <alexandre.teyar@gmail.com>
Date:   Mon Sep 5 16:48:21 2016 +0100

    Typo

commit 11cb0f9329aa9ed38dc2fd0ac4be6592593bf85a
Author: Alexandre Teyar <alexandre.teyar@gmail.com>
Date:   Mon Sep 5 16:47:06 2016 +0100

    Update

commit 2a488de22fbcd4d524b831ee53b676e46049687c
Author: Alexandre Teyar <alexandre.teyar@gmail.com>
Date:   Fri Sep 2 17:06:21 2016 +0100

    Initial commit
