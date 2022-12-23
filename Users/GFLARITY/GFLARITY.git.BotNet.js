======================: FILES :======================
BotNet.js
├── lib
│   ├── botnet.js
│   ├── client_event_emitter.js
│   └── server_event_emitter.js
├── README.md
└── tls
    ├── ca.cnf
    ├── client.cnf
    ├── generate_certs.sh
    └── server.cnf

2 directories, 8 files
======================: README CONTENT :======================
BotNet is a distributed event system built with Node.js. It's designed to simplify the creation of distributed software. It uses TLS, EventEmitter2 and MsgPack.  ====================== GIT HISTORY: ======================
0f7e065 HEAD@{0}: clone: from https://github.com/gflarity/BotNet.js
commit 0f7e0650dece1dc86669b9461b193483332c6be6
Author: Geoff Flarity <geoff.flarity@gmail.com>
Date:   Sun Nov 6 20:54:43 2011 -0500

    organizing the the different botnet event emitters

commit 0de66a2eaf16a710fc3bb6f724f46abb01d384d1
Author: Geoff Flarity <geoff.flarity@gmail.com>
Date:   Sun Nov 6 18:00:48 2011 -0500

    initial revision
