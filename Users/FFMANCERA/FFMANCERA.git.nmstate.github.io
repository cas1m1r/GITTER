======================: FILES :======================
.
├── cli_guide.md
├── CNAME
├── _config.yml
├── demos.md
├── devel
│   ├── api.md
│   ├── design
│   │   ├── networking-api.md
│   │   ├── stack_diagram_netconf_yang.png
│   │   └── stack_diagram.png
│   ├── dev_guide.md
│   ├── plugin.md
│   ├── py_example.md
│   └── varlink-libnmstate.md
├── examples.md
├── favicon.png
├── features
│   ├── conditional_compile.md
│   ├── gen_conf.md
│   ├── iface_vf_id.md
│   ├── lldp.md
│   ├── mptcp.md
│   ├── ovsdb.md
│   ├── ovs_patch.md
│   └── veth.md
├── index.md
├── _layouts
│   └── default.html
├── LICENSE.md
├── nmstate.gpg
├── README.md
├── user
│   ├── install.md
│   └── quick_guide.md
└── utils
    ├── ci_docker
    ├── ci_docker_slow
    ├── ci_env
    ├── ct
    ├── docker_cmds
    ├── git_sync_upstream
    ├── nmstatectl
    ├── pt
    ├── pt_debug
    ├── pt_repeat
    └── rebase

6 directories, 40 files
======================: README CONTENT :======================
# nmstate.github.io

Welcome to the NMState documentation. This is the source code for
<https://nmstate.github.io/>.
====================== GIT HISTORY: ======================
d0b1a1a HEAD@{0}: clone: from https://github.com/ffmancera/nmstate.github.io
commit d0b1a1af61dd3a9bf6db823401111b164a3a2bf9
Author: Gris Ge <fge@redhat.com>
Date:   Mon Oct 31 14:56:21 2022 +0800

    Include logo in the page
    
    Signed-off-by: Gris Ge <fge@redhat.com>

commit f8a68249944ee7e463557a255ef42261dd5e47fb
Author: Gris Ge <fge@redhat.com>
Date:   Mon Oct 24 15:20:51 2022 +0800

    Include SRIOV VF referring feature
    
    Signed-off-by: Gris Ge <fge@redhat.com>

commit fcdc2efa5fe8581c086d027eee272fc33a5e9bf5
Author: Gris Ge <fge@redhat.com>
Date:   Mon Oct 24 15:09:52 2022 +0800

    Fix URL of feature/conditional_compile.md
    
    Signed-off-by: Gris Ge <fge@redhat.com>

commit 5043c99282a60be25210514d33a9cadbad3a3876
Author: Gris Ge <fge@redhat.com>
Date:   Mon Oct 24 15:08:52 2022 +0800

    Use simpler license line at the bottom
    
    Signed-off-by: Gris Ge <fge@redhat.com>

commit b1327c9a055093ae9dfc77986a87d2bf4153d88d
Author: Gris Ge <fge@redhat.com>
Date:   Mon Oct 24 15:05:02 2022 +0800

    Add feature page for conditional compiling
    
    Signed-off-by: Gris Ge <fge@redhat.com>

commit 9a383f989e68ff2b5da04c13e7640b2e2d43ffff
Author: Gris Ge <fge@redhat.com>
Date:   Mon Oct 24 14:54:41 2022 +0800

    Include favicon
    
    Signed-off-by: Gris Ge <fge@redhat.com>

commit 10f46c331828a3c66cd5307ae8de21983b36645b
Author: Gris Ge <fge@redhat.com>
Date:   Mon Oct 24 14:51:02 2022 +0800

    Clean up index and include MPTCP feature
    
    Signed-off-by: Gris Ge <fge@redhat.com>

commit 5299f5b477b90a32791c9b73b5889ccf6914733d
Author: 青猫 <withwind8@gmail.com>
Date:   Mon Aug 22 16:31:41 2022 +0800

    fix typo from nmstatecl to nmstatectl
    
    Signed-off-by: 青猫 withwind8@gmail.com

commit 8e904eaaf311b0afec25f3575929a21ada2b4385
Author: Miguel Duarte Barroso <mdbarroso@redhat.com>
Date:   Mon Aug 1 16:12:42 2022 +0200

    docs, bond: fix the bond attribute to define its ports
    
    When trying to provision the provided bond example, it fails with the
    following error:
    ```
    [root@fc35-bz2102105 ~]# nmstatectl apply bond-config.yaml
    serde_yaml::Error: unknown field `ports`, expected one of `mode`, `options`, `port`
    ```
    
    Using the correct API fixes it - `s/ports/port/`.
    
    Signed-off-by: Miguel Duarte Barroso <mdbarroso@redhat.com>

commit 57934d6a341d6443908c3b8773348f91ff7df48a
Author: Gris Ge <fge@redhat.com>
Date:   Mon Jul 11 20:10:07 2022 +0800

    Update Fernando's gpg public key
    
    Signed-off-by: Gris Ge <fge@redhat.com>

commit 74b321aa3f14bc19d1eb673a0edfa2b6177ddbdd
Author: Gris Ge <fge@redhat.com>
Date:   Mon Mar 28 12:31:21 2022 +0800

    Change the example to YAML format
    
    Signed-off-by: Gris Ge <fge@redhat.com>

