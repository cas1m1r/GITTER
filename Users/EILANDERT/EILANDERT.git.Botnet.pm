======================: FILES :======================
======================: README CONTENT :======================
This is a SpamAssassin module. Comitted to github for archieving purposes.

This is Botnet 0.9b.

Changelog from 0.8 to 0.9beta
- IPv6 Support
- Dns timeouts implemented
- Beter handling of timeouts/nonexisting dns

Altough it doesn't use the latest SA functions, it works on SpamAssassin 3.4.0.
I might pick this one up one day, since the original author seems to have abandonded it.


Botnet looks for possible botnet sources of email by checking
various DNS values that indicate things such as other ISP's clients or
workstations, or misconfigured DNS settings that are more likely to happen
with client or workstation addresses than servers.

Installing:
   Copy Botnet.pm and Botnet.cf into /etc/spamassassin (or whatever
   directory you use for your plugins).  If you use something like
   spamc/spamd, mailscanner, or a milter, you probably need to restart
   that.  From there, it should "just work".


====================== GIT HISTORY: ======================
0e48025 HEAD@{0}: clone: from https://github.com/eilandert/Botnet.pm
commit 0e480253e28e66cd79ebf1d6c2be40160d11478c
Author: Thijs Eilander <eilander@myguard.nl>
Date:   Thu Nov 20 01:55:29 2014 +0100

    bump version from 0.8 to 0.9b

commit 6b68780a9319f4862b13baa86d44a5efeb224b44
Author: Thijs Eilander <eilander@myguard.nl>
Date:   Thu Nov 20 01:14:03 2014 +0100

    Another patch to handle dns timeouts better

commit 19a09c91f361192604394761c72eee4e1bbbdfe4
Author: Thijs Eilander <eilander@myguard.nl>
Date:   Thu Nov 20 00:58:30 2014 +0100

    added "botnet8patch2.txt", which solves a bug with tcp/udp timeouts

commit a4198fc3a9a90f170e9e10a31d0393b2623c4802
Author: Thijs Eilander <eilander@myguard.nl>
Date:   Wed Nov 19 20:44:01 2014 +0100

    Description

commit 9df74d432336bb02e42a5930d646be89d642e606
Author: Thijs Eilander <eilander@myguard.nl>
Date:   Wed Nov 19 20:38:02 2014 +0100

    Original files

commit f959bf260c11f32a3430aad253b96c71797d8f20
Author: Thijs Eilander <eilander@myguard.nl>
Date:   Wed Nov 19 20:30:43 2014 +0100

    first commit