commit 0748cc65ee62e40b1a85cb95b7efe40e9aaac8aa
Author: Fernando Fernandez Mancera <ffmancera@riseup.net>
Date:   Thu Mar 24 10:12:03 2022 +0100

    Use inclusive language in documentation
    
    Signed-off-by: Fernando Fernandez Mancera <ffmancera@riseup.net>

commit ddc29b343deacbcfc6bbdf40fd5172755726da19
Author: Quique Llorente <ellorent@redhat.com>
Date:   Thu Jan 27 13:37:39 2022 +0100

    index: Add projects related to nmstate
    
    Currectly there are a pair of projects under nmstate umbrella that have
    their own docs under "nmstate.io". This change add new section to link
    to them.
    
    Signed-off-by: Quique Llorente <ellorent@redhat.com>

commit 77032c32f95e3cdfd7a575248ca915c7a3483c10
Author: Andreas Dotzler <contact@andreasdotzler.info>
Date:   Wed Jun 2 12:38:09 2021 +0200

    Update quick_guide.md
    
    add missing path to install instructions
    
    Signed-off-by: Andreas Dotzler <andreas.dotzler@cadami.net>

commit b1c37e96f45c77fcf9e8f76abe48cac9ff623717
Author: Dan Kenigsberg <danken@redhat.com>
Date:   Sun Dec 12 12:29:39 2021 +0200

    networking-api.md: add a preamble
    
    The networking-api design doc feels a bit old and out of context. I think that it is important to tell its current readership that it has existed before the web site and the nmstate upstream project.
    
    Signed-off-by: Dan Kenigsberg <danken@redhat.com>

commit df316c7f452e3372ee18f92b3fcb1d46be31a717
Author: Gris Ge <fge@redhat.com>
Date:   Mon Oct 25 11:41:11 2021 +0800

    copy-mac-from: Indicate hardware address take priroity
    
    Signed-off-by: Gris Ge <fge@redhat.com>

commit 77e1676d10af3531cba7f747ee0885c85783e3ef
Author: Gris Ge <fge@redhat.com>
Date:   Tue Aug 17 11:42:45 2021 +0800

    Replace `nmstatectl set` with `nmstatectl apply`
    
    Signed-off-by: Gris Ge <fge@redhat.com>

commit b0d242da427e16063fcaadd683d2668d9a30682e
Author: Gris Ge <fge@redhat.com>
Date:   Wed Jun 16 22:23:35 2021 +0800

    ipv6: Fix the incorrect line about auto_dns
    
    Signed-off-by: Gris Ge <fge@redhat.com>

commit bd822b7931a8efcdd704b761dfab8b13fe2739fa
Author: Gris Ge <fge@redhat.com>
Date:   Tue Jun 1 16:31:33 2021 +0800

    Add table of content for example page
    
    Signed-off-by: Gris Ge <fge@redhat.com>

commit f132fa85342dd33ee25aac7421e809cad095c516
Author: Gris Ge <fge@redhat.com>
Date:   Tue Jun 1 16:28:44 2021 +0800

    Add example for IP DHCP and Autoconf
    
    Signed-off-by: Gris Ge <fge@redhat.com>

commit 713945b15c9626e7d334fe1d3cc5c7a3eec7a0e2
Author: Mingyu Shi <mshi@redhat.com>
Date:   Mon Apr 26 15:18:48 2021 +0800

    API doc: add NIC limitations for SR-IOV
    
    Different NICs/drivers have different SR-IOV capabilities, or even
    different methods to manipulate SR-IOV. Listing this can make it clear
    for SR-IOV users who are new to nmstate.
    
    Signed-off-by: Mingyu Shi <mshi@redhat.com>

commit 4c5e0e63b52e912d6b5b9d0b7c68611eaff7d815
Author: Fernando Fernandez Mancera <ffmancera@riseup.net>
Date:   Tue May 25 11:29:52 2021 +0200

    community: modify IRC server reference
    
    Signed-off-by: Fernando Fernandez Mancera <ffmancera@riseup.net>

commit ed1e48d261a8bcf0c9b26b800861e2cfb6ddd435
Author: Till Maas <opensource@till.name>
Date:   Tue Apr 6 20:20:53 2021 +0200

    Update CNAME

commit f6575bc950727715754a860df5b3c42d613f7b1d
Author: Gris Ge <fge@redhat.com>
Date:   Fri Apr 2 14:50:46 2021 +0800

    Add doc for gen_conf
    
    Signed-off-by: Gris Ge <fge@redhat.com>

commit b57aed42557885b88d6193ef94abed3f5bf71f60
Author: Gris Ge <fge@redhat.com>
Date:   Mon Mar 29 11:25:46 2021 +0800

    API doc: remove the duplication on veth
    
    Signed-off-by: Gris Ge <fge@redhat.com>

commit d2724e90783fd1dc5d38da1bed0950b630c19893
Author: Gris Ge <fge@redhat.com>
Date:   Mon Mar 29 11:23:07 2021 +0800

    API doc: Include doc for MacVlan MacVtap, IPoIB, VRF and Veth
    
    Signed-off-by: Gris Ge <fge@redhat.com>

commit a5a357caea4c2ccbebae917a176d70a0d245dbd9
Author: Gris Ge <fge@redhat.com>
Date:   Wed Feb 10 23:59:41 2021 +0800

    api: fix typo of `Interface.COPY_MAC_FROM`
    
    Signed-off-by: Gris Ge <fge@redhat.com>

commit c69ab64d7c63104accd48a5e70918a7493b36f27
Author: Gris Ge <fge@redhat.com>
Date:   Wed Feb 10 23:55:06 2021 +0800

    api_doc: Add `Interface.COPY_MAC_FROM`
    
    Signed-off-by: Gris Ge <fge@redhat.com>

commit bf2536abada8a37fbf593e3498d943680b510874
Author: Fernando Fernandez Mancera <ffmancera@riseup.net>
Date:   Tue Jan 26 15:56:32 2021 +0100

    veth: fix link on index.md
    
    Signed-off-by: Fernando Fernandez Mancera <ffmancera@riseup.net>

commit c5e6e524e3363c2e12c1f18d7b8d5d8f552b45f5
Author: Fernando Fernandez Mancera <ffmancera@riseup.net>
Date:   Tue Jan 26 15:15:03 2021 +0100

    features: add veth interface support documentation
    
    Signed-off-by: Fernando Fernandez Mancera <ffmancera@riseup.net>

commit e17a0945b24c2619bc2731b794702685089dba6b
Author: Wen Liang <liangwen12year@gmail.com>
Date:   Wed Oct 21 14:24:30 2020 -0400

    Update documentation about bond interface
    
    Signed-off-by: Wen Liang <liangwen12year@gmail.com>

commit 5ec6b6541bab8ab7ed82654f62b4a27c849b5692
Author: Gris Ge <fge@redhat.com>
Date:   Mon Nov 9 22:09:46 2020 +0800

    API doc: Add limitation for unmanaged interface
    
    Nmstate might showing incorrect state for OVS and team interface
    unmanaged by NetworkManager.
    
    Signed-off-by: Gris Ge <fge@redhat.com>

commit 00dc56735255c993f0c8a57072fa004bcef6698e
Author: Gris Ge <fge@redhat.com>
Date:   Wed Oct 14 21:07:49 2020 +0800

    Add document for `NmstatePlugin.is_supplemental_only`
    
    Signed-off-by: Gris Ge <fge@redhat.com>

commit 874ac40c0a36beb8433f194bffb8fcd301376de1
Author: Gris Ge <fge@redhat.com>
Date:   Tue Oct 13 12:16:34 2020 +0800

    Bond: Update bond document for Bond.PORT and OPTIONS_SUBTREE
    
    Signed-off-by: Gris Ge <fge@redhat.com>

commit 3af0bb8df7943887a09ae77dbbe88fb202c1175d
Author: Gris Ge <fge@redhat.com>
Date:   Mon Oct 12 11:53:17 2020 +0800

    Update plugin document
    
    Signed-off-by: Gris Ge <fge@redhat.com>

commit 27b8a384bc885b8751707f5d91253aea2325fd29
Author: Arunagirinadan Sudharshan <sudhan.aruna.97@gmail.com>
Date:   Fri Jun 5 20:29:27 2020 +0530

    varlink: Added documentation for varlink support for libnmstate
    
    Signed-off-by: Arunagirinadan Sudharshan <sudhan.aruna.97@gmail.com>

commit 6252ec8ee021c5fd771914770e8835b0f914d15b
Author: Till Maas <opensource@till.name>
Date:   Thu Sep 24 22:11:45 2020 +0200

    Installation: Update git copr name
    
    Signed-off-by: Till Maas <opensource@till.name>

commit bf0fbb0f0f3f2cc67afc155d13eeb878fd9f3b64
Author: Gris Ge <fge@redhat.com>
Date:   Thu Aug 27 23:40:15 2020 +0800

    API doc: Include notes for linux bridge MAC address choosing
    
    Signed-off-by: Gris Ge <fge@redhat.com>

commit 969448c9e77a1e097f61d8e3085fc74a06268eff
Author: Gris Ge <fge@redhat.com>
Date:   Mon Aug 10 20:31:24 2020 +0800

    Include LICENSE.md file in html site
    
    Signed-off-by: Gris Ge <fge@redhat.com>

commit c32ea86d2eaf2b1e3e78170fd323bd2f68a3e13f
Author: Gris Ge <fge@redhat.com>
Date:   Mon Aug 10 20:15:12 2020 +0800

    Add footer for license CC BY-SA 4.0
    
    Signed-off-by: Gris Ge <fge@redhat.com>

commit 1d9adcbe80d284d6434cce6e157ec8c4ab1596d3
Author: Fernando Fernandez Mancera <ffmancera@riseup.net>
Date:   Mon Aug 10 00:50:46 2020 +0200

    Move install guide to the user folder
    
    Signed-off-by: Fernando Fernandez Mancera <ffmancera@riseup.net>

commit 429bf015ebbd5a2640fa50c27b54cccd485bcff1
Author: Fernando Fernandez Mancera <ffmancera@riseup.net>
Date:   Mon Aug 10 00:45:51 2020 +0200

    Fix broken link
    
    Signed-off-by: Fernando Fernandez Mancera <ffmancera@riseup.net>

commit dc99a4440a02e5ed9312487511b4c0f12b0e1bc2
Author: Fernando Fernandez Mancera <ffmancera@riseup.net>
Date:   Mon Aug 10 00:41:36 2020 +0200

    Update frontal page
    
    Signed-off-by: Fernando Fernandez Mancera <ffmancera@riseup.net>

commit 16c2fdc75425e0e9742da299926ec663590228fe
Author: Fernando Fernandez Mancera <ffmancera@riseup.net>
Date:   Mon Aug 10 00:21:28 2020 +0200

    Move Quick Start Guide
    
    Signed-off-by: Fernando Fernandez Mancera <ffmancera@riseup.net>

commit 74ed47d68eb5e1c94bdc8e3a49edc63052552423
Author: Fernando Fernandez Mancera <ffmancera@riseup.net>
Date:   Fri Aug 7 12:42:11 2020 +0200

    Update "Quick start guide"
    
    Signed-off-by: Fernando Fernandez Mancera <ffmancera@riseup.net>

commit c7db242e558e93bc26641f673f773a4b5bc89dd8
Author: Fernando Fernandez Mancera <ffmancera@riseup.net>
Date:   Thu Aug 6 09:45:33 2020 +0200

    Fix InterfaceIPv6.ADDRESS_IP format
    
    Signed-off-by: Fernando Fernandez Mancera <ffmancera@riseup.net>

commit f58076f6ff05bfb0711f8fc091aacf80f4b674b5
Author: Gris Ge <fge@redhat.com>
Date:   Thu Aug 6 13:46:31 2020 +0800

    Add nmstate developer guide
    
    Signed-off-by: Gris Ge <fge@redhat.com>

commit c2830fa60aff8ff54dc44d51f5fe09774b0e8294
Author: Gris Ge <fge@redhat.com>
Date:   Thu Aug 6 11:57:39 2020 +0800

    Improve ovsdb feature pages with limitations
    
    Signed-off-by: Gris Ge <fge@redhat.com>

commit d4f753e66a7b4c1a34090641b4762563a7ebdc20
Author: Fernando Fernandez Mancera <ffmancera@riseup.net>
Date:   Mon Aug 3 17:26:50 2020 +0200

    Update API documentation
    
    Removed:
    * Removed outdated "Limitations" sections.
    
    Added:
    * Added Interface.DESCRIPTION documentation.
    * InterfaceIPv4 and InterfaceIPv6 AUTO_ROUTE_TABLE_ID documentation.
    * Added InterfaceIPv6.ADDRESS_IP and ADDRESS_PREFIX_LENGTH
      documentation.
    * Added SR-IOV VF missing information.
    * Added OVSInterface missing information.
    * Added Team interface information.
    * Added LLDP.
    * Added RouteRule information.
    
    Update:
    * Fixed typos.
    * Updated Linux Bridge options.
    * Updated Bond.OPTIONS_SUBTREE.
    * Updated OVSBridge example.
    
    Signed-off-by: Fernando Fernandez Mancera <ffmancera@riseup.net>

commit dce90c1fe74b4cb27351a694919991a24254d124
Author: Gris Ge <fge@redhat.com>
Date:   Mon Aug 3 19:18:22 2020 +0800

    ovsdb: Include note for RHEL8 python3-openvswitch rpm
    
    Signed-off-by: Gris Ge <fge@redhat.com>

commit 9a87f893eb78d94ba340771952845ee211728bb6
Author: Gris Ge <fge@redhat.com>
Date:   Mon Aug 3 19:12:54 2020 +0800

    Fix the OVS database plugin feature page
    
    Signed-off-by: Gris Ge <fge@redhat.com>

commit aff2cf03933988637bb975215ee608bd7ac30dc2
Author: Gris Ge <fge@redhat.com>
Date:   Fri Jul 31 13:13:30 2020 +0800

    Fix the file name of OVS patch feature page
    
    Signed-off-by: Gris Ge <fge@redhat.com>

commit 95690f8da786fd6233d64ab677fbbf53fefea956
Author: Gris Ge <fge@redhat.com>
Date:   Fri Jul 10 13:30:00 2020 +0800

    plugin design: Add syntax coloring of python script
    
    Signed-off-by: Gris Ge <fge@redhat.com>

commit 578765453d38b669dcf8e04ceb1d7b99f0bcd1e4
Author: Gris Ge <fge@redhat.com>
Date:   Fri Jul 10 13:25:23 2020 +0800

    Include documents for nmstate-0.3.2 features
    
    Document for nmstate-0.3.2 features:
     * OVS DB plugin
     * LLDP
     * OVS patch port
     * Plugin interface
    
    Signed-off-by: Gris Ge <fge@redhat.com>

commit 531d38d20c44f66e616bf1586dcd43c02a27fc60
Author: Gris Ge <fge@redhat.com>
Date:   Fri Jul 3 15:34:21 2020 +0800

    nmstate.gpg: Add gpg key of maintainer Fernando Fernandez Mancera
    
    Add gpg public key of Fernando Fernandez Mancera to `nmstate.gpg`:
     * Fernando Fernandez Mancera <ffmancera@riseup.net>
       708DFB13CBED9AB39449DBFB41C04120C297B594
    
    Signed-off-by: Gris Ge <fge@redhat.com>

commit 9ae25919635dd62c40bffa8eba085256bf5b28de
Author: Gris Ge <fge@redhat.com>
Date:   Wed Jun 24 11:28:39 2020 +0800

    Include limitation of static dns config
    
    Signed-off-by: Gris Ge <fge@redhat.com>

commit 8705542b53deb27434db31ff27244dc026fff475
Author: Gris Ge <fge@redhat.com>
Date:   Mon May 4 14:33:03 2020 +0800

    Table of content: fix the incompatible between vim-markdown-toc and jekyll
    
    The default engine of jekyll -- kramdown treat different with GFM for
    `Interface -- Bond` TOC link.
    
    To workaround that issue, change the `--` to `-` as workaround.
    
    Signed-off-by: Gris Ge <fge@redhat.com>

commit 81534d4a2dc9c106046c16ddc596f666033f83a8
Author: Edward Haas <edwardh@redhat.com>
Date:   Wed Apr 22 12:12:57 2020 +0300

    devel/api: Fix Bond and OVS interfaces links
    
    Signed-off-by: Edward Haas <edwardh@redhat.com>

commit 3e1ff9f193239485e50cb04ebda6e3e2b9f55383
Author: Miguel Duarte Barroso <mdbarroso@redhat.com>
Date:   Tue Apr 21 10:17:15 2020 +0200

    Fix port vlan link
    
    Signed-off-by: Miguel Duarte Barroso <mdbarroso@redhat.com>

commit c9d96a11bd578d1533e3d2303b1f19972271f751
Author: Gris Ge <fge@redhat.com>
Date:   Wed Apr 22 11:22:17 2020 +0800

    Make nmstate.gpg file http accessible
    
    Signed-off-by: Gris Ge <fge@redhat.com>

commit cb4dd04d136a7d62eafbe87944eabfbac23c5bba
Author: Gris Ge <fge@redhat.com>
Date:   Wed Apr 22 11:11:39 2020 +0800

    Include maintainer GPG public key
    
    Signed-off-by: Gris Ge <fge@redhat.com>

commit 235c58050e014fc8911ebea9a4676b169e26031d
Author: Gris Ge <fge@redhat.com>
Date:   Tue Apr 21 16:45:25 2020 +0800

    Fix the TOC of API document
    
    Signed-off-by: Gris Ge <fge@redhat.com>

commit 0efa5b0999f2d6f1bd780fda746b5577272b1dc1
Author: Gris Ge <fge@redhat.com>
Date:   Tue Apr 21 15:46:01 2020 +0800

    Update CNAME

commit 64e8271264d4643289d353699ada0fb90725d6ee
Author: Gris Ge <fge@redhat.com>
Date:   Fri Mar 27 21:34:50 2020 +0800

    Add document on bond mode change
    
    When changing bond mode, the `Bond.OPTIONS` will not merge from current
    state. User is required to provide full desire bond options when
    switching bond mode.
    
    Signed-off-by: Gris Ge <fge@redhat.com>

commit 8a6e1f31e3742f07fadc486c7103fb1e378f0fb7
Author: Miguel Duarte Barroso <mdbarroso@redhat.com>
Date:   Tue Mar 31 12:13:23 2020 +0200

    Add linux bridge port vlan API documentation
    
    Signed-off-by: Miguel Duarte Barroso <mdbarroso@redhat.com>

commit d37acfeba4b538cca305106567ab8af143218c37
Author: Gris Ge <fge@redhat.com>
Date:   Mon Apr 20 09:33:32 2020 +0800

    Create CNAME

commit b0eaa79835571489a6bc8573dd68bfb4ccefc3fd
Author: Gris Ge <fge@redhat.com>
Date:   Fri Mar 27 21:41:17 2020 +0800

    Delete CNAME

commit a23da5f1e02fb6a8bdbbc0119e0e815160d4dcb4
Author: Gris Ge <fge@redhat.com>
Date:   Fri Mar 27 21:40:53 2020 +0800

    Create CNAME

commit 899ac68a42ea2bb215aa16955a77060d7302139c
Author: UnversedBlood <vicdigar@hotmail.com>
Date:   Fri Feb 28 13:16:10 2020 +0100

    Fixed typos in API
    
    Signed-off-by: Víctor Javier Díaz Garrido <vicdigar@hotmail.com>

commit 212a4a465845e233e754be34fb2789bbf36683c1
Author: Víctor Baena <victormage@hotmail.com>
Date:   Mon Mar 2 21:57:52 2020 +0100

    Updated default state shown as yaml format
    
    Signed-off-by: Víctor Baena <victormage@hotmail.com>

commit 646bad85608775f0d389048ff5439126cafbc9fb
Author: Till Maas <opensource@till.name>
Date:   Tue Nov 26 21:50:00 2019 +0100

    Installation: Update versions/links
    
    - CentOS 7 is not supported anymore
    - Only Fedora 31 and newer is supported
    - The RHEL 8 Copr repo does not exist anymore
    
    Signed-off-by: Till Maas <opensource@till.name>

commit 4400ad9976d9ff5710b24bd7c147ec7f3ef5804d
Author: Fernando Fernandez Mancera <ffmancera@riseup.net>
Date:   Thu Dec 5 12:19:49 2019 +0100

    Add VXLAN missing example
    
    Also fix a typo in VLAN example title.
    
    Signed-off-by: Fernando Fernandez Mancera <ffmancera@riseup.net>

commit 3687a18b3829df61b8975d9009acc85d64f10837
Author: Fernando Fernandez Mancera <ffmancera@riseup.net>
Date:   Wed Dec 4 11:57:43 2019 +0100

    Synchronize API with the schema changes
    
    Signed-off-by: Fernando Fernandez Mancera <ffmancera@riseup.net>

commit 746d1f74b7f9635f840010578933d4561a2b8e41
Author: Fernando Fernandez Mancera <ffmancera@riseup.net>
Date:   Wed Dec 4 16:46:45 2019 +0100

    Remove type in ovs-bridge example
    
    Signed-off-by: Fernando Fernandez Mancera <ffmancera@riseup.net>

commit a670dda3c47d18a854cd2083efdd3dd23c3f9dc7
Author: Fernando Fernandez Mancera <ffmancera@riseup.net>
Date:   Tue Dec 3 13:54:05 2019 +0100

    Add SR-IOV support API changes
    
    Signed-off-by: Fernando Fernandez Mancera <ffmancera@riseup.net>

commit dc6924dac0762af53efc63c055852572ae1b86d7
Author: Quique Llorente <ellorent@redhat.com>
Date:   Thu Sep 19 11:32:02 2019 +0200

    Add vxlan support api changes
    
    Signed-off-by: Quique Llorente <ellorent@redhat.com>

commit 0118ed4be274066d5ab094f668bc6aecaa734949
Author: Petr Horacek <phoracek@redhat.com>
Date:   Tue Oct 15 23:49:33 2019 +0200

    ovs: drop OVS port's "type" attribute
    
    https://github.com/nmstate/nmstate/pull/525
    
    Signed-off-by: Petr Horacek <phoracek@redhat.com>

commit 1e0e38ebfd1a929a0f8697f469fcde2047a01cea
Author: Petr Horacek <phoracek@redhat.com>
Date:   Wed Oct 16 00:09:25 2019 +0200

    ovs: add internal interface example
    
    Add an example of OVS internal interface. Having no system interface
    and no IP may make OVS difficult to grasp for ovs-vsctl users.
    
    Also drop default OVS bridge options from basic examples. Simpler is
    better. Let's not lose users on first sight.
    
    Signed-off-by: Petr Horacek <phoracek@redhat.com>

commit b54fbb45e3b9455459be2793fbd8cc530a1932cd
Merge: 6ff0b5e 41019aa
Author: Till Maas <opensource@till.name>
Date:   Fri Oct 18 13:57:07 2019 +0200

    Merge pull request #23 from phoracek/drop_explicitly_configured_slaves
    
    drop explicitly defined slaves from state examples

commit 41019aa4f14c76059d8d95eac7ec01c4b0268459
Author: Petr Horacek <phoracek@redhat.com>
Date:   Wed Oct 16 00:17:01 2019 +0200

    drop explicitly defined slaves from state examples
    
    Those definitions are not needed. It is confusing users (including
    me). Let's keep the API as simple as possible.
    
    Signed-off-by: Petr Horacek <phoracek@redhat.com>

commit 6ff0b5e53ea937887f34f3e704d8b14dc8079c78
Merge: 36a50bf 34f7e85
Author: Till Maas <opensource@till.name>
Date:   Wed Oct 16 13:32:03 2019 +0200

    Merge pull request #25 from phoracek/add_syntax_highlighting
    
    add syntax highlighting

commit 36a50bf06585624761c0fb30ccc9735acec85e0b
Merge: 8a77803 3476be3
Author: Till Maas <opensource@till.name>
Date:   Wed Oct 16 13:31:23 2019 +0200

    Merge pull request #26 from phoracek/fix_network-api_syntax
    
    there was one asterisk more than needed

commit 3476be31e5722efdb2ca6b6a1b3c15ec300d547b
Author: Petr Horacek <phoracek@redhat.com>
Date:   Wed Oct 16 00:37:38 2019 +0200

    there was one asterisk more than needed
    
    And that broke formatting of the page.
    
    Signed-off-by: Petr Horacek <phoracek@redhat.com>

commit 34f7e85d4d537a3e8fca67ace88182bee38e791e
Author: Petr Horacek <phoracek@redhat.com>
Date:   Wed Oct 16 00:34:34 2019 +0200

    add syntax highlighting
    
    Let's make the site pretty.
    
    Signed-off-by: Petr Horacek <phoracek@redhat.com>

commit 8a77803dd40047783229d52eed911836e207e8e2
Merge: d293b38 f87fd5b
Author: Till Maas <opensource@till.name>
Date:   Thu Oct 10 13:23:52 2019 +0200

    Merge pull request #20 from tyll/cli_guide
    
    Fix some issues in the cli guide

commit f87fd5b9bd2df8c9a61129f0ea871a1686a4a5f5
Author: Till Maas <opensource@till.name>
Date:   Thu Oct 10 13:03:19 2019 +0200

    cli_guide: Name EDITOR variable without dollar.
    
    Signed-off-by: Till Maas <opensource@till.name>

commit e3c998770ef207136ba5d8052494193a87aa9f29
Author: Till Maas <opensource@till.name>
Date:   Thu Oct 10 13:02:46 2019 +0200

    cli_guide: Fix unnumbered list
    
    Signed-off-by: Till Maas <opensource@till.name>

commit 6a8d51ce43a7fdac671a8adc318cddfab852b866
Author: Till Maas <opensource@till.name>
Date:   Thu Oct 10 13:01:54 2019 +0200

    cli_guide: Fix interface patterns descriptions
    
    The patterns for interfaces are no regular expressions.
    
    Signed-off-by: Till Maas <opensource@till.name>

commit d293b3863035d31b8af5593f520af370839fd224
Merge: 7dab130 47cdfa2
Author: Till Maas <opensource@till.name>
Date:   Thu Oct 10 12:48:52 2019 +0200

    Merge pull request #19 from ffmancera/master
    
    Fix typo in the nmstatectl guide

commit 47cdfa27b178248b9d8a651d950ea33c4ccbde97
Author: Fernando Fernandez Mancera <ffmancera@riseup.net>
Date:   Thu Oct 10 12:01:48 2019 +0200

    Fix typo in the nmstatectl guide
    
    Signed-off-by: Fernando Fernandez Mancera <ffmancera@riseup.net>

commit 7dab1300821a59ba4643355b11a1b3704c5f5335
Author: Gris Ge <fge@redhat.com>
Date:   Thu Sep 12 20:04:23 2019 +0800

    Add documents for API, nmstatectl and installation
    
    The API document is intend to hold information for using libnmstate.
    The nmstate user guide is intend to hold information for using
    nmstatectl.
    
    Signed-off-by: Gris Ge <fge@redhat.com>

commit 14b0021adca07d6b411e06a35ccdb54f341fa9e0
Merge: 8c7621c 209ec62
Author: Gris Ge <fge@redhat.com>
Date:   Mon Aug 5 14:45:53 2019 +0800

    Merge pull request #17 from cathay4t/features
    
    Add remaining feature examples.

commit 209ec626b08c5037f4f07870ed4b32554be01f14
Author: Gris Ge <fge@redhat.com>
Date:   Fri Aug 2 14:11:28 2019 +0800

    Add remaining feature examples.
    
    Adding YAML examples for remaining features:
        * VLAN
        * Linux Bridge
        * Route
        * DNS client configuration
    
    Signed-off-by: Gris Ge <fge@redhat.com>

commit 8c7621c41780e9c81b1deb817ab5d6990a574009
Merge: 1b9861c b7c5116
Author: Till Maas <opensource@till.name>
Date:   Wed Jan 9 22:22:20 2019 +0100

    Merge pull request #15 from tyll/repository_url
    
    Use Repository URL of code repo

commit b7c5116476ae8cc243a37af0518f30c9ffa287dc
Author: Till Maas <opensource@till.name>
Date:   Wed Jan 9 20:07:04 2019 +0100

    Config: Fix yaml-lint warning
    
    Signed-off-by: Till Maas <opensource@till.name>

commit a5eda43da9f5f2f9cd2f40fe5f496109db7a2908
Author: Till Maas <opensource@till.name>
Date:   Wed Jan 9 20:05:12 2019 +0100

    Config: Setup repository URL
    
    Signed-off-by: Till Maas <opensource@till.name>

commit 1b9861c009ebca52b3721cdf3c6cddc166c0bf14
Merge: 202007b 3d9bbce
Author: Gris Ge <fge@redhat.com>
Date:   Wed Nov 21 22:17:28 2018 +0800

    Merge pull request #13 from EdDev/design-doc
    
    devel: Add the design document

commit 3d9bbce043f57ab265ed5d4e601f2a16e0e78ce7
Author: Edward Haas <edwardh@redhat.com>
Date:   Sun Nov 11 17:40:41 2018 +0200

    index: Add a link to the design document
    
    Signed-off-by: Edward Haas <edwardh@redhat.com>

commit 311e330f7af03a597a89d0a37b3eca8c15fa4e77
Author: Edward Haas <edwardh@redhat.com>
Date:   Sun Nov 11 17:25:21 2018 +0200

    devel: Add the design document
    
    Port the design document from google-docs and make it available for
    upstream.
    
    Signed-off-by: Edward Haas <edwardh@redhat.com>

commit 202007b25f0a01c943cc62f0b4972c6a942b8d60
Author: Gris Ge <fge@redhat.com>
Date:   Tue Nov 6 16:03:21 2018 +0800

    Add document for IPv6 support.
    
     * Use 2001:DB8::/32 block for document purpose.
    
    Signed-off-by: Gris Ge <fge@redhat.com>

commit e75b663153f86052eaa5d7280e356063b8a97222
Merge: f462dda 009a347
Author: Till Maas <opensource@till.name>
Date:   Thu Sep 27 14:56:20 2018 +0200

    Merge pull request #11 from tyll/revert_change
    
    Show reverting a state change when it fails

commit 009a347cf2f61152369bf3d82d4ca4aefb79478a
Author: Till Maas <opensource@till.name>
Date:   Thu Sep 27 11:21:42 2018 +0200

    Show reverting a state change when it fails

commit f462ddaa3ec85eb967086e07fe8cb7c6ca9c55b8
Author: Till Maas <opensource@till.name>
Date:   Mon Sep 10 16:48:49 2018 +0200

    Add auto-negotiation, description, duplex, speed and mtu

commit 8d9be08451ff6c1f5a1f75779380f8325a6ffa2a
Author: Edward Haas <edwardh@redhat.com>
Date:   Sun Sep 2 13:45:45 2018 +0300

    schema: Changed 'addresses' keyword to 'address'
    
    Sync with the schema and use the address singular term.
    
    Signed-off-by: Edward Haas <edwardh@redhat.com>

commit 4c48fe0f2617aedb98d953d0fec695d87c393c28
Author: Edward Haas <edwardh@redhat.com>
Date:   Wed Jul 25 16:40:41 2018 +0300

    Link the supported interfaces to their examples

commit 3d49b287abcf382b79136308bb3874b3af49455d
Author: Edward Haas <edwardh@redhat.com>
Date:   Wed Jul 25 16:33:41 2018 +0300

    Ad ovs-bridge as a supported interface

commit cb7511569dd312702a394a8ec2b1073362057bc7
Author: Edward Haas <edwardh@redhat.com>
Date:   Tue Jul 24 11:33:58 2018 +0300

    Document OVS dependencies for the NM provider
    
    In order to support the OpenVSwitch bridge through the NM provider, the NetworkManager-ovs package needs to be installed and the NM restarted.

commit e12057a2ee2c251652f382ae8d73c269e9d42f04
Author: Edward Haas <edwardh@redhat.com>
Date:   Tue Jul 24 11:16:43 2018 +0300

    Fix typo in the landing page

commit 49591103008e5af139ca77c9a66854438d656278
Author: Edward Haas <edwardh@redhat.com>
Date:   Mon Jul 23 16:38:30 2018 +0300

    examples: Present iface state change options
    
    It covers 'up', 'down' and 'absent'.
    
    Signed-off-by: Edward Haas <edwardh@redhat.com>

commit ca527970769b173c19fe738e3c3a9f1963eb7e5a
Author: Edward Haas <edwardh@redhat.com>
Date:   Mon Jul 23 13:03:04 2018 +0300

    examples: Adding an example page
    
    Adding an example page with the currently supported interfaces:
    - ethernet
    - bond
    - ovs-bridge
    - dummy
    
    The examples are in yaml format.
    
    Signed-off-by: Edward Haas <edwardh@redhat.com>

commit 90a326654bc7577972a9fd4c97b53f7b4680ddac
Author: Edward Haas <edwardh@redhat.com>
Date:   Thu Jul 5 11:51:40 2018 +0300

    Add OVS bridge demo

commit f51a4953a78d1b19835810708217039bfef74041
Author: Till Maas <opensource@till.name>
Date:   Thu Jun 28 20:47:27 2018 +0200

    Add Ansible bond demo

commit 3f840421e5bef5a34b18f7ceaa6d681dab86b9de
Author: Till Maas <opensource@till.name>
Date:   Wed Jun 27 21:08:54 2018 +0200

    Remove --file parameter
    
    It was removed in https://github.com/nmstate/nmstate/pull/18

commit 58d93d18afb010ac6d428ecc93f3c397c2b9e274
Author: Till Maas <opensource@till.name>
Date:   Tue Jun 26 19:25:38 2018 +0200

    Install NMState as user and upgrade if necessary

commit c28ae2e5e10da850af071d26c694f48b45b9bd20
Author: Till Maas <opensource@till.name>
Date:   Tue Jun 26 19:22:06 2018 +0200

    Fix typos

commit 29d95ce4305ef8a5dfe9869c84f6c553cb98a35d
Author: Edward Haas <edwardh@redhat.com>
Date:   Mon Jun 25 20:43:19 2018 +0300

    Add the demos page
    
    Introduce the demos page and reference it from the landing page.

commit 50720cb0eeb46492c4f2a9b8fb529f88889bc967
Author: dankenigsberg <danken@redhat.com>
Date:   Thu Jun 21 13:35:36 2018 +0300

    add a link from site source to production.

commit c624251a7b88dcb18e6fd850a74e05bbb16637e6
Author: dankenigsberg <danken@redhat.com>
Date:   Wed Jun 20 16:03:48 2018 +0300

    prettify landing page
    
    Putting a real description at the top of the page.

commit f2ee1c0be34780d58c8390db5eae75b68c3f5113
Author: Edward Haas <edwardh@redhat.com>
Date:   Tue Jun 19 14:49:37 2018 +0300

    intro: Clarify that "it" means "schema"

commit a30c19be3295b50bfe83ce1ec017f1490213d74d
Author: Edward Haas <edwardh@redhat.com>
Date:   Sun Jun 17 14:07:16 2018 +0300

    Landing page introduction

commit ac64e027cde51ae94eeab001c3e5120111e4496b
Author: Edward Haas <edwardh@redhat.com>
Date:   Sun Jun 17 11:15:41 2018 +0300

    Add README

commit 95088fecae5e7c046881266b4d85ab4c88fe4e61
Author: Edward Haas <edwardh@redhat.com>
Date:   Sun Jun 17 11:12:09 2018 +0300

    Add license: Creative Commons Attribution 4.0

commit f4eb20458721dc4f9266d3f147b108160e60d0ec
Author: Edward Haas <edwardh@redhat.com>
Date:   Sun Jun 17 10:34:52 2018 +0300

    Set theme jekyll-theme-hacker

commit fd805e00c02413a173a51edb995149d70472ad88
Author: Petr Horáček <phoracek@redhat.com>
Date:   Thu May 31 13:42:59 2018 +0200

    add title and description

commit 2d2cbcd8ef7ec403bde915fdb3363c0b429b6928
Author: Petr Horáček <p.horacek94@gmail.com>
Date:   Thu May 31 13:40:42 2018 +0200

    Set theme jekyll-theme-minimal

commit 614708e9c2c9ff00d1d75a082c49fb82c37c0b07
Author: Petr Horáček <phoracek@redhat.com>
Date:   Thu May 31 13:29:18 2018 +0200

    initial commit
