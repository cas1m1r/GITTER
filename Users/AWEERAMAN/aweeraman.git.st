======================: BRANCHES :======================
======================: LOGINFO :======================
======================: FILES :======================
======================: BRANCHES :======================
======================: LOGINFO :======================
======================: FILES :======================
======================: BRANCHES :======================
======================: LOGINFO :======================
commit edb35a9c93f3f12574bf44175989c9d59853df35
Author: Anuradha Weeraman <anuradha@debian.org>
Date:   Fri Dec 9 19:55:08 2022 +0530

    Changed font to NotoSansMono

commit 4e5587f10cc894e33920c98815d0723b24af8422
Author: Anuradha Weeraman <anuradha@debian.org>
Date:   Wed Dec 7 23:37:57 2022 +0530

    Bumped up alpha

commit e80d99a251f2357e3185f207a4383cf6ee5427ea
Author: Anuradha Weeraman <anuradha@debian.org>
Date:   Wed Dec 7 21:57:05 2022 +0530

    Updated

commit f75bc15e9c33edcaabc3e92e1c3279099d1ea6da
Author: Anuradha Weeraman <anuradha@debian.org>
Date:   Sat Oct 29 16:07:11 2022 +0530

    Removed combined.diff from patch

commit fe2a1107d6c734469c60e824fa7930dc4b806e70
Author: Anuradha Weeraman <anuradha@debian.org>
Date:   Sat Oct 29 16:05:46 2022 +0530

    Fullscreen patch

commit 9c7af03090948aaaa4f3dd03194518eb68a8fb89
Author: Anuradha Weeraman <anuradha@debian.org>
Date:   Sat Oct 29 15:58:47 2022 +0530

    Changed font

commit 787f70cb66c3b2da25d38bb6223237c9fcb94130
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Tue Oct 25 17:11:11 2022 +0200

    fix buffer overflow when handling long composed input
    
    To reproduce the issue:
    
    "
    If you already have the multi-key enabled on your system, then add this line
    to your ~/.XCompose file:
    
    [...]
    <question> <T> <E> <S> <T> <question> :
    "1234567890123456789012345678901234567890123456789012345678901234567890"
    "
    
    Reported by and an initial patch by Andy Gozas <andy@gozas.me>, thanks!
    
    Adapted the patch, for now st (like dmenu) handles a fixed amount of composed
    characters, or otherwise ignores it. This is done for simplicity sake.

commit 9e9c0181b257d3d1d1019ce42d5266f9b4c5d7ff
Author: Anuradha Weeraman <anuradha@debian.org>
Date:   Sat Oct 22 00:35:48 2022 +0530

    Fixed config.diff

commit 33f516bda874e8e867656c8334668ac2ce8cb452
Author: Anuradha Weeraman <anuradha@debian.org>
Date:   Sat Oct 22 00:35:04 2022 +0530

    Fixed direction of config.diff

commit c0c9558b902173be1701d01e95b6b160469c5822
Author: Anuradha Weeraman <anuradha@debian.org>
Date:   Sat Oct 22 00:27:42 2022 +0530

    Added custom patches

commit 68d1ad9b54e952e3079356aeab8ab37e44c56c2c
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Tue Oct 4 19:40:30 2022 +0200

    bump version to 0.9

commit 00085199039ee63acc7b1ecb7e3774a9c3552b2a
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Fri Sep 16 23:07:09 2022 +0200

    FAQ: document the color emojis crash issue which affected some systems is fixed
    
    It is fixed in libXft 2.3.6:
    
    https://gitlab.freedesktop.org/xorg/lib/libxft/-/blob/libXft-2.3.5/NEWS

commit 72fd32736a612edec43596c14148322122a5544d
Author: Tom Schwindl <schwindl@posteo.de>
Date:   Thu Aug 18 14:55:19 2022 +0000

    st: use `void' to indicate an empty parameter list

commit baa9357e96d2478baa52a3301e70ac80a229b726
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Sun May 1 18:38:40 2022 +0200

    Makefile: add manual path for OpenBSD

commit 8629d9a1da72cc18568a8f146307b0e939b77ebf
Author: NRK <nrk@disroot.org>
Date:   Fri Jan 7 23:21:04 2022 +0600

    code-golfing: cleanup osc color related code
    
    * adds missing function prototype
    * move xgetcolor() prototype to win.h (that's where all the other x.c
      func prototype seems to be declared at)
    * check for snprintf error/truncation
    * reduces code duplication for osc 10/11/12
    * unify osc_color_response() and osc4_color_response() into a single function
    
    the latter two was suggested by Quentin Rameau in his patch review on
    the hackers list.

commit ef0551932fb162f907b40185d2f48c3b497708ee
Author: NRK <nrk@disroot.org>
Date:   Fri Mar 18 17:03:34 2022 +0600

    base64_digits: reduce scope, implicit zero, +1 size
    
    the array is not accessed outside of base64dec() so it makes sense to
    limit it's scope to the related function. the static-storage duration of
    the array is kept intact.
    
    this also removes unnecessary explicit zeroing from the start and end of
    the array. anything that wasn't explicitly zero-ed will now be
    implicitly zero-ed instead.
    
    the validity of the new array can be easily confirmed via running this
    trivial loop:
    
            for (int i = 0; i < 255; ++i)
                    assert(base64_digits[i] == base64_digits_old[i]);
    
    lastly, as pointed out by Roberto, the array needs to have 256 elements
    in order to able access it as any unsigned char as an index; the
    previous array had 255.
    
    however, this array will only be accessed at indexes which are
    isprint() || '=' (see `base64dec_getc()`), so reducing the size of the
    array to the highest printable ascii char (127 AFAIK) + 1 might also be
    a valid strategy.

commit af3bb68add1c40d19d0dee382009e21b0870a38f
Author: NRK <nrk@disroot.org>
Date:   Fri Mar 18 16:20:54 2022 +0600

    avoid potential UB when using isprint()
    
    all the ctype.h functions' argument must be representable as an unsigned
    char or as EOF, otherwise the behavior is undefined.

commit 2aefa348baf4b702fdce98eb105bcba175d8283f
Author: Zacchary Dempsey-Plante <zacc@ztdp.ca>
Date:   Sun Mar 13 10:44:08 2022 +0100

    make underlines and strikethroughs respect `chscale`

commit e823e2308f2a99023032a3966ebb7036a31d305f
Author: Santtu Lakkala <inz@inz.fi>
Date:   Thu Feb 17 16:00:47 2022 +0200

    Delay redrawals on palette changes
    
    Build on auto-sync and only mark window dirty on palette changes and let
    the event handler do the actual draw.

commit 2c5edf28ec851907305d73c6218ce75d39f1767f
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Wed Jan 12 09:44:27 2022 +0100

    X10/SGR mouse: use alt as meta key instead of super/windows key

commit b1d97fec47b0d6633addb848131388ec40154ebc
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Mon Jan 10 17:11:17 2022 +0100

    LICENSE: bump year

commit ea7cd7b62fdfa6a1fbd882d1565d557577f2cf32
Author: robert <robertrussell.72001@gmail.com>
Date:   Sat Jan 8 11:40:34 2022 -0800

    Fix mousereport
    
    This patch replaces the previous one I sent.
    
    The following changes are made in this patch:
     - Fix tracking of pressed buttons. Previously, pressing two buttons and
       then releasing one would make st think no buttons are pressed, which
       in particular broke MODE_MOUSEMOTION.
     - Always send the lowest-numbered pressed button on motion events; when
       no button is pressed for a motion event in MODE_MOUSEMANY, then send
       a release. This matches the behaviour of xterm. (Previously, st sent
       the most recently pressed button in the motion report.)
     - Remove UB (?) access to potentially inactive struct member
       e->xbutton.button of XEvent union.
     - Fix (unlikely) possibility of overflow for large button numbers.
    
    The one discrepancy I found between st and xterm is that xterm sometimes
    encodes buttons with large numbers (>5) strangely. E.g., xterm reports
    presses of buttons 8 and 9 as releases, whereas st properly (?) encodes
    them as presses.

commit 7fb0c0cc681f36be2ad12091ef93a41671f32738
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Fri Jan 7 12:39:57 2022 +0100

    bump version to 0.8.5

commit 7e1c68f25d9f08687a94eeef8d7f8ffd0d14b911
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Sun Jan 2 12:15:45 2022 +0100

    FAQ: fix a typo, patch -> path

commit 65f1dc428315ae9d7f362e10c668557c1379e7af
Author: jamin <acdimalev@gmail.com>
Date:   Wed Dec 29 09:07:17 2021 -0800

    Fix overtyping wide characters.
    
    Overtyping the first half of a wide character with the
    second half of a wide character results in display garbage.
    This is because the trailing dummy is not cleaned up.
    
    i.e.  ATTR_WIDE, ATTR_WDUMMY, ATTR_WDUMMY
    
    Here is a short script for demonstrating the behavior:
    
            #!/bin/sh
            alias printf=/usr/bin/printf
            printf こんにちは！; sleep 2
            printf '\x1b[5D'; sleep 2
            printf へ; sleep 2
            printf ' '; sleep 2
            echo

commit a0467c802d4f86ed162486e3453dd61181423902
Author: Jochen Sprickerhof <git@jochen.sprickerhof.de>
Date:   Mon Dec 27 11:41:42 2021 +0100

    Fix null pointer access in strhandle
    
    According to the spec the argument is optional for 104, so p can be
    NULL as can be tested with printf '\x1b]104\x07'. This is a regression
    of 8e31030.

commit 273db5ceaf392e68c2faf8f7dec14ea2e25e980d
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Sun Dec 26 19:00:41 2021 +0100

    follow-up fix for OSC color sequences, return
    
    Otherwise the message "erresc: unknown str" is printed.

commit 8e310303903792c010d03c046ba75f8b18f7d3a7
Author: Raheman Vaiya <r.vaiya@gmail.com>
Date:   Sun Dec 26 18:57:04 2021 +0100

    Add support for OSC color sequences

commit 2f6e597ed871cff91c627850d03152cae5f45779
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Tue Aug 24 13:44:35 2021 +0200

    fix possible rare crash when Xutf8TextPropertyToTextList fails
    
    from the XmbTextListToTextProperty(3) man page:
    
    "If insufficient memory is available for the new value string, the functions
    return XNoMemory.  If the current locale is not supported, the functions return
    XLocaleNotSupported.  In both of these error cases, the functions do not set
    text_prop_return."
    
    Reported by Steffen Nurpmeso <steffen@sdaoden.eu>, thanks!

commit 1d3142da968da7f6f61f1c1708f39ca233eda150
Author: Koichi Murase <myoga.murase@gmail.com>
Date:   Tue Aug 24 06:25:05 2021 +0900

    fix a problem that the standard streams are unexpectedly closed
    
    In the current implementation, the slave PTY (assigned to the variable
    `s') is always closed after duplicating it to file descriptors of
    standard streams (0, 1, and 2).  However, when the allocated slave PTY
    `s' is already one of 0, 1, or 2, this causes unexpected closing of a
    standard stream.  The same problem occurs when the file descriptor of
    the master PTY (the variable `m') is one of 0, 1, or 2.
    
    In this patch, the original master PTY (m) is closed before it would
    be overwritten by duplicated slave PTYs.  The original slave PTY (s)
    is closed only when it is not one of the stanrad streams.

commit 2ec571a30c0c3b1a17f6b3631c80d573582f59a1
Author: Petar Kapriš <petarkapris@firemail.cc>
Date:   Sun Jul 18 00:14:00 2021 +0200

    Add 14th bit to XK_SWITCH_MOD bitmask
    
    The bits of uint signal in an XKeyEvent which concern the key group (keyboard
    layout) are bits 13 and 14, as documented here:
    https://www.x.org/releases/X11R7.7/doc/libX11/XKB/xkblib.html#Groups_and_Shift_Levels
    In the older version, only bit 13 was marked as part of XK_SWITCH_MOD, this
    causes issues for users who have more than two keymaps. the 14th bit is not
    in ignoremod, key sequences are not caught by match(), if they switch to a third
    or fourth keyboard.

commit 4536f46cfff50c66a115755def0155d8e246b02f
Author: Markus F.X.J. Oberhumer <markus@oberhumer.com>
Date:   Sun Mar 28 21:16:59 2021 +0200

    Mild const-correctness improvements.
    
    Only touch a few things, the main focus is to
    improve code readability.

commit 9e68fdbcdb06dfa3d23fe3a7a7f7b59e40e1ea2f
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Fri Mar 19 11:54:36 2021 +0100

    fix: correctly encode mouse buttons >= 8 in X10 and SGR mode
    
    These are typically mapped in X11 to the side-buttons (backward/forwards) on
    the mouse. A comparison of the button numbers in SGR mode (first field):
    
    st old:
    0 1 2 64 65 66 67 68 69 70
    
    st new (it is the same as xterm now):
    0 1 2 64 65 66 67 128 129 130
    
    A script to test and reproduce it, first argument is "h" (on) or "l" (off):
    
            #!/bin/sh
            printf '\x1b[?1000%s\x1b[?1006%s' "$1" "$1"
    
            for n in 1 2 3 4 5 6 7 8 9 10; do
                    printf 'button %d\n' "$n"
                    xdotool click "$n"
                    printf '\n\n'
            done

commit 4ef0cbd8b9371f37f7d02ef37b5378b879e6b8bf
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Sun Oct 18 11:18:03 2020 +0200

    remove unused variable from previous patch

commit 28b4c822c5c0acec300fdf15c6e3ede9f5e2335d
Author: John Collis <john.collis@alliedtelesis.co.nz>
Date:   Sun Sep 6 17:53:41 2020 +1200

    ST: Add WM_ICON_NAME property support
    
    Also added _NET_WM_ICON_NAME.

commit fa253f077f19b3220c7655b81bd91e52f4367803
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Fri Jun 19 11:27:17 2020 +0200

    bump version to 0.8.4

commit b27a383a3acc7decf00e6e889fca265430b5d329
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Wed Jun 17 23:47:00 2020 +0200

    config.mk: use PKG_CONFIG in commented OpenBSD section

commit 81067c65ea4dd80e8eb34755a4f50a4a8c7df06b
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Wed Jun 17 23:44:34 2020 +0200

    LICENSE: bump years

commit f74a9df6e1fc88eebe6d673d888b61fd83cf6fc4
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Wed Jun 17 22:05:48 2020 +0200

    remove sixel stub code
    
    Remove stub code that was used for an experiment of adding sixel code to st
    from the commit f7398434.

commit 818ec746f4caae453d09368b101c3e841cf39870
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Wed Jun 17 21:35:39 2020 +0200

    fix unicode glitch in DCS strings, patch by Tim Allen
    
    Reported on the mailinglist:
    
    "
    I discovered recently that if an application running inside st tries to
    send a DCS string, subsequent Unicode characters get messed up. For
    example, consider the following test-case:
    
        printf '\303\277\033P\033\\\303\277'
    
    ...where:
    
      - \303\277 is the UTF-8 encoding of U+00FF LATIN SMALL LETTER Y WITH
        DIAERESIS (ÿ).
      - \033P is ESC P, the token that begins a DCS string.
      - \033\\ is ESC \, a token that ends a DCS string.
      - \303\277 is the same ÿ character again.
    
    If I run the above command in a VTE-based terminal, or xterm, or
    QTerminal, or pterm (PuTTY), I get the output:
    
        ÿÿ
    
    ...which is to say, the empty DCS string is ignored. However, if I run
    that command inside st (as of commit 9ba7ecf), I get:
    
        ÿÃ¿
    
    ...where those last two characters are \303\277 interpreted as ISO8859-1
    characters, instead of UTF-8.
    
    I spent some time tracing through the state machines in st.c, and so far
    as I can tell, this is how it works currently:
    
      - ESC P sets the "ESC_DCS" and "ESC_STR" flags, indicating that
        incoming bytes should be collected into the strescseq buffer, rather
        than being interpreted.
      - ESC \ sets the "ESC_STR_END" flag (when ESC is received), and then
        calls strhandle() (when \ is received) to interpret the collected
        bytes.
      - If the collected bytes begin with 'P' (i.e. if this was a DCS
        string) strhandle() sets the "ESC_DCS" flag again, confusing the
        state machine.
    
    If my understanding is correct, fixing the problem should be as easy as
    removing the line that sets ESC_DCS from strhandle():
    
    diff --git a/st.c b/st.c
    index ef8abd5..b5b805a 100644
    --- a/st.c
    +++ b/st.c
    @@ -1897,7 +1897,6 @@ strhandle(void)
                    xsettitle(strescseq.args[0]);
                    return;
            case 'P': /* DCS -- Device Control String */
    -               term.mode |= ESC_DCS;
            case '_': /* APC -- Application Program Command */
            case '^': /* PM -- Privacy Message */
                    return;
    
    I've tried the above patch and it fixes my problem, but I don't know if
    it introduces any others.
    "

commit 9ba7ecf7b15ec2986c6142036706aa353b249ef9
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Mon Jun 1 14:09:46 2020 +0200

    FAQ: fix single-buffer patch
    
    rebase against master

commit a2a704492b9f4d2408d180f7aeeacf4c789a1d67
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Sat May 30 21:56:18 2020 +0200

    config.def.h: add an option allowwindowops, by default off (secure)
    
    Similar to the xterm AllowWindowOps option, this is an option to allow or
    disallow certain (non-interactive) operations that can be insecure or
    exploited.
    
    NOTE: xsettitle() is not guarded by this because st does not support printing
    the window title. Else this could be exploitable (arbitrary code execution).
    Similar problems have been found in the past in other terminal emulators.
    
    The sequence for base64-encoded clipboard copy is now guarded because it allows
    a sequence written to the terminal to manipulate the clipboard of the running
    user non-interactively, for example:
    
    printf '\x1b]52;0;ZWNobyBoaQ0=\a'

commit 0f8b40652bca0670f1f0bda069bbc55f8b5e364d
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Sat May 30 21:50:54 2020 +0200

    FAQ: add some details about the w3m img hack
    
    ... and an example patch to switch from double-buffering to a single buffer.

commit e6e2c6199f102f1459b53717050eee27832f4f87
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Sat May 30 21:39:49 2020 +0200

    tiny style fix

commit 94b8ec002101a5e8f52a342e53431eea71aa0631
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Sat May 30 21:34:57 2020 +0200

    Partially add back in "support REP (repeat) escape sequence"
    
    Add the functionality back in for xterm compatibility, but do not expose the
    capability in st.info (yet).
    
    Some notes:
    
    It was reverted because it caused some issues with ncurses in some
    configurations, namely when using BSD padding (--enable-bsdpad, BSD_TPUTS) in
    ncurses it caused issues with repeating digits.
    
    A fix has been upstreamed in ncurses since snapshot 20200523. The fix is also
    backported to OpenBSD -current.

commit dec6b530a4fddf405c1822b2cac6e2036d3c8b75
Author: Steve Ward <planet36@gmail.com>
Date:   Wed May 20 22:24:55 2020 -0400

    Call xsetcursor to set win.cursor in main
    
    In xsetcursor, remove "DEFAULT(cursor, 1)" because 0 is a valid value.
    Increase max allowed value of cursor from 6 to 7 (st extension).

commit 475a0a36cb4fda1da30f014da65988e99b222876
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Sat May 16 18:06:42 2020 +0200

    Revert "support REP (repeat) escape sequence"
    
    This reverts commit e8392b282c2eaa28725241a9612804fb55113da4.
    
    There is currently a bug in older ncurses versions (like on OpenBSD) where a
    fix for a bug with REP is not backported yet. Most likely in tty/tty_update.c:
    
    Noticed while using lynx (which uses ncurses/curses).
    To reproduce using lynx: echo "Z0000000" | lynx -stdin
    
    or using the program:
    
    int
    main(void)
    {
            WINDOW *win;
            win = initscr();
    
            printw("Z0000000");
    
            refresh();
    
            sleep(5);
    
            return 0;
    }
    
    This prints "ZZZZZZZ" (incorrectly).

commit e8392b282c2eaa28725241a9612804fb55113da4
Author: Avi Halachmi (:avih) <avihpit@yahoo.com>
Date:   Thu May 14 18:18:07 2020 +0300

    support REP (repeat) escape sequence
    
    The sequence \e[Nb prints the last printed char N (more) times if it's
    printable, and it's ignored after newline or other control chars.
    
    This is Ecma-048/ANSI-X3.6 sequence and not DEC VT. It's supported by
    xterm, and ncurses uses it when possible, e.g. when TERM is xterm* (and
    with this commit also st*).
    
    xterm supports only codepoints<=255, possibly due to internal limits.
    We support any value/codepoint which was placed in a cell.
    
    To test:
    - tput rep 65 4 -> prints 'AAAA'
    - printf "\342\225\246\033[4b" -> prints U+2566 1+4 times.

commit f8afebdfa0cc9a57b22c39c47e9b585f69453eb7
Author: Roberto E. Vargas <k0ga@shike2.com>
Date:   Sat May 16 10:42:51 2020 +0000

    Add rin terminfo capability
    
    Tianlin Qu discovered that st is missing rin (scroll back #1 lines).

commit bda9c9ffa645ee5e4b2507474ebfa1c5efb889b2
Author: k0ga <k0ga@shike2.com>
Date:   Sat May 16 09:48:18 2020 +0000

    Make shift+wheel behaves as shift+Prev/Next
    
    St uses a very good hack where mouse wheel genereates ^Y and ^E,
    that are the same keys that less and vi uses for backward and
    fordward scrolling. Scroll, as many terminal emulators, use
    shift+Prev/Next for scrolling, but it is also using ^E and ^Y
    for scroling, characters that are reserved in the POSIX shell
    in emacs mode for end of line and yanking, making scroll unsable
    in st.
    
    This patch adds a new hack, making shift+wheel returning the
    same sequences than shift+Prev/Next, meaning that scroll or
    any other similar program will not be able to differentiate
    between them.

commit 045a0fab4f80b57f4a982ae6bc5f33fe21d66111
Author: Jakub Leszczak <szatan@gecc.xyz>
Date:   Wed May 6 13:36:59 2020 +0200

    Fix selection: selscroll

commit 9c30066e73f0105c3fccb7582c8172d5117857b3
Author: Jakub Leszczak <szatan@gecc.xyz>
Date:   Wed May 6 13:35:53 2020 +0200

    Fix selection: ignore ATTR_WRAP when rectangular selection in getsel

commit 8304d4f0599b1be2226c28c553547070658d4af3
Author: Jakub Leszczak <szatan@gecc.xyz>
Date:   Wed May 6 13:35:06 2020 +0200

    Fix selection: selclear in tputc

commit 914fb825df3bde7abdd7947e54f8bf4d2b55e34e
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Sat May 9 14:43:31 2020 +0200

    code-style: add fallthrough comment
    
    Patch by Steve Ward, thanks.

commit cde480c6939e62771ba3b60ef4eb848031aee9f9
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Sat May 9 14:03:14 2020 +0200

    optimize column width calculation and utf-8 encode for ASCII
    
    In particular on OpenBSD and on glibc wcwidth() is quite expensive.
    On musl there is little difference.

commit 8211e36d281990a39db1853bcd454ac59e53d521
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Sat May 9 13:56:28 2020 +0200

    fix for incorrect (partial) written sequences when libc wcwidth() == -1
    
    Fix an issue with incorrect (partial) written sequences when libc wcwidth() ==
    -1. The sequence is updated to on wcwidth(u) == -1:
    
            c = "\357\277\275"
    
    but len isn't.
    
    A way to reproduce in practise:
    
    * st -o dump.txt
    * In the terminal: printf '\xcd\xb8'
    - This is codepoint 888, on OpenBSD it reports wcwidth() == -1.
    - Quit the terminal.
    - Look in dump.txt (partial written sequence of "UTF_INVALID").
    
    This was introduced in:
    
    "       commit 11625c7166b7e4dad414606227acec2de1c36464
            Author: czarkoff@gmail.com <czarkoff@gmail.com>
            Date:   Tue Oct 28 12:55:28 2014 +0100
    
                Replace character with U+FFFD if wcwidth() is -1
    
                Helpful when new Unicode codepoints are not recognized by libc."
    
    Change:
    
    Remove setting the sequence. If this happens to break something, another
    solution could be setting len = 3 for the sequence.

commit 87545c612e8ab6e7cd1ef38e2355d0cb86df79f2
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Sat May 9 13:55:34 2020 +0200

    tiny code-style and typo-fix in comment

commit 1d590910652519268152eae6b97cf30ace4e90c0
Author: Avi Halachmi (:avih) <avihpit@yahoo.com>
Date:   Tue Feb 26 22:37:49 2019 +0200

    auto-sync: draw on idle to avoid flicker/tearing
    
    st could easily tear/flicker with animation or other unattended
    output. This commit eliminates most of the tear/flicker.
    
    Before this commit, the display timing had two "modes":
    
    - Interactively, st was waiting fixed `1000/xfps` ms after forwarding
      the kb/mouse event to the application and before drawing.
    
    - Unattended, and specifically with animations, the draw frequency was
      throttled to `actionfps`. Animation at a higher rate would throttle
      and likely tear, and at lower rates it was tearing big frames
      (specifically, when one `read` didn't get a full "frame").
    
    The interactive behavior was decent, but it was impossible to get good
    unattended-draw behavior even with carefully chosen configuration.
    
    This commit changes the behavior such that it draws on idle instead of
    using fixed latency/frequency. This means that it tries to draw only
    when it's very likely that the application has completed its output
    (or after some duration without idle), so it mostly succeeds to avoid
    tear, flicker, and partial drawing.
    
    The config values minlatency/maxlatency replace xfps/actionfps and
    define the range which the algorithm is allowed to wait from the
    initial draw-trigger until the actual draw. The range enables the
    flexibility to choose when to draw - when least likely to flicker.
    
    It also unifies the interactive and unattended behavior and config
    values, which makes the code simpler as well - without sacrificing
    latency during interactive use, because typically interactively idle
    arrives very quickly, so the wait is typically minlatency.
    
    While it only slighly improves interactive behavior, for animations
    and other unattended-drawing it improves greatly, as it effectively
    adapts to any [animation] output rate without tearing, throttling,
    redundant drawing, or unnecessary delays (sounds impossible, but it
    works).

commit d6ea0a1a61853dd892029a7126e7fdb70c371878
Author: Jan Klemkow <j.klemkow@wemelug.de>
Date:   Thu Apr 30 00:10:02 2020 +0200

    replace exit(3) by _exit(2) in signal handler sigchld()
    
    exit(3) is not async-signal-safe but, _exit(2) is.
    This change prevents st to crash and dump core.

commit 43a395ae91f7d67ce694e65edeaa7bbc720dd027
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Mon Apr 27 13:56:25 2020 +0200

    bump version to 0.8.3

commit 72e3f6c7c05b4d5b56388508bb20a863aec279f5
Author: Ivan Tham <pickfire@riseup.net>
Date:   Sun Apr 19 19:38:39 2020 +0200

    Update XIM cursor position only if changed
    
    Updating XIM cursor position is expensive, so only update it when cursor
    position changed.

commit 33a9a456644ceb235ea6ce61282f3bdce7a8b547
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Sat Apr 11 15:45:06 2020 +0200

    just remove the EOF message

commit 771bc401f76b329f78a285ca65355d4b43415172
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Sat Apr 11 14:46:17 2020 +0200

    Add st-mono terminfo entry
    
    This entry is intended for monocolor display and it is very
    helpful for color haters.

commit d66bd405c0d0f29beff89683a04a10297e962cb9
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Sat Apr 11 13:56:31 2020 +0200

    config.def.h: add a comment for the scroll variable

commit e997303502ddd5c26cfc41af0ff5356bffc04359
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Sat Apr 11 13:29:48 2020 +0200

    Fix small typos

commit c1145268f6b6c6f03a8bec1c09d356d6a4eba77e
Author: Quentin Rameau <quinq@fifth.space>
Date:   Sat Apr 11 12:09:20 2020 +0200

    Launch scroll program with the default shell

commit 0b73612c0dc51dbec1717e5da94bc94559c37246
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Sat Apr 11 11:52:58 2020 +0200

    Update FAQ with the last modifications

commit 019449a7e64a881be8cc5d715fe9de32726ba190
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Fri Apr 10 22:50:23 2020 +0200

    Add terminfo entries for backspace mode
    
    St used to use backspace as BS until the commit 230d0c8, but due
    to general lack of knowledge of lusers, we moved to the most common
    configuration in linux to avoid answering the same question 3 times
    per month. With the most common configuration we have a backspace
    that returns a DEL, and we have a Delete key that doesn't return a
    DEL character neither a BS.
    
    When dealing with devices connected using a serial line (or even
    with Plan9) it is more common Backspace as BS and Delete as DEL. For
    this reason, st is not always the best tool when you talk with a
    serial device.
    
    This patch adds new terminfo entries for Backspace as BS and Delete
    as DEL. A patch for confg.h is also added, to make easier switch
    between both configurations.

commit fbae700a3f32db76106b0ff6f49a73ecf0c2b4fe
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Fri Apr 10 22:26:12 2020 +0200

    Fix style issue

commit e52319cc7d153e4f59b38c4fb4c0556e118d4775
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Fri Apr 10 22:25:46 2020 +0200

    ttyread: test for EOF while reading tty
    
    When a read operation returns 0 then it means that we arrived to the end of the
    file, and new reads will return 0 unless you do some other operation such as
    lseek(). This case happens with USB-232 adapters when they are unplugged.

commit 21e0d6e8b8d20903494386e7e6f43201b3761154
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Fri Apr 10 22:06:32 2020 +0200

    Add support for scroll(1)
    
    Scroll is a program that stores all the lines of its child and be used in st as
    a way of implementing scrollback.
    
    This solution is much better than implementing the scrollback in st itself
    because having a different program allows to use it in any other program
    without doing modifications to those programs.

commit 5703aa0390484dd7da4bd9c388c85708d8fcd339
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Fri Apr 10 12:12:43 2020 +0200

    make argv0 not static, fixes a warning with tcc
    
    Reported by Aajonus, thanks!

commit 28ad28839985e965c9ca06a9a202523414c84ac4
Author: Avi Halachmi (:avih) <avihpit@yahoo.com>
Date:   Thu Apr 2 11:43:22 2020 +0300

    mouseshortcuts: fix custom modifier on release
    
    This line didn't work at mshortcuts at config.h:
    
      /*  mask       button   function  arg       release */
        { ShiftMask, Button2, selpaste, {.i = 0}, 1 },
    
    and now it does work.
    
    The issue was that XButtonEvent.state is "the logical state ... just prior
    to the event", which means that on release the state has the Button2Mask
    bit set because button2 was down just before it was released.
    
    The issue didn't manifest with the default shift + middle-click on release
    (to override mouse mode) because its specified modifier is XK_ANY_MOD, at
    which case match(...) ignores any specific bits and simply returns true.
    
    The issue also doesn't manifest on press, because prior to the event
    Button<N> was not down and its mask bit is not set.
    
    Fix by filtering out the mask of the button which we're currently matching.
    
    We could have said "well, that's how button events behave, you should
    use ShiftMask|Button2Mask for release", but this both not obvious to
    figure out, and specifically here always filtering does not prevent
    configuring any useful modifiers combination. So it's a win-win.

commit 51e19ea11dd42eefed1ca136ee3f6be975f618b1
Author: Ivan Tham <pickfire@riseup.net>
Date:   Tue Feb 18 23:28:47 2020 +0800

    Remove explicit XNFocusWindow
    
    XCreateIC ICValues default XNFocusWindow to XNClientWindow if not
    specified, it can be omitted since it is the same.
    
    From the documentation
    https://www.x.org/releases/current/doc/libX11/libX11/libX11.html
    
    > Focus Window
    >
    > The XNFocusWindow argument specifies the focus window. The primary
    > purpose of the XNFocusWindow is to identify the window that will receive
    > the key event when input is composed.
    >
    > When this XIC value is left unspecified, the input method will use the
    > client window as the default focus window.

commit 26cdfebf31f024e331429e482b1ee342708888e3
Author: Quentin Rameau <quinq@fifth.space>
Date:   Sun Feb 2 21:47:19 2020 +0100

    x: fix XIM handling
    
    Do not try to set specific IM method, let the user specify it with
    XMODIFIERS.
    
    If the requested method is not available or opening fails, fallback to
    the default input handler and register a handler on the new IM server
    availability signal.
    
    Do the same when the input server is closed and (re)started.

commit cd785755f2e3e3305c7d2556a04423a40bce060a
Author: Quentin Rameau <quinq@fifth.space>
Date:   Sun Feb 2 17:38:36 2020 +0100

    x: check we still have an XIC context before accessing it

commit 2cb539142b97bd2a5c1a322fd7c063c6afb67c9b
Author: Quentin Rameau <quinq@fifth.space>
Date:   Sun Feb 2 15:38:08 2020 +0100

    x: do not instantiate a new nested list on each cursor move

commit 99de33395126fc9708f442d155e737b9182f6ef4
Author: Quentin Rameau <quinq@fifth.space>
Date:   Sun Feb 2 15:37:29 2020 +0100

    x: move IME variables into XWindow ime embedded struct

commit 895e5b50a8cc835c19a45e1e328eb4dc78f5fd0c
Author: Ivan Tham <pickfire@riseup.net>
Date:   Sat Jan 18 15:52:25 2020 +0800

    Increase XmbLookupString buffer
    
    Current buffer is too short to input medium to long sentences from IME.
    Input with longer text will show the wrong input, taking 64 instead of
    32 bytes should be enough for most of the cases. Broken cases before,
    
    Chinese (taken from song 也可以)
    可不可以轻轻的松开自己
    
    Japanese (taken from bootleggers rom quote)
    あなたは家のように感じる

commit 384830110bddcebed00b6530a5336f07ad7c405f
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Sun Nov 17 20:04:52 2019 +0100

    update FAQ
    
    - add common question about the w3m image drawing hack.
    - remove some bad advise about $TERM.
    - change some links to https.

commit 2e54a21b5ae249a6bcedab9db611ea86037a018b
Author: Avi Halachmi (:avih) <avihpit@yahoo.com>
Date:   Wed Oct 16 12:55:53 2019 +0300

    OSC 52 - copy to clipboard: don't limit to 382 bytes
    
    Strings which an application sends to the terminal in OSC, DCS, etc
    are typically small (title, colors, etc) but one exception is OSC 52
    which copies text to the clipboard, and is used for instance by tmux.
    
    Previously st cropped these strings at 512 bytes, which for OSC 52
    limited the copied text to 382 bytes (remaining buffer space before
    base64). This made it less useful than it can be.
    
    Now it's a dynamic growing buffer. It remains allocated after use,
    resets to 512 when a new string starts, or leaked on exit.
    
    Resetting/deallocating the buffer right after use (at strhandle) is
    possible with some more code, however, it doesn't always end up used,
    and to cover those cases too will require even more code, so resetting
    only on new string is good enough for now.

commit 289c52b7aa9b0e826bbea6f956755b3199b3ccac
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Wed Oct 16 12:38:43 2019 +0300

    CSIEscape, STREscape: use size_t for buffer length

commit 7ceb3d1f72eabfa678e5cfae176c57630ad98c43
Author: Avi Halachmi (:avih) <avihpit@yahoo.com>
Date:   Wed Oct 16 12:19:49 2019 +0300

    STREscape: don't trim prematurely
    
    STRescape holds strings in escape sequences such as OSC and DCS, and
    its buffer is 512 bytes.
    
    If the input is too big then trailing chars are ignored, but the test
    was off-by-1 such that it took 510 chars instead of 511 (before a
    terminating NULL is added).
    
    Now the full size can be utilized.

commit ea4d933ed9d8ce16699c84892a29e070c70b2eb9
Author: Avi Halachmi (:avih) <avihpit@yahoo.com>
Date:   Wed Oct 16 11:17:23 2019 +0300

    base64dec: don't read out of bounds
    
    Previously, base64dec checked terminating input '\0' every 4 calls to
    base64dec_getc, where the latter progressed one or more chars on each
    call, and could read past '\0' in the way it was used.
    
    The input to base64dec currently comes only from OSC 52 escape seq
    (copy to clipboard), and reading past '\0' or even past the buffer
    boundary was easy to trigger.
    
    Also, even if we could trust external input to be valid base64, there
    are different base64 standards, and not all of them require padding
    to 4 bytes blocks (using trailing '=' chars).
    
    It didn't affect short OSC 52 strings because the buffer is initialized
    to 0's, so typically it did stop within the buffer, but if the string
    was trimmed to fit (the buffer is 512 bytes) then it did also read past
    the end of the buffer, and the decoded suffix ended up arbitrary.
    
    This patch makes base64dec_getc not progress past '\0', and instead
    produce fake trailing padding of '='.
    
    Additionally, at base64dec, if padding is detected at the first or
    second byte of a quartet, then we identify it as invalid and abort
    (a valid quartet has at least two leading non-padding bytes).

commit 83866428de031300eab03fbb116bcf7d2b1d4f60
Author: Sebastian J. Bronner <waschtl@sbronner.com>
Date:   Tue Nov 5 18:16:39 2019 +0100

    Fix tmux terminfo extensions Se and Ss
    
    The tmux terminfo extensions Ss and Se are currently specified as
    booleans in `st.info`. They should be strings. See
    https://github.com/tmux/tmux/blob/eeedb43ae847a0a692ceea965f7556e84bca4fd0/tty-term.c
    lines 254 and 265.
    
    I have used the values from
    https://invisible-island.net/ncurses/terminfo.src.html#toc-_S_I_M_P_L_E_T_E_R_M
    for this patch.

commit 1f09f0b0bbba29ceed9b4e6d558b6ad5b0843cfe
Author: Ingo Lohmar <ingo.lohmar@posteo.net>
Date:   Fri May 31 22:25:35 2019 +0200

    apply hints before initial mapping (ICCCM)
    
    For WM_CLASS this is mentioned in the ICCCM docs
    https://tronche.com/gui/x/icccm/sec-4.html#s-4.1.2.5
    (third sentence).
    
    When changing the WM_CLASS from the command line, this is necessary for
    window managers to pick it up before applying class-based rules.

commit a2c479c4c8d035c11a91e4b954a9f161bf4c7150
Author: Avi Halachmi (:avih) <avihpit@yahoo.com>
Date:   Thu Oct 24 15:42:07 2019 +0300

    mouse shortcuts: allow using forcemousemod (e.g. shift)
    
    The recent mouse shurtcuts commits allow customization, but ignore
    forcemousemod mask (default: shift) as a modifier, for no good reason
    other than following the behavior of the KB shortcuts.
    
    Allow using forcemousemod too, which now can be used to invoke
    different shortcuts, though the automatic effect of forcemousemod will
    be lost for buttons which use mask with forcemousemod.
    
    E.g. the default is:
    
    static uint forcemousemod = ShiftMask;
    ...
    { XK_ANY_MOD,           Button4, ttysend,        {.s = "\031"} },
    ...
    
    where ttysend will be invoked for button4 with any mod when not in mouse
    mode, and with shift when in mouse mode.
    
    Now it's possible to do this:
    { ShiftMask,            Button4, ttysend,        {.s = "foo"} },
    { XK_ANY_MOD,           Button4, ttysend,        {.s = "\031"} },
    
    Which will invoke ttysend("foo") while shift is held and ttysend("\031")
    otherwise. Shift still overrides mouse mode, but will now send "foo".
    
    Previously with this setup the second binding was always invoked
    because the forceousemod mask was always removed from the event.
    
    Buttons which don't use forcemousemod behave the same as before.
    
    This is useful e.g. for the scrollback mouse patch, which wants to
    configure shift+wheel for scrollback, while keeping the normal behavior
    without shift.

commit d2b75db8d7519a20af8bf09e9c205507f9ff828c
Author: Avi Halachmi (:avih) <avihpit@yahoo.com>
Date:   Fri Oct 11 02:26:10 2019 +0300

    mouse shortcuts: don't hardcode selpaste
    
    Because selpaste is activated on release, a release flag was added to
    mouse shortcuts which controls whether activation is on press/release,
    and selpaste binding to button2 was moved to config.h .
    
    button1 remains the only hardcoded mouse button - for selection + copy.

commit b6d280de6df30167ce9cf30fadefc362e77729e7
Author: Avi Halachmi (:avih) <avihpit@yahoo.com>
Date:   Thu Oct 10 23:42:30 2019 +0300

    mouse shortcuts: allow override for all shortcuts
    
    Allow forceselmod to override all mouse shortcuts rather than only
    selection, and rename it to forcemousemod as it's now more appropriate.
    
    This will affect mouse shortcuts which use mask other than XK_ANY_MOD.
    
    This does not affect the default behavior because the default mouse
    shortcuts (wheel) use XK_ANY_MOD, where forceselmod already activated
    the override also before this change.
    
    Previously, if a mouse shortcut was configured with a specific mod and
    forceselmod was held, then the shortcut did not execute unless the
    configured mod included forceselmod.

commit ba7f4d69af62d20e13fea78a408095e017410651
Author: Avi Halachmi (:avih) <avihpit@yahoo.com>
Date:   Thu Oct 10 23:02:26 2019 +0300

    mouse shortcuts: allow same functions as kb shortcuts
    
    Previously mouse shortcuts supported only ttywrite.
    
    This required adding an "Arg" function ttysend - which does what the
    original mouse shortcuts did.

commit 2b8333f553c14c15398e810353e192eb05938580
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Mon Aug 26 17:58:47 2019 +0200

    config.def.h: remove crlf value section
    
    this is not used anymore.
    
    patch sent as an ed script using RFC2549 by k0ga.

commit caa1d8fbea2b92bca24652af0fee874bdbbbb3e5
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Fri May 17 13:00:10 2019 +0200

    FAQ: add entry about color emoji Xft bug
    
    This has been asked many times on IRC and the mailinglist. Make it easier to
    find information about this particular Xft issue by adding it to the FAQ.

commit f1546cf9c1f9fc52d26dbbcf73210901e83c7ecf
Author: Avi Halachmi (:avih) <avihpit@yahoo.com>
Date:   Wed Apr 10 01:54:43 2019 +0300

    selection: fix view to match actual selection on first cell

commit 21367a040f056f6a207fafa066bd1cb2d9cae586
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Fri Mar 15 20:40:16 2019 +0100

    revert part of commit add0211522737b79dad990ccd65c8af63b5cc1dd
    
    "use iswspace()/iswpunct() to find word delimiters
    
        this inverts the configuration logic: you no longer provide a list of
        delimiters -- all space and punctuation characters are considered
        delimiters, unless listed in extrawordchars."
    
    Feedback from IRC and personal preference.

commit b650256044f867851725f712fdac58d4ff294808
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Fri Mar 15 14:44:28 2019 +0100

    dont print color warning on color reset OSC 104 without parameter
    
    also print explicitly "(null)" when printf "%s" p=NULL.
    
    noticed when exiting mutt: printf '\x1b]104\x07'

commit 9acec468fbeaa9f90578352b610431ca9b2d4ee4
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Fri Mar 15 14:42:50 2019 +0100

    minor code-style, initialize var at the top of function

commit 927621f6da015f51710c03279b00c6cc38057e32
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Fri Mar 15 12:31:54 2019 +0100

    config.def.h: tweak extra worddelimiters
    
    This changes the selection more like xterm.
    To test try: "find /" and select a path.

commit add0211522737b79dad990ccd65c8af63b5cc1dd
Author: Lauri Tirkkonen <lotheac@iki.fi>
Date:   Wed Mar 13 17:15:04 2019 +0200

    use iswspace()/iswpunct() to find word delimiters
    
    this inverts the configuration logic: you no longer provide a list of
    delimiters -- all space and punctuation characters are considered
    delimiters, unless listed in extrawordchars.

commit d5efd256aa3840476579a27293ef1fb92a4b51e7
Author: Lauri Tirkkonen <lotheac@iki.fi>
Date:   Wed Mar 13 19:40:52 2019 +0200

    replace utf8strchr with wcschr

commit 75b4ba4b4be70a3ae429b1719d18b021839216d5
Author: Lauri Tirkkonen <lotheac@iki.fi>
Date:   Wed Mar 13 17:08:50 2019 +0200

    be silent about explicitly unhandled mouse modes

commit ed68fe7dce2b21b4e0e595b99d47790e76812cb7
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Sun Mar 3 11:29:43 2019 +0100

    simplify (greedy) font caching allocating a bit
    
    POSIX says:
    "If ptr is a null pointer, realloc() shall be equivalent to malloc() for the
     specified size."

commit 4e0135afeca43f5affe13d7269cb98e7ac526074
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Sun Mar 3 11:23:54 2019 +0100

    style: remove double empty newlines

commit a8cb8e94547d7e31441d2444e8a196415e3e4c1f
Author: magras <dr.magras@gmail.com>
Date:   Thu Feb 28 04:56:01 2019 +0300

    fix use after free in font caching algorithm
    
    Current font caching algorithm contains a use after free error. A font
    removed from `frc` might be still listed in `wx.specbuf`. It will lead
    to a crash inside `XftDrawGlyphFontSpec()`.
    
    Steps to reproduce:
    $ st -f 'Misc Tamsyn:scalable=false'
    $ curl https://www.cl.cam.ac.uk/~mgk25/ucs/examples/UTF-8-demo.txt
    
    Of course, result depends on fonts installed on a system and fontconfig.
    In my case, I'm getting consistent segfaults with different fonts.
    
    I replaced a fixed array with a simple unbounded buffer with a constant
    growth rate. Cache starts with a capacity of 0, gets increments by 16,
    and never shrinks. On my machine after `cat UTF-8-demo.txt` buffer
    reaches a capacity of 192. During casual use capacity stays at 0.

commit e85b6b64660214121164ea97fb098eaa4935f7db
Author: Ivan Tham <pickfire@riseup.net>
Date:   Tue Feb 12 18:41:41 2019 +0100

    better Input Method Editor (IME) support
    
    Features:
    
    - Allow input methods swap with hotkey (E.g. left ctrl + left shift).
    - Over-the-spot pre-editing style, pre-edit data placed over insertion point.
    - Restart IME without segmentation fault.
    
    TODO:
    
    - Automatically pickup IME if st started before IME

commit 75f92eb3489275bfcad901e5ca424134eda6e2f4
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Sat Feb 9 12:48:39 2019 +0100

    bump version to 0.8.2

commit 3be4cf11d79ca87ff1fbbb57801913ec6f822429
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Thu Jan 10 18:16:17 2019 +0100

    config: add Shift+Insert as selpaste() again
    
    This was changed before in:
    commit 20f713548de451b67db3306cf8cf7b2f38fee05c on Wed Jan 25 19:17:38 2017

commit 16d98738e74f189b3a00c23390ab5a9a22b056a1
Author: Paride Legovini <pl@ninthfloor.org>
Date:   Thu Jan 10 13:36:09 2019 +0100

    Let the user specify CPPFLAGS
    
    This complements the work done in d4928ed, allowing the user to specify
    the preprocessor flags with the CPPFLAGS environment variable. This is
    useful for example to specify preprocessor macros with -D.
    
    CFLAGS could be used instead, but CPPFLAGS is more correct and is expected
    to be honored in some cases. For example, the helper scripts to build
    Debian packages make use of CPPFLAGS, but the variable is currently
    being ignored unless manually appended to CFLAGS.

commit e23acb9188b7bc7a7cfc418ac45671003abcc341
Author: Paride Legovini <pl@ninthfloor.org>
Date:   Fri Jan 4 09:48:37 2019 +0100

    Set the path of pkg-config in a variable instead of hardcoding it
    
    In this way the path of pkg-config can be overridden from the command
    line. This is useful for example when cross-compiling.

commit 7e19e116764d2651721cb9062ccaac31b0c771f2
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Fri Jan 4 12:33:01 2019 +0100

    Makefile: fix dependencies on config.h
    
    patch by Younes Khoudli (changed slightly). Thanks

commit 096b125db7ec254002a049ef3a5c1204bd7f0ad9
Author: Lauri Tirkkonen <lotheac@iki.fi>
Date:   Tue Dec 11 11:43:03 2018 +0200

    output child WEXITSTATUS/WTERMSIG on abnormal termination

commit d7bf023b2f2d41cb6983bb3ce2c6d1bf049150b3
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Sun Nov 4 14:35:07 2018 +0100

    fix memory leak in xloadcols()
    
    reported by Avi Halachmi (:avih)" <avihpit@yahoo.com>
    
    patch slightly changed by me.

commit b4d68d4daa2716c0064605a2a92082a7287ee54a
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Sun Nov 4 14:30:56 2018 +0100

    st: small typofix in comment

commit 30ec9a3dc354ab1a561c9edd808046bdf5dfd392
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Tue Sep 11 19:06:35 2018 +0200

    small code-style fix

commit 67d0cb65d0794e2d91e72e5fa1e3612172e5812e
Author: Quentin Rameau <quinq@fifth.space>
Date:   Tue Sep 11 13:11:28 2018 +0200

    Remove the ISO 14755 feature
    
    And move it to the patches section.
    Keeping it would force to add an exec pledge on OpenBSD, and some
    people think it's bloated, so bye!

commit 4f4bccd1627c845330235721f593d2e93418723d
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Tue Jul 17 20:01:58 2018 +0200

    Revert "Simplify cursor color handling"
    
    This reverts commit 1911c9274d9b03f3d7999c6ce26e2d5169642d26.

commit 8ed7a4b3b755407a7724a586ef224051bc306f4f
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Tue Jul 17 20:01:57 2018 +0200

    Revert "Make cursor follow text color"
    
    This reverts commit b51bcd5553af3db394014efbd78acf7828fa48ff.

commit 732be223ee7ba5486713c63f944699fd6285af96
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Tue Jul 17 20:01:54 2018 +0200

    Revert "Fix crash when cursor color is truecolor"
    
    This reverts commit 5535c1f04c665c05faff2a65d5558246b7748d49.

commit 5535c1f04c665c05faff2a65d5558246b7748d49
Author: Jules Maselbas <jules.maselbas@grenoble-inp.org>
Date:   Sun Jul 15 13:53:37 2018 +0200

    Fix crash when cursor color is truecolor
    
    Reported-by: Ivan Tham <pickfire@riseup.net>

commit b51bcd5553af3db394014efbd78acf7828fa48ff
Author: Jules Maselbas <jules.maselbas@grenoble-inp.org>
Date:   Sat Jul 14 11:16:37 2018 +0200

    Make cursor follow text color

commit 1911c9274d9b03f3d7999c6ce26e2d5169642d26
Author: Jules Maselbas <jules.maselbas@grenoble-inp.org>
Date:   Sat Jul 14 11:16:36 2018 +0200

    Simplify cursor color handling

commit 29f341da7cf32888f45005e08de202d9a372d972
Author: Jules Maselbas <jules.maselbas@grenoble-inp.org>
Date:   Wed Jun 27 17:08:30 2018 +0200

    Fix crash on resize
    
    Prevent to realloc xw.specbuc with a negative number of col.
    Add proper hints for the minimal size, for one character.

commit dc3b5babf1f8639a0d65cd347fc7879ac0461012
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Sat Jun 2 17:11:14 2018 +0200

    config.mk: remove extra newline before EOF

commit 235a783e039986fca3ccefec08ea45804dab196f
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Fri May 25 13:04:09 2018 +0200

    code-style for pledge(2)
    
    feedback from Klemens, thanks

commit 30ce2cc002585409b36c630512c6ca4db8f88f15
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Fri May 25 11:59:28 2018 +0200

    Pledge on OpenBSD

commit 041912a791e8c2f4d5d2415b16210d29d7e701c5
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Thu Mar 29 18:30:05 2018 +0200

    error message style and use strerror in a few places

commit bd3f7fd84270025696790512cf3c2dafaf5bc77f
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Thu Mar 29 18:18:30 2018 +0200

    st -v: remove years and copyright text

commit 74cff67bd7746c2636ea7bc78a0b8af2f8c44838
Author: Daniel Tameling <tamelingdaniel@gmail.com>
Date:   Wed Mar 28 21:27:58 2018 +0200

    set sel.alt in selstart instead of selextend

commit 6f0f2b7ec3713351de274707672fbadb6cc727a2
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Tue Mar 20 21:29:10 2018 +0100

    bump version to 0.8.1

commit f4020b2cc4fe45c9e8bfe47fc73deccd867cf9de
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Tue Mar 20 21:25:30 2018 +0100

    fix regression by selecting clipboard text
    
    "restore the old behaviour that the primary doesn't get deleted by a simple
    left click"
    
    Patch by Daniel Tameling <tamelingdaniel@gmail.com>, thanks!

commit a5a928bfc1dd049780a45e072cb4ee42de7219bf
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Tue Mar 20 21:22:27 2018 +0100

    don't modify argv, use a counter
    
    on some platforms (OpenBSD) this changes the exposed argv in tools using
    the kvm_* interface, such as ps and pgrep.

commit 6ac8c8aa50d521f82d491ab54eb972660fdf3207
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Sat Mar 17 13:48:29 2018 +0100

    selextend: clarify: !sel.mode == SEL_IDLE

commit 5345db3c9be1a22ca19202035b881b951c2f0f9e
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Sat Mar 17 13:48:10 2018 +0100

    clipcopy: no need to check for free(NULL), set to NULL after free

commit 7648697f711d5ae336af142e9cd464d943341b24
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Fri Mar 16 16:45:58 2018 +0100

    minor code-style: whitespace fixes

commit 0b507bb73138c636fd0ad6f2321624aae1346d58
Author: Quentin Rameau <quinq@fifth.space>
Date:   Fri Mar 16 16:19:18 2018 +0100

    Fix title initialization

commit e7ef3c4ce95a21cfcd0988d493f636e1d0115871
Author: Quentin Rameau <quinq@fifth.space>
Date:   Fri Mar 16 15:03:10 2018 +0100

    Fix regression from 69e32a6 when setting title.

commit 8ab629031bd958d93deee9203fea32c38fe8ac30
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Wed Mar 14 20:06:42 2018 +0100

    LICENSE: fix a few years

commit a712c2dd1815f83a56be33e8055eee29e05dfef7
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Wed Mar 14 20:00:35 2018 +0100

    update LICENSE: major contributors

commit 0f245dfeb9bb4e87a005da2ecdcd7a88ba6e7f32
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Wed Mar 14 19:54:50 2018 +0100

    Makefile: add all files to make dist

commit 49a4f91fc5caf4b8b64f2b73a6be506fa06917b9
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Wed Mar 14 19:50:37 2018 +0100

    bump version to 0.8

commit c5ba9c025b7ebc34979e839453528f6e4a18712d
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Fri Mar 9 15:36:38 2018 +0100

    use math.h for ceilf

commit b81888ee7d95d9ecb7b1749630b09a96065a8fea
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Fri Mar 9 15:36:25 2018 +0100

    xhints: no need to initialize sizeh

commit 8b8255ac0e188445f6904ff16272e9e93093cbde
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Fri Mar 9 15:35:34 2018 +0100

    regression: include termios.h for tcsendbreak etc

commit 20e0da7f14cc5f30863e0b8014fa223fbaff1e30
Author: Devin J. Pohly <djpohly@gmail.com>
Date:   Sat Feb 24 17:09:13 2018 -0600

    General cleanup
    
    Simplifies logic in a couple places and removes a redundant function
    call.
    
    Signed-off-by: Devin J. Pohly <djpohly@gmail.com>

commit 403c57ebb5b3745ff93e49b87e526c49dc59a5b9
Author: Devin J. Pohly <djpohly@gmail.com>
Date:   Sat Feb 24 16:45:42 2018 -0600

    Clean up #includes
    
    Signed-off-by: Devin J. Pohly <djpohly@gmail.com>

commit e0215d53770a9b6bc6e5d7b9a603ecd34dbd7100
Author: Devin J. Pohly <djpohly@gmail.com>
Date:   Sat Feb 24 16:32:20 2018 -0600

    Reduce visibility wherever possible
    
    When possible, declare functions/variables static and move struct
    definitions out of headers.  In order to allow utf8decode to become
    internal, use codepoint for DECSCUSR extension directly.
    
    Signed-off-by: Devin J. Pohly <djpohly@gmail.com>

commit 30683c70ab62fd37b5921cf72077b9aef2cb842e
Author: Devin J. Pohly <djpohly@gmail.com>
Date:   Sat Feb 24 16:16:12 2018 -0600

    Limit usage of extern to config.h globals
    
    Prefer passing arguments to declaring external global variables.  The
    only remaining usage of extern is for config.h variables which are
    needed in st.c instead of x.c (where it is now included).
    
    Signed-off-by: Devin J. Pohly <djpohly@gmail.com>

commit a3beb626d2dae9d4d0883c7c8cb6ba58b0609105
Author: Devin J. Pohly <djpohly@gmail.com>
Date:   Sat Feb 24 15:32:48 2018 -0600

    Remove x.c dependency on term
    
    The xinit function only needs to the rows/cols, so pass those in rather
    than accessing term directly.  With a bit of arithmetic, we are able to
    avoid the need for term.row and term.col in x2col, y2row, and
    xdrawglyphfontspecs as well, completing the removal.
    
    Term is now fully internal to st.c.
    
    Signed-off-by: Devin J. Pohly <djpohly@gmail.com>

commit a5dc1b46976b2252f9d7bb68f126c4b0f351dd1a
Author: Devin J. Pohly <djpohly@gmail.com>
Date:   Sat Feb 24 14:58:54 2018 -0600

    Pull term references out of xdrawcursor
    
    Gradually reducing x.c dependency on Term object.  Old and new cursor
    glyph/position are passed to xdrawcursor.  (There may be an opportunity
    to refactor further if we can unify "clear old cursor" and "draw new
    cursor" functionality.)
    
    Signed-off-by: Devin J. Pohly <djpohly@gmail.com>

commit 88d8293fb4ba150a5f19d58d133b5db93d9dcfa5
Author: Devin J. Pohly <djpohly@gmail.com>
Date:   Sat Feb 24 14:53:23 2018 -0600

    Move win-agnostic parts of draw/drawregion to st.c
    
    Introduces three functions to encapsulate X-specific behavior:
     * xdrawline: draws a portion of a single line (used by drawregion)
     * xbegindraw: called to prepare for drawing (will be useful for e.g.
       Wayland) and returns true if drawing should happen
     * xfinishdraw: called to finish drawing (used by draw)
    
    Signed-off-by: Devin J. Pohly <djpohly@gmail.com>

commit 05c66cb37d9ff278a3e0c45682c4b5e7945deb42
Author: Devin J. Pohly <djpohly@gmail.com>
Date:   Fri Feb 23 14:16:52 2018 -0600

    Split mode bits between Term and TermWindow
    
    Moves the mode bits used by x.c from Term to TermWindow, absorbing
    UI/input-related mode bits (visible/focused/numlock) along the way.
    
    This is gradually reducing external references to Term.  Since
    TermWindow is already internal to x.c, we add xsetmode() to allow st to
    modify window bits in accordance with escape sequences.
    
    IS_SET() is redefined accordingly (term.mode in st.c, win.mode in x.c).
    
    Signed-off-by: Devin J. Pohly <djpohly@gmail.com>

commit 33201ac65f74e45b4fa60822ba9a538c3cfa9b25
Author: Devin J. Pohly <djpohly@gmail.com>
Date:   Thu Feb 22 01:05:12 2018 -0600

    Move CRLF input processing into ttywrite
    
    This also allows us to remove the crlf field from the Key struct, since
    the only difference it made was converting "\r" to "\r\n" (which is now
    done automatically in ttywrite).  In addition, MODE_CRLF is no longer
    referenced from x.c.
    
    Signed-off-by: Devin J. Pohly <djpohly@gmail.com>

commit 52d6fb1ab1f7d41839edebb63c3408578cd44e3c
Author: Devin J. Pohly <djpohly@gmail.com>
Date:   Thu Feb 22 00:42:23 2018 -0600

    Move terminal echo logic into st.c
    
    The only thing differentiating ttywrite and ttysend was the potential
    for echo; make this a parameter and remove ttysend.
    
    Signed-off-by: Devin J. Pohly <djpohly@gmail.com>

commit cfc7acdfd923924ae150a32061fb95987697b159
Author: Devin J. Pohly <djpohly@gmail.com>
Date:   Wed Feb 21 23:54:29 2018 -0600

    Move remaining selection mode logic into selextend
    
    The "done" parameter indicates a change which finalizes the selection
    (e.g. a mouse button release as opposed to motion).
    
    Signed-off-by: Devin J. Pohly <djpohly@gmail.com>

commit bcb5d3adbe57ead05a829e5144c2ba1dc465865f
Author: Devin J. Pohly <djpohly@gmail.com>
Date:   Wed Feb 21 23:29:41 2018 -0600

    Move terminal-related selection logic into st.c
    
    The front-end determines information about mouse clicks and motion, and
    the terminal handles the actual selection start/extend/dirty logic by
    row and column.
    
    While we're in the neighborhood, we'll also rename getbuttoninfo() to
    mousesel() which is, at least, less wrong.
    
    Signed-off-by: Devin J. Pohly <djpohly@gmail.com>

commit 5683b1f80c5ac274adf98517ce2217b4d4896243
Author: Devin J. Pohly <djpohly@gmail.com>
Date:   Wed Feb 21 22:56:02 2018 -0600

    Move X-specific selection info into XSelection
    
    Data about PRIMARY/CLIPBOARD and clicks are part of the front-end, not
    the terminal.
    
    Signed-off-by: Devin J. Pohly <djpohly@gmail.com>

commit 138caf294ea4d7968df36ead9d5ff5fc49f6215f
Author: Devin J. Pohly <djpohly@gmail.com>
Date:   Wed Feb 21 22:48:28 2018 -0600

    Have selected() check whether selection exists
    
    Signed-off-by: Devin J. Pohly <djpohly@gmail.com>

commit d84f3f4bd15e7d65fc0334cf7d62913c901bad00
Author: Devin J. Pohly <djpohly@gmail.com>
Date:   Wed Feb 21 22:28:41 2018 -0600

    Rely on ttyresize to set tty size
    
    This removes ttynew's dependency on cresize being called first, and then
    allows us to absorb the ttyresize call into cresize (which always
    precedes it).
    
    Signed-off-by: Devin J. Pohly <djpohly@gmail.com>

commit 8b564c1a3f51c08e64c2f589852a02b8595d44ca
Author: Devin J. Pohly <djpohly@gmail.com>
Date:   Mon Nov 6 18:30:45 2017 -0600

    Remove X and fontconfig from st.c
    
    None of the X-related includes are needed any longer.  In addition, move
    the X modifier defines into x.c, as they are not used outside.
    
    Signed-off-by: Devin J. Pohly <djpohly@gmail.com>

commit 3bb900cd6c1c7a5364bd79bce63fdd8711bc878b
Author: Devin J. Pohly <djpohly@gmail.com>
Date:   Mon Nov 6 18:25:58 2017 -0600

    Remove Time argument from xsetsel
    
    This is an X type and should be internal to x.c.
    
    The selcopy() function was a single line and only used in one place, so
    it was inlined to reduce LOC.
    
    Signed-off-by: Devin J. Pohly <djpohly@gmail.com>

commit 323d38da20c8a1d295ab1dbc0fc7ce947ef824e1
Author: Devin J. Pohly <djpohly@gmail.com>
Date:   Mon Nov 6 17:57:45 2017 -0600

    Make win variable internal to x.c
    
    There was only a single reference to the `win` variable in st.c, so
    exporting that to x.c allows us to rid ourselves of another extern.
    
    Signed-off-by: Devin J. Pohly <djpohly@gmail.com>

commit 416dd257274fd334be082b1138338adffa3e2d5e
Author: Devin J. Pohly <djpohly@gmail.com>
Date:   Tue Oct 17 16:46:26 2017 -0500

    Move X-related config.h types into x.c
    
    No need to expose Shortcut, MouseShortcut, and Key anymore.
    
    Signed-off-by: Devin J. Pohly <djpohly@gmail.com>

commit 75c9a0ee1d232a1a177746d97a13cf92b03da44a
Author: Devin J. Pohly <djpohly@gmail.com>
Date:   Tue Oct 17 15:46:31 2017 -0500

    Remove unneeded array-length variables
    
    These were only used in x.c, which now has direct visibility of the
    config.h arrays.
    
    Signed-off-by: Devin J. Pohly <djpohly@gmail.com>

commit 428f01969aaf48ffa2983746c0a397bcc8946799
Author: Devin J. Pohly <djpohly@gmail.com>
Date:   Tue Oct 17 15:43:32 2017 -0500

    Inline clipboard functions
    
    No need to keep a function that only calls another function in the same
    file.
    
    Signed-off-by: Devin J. Pohly <djpohly@gmail.com>

commit 65976c1a29f2945c3cfb6af74cd6440cf193021d
Author: Devin J. Pohly <djpohly@gmail.com>
Date:   Tue Oct 17 15:21:04 2017 -0500

    Move config.h include from st.c to x.c
    
    config.h includes references to KeySyms and other X stuff.  Until we
    come up with a cleaner way to separate configuration, it is simpler
    (leads to more code removal) to have this here.
    
    Signed-off-by: Devin J. Pohly <djpohly@gmail.com>

commit 32d3b1d00f66eda4f5446f3b32cabed2c9a77a40
Author: Devin J. Pohly <djpohly@gmail.com>
Date:   Sun Oct 15 20:35:48 2017 -0500

    Factor out equivalent code from ttyread/ttysend
    
    The echo-to-terminal portions of ttyread and ttysend were actually doing
    the same thing.  New function twrite() now handles this.  The parameter
    show_ctrl determines whether control characters are shown as "^A".  This
    was the only difference between tputc and techo, and techo is now unused
    and removed.
    
    (This commit should not change st's behaviour.)
    
    Signed-off-by: Devin J. Pohly <djpohly@gmail.com>

commit 69e32a61df15787c410a48eaa10a89240c36257d
Author: Devin J. Pohly <djpohly@gmail.com>
Date:   Thu Oct 12 22:25:49 2017 -0500

    Move opt_* into same file as main()/run()
    
    This commit is purely about reducing externs and LOC.  If the main and
    run functions ever move elsewhere (which will probably make sense
    eventually), these should come along with them.
    
    Signed-off-by: Devin J. Pohly <djpohly@gmail.com>

commit ed132e11271d18a5d8aa163096bc6192c694bc47
Author: Devin J. Pohly <djpohly@gmail.com>
Date:   Wed Oct 11 08:47:14 2017 -0500

    Move key-matching functions into x.c
    
    Modifiers and keysyms are specific to X, and the functions match and
    kmap are only used in x.c.  Needed to global-ize the key arrays and
    lengths from config.h (for now).
    
    Signed-off-by: Devin J. Pohly <djpohly@gmail.com>

commit dbe8676d7d69651132bde2b6d9ec3787cbbc552a
Author: Devin J. Pohly <djpohly@gmail.com>
Date:   Tue Oct 10 15:51:23 2017 -0500

    Pass new dimensions into ttyresize
    
    This removes another reference to TermWindow from st.c.
    
    Signed-off-by: Devin J. Pohly <djpohly@gmail.com>

commit a8314643b1aeaa2187dad71dc5748aaac1760c1b
Author: Devin J. Pohly <djpohly@gmail.com>
Date:   Tue Oct 10 12:46:53 2017 -0500

    Move window-manipulating functions into x.c
    
    xresize is now internal to x.c
    
    Signed-off-by: Devin J. Pohly <djpohly@gmail.com>

commit a09138afa57adb4b76dba8ca72dc7ee2642a5c8d
Author: Devin J. Pohly <djpohly@gmail.com>
Date:   Tue Oct 10 12:17:25 2017 -0500

    Move font/fontspec variables into x.c and XWindow
    
    Signed-off-by: Devin J. Pohly <djpohly@gmail.com>

commit 626b0ae40c71b6c1e02ece79bf033432647381a6
Author: Devin J. Pohly <djpohly@gmail.com>
Date:   Tue Oct 10 12:01:18 2017 -0500

    Move window urgency handling entirely into x.c
    
    This allows us to make xseturgency internal.
    
    Signed-off-by: Devin J. Pohly <djpohly@gmail.com>

commit d5275012b45149a2a6e94679609aacca478221ad
Author: Devin J. Pohly <djpohly@gmail.com>
Date:   Tue Oct 10 11:30:36 2017 -0500

    Move zoom functions into x.c
    
    This makes x(un)loadfonts internal to x.c.  Needed to reorder includes
    and move a typedef to keep the compiler happy.
    
    Signed-off-by: Devin J. Pohly <djpohly@gmail.com>

commit 3518dba2a5fb57f601b74528ddeb67f173e4024b
Author: Devin J. Pohly <djpohly@gmail.com>
Date:   Tue Oct 10 11:11:27 2017 -0500

    Move usage() to be with run() in x.c
    
    run/usage/xinit are now all internal to x.c
    
    Signed-off-by: Devin J. Pohly <djpohly@gmail.com>

commit 3e44ee5569a81ba6f06e1ecd19bf0ceb1e97f18d
Author: Devin J. Pohly <djpohly@gmail.com>
Date:   Tue Oct 10 10:30:23 2017 -0500

    Call xsetenv() in main process instead of child
    
    This makes xsetenv internal to x.c, and allows iso14755's external
    command to use $WINDOWID instead of having to snprintf it again.  (The
    same benefit will apply to the externalpipe patch.)  The xwinid function
    is no longer needed.
    
    Signed-off-by: Devin J. Pohly <djpohly@gmail.com>

commit 1f24bde82b19912c080fbb4a0b153a248cd6c6ea
Author: Benno Fünfstück <benno.fuenfstueck@gmail.com>
Date:   Tue Dec 26 16:23:24 2017 +0100

    Fix color with FAINT attribute
    
    The alpha value needs to be initialized as well.

commit e829e13bb1a830e0cdce749ea0865cd93af1846c
Author: Benno Fünfstück <benno.fuenfstueck@gmail.com>
Date:   Tue Dec 26 16:38:27 2017 +0100

    Apply ATTR_REVERSE after ATTR_FAINT
    
    An example where the new behaviour makes more sense:
    
    Suppose some text is formatted with ATTR_FAINT for red for the foreground, so it
    is rendered in a dark red. In that case, when selected with the mouse, the
    intended behaviour is that foreground and background color are swapped: so the
    selection should be rendered in dark red and the text in the default background
    color.
    
    Before this patch, what happened was that the selection would be in normal red
    and the text in the darkened background color, making it almost unreadable.
    
    For an example application that uses the FAINT attribute, try dmesg from
    util-linux with color support, it uses FAINT for segfault messages.

commit c1d23afa9c44cc29818c538126790ae90a64a3c5
Author: George Ornbo <george@shapeshed.com>
Date:   Wed Dec 20 09:05:32 2017 +0000

    Fix FAQ typo

commit 0ac685fc015362e749bf82cfaa3cfe2dd9b305f0
Author: Paride Legovini <pl@ninthfloor.org>
Date:   Tue Oct 10 17:49:38 2017 +0200

    Fix manpage typo
    
    Signed-off-by: Paride Legovini <pl@ninthfloor.org>

commit b1338e91ed632adbcd08388de37e46cf25326e01
Author: Gary Allen Vollink <gary@vollink.com>
Date:   Thu Sep 14 15:30:02 2017 -0400

    Add an error for XftFontOpenPattern failure.

commit b2ac91775302fa4b8ce462a6e7bcfffa93923471
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Fri Sep 15 11:16:37 2017 +0200

    Revert "Revert "fixed STLDFLAG order in broken st Makefile""
    
    This reverts commit 274d46ace00003d1df718b974d17642cbce167d5.
    
    Sorry, the original commit was correct after all. It allows has the
    correct link order and supports static-linking also.
    
    Just a reminder: it is important to give a (brief) rationale of the
    patch intentions.

commit ee5cc8e903574bf629e5159334ae6b0fad6af402
Author: Suraj N. Kurapati <sunaku@riseup.net>
Date:   Thu Aug 17 23:00:10 2017 -0700

    base64dec: skip non-printable characters like \r\n
    
    Non-printable characters, such as line breaks, in a base64 encoded
    string violate the "string length must be a multiple of four" rule.
    
    This patch pads the result buffer by one extra unit of four bytes,
    and skips over non-printable characters found in the input string.

commit 274d46ace00003d1df718b974d17642cbce167d5
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Wed Sep 13 22:40:36 2017 +0200

    Revert "fixed STLDFLAG order in broken st Makefile"
    
    This reverts commit 7f990328e4fec8dfaaad311cb8af2304b58c872e.
    
    this was wrong as pointed out by k0ga:
    "STLDFLAGS is about flags to the linker, for example -L
    not about -l for that reason it must go before the object list".

commit 9c61f29bb7da237907e42875ebe7d0084e8ab1ac
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Sat Sep 2 13:52:33 2017 +0200

    Revert "make clipboard patch obsolete"
    
    This reverts commit 77c51c5a6b16387f1792e23acbcf2080f790aa25.
    
    Having multiple clipboards are useful, for example for plumber scripts.
    I've discussed this on IRC and it is useful to have.

commit 77c51c5a6b16387f1792e23acbcf2080f790aa25
Author: Anselm R Garbe <anselm@garbe.us>
Date:   Fri Sep 1 09:48:24 2017 +0200

    make clipboard patch obsolete

commit 7f990328e4fec8dfaaad311cb8af2304b58c872e
Author: Anselm R Garbe <anselm@garbe.us>
Date:   Sun Jul 23 11:17:26 2017 +0200

    fixed STLDFLAG order in broken st Makefile

commit 8dacdfbab1c476063a31bc3b8d7222ac2b70ff66
Author: Quentin Rameau <quinq@fifth.space>
Date:   Tue Jul 11 23:16:25 2017 +0200

    Revert "Add bold off SGR"
    
    This reverts commit 6cb6d61525931c88971cce323f63e40451a6d365.
    This wasn't a useful thing after all.

commit c0882f2ed1d7a2dd0fa2efa52157e6fc6fde3652
Author: Quentin Rameau <quinq@fifth.space>
Date:   Tue Jul 11 23:03:27 2017 +0200

    Add dim/smxx/rmxx to terminfo, remove duplicate kich1

commit d4928edba0fe2cc63b3bc13fd6dad0bcb875174e
Author: Quentin Rameau <quinq@fifth.space>
Date:   Wed Jul 12 00:26:35 2017 +0200

    Let the user specify C and LD FLAGS

commit fabd4602b3223666165c76c397644a081b9a97e5
Author: Quentin Rameau <quinq@fifth.space>
Date:   Wed Jul 12 00:24:51 2017 +0200

    Do not obfuscate what make is doing.
    
    Change some styling too while we're at it.

commit b331da550b290d54592b7ba11242c92f5a303a48
Author: Marc André Tanner <mat@brain-dump.org>
Date:   Mon May 15 12:45:41 2017 +0200

    Add color change terminfo capabilities

commit 6cb6d61525931c88971cce323f63e40451a6d365
Author: Quentin Rameau <quinq@fifth.space>
Date:   Sun May 28 09:56:57 2017 +0200

    Add bold off SGR

commit 5a10aca702bf7bc9094cb4abaea6c59558740d29
Author: greg.reagle@umbc.edu <greg.reagle@umbc.edu>
Date:   Mon Apr 10 18:24:03 2017 +0200

    st.1: modify man page to accurately reflect default keybindings
    
    Attached.
    
    ===> 2/ (text/x-patch) [file]
            cp /mail/fs/mbox/298/2/body /usr/k0ga/0001-st.1-modify-man-page-to-accurately-reflect-default-k.patch
    
    From 265db94b1eca5850d484f86b7db4af8e57822cfe Mon Sep 17 00:00:00 2001
    From: Greg Reagle <greg.reagle@umbc.edu>
    Date: Sun, 9 Apr 2017 23:05:47 -0400
    Subject: [PATCH] st.1: modify man page to accurately reflect default
     keybindings

commit 745c40f8b07ab898d1f9d4f564881b40599bc80d
Author: Quentin Rameau <quinq@fifth.space>
Date:   Tue Apr 4 17:20:55 2017 +0200

    Simplify how we keep ATTRs under cursor
    
    Thanks to tarug0 for the suggestion/patch.

commit 149c0d3aedffe69b625ef95868daae200941d5f5
Author: Alexander Krotov <ilabdsf@gmail.com>
Date:   Sat Mar 25 23:02:42 2017 +0300

    Fix commented out code

commit f2bfd513b14a2aa27796670235557a550b4189db
Author: Nils Reuße <n.reusse@hxgn.net>
Date:   Wed Mar 29 18:34:12 2017 +0200

    keep some glyph modes for the cursor
    
    st currently does not keep any mode for the cursor that was active
    in the underlying glyph (e.g. italic text), the mode is always
    ATTR_NULL [1].  At [2] you can find a screenshot that shows the
    implications.  Other terminals (at least vte-based, such as
    XFCE-terminal) keep some modes for the cursor.  I find the current
    behaviour very disruptive, so here is a patch that keeps a few
    (arbitrarily chosen) modes for the cursor.
    
    [1] http://git.suckless.org/st/tree/st.c#n3963
    [2] http://i.imgur.com/R2yCEaC.png

commit e7ed326d2e914a57017c9f34459824614075519b
Author: osandov@osandov.com <osandov@osandov.com>
Date:   Sat Mar 18 11:55:04 2017 +0100

    Support xterm Ms feature to set clipboard
    
    This is used by, e.g., tmux.

commit 20f713548de451b67db3306cf8cf7b2f38fee05c
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Wed Jan 25 19:17:38 2017 +0100

    Change default keybindings
    
    CTRL+SHIFT is an impossible combination in the terminal world
    (0x20 | x & 0x1F), so it is perfect to be used for internals
    shortcuts of terminals, and being a double combination
    reduces the prossibility of having comflicts.

commit e2ee5ee6114eb74bb08cb9abe5a3020203e92688
Author: Michael Forney <mforney@mforney.org>
Date:   Fri Jan 20 00:06:39 2017 -0800

    Split X-specific code into x.c

commit c63a87cd936c1eeef14c4c21572e5b782d3df4bc
Author: fpqc <harry.gindi@live.com>
Date:   Wed Dec 14 06:51:27 2016 +0000

    Move column and row default numbers into config.h

commit e44832408bb3147826c346872b49de105a4d0e0b
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Thu Nov 24 20:21:19 2016 +0100

    Revert "Initial font size issue."
    
    This reverts commit 424202798b02554092ba84dd59fb7b79b59b7b75.

commit fa9a4599720703932d1c4f16b9aeee1f91f96263
Author: Spencer Phippen <spencer.phippen@gmail.com>
Date:   Wed Nov 23 19:17:59 2016 +0100

    Fixed 'missing glyph doesn't use fontconfig config substitutions' bug
    
    XftFontMatch does display-specific font configuration (commit 528241a).
    Nice. Unfortunately, when we switched from FcFontMatch, we also stopped
    storing the post-Fc{Config,Default}Substitute FcPattern for future
    lookups. The result is that if a glyph isn't found in the primary font,
    secondary font lookups use the original FcPattern, not the configured
    one. If you have custom fontconfig rules (like me), this can be
    disappointing.
    
    I basically just copied the guts out of XftFontMatch[1] and saved
    the intermediate configured FcPattern. Could be related to the bug that
    inspired commit 4242027.
    
    [1]: https://cgit.freedesktop.org/xorg/lib/libXft/tree/src/xftfont.c

commit 740ada1447a0bf9eb7db327d9433fa0b96e0a4d8
Author: Manuel Tobias Schiller <mala@hinterbergen.de>
Date:   Mon Nov 14 18:25:51 2016 +0100

    make the various combinations of arrow keys and shift/control/meta work
    
    When using st with screen, I've bound next, prev, new screen to
    combinations like Ctrl-Alt-Right,Left,Down; xterm and (u)rxvt work fine
    when this combination of modifiers is pressed, st does not seem to
    transport all of them; a single modifier key is fine (e.g. Ctrl-Up,
    Alt-Down etc., but combinations are not). While I'm not terribly
    familiar with this, I have tried to hack config.h in a more or less
    systematic way to generate the expected sequences.

commit 424202798b02554092ba84dd59fb7b79b59b7b75
Author: ian@remmler.org <ian@remmler.org>
Date:   Fri Nov 11 17:52:07 2016 +0100

    Initial font size issue.
    
    Hi,
    
    When I specify a font by point size (I'm using "Inconsolata:size=12"),
    characters that are substituted from another font because they are not in the
    main one appear too small.  Doing a zoom reset fixes it.  For example:
    
    Before: http://i.imgur.com/G4Mfv4X.png
    After:  http://i.imgur.com/PMDhfQA.png
    
    I found that adding the pixel size (acquired from the initial font load) to the
    pattern then reloading the font fixes the problem.  I'm not sure if this is a
    proper fix, though.

commit 3ca7249c8685a9ff2d8ce23273fe0313b5804473
Author: pl@ninthfloor.org <pl@ninthfloor.org>
Date:   Fri Nov 11 17:45:45 2016 +0100

    tic -s -> tic -sx (Treat unknown capabilities as user-defined.)

commit 06f8cf8ca87a81db15816658c40b2afcd1ad5332
Author: pl@ninthfloor.org <pl@ninthfloor.org>
Date:   Fri Nov 11 17:45:46 2016 +0100

    Add tmux capabilities to st.info

commit 902a392b905107c7b8a318c103837c54e47a068e
Author: pl@ninthfloor.org <pl@ninthfloor.org>
Date:   Fri Nov 11 17:45:52 2016 +0100

    Make strdump(), csidump(), print to stderr
    
    The two functions strdump(), csidump() are called to show errors and
    their output is introduced by a message printed to stderr. Thus, it it
    more consistent to have them print to stderr.
    
    Moreover stderr is unbuffered (at least on Linux), making problems
    immediately visible.

commit 8c99915608beee03eca3bae6ed92264a0da87e2f
Author: Quentin Rameau <quinq@fifth.space>
Date:   Sat Oct 22 16:36:10 2016 +0200

    Do not use color when font attributes are supported
    
    If fontconfig gives us a font without the attributes we asked for,
    display an alternative color instead.

commit 7854fde1ff95ba85239ccfe1b59b555bd245d0db
Author: Quentin Rameau <quinq@fifth.space>
Date:   Sat Oct 22 10:42:46 2016 +0200

    st.1: add an entry for ISO-14755 shortcut

commit 68bae9c7b121e30114f6b0cabe15da3fae46e673
Author: Quentin Rameau <quinq@fifth.space>
Date:   Sat Oct 8 16:22:18 2016 +0200

    Add support for iso14755
    
    We launch dmenu for getting a codepoint, then convert it and send it to
    the terminal.

commit 331033f1f6abe259218666e6f6a848f38d884078
Author: Klemens Nanni <kl3@posteo.org>
Date:   Thu Oct 13 16:28:50 2016 +0200

    Add missing device path to '-l' example
    
    Also, it's ttyS0 not ttySO.

commit f7398434b8fa949af7bf43472caaefdd97eed0f3
Author: Roberto E. Vargas Caballero <roberto.vargas@igrid-td.com>
Date:   Wed Sep 14 08:27:32 2016 +0200

    Add parsing of DCS q sequences
    
    These sequences are used to operate with sixels, but they are still
    str sequences, so they are finished with \a, ST or with a C1 control
    code. This patch also disables utf8 handling for the case of sixels.

commit f0e2d28732549690466df995981698173daf39c0
Author: Roberto E. Vargas Caballero <roberto.vargas@igrid-td.com>
Date:   Tue Sep 13 14:01:18 2016 +0200

    Add support for enabling/disabling utf
    
    There are some ocasions where we want to disable the enconding/decoding of utf8, mainly
    because it adds an important overhead. This is partial patch for ESC % G and ESC % @,
    where they modified the way that st reads and write from/to the serial line, but it does
    not modifies how it interacts with the X window part.

commit 078337d7457f7869a85f4ec364be92b79e93c502
Author: Roberto E. Vargas Caballero <roberto.vargas@igrid-td.com>
Date:   Fri Sep 9 13:11:06 2016 +0200

    Delete ncv capability from terminfo
    
    We do not need to disable the previous ncv definition, because
    there is not previous definition.

commit 5ce853a1c14bab21c79af5470bff7bed07159ec5
Author: Quentin Rameau <quinq@fifth.space>
Date:   Thu Sep 8 12:57:43 2016 +0200

    st.info: do not prevent st from displaying attributes
    
    With ncv set to 3, we prevent st from displaying A_STANDOUT and
    A_UNDERLINE with colors while our virtual terminal is capable of it.

commit 023225ef40b23d888353e34d95790ddf1cc79458
Author: Christoph Lohmann <20h@r-36.net>
Date:   Thu Aug 11 16:30:29 2016 +0200

    Update the LICENSE.
    
    This is for the next release.

commit 6e79e8357ed1987a7f7a52cc06249aadef478041
Author: Christoph Lohmann <20h@r-36.net>
Date:   Thu Aug 11 16:25:58 2016 +0200

    0.7 release

commit 308bfbf6be46ac5f0aa77b0e42a242eeb3ae1443
Author: Christoph Lohmann <20h@r-36.net>
Date:   Wed Jul 20 13:56:15 2016 +0200

    Change who's expanding tabs.

commit c4f245eccd649b258c52f1405452df05180f7263
Author: Christoph Lohmann <20h@r-36.net>
Date:   Wed Jul 20 13:52:31 2016 +0200

    Add some hint to have the pseudo terminal in the right mode.
    
    If you don't make sure that the terminal does not expand tabs to spaces, of
    course such a setting won't work.

commit 2251f6465ae48aaa012fd686d6dcc4d3f41f77fe
Author: Christoph Lohmann <20h@r-36.net>
Date:   Wed Jul 20 13:00:43 2016 +0200

    Add comment about tabspaces.
    
    st.info needs to be changed too, when tabspaces are changed.

commit 235b438e689e1fab677ee7e6ee53491867c16b9d
Author: Alive 4ever <alive4ever@live.com>
Date:   Sun Jul 10 06:38:04 2016 +0000

    Consistent Alt+BackSpace behavior
    
    The default config specifies BackSpace as "\177". The default behavior
    should persist across modifier keys, commonly Mod1 (Alt or Meta) which
    is widely used to delete a word on readline and text editors, notably
    Emacs.
    
    This will make Alt+BackSpace behaves as expected, i.e. sends "\033\177"
    instead of "\033\010" as previous default behavior.
    
    Signed-off-by: Christoph Lohmann <20h@r-36.net>

commit 528241aa3835e2f1f052abeeaf891737712955a0
Author: Christoph Lohmann <20h@r-36.net>
Date:   Fri Jun 3 15:02:32 2016 +0200

    Use XftFontMatch in place of FcFontMatch.
    
    git am -s didn't like your patch:
    
    From: Mark Edgar <medgar123@gmail.com>
    
    XftFontMatch calls XftDefaultSubstitute which configures various match
    properties according to the user's configured Xft defaults (xrdb) as well as
    according to the current display and screen. Most importantly, the screen DPI
    is computed [1]. Without this, st uses a "default" DPI of 75 [2].
    
    [1]: https://cgit.freedesktop.org/xorg/lib/libXft/tree/src/xftdpy.c?id=libXft-2.3.2#n535
    [2]: https://cgit.freedesktop.org/fontconfig/tree/src/fcdefault.c?id=2.11.1#n255

commit 60aeb37edb8c5280d31b6b3c801d09c7a5fdca76
Author: v4hn <me@v4hn.de>
Date:   Thu May 19 12:16:57 2016 +0200

    delete clipboard properties after pasting them
    
    https://tronche.com/gui/x/icccm/sec-2.html#s-2.4 specifies:
    > Once all the data in the selection has been retrieved,
    > the requestor should delete the property in the SelectionNotify request
    
    Most Clipboard-Owners ignore whether or not the property is already set,
    so this is mostly a cosmetic change to keep the windows property list clean.
    
    However, at least synergy decides to wait for the requestor to delete
    the properties if they are already set by a previous paste (from synergy).
    
    Signed-off-by: Christoph Lohmann <20h@r-36.net>

commit 66556d967028a0b770e9bfcb9667389a6e994a58
Author: Roberto E. Vargas Caballero <roberto.vargas@igrid-td.com>
Date:   Fri Apr 15 07:58:26 2016 +0200

    Remove stupid assignation in memcpy()

commit 39964614b742c4ec98a326762d98470cb987a45b
Author: Tor Andersson <tor@ccxvii.net>
Date:   Wed Mar 9 17:11:57 2016 +0100

    st: Fix off-by-one error when calculating character width.
    
    LEN(str) is one larger than strlen(str) because it also counts the zero
    terminator. The original code would include the .notdef glyph (since it'll
    try to encode character 0, which gets encoded to the .notdef glyph) when
    measuring the average dimensions of printable ascii characters.
    
    This causes problems with fonts like GNU Unifont where the .notdef glyph is
    not the same width as the usual half-width characters.
    
    Signed-off-by: Christoph Lohmann <20h@r-36.net>

commit 0e48a1995eee1c2babc58523ef0be296e4b1c3e8
Author: Ton van den Heuvel <tonvandenheuvel@gmail.com>
Date:   Mon Mar 7 22:18:12 2016 +0100

    Fix vertical character alignment in some cases
    
    The y-position of a character found by asking fontconfig for a matching
    font does not take the border pixels into account, resulting in a
    slightly misaligned vertical position.
    
    Signed-off-by: Ton van den Heuvel <tonvandenheuvel@gmail.com>
    Signed-off-by: Christoph Lohmann <20h@r-36.net>

commit 6d8f85232ec741ae2357728d6e96cb8a44e842b4
Author: Christoph Lohmann <20h@r-36.net>
Date:   Tue Mar 8 13:55:22 2016 +0100

    I like empty lines.

commit 034a5c8a09e23ce0a410d0c608dd7e050b83681e
Author: Ryusei Yamaguchi <mandel59@gmail.com>
Date:   Tue Mar 8 12:26:04 2016 +0900

    Measure the single advance width with a heuristic method
    
    This fix is needed to use dual-width fonts, which have double-width
    glyphs (e.g. CJK unified ideographs).
    
    Signed-off-by: Ryusei Yamaguchi <mandel59@gmail.com>
    Signed-off-by: Christoph Lohmann <20h@r-36.net>

commit 30440295bc054f37a2a8275acca769cd83bcb780
Author: Christoph Lohmann <20h@r-36.net>
Date:   Mon Mar 7 14:33:05 2016 +0100

    xtermclear() is now done by xdrawglyphfontspecs()
    
    Thanks Ton van den Heuvel for the proposal!

commit 4fdba860c8db70035e9749806ecc6ca2d7c418d0
Author: Lucas Gabriel Vuotto <l.vuotto92@gmail.com>
Date:   Fri Feb 19 15:59:49 2016 -0300

    arg.h: fixed argv checks order
    
    This prevents accessing to a potentially out-of-bounds memory section.
    
    Signed-off-by: Lucas Gabriel Vuotto <l.vuotto92@gmail.com>
    Signed-off-by: Christoph Lohmann <20h@r-36.net>

commit 6d636beb229cebf3b897446c72c7a341bee9f820
Author: Quentin Rameau <quinq@fifth.space>
Date:   Mon Feb 1 12:20:33 2016 +0100

    Fix forgotten bracket and duplicate option in usage()
    
    Scratch the preceding patch, this one is more correct
    (don't forget to 'git am --scissors' ;))
    -- >8 --
    
    Also reformat the strings in a saner layout
    
    Signed-off-by: Christoph Lohmann <20h@r-36.net>

commit 6e70bb97d4e98a5e2fa7c5488b0cba1da140b78f
Author: Quentin Rameau <quinq@fifth.space>
Date:   Sat Jan 30 17:54:41 2016 +0100

    Extract ttyresize() out of cresize()
    
    This way we can call cresize() to set the terminal size before creating
    a tty or spawning a process, which will start with the correct size.
    
    Signed-off-by: Christoph Lohmann <20h@r-36.net>

commit 82335583eba15e87749d0e663270353005fca30b
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Jan 30 09:50:18 2016 +0100

    Ok, no need for a separate version function.
    
    This is just redundant metadata. Please add Java comment meta classes too.

commit 0cd5117a2cfc4134712de748ec416be0655838b2
Author: Quentin Rameau <quinq@fifth.space>
Date:   Fri Jan 29 22:03:01 2016 +0100

    Add -n option for setting WM_CLASS instance name
    
    Signed-off-by: Christoph Lohmann <20h@r-36.net>

commit bd5fdbe64c8abfb624ad59939ed9b221c8b04eef
Author: Quentin Rameau <quinq@fifth.space>
Date:   Fri Jan 29 22:02:40 2016 +0100

    Reformat usage and separate version from it
    
    Signed-off-by: Christoph Lohmann <20h@r-36.net>

commit 504a165277c13797840c42c64807b59cd4e5f3a5
Author: Christoph Lohmann <20h@r-36.net>
Date:   Thu Jan 28 18:09:11 2016 +0100

    Enforce a terminal size to reduce race conditions in too efficient apps.
    
    dvtm is too fast in starting up. It will then have a race condition in finding
    the right. terminal size.

commit 9031e228ce283cd4847832acf012a910f74ad1ed
Author: Christoph Lohmann <20h@r-36.net>
Date:   Thu Jan 14 23:19:03 2016 +0100

    Height is height.

commit 610723a58f1fbd3c5d911c853a8b94c315fc7c2a
Author: Christoph Lohmann <20h@r-36.net>
Date:   Fri Jan 1 14:18:43 2016 +0100

    Bump year.

commit ff241199edc7631d6599c22414ef6823059a1072
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sun Dec 20 01:43:32 2015 +0100

    Fixing the XClassHint setting in st.

commit 375b28720f7c78e6fac1c274f9dee7c40a78aacb
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Sat Nov 21 18:21:03 2015 +0100

    Avoid recursive call to ttywrite from ttyread
    
    Ttyread() calls to ttywrite, so if we check for reading before
    that for writing in ttywrite we can get a circular call sequence.

commit d836561b96097b04760104e7e0f8d014f5889a18
Author: Quentin Rameau <quinq+hackers@fifth.space>
Date:   Sun Nov 8 17:14:58 2015 +0100

    arg.h: remove unused macros
    
    ARGUM isn't used and ARGNUMF uses estrtol() that isn't defined anywhere.
    Those were probably copied from sbase arg.h.
    
    Signed-off-by: Christoph Lohmann <20h@r-36.net>

commit 00873e65eed161ee5f8916fbfb25c1a7f7a9b2f8
Author: Christoph Lohmann <20h@r-36.net>
Date:   Fri Nov 6 20:46:23 2015 +0100

    Introduce lim in all ttywrite() checks.

commit 9f6d8845df3f81e2bc86f593a2f93e098422b2fa
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Fri Nov 6 20:01:00 2015 +0100

    Fix ttywrite()
    
    ttywrite was assuming that if it could not write then it could
    read, but this is not necessarily true, there are some situations
    where you cannot read or write. The correct behaviour is to detect
    if you can read or/and write.

commit f0398db4d172e838ef4b4ae55db3fb6a6fee6717
Author: Ivan Tham <pickfire@riseup.net>
Date:   Sun Nov 1 10:53:56 2015 +0800

    Now the mshortcuts are even more consistent.
    
        Keep everyone happy
    
    Signed-off-by: Christoph Lohmann <20h@r-36.net>

commit e2aa03e6b71436e1c9207b01777baa16b7a00ea5
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Oct 31 09:29:04 2015 +0100

    Now the Shortcuts are more consistent.
    
    Keep the debile happy.

commit f56c58a968c1b3ddae76864bc9e27e5b9cc055c4
Author: Jason Woofenden <jason@jasonwoof.com>
Date:   Sun Oct 11 11:44:34 2015 +0200

    fix bug where first selection snaps to lines

commit 293f573efd8c1c9cddd319caa7564736aa60639a
Author: Quentin Rameau <quinq@fifth.space>
Date:   Tue Oct 6 10:29:44 2015 +0200

    Fix the cursor colors selection
    
    Signed-off-by: Christoph Lohmann <20h@r-36.net>

commit 2ea02c937e3a1810050a5fb9f51e7e522d23af3b
Author: Christoph Lohmann <20h@r-36.net>
Date:   Tue Oct 6 00:21:44 2015 +0200

    Normalize the whole color selection in xdrawcursor.

commit 80fe97f8a66d31945bdddbb9381b2cc54359f48e
Author: Quentin Rameau <quinq@fifth.space>
Date:   Mon Oct 5 23:10:48 2015 +0200

    Fix the cursor color when over selection.
    
    If we want to show a custom selected cursor color, we must not set the
    revert attribute to the drawn glyph.
    
    Signed-off-by: Christoph Lohmann <20h@r-36.net>

commit a2a60f0a2ce33dbd4ef07aaa4a914391481fa1de
Author: Christoph Lohmann <20h@r-36.net>
Date:   Mon Oct 5 23:05:38 2015 +0200

    Make the cursor shapes more descriptive.
    
    »IBeam« is now »Bar« because it's named like that in the source code.

commit 52d0e82df723297438339822f2398f83470fbcd4
Author: Christoph Lohmann <20h@r-36.net>
Date:   Mon Oct 5 22:59:04 2015 +0200

    Snowman is everywhere.

commit 78b04865fb5c8cb841e646058f9a24e7ec9094d2
Author: Christoph Lohmann <20h@r-36.net>
Date:   Mon Oct 5 22:54:44 2015 +0200

    Style normalisation in the config.def.h.
    
    This adds an awareness commit for the big key array too.

commit f7b80caebe2b96ef65e301634d8dc4e02325e357
Author: Christoph Lohmann <20h@r-36.net>
Date:   Mon Oct 5 22:38:19 2015 +0200

    The definition of the reverse cursor is now up to the user.

commit 594a25983639847ed063a3d181893dba54825f5a
Author: Christoph Lohmann <20h@r-36.net>
Date:   Mon Oct 5 22:09:51 2015 +0200

    Fixing the cursor movement in selections.
    
    Before the fix the cursor wouldn't obey if it's in a selection. If it is
    inside it will now change to the reverse. This patch also adds that the
    defaultcs will be reversed for the manually drawn cursors.

commit 91c70213d1e595467b14ce6d28f333dbedd97cab
Author: Christoph Lohmann <20h@r-36.net>
Date:   Mon Oct 5 21:18:34 2015 +0200

    When the cursor is moved, clear the selection.

commit 2677296147fe658376be67821449b8f232c65064
Author: Christoph Lohmann <20h@r-36.net>
Date:   Mon Oct 5 21:06:42 2015 +0200

    Reverse the cursor on selection.

commit 5ece2b5f4a2e56ddfb82e797dc973fca38c5273d
Author: Christoph Lohmann <20h@r-36.net>
Date:   Mon Oct 5 20:48:24 2015 +0200

    More style changes. We forgot some switches.

commit 2bef36ab81c356b106f00221038b743819cd20bd
Author: Christoph Lohmann <20h@r-36.net>
Date:   Mon Oct 5 20:08:21 2015 +0200

    Small style change.

commit 168248432705eff5fc44cf8a566bc090ca59d78a
Author: Christoph Lohmann <20h@r-36.net>
Date:   Mon Sep 28 20:08:58 2015 +0200

    There's no need for libXext to compile st.

commit 4be353e381e07fd8100f0cf29b299180f6681e46
Author: dequis <dx@dxzone.com.ar>
Date:   Fri Sep 25 00:56:15 2015 -0300

    Fix extra bracketed paste markers when pasting >8kb
    
    Before this patch, when pasting over BUFSIZE (8192 bytes here), st would
    do the following:
    
        \e[200~...8192 bytes...\e[201~\e[200~...remaining bytes...\e[201~
    
    With this patch, the start marker is only sent when the offset is 0 (at
    the beginning of selnotify) and the end marker is only sent when the
    remaining bytes to read are 0 (at the end).
    
    For short pastes, both conditions are true in the same iteration.
    
    For long pastes, it removes the extra markers in the middle, keeping the
    intended wrapping:
    
        \e[200~...8192 bytes......remaining bytes...\e[201~
    
    Signed-off-by: Christoph Lohmann <20h@r-36.net>

commit 20d53cebc122829449524ef339ce44e13c6e85ec
Author: FRIGN <dev@frign.de>
Date:   Tue Sep 22 13:13:25 2015 +0200

    dup() -> dup2()
    
    gcc would warn about an unused result. We know it is 0 and dup()
    can't fail in these circumstances, as we closed fd0 previously.
    Using dup2() to do the same saves one line and shuts gcc up, bringing
    us a clean build back.

commit bf8c71e42937b623f76ced22c9557f87e3d945da
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Sep 12 16:43:32 2015 +0200

    The times of bad fonts are over.
    
    The antialiasing was false due to circumstances that do not exist anymore. We
    need antialiasing on big screens with big fonts. Autohinting too.

commit 5d2d9d540d84761cf11648ea42a6413001a5d7b9
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Thu Sep 10 11:53:11 2015 +0200

    Fix copy of line with len = 0
    
    When a line has no any character linelen is 0, so last = &term.line[y][MIN(lastx, linelen-1)]
    generated a pointer to the end of the previous line. The best thing we can do in this case
    is to add a newline, because we don't have a glyph to print (and consult its state of
    wrapping).

commit a1ed5071e54e4f8ce765c07d5415da7d8cedf618
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Tue Sep 8 17:00:20 2015 +0200

    Change Pause to Break in shortcut for serial break

commit 3ba9c8fc3f547a5762b3d4a6a16cc794446d76a3
Author: Jan Christoph Ebersbach <jceb@e-jc.de>
Date:   Tue Sep 8 07:28:52 2015 +0200

    Expose cursor shape in config.def.h
    
    Signed-off-by: Christoph Lohmann <20h@r-36.net>

commit 1f087aa8b70fce67e7c43f689b5fb35667b5d84c
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Tue Sep 8 12:10:11 2015 +0200

    Add key to send a break to the serial line

commit 473326f2e3115f4b745730be782b2eba63e0934c
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Tue Sep 8 10:44:35 2015 +0200

    Set default values of stty according to the man page
    
    This configuration is basically 38400 8N1, without echo and
    in raw mode. Kernel will not process any of the characters
    sent by the user.

commit aa5d4c3b340d180eb0b375b3b4a923cf91ffb04a
Author: Christoph Lohmann <20h@r-36.net>
Date:   Mon Sep 7 22:59:05 2015 +0200

    Making st.1 more descriptive about -l and fix -l in st.c.

commit 080a5ae4252c9c9a9d83b702d8478966ab79326e
Author: Christoph Lohmann <20h@r-36.net>
Date:   Mon Sep 7 20:00:49 2015 +0200

    Fix the st manpage for -l line.

commit 9eeb4e1ea22b9ca53b885615b896cd5ed8dee04a
Author: Christoph Lohmann <20h@r-36.net>
Date:   Mon Aug 31 15:26:21 2015 +0200

    Reordering and adding control codes.
    
    For completeness and documentation add all C1 control codes.

commit 0c94f8621b738c51c9e08abc3c52fe8dfe24b953
Merge: 0d838b7 7e61f5e
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sun Aug 30 11:29:23 2015 +0200

    Merge branch 'master' of ssh://suckless.org/gitrepos/st

commit 0d838b72437c6cac0d87366352939fdb86c2b697
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sun Aug 30 11:28:35 2015 +0200

    Don't read if we chunked the input data.

commit 7e61f5e4c514a233250442263b62d887c9e5ca9c
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Mon Aug 17 11:25:38 2015 +0200

    Do not mark as invalid UTF8 control codes
    
    wcwidth() returns -1 for all the non visible characters, but it doesn't
    necessarilly mean that they are incorrect. It only means that they are not
    printable.

commit 9984ad4ba730b043d064095dca42b490904e38f3
Author: Quentin Rameau <quinq@fifth.space>
Date:   Tue Aug 11 17:47:12 2015 +0200

    st.info: replace the acsc entry from xterm to urxvt
    
    The current acsc entry, copied from xterm was not exposing capability to
    display arrows.

commit ee5cad439b427fa974903a6f0bb2689d11119d89
Author: Alex Kozadaev <akozadaev at yahoo com>
Date:   Tue Jul 28 10:30:14 2015 +0100

    Adding mouse colour/shape settings

commit dc33d1d66e89ee974cc6d7cfa2efb693ce67aa86
Author: Christoph Lohmann <20h@r-36.net>
Date:   Fri Jul 24 18:25:33 2015 +0200

    Adding -T to the usage too.

commit b5e29cce5246f30dc671cbb9486af704bc8cd2fc
Author: Christoph Lohmann <20h@r-36.net>
Date:   Fri Jul 24 18:24:10 2015 +0200

    Add -T, as recommended by Dmitrij D. Czarkoff

commit 4a193b96862c8ed7147048592aa4a898b3c05b5b
Author: Quentin Rameau <quinq+hackers@fifth.space>
Date:   Fri Jul 24 11:52:17 2015 +0200

    Fix type for write(2) return variable.
    
    A little fix in xwrite().
    
    >From 3727d2e3344b57128ab51c7839795204f1f839ff Mon Sep 17 00:00:00 2001
    From: Quentin Rameau <quinq@fifth.space>
    Date: Fri, 24 Jul 2015 11:40:46 +0200
    Subject: [PATCH] Fix type for write(2) return variable.
    
    The allocated lengh of s fits into an integer so we can safely use
    ssize_t here.

commit 1d348e98e3745ef98bf9fa36119ead6294c6c80b
Author: Mytchel Hammond <mytchel@openmailbox.org>
Date:   Fri Jul 24 17:58:18 2015 +1200

    added note about the low precedence of shell to config.def.h

commit 62756fdb4945a80f4a53e6d354d5d93f51035517
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Fri Jul 24 07:44:34 2015 +0200

    Fix style in execsh

commit d032b6159719b2fbbbd550781b378ca79a25d3a2
Author: Christoph Lohmann <20h@r-36.net>
Date:   Fri Jul 10 14:31:40 2015 +0200

    Make the comment for the IM XFilter more understandable.

commit 684c72d05e54780c283c6580f271fb6920c3060d
Author: Christoph Lohmann <20h@r-36.net>
Date:   Fri Jul 10 14:30:37 2015 +0200

    Return style unification.

commit b823f57fa045bf8efa5648adbfeb0b6a7a9eb48b
Author: Christoph Lohmann <20h@r-36.net>
Date:   Fri Jul 10 14:21:52 2015 +0200

    Aligning the macros.

commit 684f0a0729442e18115f71bc594a159725418ce8
Author: Christoph Lohmann <20h@r-36.net>
Date:   Fri Jul 10 14:19:52 2015 +0200

    Unix end of file.

commit d3c7b6fb73bc5273b56c84c6c4c50a61ee5ab2bc
Author: Christoph Lohmann <20h@r-36.net>
Date:   Fri Jul 10 14:19:31 2015 +0200

    No inline declarations please.

commit 41f70a1cff9c5653bebea996728fa76e2507eca3
Author: Christoph Lohmann <20h@r-36.net>
Date:   Fri Jul 10 14:17:51 2015 +0200

    Typo and the missing incr atom from the patches.

commit 261ea4b7e0b8d979c0c91ec75251c6970caf39e2
Author: Christoph Lohmann <20h@r-36.net>
Date:   Fri Jul 10 14:15:39 2015 +0200

    Implement chunked write to the cmdfd.
    
    This is needed so big input like a paste of several megabyte does not clog our
    I/O.

commit f8c6e7d0419d10c1425cb2c7123c5798ffb3b942
Author: Christoph Lohmann <20h@r-36.net>
Date:   Fri Jul 10 14:10:17 2015 +0200

    Implement INCR transfers in the clipboard.

commit 539afe3af1b0d8b56b9ebfaa3bb7fc4e40f68c71
Author: FRIGN <dev@frign.de>
Date:   Fri Jul 10 12:27:13 2015 +0200

    Update LICENSE
    
    Signed-off-by: Christoph Lohmann <20h@r-36.net>

commit f1307d91e2ec351a4a8b7352be8b5f6e4cb24294
Author: FRIGN <dev@frign.de>
Date:   Fri Jul 10 10:29:53 2015 +0200

    Don't treat clauses like functions
    
    and add a space between the keyword and the parentheses.
    
    Signed-off-by: Christoph Lohmann <20h@r-36.net>

commit 13233574ed1ead29bb7e99e71a0665e62c640617
Author: FRIGN <dev@frign.de>
Date:   Thu Jul 9 23:59:50 2015 +0200

    Use BSD-style function notation
    
    Put the opening brace on a new line. This was already used for some
    functions inside st.c.
    
    Signed-off-by: Christoph Lohmann <20h@r-36.net>

commit 9de853a98da8fe0f458b244970f0e0d3e9b38a50
Author: FRIGN <dev@frign.de>
Date:   Wed Jul 8 23:56:55 2015 +0200

    Unboolify st
    
    This practice proved itself in sbase, ubase and a couple of other
    projects.
    Also remove the True and False defined in X11 and FcTrue and FcFalse
    defined in Fontconfig.
    
    Signed-off-by: Christoph Lohmann <20h@r-36.net>

commit abfad4c4fc69ebb22febfe32677aadd112ce375a
Author: FRIGN <dev@frign.de>
Date:   Wed Jul 8 23:49:25 2015 +0200

    Remove insane *_FILENO and EXIT_* usage
    
    Any system having different assignments than the usual 0, 1, 2 for
    the standard file numbers and 0, 1 for the exit-statuses is broken
    beyond repair.
    Let's keep it simple and just use the numbers, no reason to fall
    out of the window here and bend down for POSIX.
    In one occasion, the ret-variable was not necessary. The check was
    rewritten.
    
    Signed-off-by: Christoph Lohmann <20h@r-36.net>

commit 92e092efe6c6b2a6b6ec9da33170317d4426cab0
Author: Christoph Lohmann <20h@r-36.net>
Date:   Tue Jul 7 22:26:44 2015 +0200

    Commit to push the 0.6 release.

commit 5f48e89716a74e75b6040fdb067372180626b699
Author: Weng Xuetian <wengxt@gmail.com>
Date:   Thu Jul 2 08:31:12 2015 +0200

    Revert "Remove unnecessary XFilterEvent call."
    
    This reverts commit d2937b05aed9cee8d6651cd806d31682a853c773.

commit bdd649a10289ade364f3deab3bbf6ee3169d67ca
Author: Quentin Rameau <quinq@quinq.eu.org>
Date:   Sun May 31 12:26:11 2015 +0200

    do not truncate font size when zooming

commit 71fa10f613a22b3e75e0e897ee1be6667be3f449
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Wed Jun 3 08:07:55 2015 +0200

    Revert "Optimize memory footprint of line buffers"
    
    This reverts commit 7ab6c92e18d468968811256e808b02309c160a22.
    We need 32 bits for real color support.

commit caa97cc781ccf29f28c3d9e6683a66eb3f70e2bd
Author: Jan Christoph Ebersbach <jceb@e-jc.de>
Date:   Fri May 22 16:06:57 2015 +0200

    Support UTF-8 characters as word delimiters
    
    For a higher usefulness of the utf8strchr function, the index of the
    UTF-8 character could be returned in addition with a Rune instead of a
    char*.  Since utf8strchr is currently only used by ISDELIM I didn't
    bother to increase the complexity.

commit c03548750b2527a6ddb5edfd945c5799066a6224
Merge: 8e15887 980991f
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Fri May 15 07:51:58 2015 +0200

    Merge branch 'master' of ssh://suckless.org/gitrepos/st

commit 8e15887de95a7076b9515dcbb428b364f6dc3849
Author: v4hn <me@v4hn.de>
Date:   Thu May 14 15:46:07 2015 +0200

    set selection to IDLE on clear
    
    Otherwise a tangling bmotion event will consider
    the selection still valid and selnormalize segfaults
    because of an invalid sel.ob.y index.

commit 89cf0fc597a2bcc16b1516c6f6d750a06175f1c7
Author: suigin <suigin@national.shitposting.agency>
Date:   Sat May 9 15:22:40 2015 -0700

    Small bugfix for makeglyphfontspecs call in drawregion
    
    Here's a patch that fixes a bug when calling `makedrawglyphfontspecs'
    in `drawregion'. Wasn't offseting the pointer into the input glyphs
    array by `x1'. The bug isn't causing any problems currently, because
    `drawregion' is always called with `x1' and `y1' values of 0, but if
    this ever changes in the future, the bug would certainly cause some
    problems.

commit 980991fa6e7b737d54f8e5c60c26275890eb28ff
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sun May 10 15:19:48 2015 +0200

    Fix the new -e handling. An empty cmd has to work for backwards compatibility.

commit ae1923d27533ff46400d93765e971558201ca1ee
Author: suigin <suigin@national.shitposting.agency>
Date:   Tue May 5 20:24:00 2015 -0700

    Clean up xdraws and optimize glyph drawing with non-unit kerning values
    
    I have another patch here for review that optimizes the performance of
    glyph drawing, primarily when using non-unit kerning values, and fixes a
    few other minor issues. It's dependent on the earlier patch from me that
    stores unicode codepoints in a Rune type, typedef'd to uint_least32_t.
    
    This patch is a pretty big change to xdraws so your scrutiny is
    appreciated.
    
    First, some performance numbers. I used Yu-Jie Lin termfps.sh shell
    script to benchmark before and after, and you can find it in the
    attachments. On my Kaveri A10 7850k machine, I get the following
    results:
    
    Before Patch
    ============
    
    1) Font: "Liberation Mono:pixelsize=12:antialias=false:autohint=false"
       cwscale: 1.0, chscale: 1.0
       For 273x83 100 frames.
       Elapsed time :     1.553
       Frames/second:    64.352
       Chars /second: 1,458,159
    
    2) Font: "Inconsolata:pixelsize=14:antialias=true:autohint=true"
       cwscale: 1.001, chscale: 1.001
       For 239x73 100 frames.
       Elapsed time :   159.286
       Frames/second:     0.627
       Chars /second:    10,953
    
    After Patch
    ===========
    
    3) Font: "Liberation Mono:pixelsize=12:antialias=false:autohint=false"
       cwscale: 1.0, chscale: 1.0
       For 273x83 100 frames.
       Elapsed time :     1.544
       Frames/second:    64.728
       Chars /second: 1,466,690
    
    4) Font: "Inconsolata:pixelsize=14:antialias=true:autohint=true"
       cwscale: 1.001, chscale: 1.001
       For 239x73 100 frames.
       Elapsed time :     1.955
       Frames/second:    51.146
       Chars /second:   892,361
    
    As you can see, while the improvements for fonts with unit-kerning is
    marginal, there's a huge ~81x performance increase with the patch when
    using kerning values other than 1.0.
    
    So what does the patch do?
    
    The `xdraws' function would render each glyph one at a time if non-unit
    kerning values were configured, and this was the primary cause of the
    slow down. Xft provides a handful of functions which allow you to render
    multiple characters or glyphs at time, each with a unique <x,y> position,
    so it was simply a matter of massaging the data into a format that would
    allow us to use one of these functions.
    
    I've split `xdraws' up into two functions. In the first pass with
    `xmakeglyphfontspecs' it will iterate over all of the glyphs in a given
    row and it will build up an array of corresponding XftGlyphFontSpec
    records. Much of the old logic for resolving fonts for glyphs using Xft
    and fontconfig went into this function.
    
    The second pass is done with `xrenderglyphfontspecs' which contains the
    old logic for determining colors, clearing the background, and finally
    rendering the array of XftGlyphFontSpec records.
    
    There's a couple of other things that have been improved by this patch.
    For instance, the UTF-32 codepoints in the Line's were being re-encoded
    back into UTF-8 strings to be passed to `xdraws' which in turn would then
    decode back to UTF-32 to verify that the Font contained a matching glyph
    for the code point. Next, the UTF-8 string was being passed to
    `XftDrawStringUtf8' which internally mallocs a scratch buffer and decodes
    back to UTF-32 and does the lookup of the glyphs all over again.
    
    This patch gets rid of all of this redundant round-trip encoding and
    decoding of characters to be rendered and only looks up the glyph index
    once (per font) during the font resolution phase. So this is probably
    what's responsible for the marginal improvements seen when kerning values
    are kept to 1.0.
    
    I imagine there are other performance improvements here too, not seen in
    the above benchmarks, if the user has lots of non-ASCII code plane characters
    on the screen, or several different fonts are being utilized during
    screen redraw.
    
    Anyway, if you see any problems, please let me know and I can fix them.

commit 38af006b5e4a36c77f25affbb3f7e28899db75ed
Author: suigin <suigin@national.shitposting.agency>
Date:   Tue May 5 13:13:21 2015 -0700

    Changed type for UTF-32 codepoints from long to uint_least32_t

commit c990abfedf56cb8d3176fe6d5152ff65bb68bff0
Author: noname <noname@inventati.org>
Date:   Sun May 3 19:28:10 2015 +0000

    Fix empty selection highlighting bug.
    
    When user clicks LMB, one character is selected, but will not be copied
    to selection until the user moves cursor a bit. Therefore, the character
    should not be highlighted as selected yet.
    
    Before the patch, the trick was not to mark line as dirty to avoid
    highlighting it. However, if user has already selected something and
    clicks in line that contains selection, selclear sets the line as dirty
    and one character is highlighted when it should not.
    
    This patch replaces dirty trick with explicit check for sel.mode inside
    selected().

commit 3cb7f27afe89c33c74b51c5460b7fb16413f786b
Author: noname <noname@inventati.org>
Date:   Sun May 3 02:49:23 2015 +0000

    Fix indentation.

commit 1811b6030cd9ac6bb938449eef778c6f54ab0e49
Author: noname <noname@inventati.org>
Date:   Fri May 1 17:13:13 2015 +0000

    Add enumeration for sel.mode
    
    This patch also prevents sel.mode from increasing beyond 2. It is almost
    impossible, but sel.mode may overflow if mouse is moved around for too
    long while selecting.

commit 22571ea4e8729efee6940b704666566b46e42e76
Author: noname <noname@inventati.org>
Date:   Thu Apr 30 19:59:24 2015 +0000

    selnormalize: make special case explicit
    
    Special case is when regular selection spans multiple lines.
    Otherwise, just sort sel.ob.x and sel.ob.y.

commit 8751809aff596fc2030026713651c11b3743f88e
Author: noname <noname@inventati.org>
Date:   Fri May 1 02:22:32 2015 +0000

    selsnap: simplify SNAP_LINE case
    
    Also make sure y never exceeds term.row-1 even if ATTR_WRAP is set for
    some reason.

commit 765bb0fd1420e36b04ecc03c18f01f5bda96c563
Author: noname <noname@inventati.org>
Date:   Thu Apr 30 20:51:35 2015 +0000

    Remove first argument of selsnap.

commit 07ce96a3a0f4a650933f5f586082cbf2064ea2c1
Author: Jochen Sprickerhof <dwm@jochen.sprickerhof.de>
Date:   Wed Apr 22 17:22:34 2015 +0200

    Fix sigchld
    
    Only wait for termination of the shell.

commit 190b94c7a2a7bb2f5d55cbb6eb1779fd042c6467
Author: mvdan@mvdan.cc <mvdan@mvdan.cc>
Date:   Wed Apr 22 15:08:06 2015 +0200

    len assignment is never used
    
    Signed-off-by: Daniel Martí <mvdan@mvdan.cc>

commit 4f21c41a1c19f769a2bf7941ee18fa0606266cca
Author: mvdan@mvdan.cc <mvdan@mvdan.cc>
Date:   Wed Apr 22 15:08:00 2015 +0200

    Clarify calculation precedence for '&' and '?'
    
    Signed-off-by: Daniel Martí <mvdan@mvdan.cc>

commit 3a5053f6c19195df5fde84a7e5eb3217443bb9ab
Author: mvdan@mvdan.cc <mvdan@mvdan.cc>
Date:   Wed Apr 22 15:07:59 2015 +0200

    Use %u for uint
    
    Signed-off-by: Daniel Martí <mvdan@mvdan.cc>

commit 7ab6c92e18d468968811256e808b02309c160a22
Author: suigin <suigin@national.shitposting.agency>
Date:   Mon Apr 27 10:04:04 2015 +0200

    Optimize memory footprint of line buffers

commit 0622ad9badefa985231ddede467d2bd8d94e93e4
Author: noname@inventati.org <noname@inventati.org>
Date:   Tue Apr 21 23:29:15 2015 +0200

    Make tputc, tsetchar and techo accept unicode

commit 21f765426c36991edd8b14f4989d66187e9ff597
Author: noname@inventati.org <noname@inventati.org>
Date:   Tue Apr 21 23:29:01 2015 +0200

    Change internal character representation.

commit 753fe862b14c7dd4b0449ab2c3bf22ecbb10030e
Author: noname@inventati.org <noname@inventati.org>
Date:   Tue Apr 21 23:28:40 2015 +0200

    Remove last parameter of utf8encode
    
    This parameter was always UTF_SIZ, so it is better remove it and
    use directly UTF_SIZ in it.

commit 61c35cd24625c6d14b4a2de8bd639da52aa513bd
Author: noname@inventati.org <noname@inventati.org>
Date:   Tue Apr 21 23:27:22 2015 +0200

    Use utf8len instead of utf8decode.

commit 742a41d6554ce1848f45ea89cb83d62c7e881352
Author: alp@alexpilon.ca <alp@alexpilon.ca>
Date:   Tue Apr 21 16:27:51 2015 +0200

    Make build shut up about system() without return value check.
    
        st.c:1321:2: warning: ignoring return value of function declared with warn_unused_result attribute [-Wunused-result]
                system(cmd);
                ^~~~~~ ~~~
    
    Debatable whether an error here should case exit(EXIT_FAILURE). Just
    preserving the existing behaviour for now.

commit f36dd277a2e71e99624fe26365757242d56259c0
Merge: 0d7448d 89807ed
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Thu Apr 23 17:59:39 2015 +0200

    Merge remote-tracking branch 'origin/master'

commit 0d7448dabc981716d277a5afac22fabc127bacca
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Thu Apr 23 17:55:41 2015 +0200

    Fix segmentation fault in strhandle()
    
    We cannot pass strescseq.args[0] to atoi when nargs is zero,
    because in this case it will be null.

commit b17aa18f7c15be8db2afd62ac696b63c75755f1c
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Wed Apr 22 09:16:35 2015 +0200

    Uses a &[] pointer loop instead of + pointer loop

commit 736685d641c23e8b08f3349d64bf30c1c86cd95d
Author: noname@inventati.org <noname@inventati.org>
Date:   Tue Apr 21 22:09:49 2015 +0200

    Do not set terminal title based on stty arguments.

commit 89807ed453e27893dea5ac73ee2c6b4f8dd15afb
Author: noname@inventati.org <noname@inventati.org>
Date:   Tue Apr 21 09:48:33 2015 +0200

    Move common code to xloadcolor

commit 84c756b97e31ca6946f634dc329ff8026caa6539
Author: noname@inventati.org <noname@inventati.org>
Date:   Sun Apr 19 22:24:44 2015 +0200

    Use LEN(dc.col) instead of LEN(colorname).
    
    LEN(colorname) may be below 256 for some configurations.

commit 2fdcc5e5f633083eb5e52b201862106a2c547df9
Author: noname@inventati.org <noname@inventati.org>
Date:   Sat Apr 18 19:33:11 2015 +0200

    Remove WIN_REDRAW flag.
    
    WIN_REDRAW flag was not used since introduction of Xdbe
    in commit 94771d05886fbdd2422e66b7c0256ab27fa375cb

commit ab69ea89b759eb457b1e5314d5345fdeea3dec87
Author: noname@inventati.org <noname@inventati.org>
Date:   Sun Apr 19 01:24:28 2015 +0200

    Place memset arguments in the correct order.

commit 5528280fae23968ffd3cf0527881cabddc24cf85
Author: noname@inventati.org <noname@inventati.org>
Date:   Sun Apr 19 01:24:12 2015 +0200

    Remove explicit 'return' from 'void' functions.

commit 6dc2b546eca11b198c64c9047106970a8d1f85e8
Author: noname@inventati.org <noname@inventati.org>
Date:   Sat Apr 18 18:45:48 2015 +0200

    Increment accuaracy in drawtime calculation
    
    This way is a bit more accurate.

commit c27c731b9f77c1b1c99f3bde737be53996809fcb
Author: noname@inventati.org <noname@inventati.org>
Date:   Sat Apr 18 18:46:17 2015 +0200

    Monotonic clock cannot jump backwards.
    
    The check was introduced back when st used gettimeofday.
    The condition is also modified to increment the accuaracy of the
    calculation.

commit 6ee56d65906362f3f6ade570da0ce9c28788eaf5
Author: noname@inventati.org <noname@inventati.org>
Date:   Sat Apr 18 18:45:21 2015 +0200

    Place tlinelen type on separate line.

commit 215bdb2da3eca77ba01b70503c527baaad67c359
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Mon Apr 13 19:03:53 2015 +0200

    Add tty line support
    
    Not always is desirable to create a pseudo terminal, and some times
    we want to open a terminal emulator over a tty line. With this new
    patch is possible to do someting like:
    
            $ st -l /dev/ttyS0 115200
    
    Without this option was needed to launch another terminal emulator
    over st (for example minicom, picocom, cu, ...).

commit 56abffb4b67f235d20de30f29ba027ab34c171e3
Author: sin <sin@2f30.org>
Date:   Wed Apr 15 09:43:06 2015 +0100

    Fix memmove() invocation with src/dst being NULL
    
    This fixes a segmentation fault on some systems.

commit aff35af275cb82eb876630c9256298ea1d1b2b57
Author: noname@inventati.org <noname@inventati.org>
Date:   Tue Apr 14 09:53:24 2015 +0200

    Use as command arguments the remaining parameters
    
    This change allows execute st as 'st mutt' while it keeps the
    compability with xterm and urxt.

commit 83e73c6242fc309a3859c12b996ab88d36c7e838
Merge: 9619760 42fa1f5
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Tue Apr 14 09:47:19 2015 +0200

    Merge branch 'master' of ssh://suckless.org/gitrepos/st

commit 42fa1f5ce46593a9d6c2f9196c1aae1a60ca07d1
Author: Markus Wichmann <nullplan@gmx.net>
Date:   Sat Apr 11 21:21:34 2015 +0200

    Implement most ICCCM rules for selection handling.
    
    ICCCM mandates the use of real timestamps to interact with the
    selection, to rule out race conditions if the clients are run at
    different speeds. I have implemented the low hanging fruit, putting the
    timestamps into text selection. Also, ICCCM mandates a check for whether
    XSetSelectionOwner() worked. Not sure my version is correct, though.

commit 23ed12857f113603b689521d3f6e40ff954d25bb
Merge: 9eb70a2 ecac5ee
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Mon Apr 13 22:01:40 2015 +0200

    Merge branch 'master' of ssh://suckless.org/gitrepos/st

commit 9eb70a2d3ecbd96a92e5f824868500baba74b688
Author: noname@inventati.org <noname@inventati.org>
Date:   Mon Apr 13 14:03:35 2015 +0200

    Do not use tmoveto in tputtab.
    
    tmoveto resets CURSOR_WRAPNEXT.
    
    Simple testcase:
    
    for i in $(seq 1 200); do
            printf '\t.';
            usleep 100000;
            printf '\t@';
            usleep 100000;
    done
    
    In st executing this script causes @ and . to overwrite each other in
    the last column.

commit 9619760e129b0994cd3bc4c827c83960f6a5e98f
Author: noname@inventati.org <noname@inventati.org>
Date:   Sun Apr 12 10:30:19 2015 +0200

    tresize: remove unnecessary if

commit a6af2cc46961a9378ab43919bb308162dedd4153
Author: noname@inventati.org <noname@inventati.org>
Date:   Mon Apr 13 16:06:21 2015 +0200

    Remove old TODO entry.
    
    It probably refers to
    http://lists.suckless.org/dev/1211/13427.html
    and does not seem like a bug in st.

commit b94ad75e5ded18d7dcafd69070f79838e0ebf24f
Author: noname@inventati.org <noname@inventati.org>
Date:   Mon Apr 13 16:05:49 2015 +0200

    Remove 'titles' variable.
    
    We do not free it until exit anyway.

commit e6dd0f825da9bf68c7642f45afd069500879f5e2
Author: noname@inventati.org <noname@inventati.org>
Date:   Mon Apr 13 14:34:23 2015 +0200

    Remove useless if in tstrsequence.

commit b0310fba5de0c519eae0c8a2817ccc7bfcdd5222
Author: noname@inventati.org <noname@inventati.org>
Date:   Mon Apr 13 14:03:51 2015 +0200

    Simplify tmoveto.
    
    LIMIT returns value. This fact is already used in x2col and y2row.

commit 9d1495f9eeee993a480c7ab1755803d081d794e6
Author: noname@inventati.org <noname@inventati.org>
Date:   Mon Apr 13 14:03:12 2015 +0200

    Fix typo.
    
    It seems that LICENSE files are more common than LICENCE files.
    At least this patch makes spelling consistent.

commit c569e3146e6999f6a02acecd145929c87e15b528
Author: noname@inventati.org <noname@inventati.org>
Date:   Sat Apr 11 19:30:36 2015 +0200

    Remove 'slide' variable in tresize.

commit 39ae1a4de5c471c8626c80ef1e961f0c83f5199d
Author: noname@inventati.org <noname@inventati.org>
Date:   Sat Apr 11 19:30:12 2015 +0200

    Move tresize comments around.

commit 6352502d644d8295ceb2cdf68a5ecbac0891d4a6
Author: noname@inventati.org <noname@inventati.org>
Date:   Sat Apr 11 19:29:52 2015 +0200

    tresize: move for loop outside if
    
    There is no need to check that slide > 0 before executing loop.
    If slide <= 0, loop stops immediately.

commit b9390a54968c3bc4f4270afdcf5b85911df01611
Author: noname@inventati.org <noname@inventati.org>
Date:   Sat Apr 11 12:47:16 2015 +0200

    Simplify loop condition.

commit d2937b05aed9cee8d6651cd806d31682a853c773
Author: noname@inventati.org <noname@inventati.org>
Date:   Sat Apr 11 12:15:51 2015 +0200

    Remove unnecessary XFilterEvent call.
    
    XFilterEvent usually filters KeyPress events according to input method.
    At this point the window is not mapped. The only events that we process
    are ConfigureNotify and MapNotify. They should not be filtered by input
    method.

commit d3e0f3444b91418e3d3cda591c5d8c50caa22957
Author: noname@inventati.org <noname@inventati.org>
Date:   Sat Apr 11 12:18:57 2015 +0200

    Use do..while in window mapping loop.

commit ecac5ee35ef006001b280461ed3f9812d855250c
Author: Omar Sandoval <osandov@osandov.com>
Date:   Thu Apr 9 18:22:31 2015 -0700

    Make DECSCUSR thickness configurable

commit 93b54cfcc437c9bac9af3ceb2d9ba19c442de1ff
Author: noname <noname@inventati.org>
Date:   Thu Apr 9 20:04:43 2015 +0000

    Use MAX macro where possible.

commit 6f5f7701864e6987544cb7e7dc5f2d24db1a4537
Author: noname <noname@inventati.org>
Date:   Wed Apr 8 23:24:06 2015 +0000

    Remove 'xloadfontset' function.
    
    It was used only once and its return value was ignored.

commit 6524f022f7d1d32f43208254e12f934bf64ed559
Author: noname <noname@inventati.org>
Date:   Wed Apr 8 23:17:33 2015 +0000

    Remove keywords from function definitions.

commit 9305f3c184a0179e37802e752c3d1dc830ae893c
Author: noname <noname@inventati.org>
Date:   Wed Apr 8 23:16:57 2015 +0000

    Remove variable names from function declarations.

commit 5bb90125c80a9409745bd7551aaae478dda3f890
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Mon Apr 6 10:55:00 2015 +0200

    Remove redundant control check
    
    control was set, but it was not ever used because it was set
    again some lines later.

commit 69d1fe06a97619e80872aaae2c4c97ced0540b67
Author: noname <noname@inventati.org>
Date:   Sun Apr 5 23:58:10 2015 +0000

    Fixed STR sequence termination condition
    
    ascii code may only be checked for characters that have length equal to
    1, not width equal to 1

commit 288f80cb06b442ef0f55ea62bbceb3260338bf7a
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Fri Mar 20 06:46:59 2015 +0000

    Remove strsep() call
    
    strsep() is not a POSIX function, and it means that every system
    needs different defines to expose it. If the prototype of strsep
    is not exposed then an ugly int/pointer is done and it might mean
    a crash. The best solution?, to remove the strsep and make a custom
    loop. If C programmers cannot do this kind of loops without calling
    a library function, then maybe we should move all the suckless
    software to Java.

commit c9357a8edfe6d047da95b85c5f3c18b9db40d172
Merge: 580302f 246c348
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Thu Mar 19 08:36:50 2015 +0000

    Merge remote-tracking branch 'origin/master'

commit 580302f3179ef3f24cf0329755686dfa7100996b
Author: LemonBoy <thatlemon@gmail.com>
Date:   Wed Mar 18 21:12:47 2015 +0100

    Support the DECSCUSR CSI escape sequence

commit 246c3481d780067dd3294edbd58cf980c2d960a3
Author: Christoph Lohmann <20h@r-36.net>
Date:   Mon Mar 16 22:17:30 2015 +0100

    arg.h wasn't used for dist.

commit b341e513514d50cc995a5646a1bbace65dc4ca67
Author: Alex Pilon <alp@alexpilon.ca>
Date:   Mon Mar 16 11:51:23 2015 -0400

    Handle pasting of empty selection.
    
    Otherwise, pasting the X11 primary selection when empty results an
    error and Xlib forcibly exits.
    
    Signed-off-by: Christoph Lohmann <20h@r-36.net>

commit 86d1e432a823dad7bb64808b8192014fddc8cd9f
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Sun Mar 15 18:07:46 2015 +0000

    Support XA_STRING in notify request
    
    Some programs can only deal with XA_STRING, and it makes impossible st
    be able of copying to them. This patch makes st answer also to XA_STRING,
    althought it sends utf8 strings. It is not a problem because moderm
    applications must support utf8.

commit c7e24e44c8d66cd5b0a6b015d2112da5f1e4e581
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Mar 14 08:53:41 2015 +0100

    TODO: Fix fontconfig

commit 5406e655daa576a909ad69a5ee6ed1f72ca5b15a
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Mar 14 08:52:37 2015 +0100

    Add the new selection shortcuts to the manpage.

commit 72d2accc2299cdda9379db17ed62e8e5df5a9426
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Mar 14 08:43:57 2015 +0100

    Glibc wants me to use _DEFAULT_SOURCe. I do obey.

commit 2fcfea1bf149f839cdbcba5c1efc7c4ce31f6d95
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Mar 14 07:41:59 2015 +0100

    Add Mod + Shift + c/v and no selclear.
    
    Thanks to Alex Pilon <alp@alexpilon.ca>!
    
    Now there is a distinction between the primary and clipboard selection. With
    Mod + Shift + c/v the clipboard is handled. The old Insert behavious does
    reside.

commit b746816b78447b9e4a3af7333a4e992eb8d32254
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Fri Mar 13 07:26:16 2015 +0000

    Allow combinations with Backspace
    
    XN_ANY_MOD makes that any combination of backspace will return always
    DEL. This patch lets to X to decide which value returns.

commit 4f60751440df55c11a8c601470b5d141d853e594
Author: Alexander Huemer <alexander.huemer@xx.vu>
Date:   Tue Mar 10 01:23:07 2015 +0100

    FAQ: fix wording

commit f5075a9e9d27c64e115e056c5b973ab783c6c0f3
Author: Ivan Delalande <colona@ycc.fr>
Date:   Wed Mar 11 17:13:35 2015 +0000

    Backspace value shouldn't depend on keypad state

commit c87d45466bac0812101f3b0036a669cd3f72ab6b
Merge: 28259f5 adeb2e9
Author: Christoph Lohmann <20h@r-36.net>
Date:   Tue Mar 10 21:59:41 2015 +0100

    Merge branch 'master' of ssh://suckless.org/gitrepos/st

commit 28259f5750f0dc7f52bbaf8b746ec3dc576a58ee
Author: Christoph Lohmann <20h@r-36.net>
Date:   Tue Mar 10 21:58:32 2015 +0100

    St now does only set PRIMARY on selection.
    
    http://standards.freedesktop.org/clipboards-spec/clipboards-latest.txt

commit adeb2e95d633cf4bbe1bbe5d2caba71776577c21
Author: Alexander Huemer <alexander.huemer@xx.vu>
Date:   Tue Mar 10 01:23:07 2015 +0100

    FAQ: fix wording

commit 9494362d0b35dfe2fa22c3e36ed7b2043b2e8a3d
Author: Christoph Lohmann <20h@r-36.net>
Date:   Tue Mar 10 21:11:04 2015 +0100

    Fixing the C reading test.
    
    This was a test to see if anyone actually reads what is submitted. The list of
    people not contributing will be valuable in the future.

commit cf1fcc4d96f9162272003f82839388093c01360e
Author: Christoph Lohmann <20h@r-36.net>
Date:   Tue Mar 10 00:20:28 2015 +0100

    Change the FAQ for the new Backspace behaviour.

commit 230d0c8428456603ce3629dac75c46abc4c9f016
Author: Christoph Lohmann <20h@r-36.net>
Date:   Tue Mar 10 00:00:44 2015 +0100

    Finally resolving the backspace problem.
    
    The majority now using the Linux behaviour. Minorities have to live in their
    ghettos.

commit b0bddc694a79dd24edb8f997acadecbff356a9e0
Author: Christoph Lohmann <20h@r-36.net>
Date:   Mon Mar 9 23:16:03 2015 +0100

    Add a hack to handle unknown chars in fontconfig.
    
    The unicode long is added to the cache. So when fontconfig does fall back to
    the default font (where there is no easy way to find this out from the
    pattern) it isn't reloaded.

commit 487bbb24d02190efa3d18093cadfa376f816d7fa
Author: Johannes Postma <jgmpostma@gmail.com>
Date:   Thu Mar 5 15:52:51 2015 +0000

    Update kdch1 definition to three octal digits.
    
    ncurses wasn't able to detect the delete-character key as KEY_DC.  This
    patch fixes that.
    
    kdch1 was defined as "\0177", but terminfo(5) states:
            ... characters may be given as three octal digits after a \.
    
    The delete-character key is correctly defined in config.def.h.

commit 29619a1a35175fd79a743ed006af405ea586a0fd
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Sat Feb 28 16:13:47 2015 +0000

    Small improvements to the FAQ

commit b8804f9f675b79ddd2db47aeef626d6ae3ce5ca3
Author: Greg Reagle <greg.reagle@umbc.edu>
Date:   Thu Feb 19 16:33:22 2015 -0500

    document keys in man page

commit 1b514048b254827f1a83c05e1b2a2428bf31924e
Author: Ivan Delalande <colona@ycc.fr>
Date:   Sun Feb 15 00:34:03 2015 +0100

    Let curses do the dirty work for flash
    
    Use the terminfo delay syntax ($<x>) in our flash capability to avoid
    hardcoding a fixed delay in redraw() when called from tsetmode() with
    DECSCNM.
    We need to turn on the npc capability so that delays are made with
    xon/xoff instead of padding characters.

commit 3604445ffc6ff1bfdfc7614771ca659e423b404b
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Sun Feb 22 10:59:26 2015 +0000

    Comment default CC assignment
    
    CC by default is cc, so the assignment was doing nothing, but
    it was using non standard syntax, so some system (NetBSD) fail
    to compile.

commit ac11bbb03b923cbe02cd17130ae643b2c4b004ec
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Sun Feb 22 10:58:37 2015 +0000

    Update dates in LICENSE

commit c5f1d74fd83319d84887c7ff6769f3d42c3d1a0d
Author: Nils Reuße <ml@hxgn.net>
Date:   Sun Feb 15 17:46:15 2015 +0100

    Update year in usage()

commit 7dd24bfb4c80960567d2d4dd4cf7ca5f2af95a52
Author: Nils Reuße <ml@hxgn.net>
Date:   Sun Feb 15 17:11:22 2015 +0100

    Fix crash on font resize resize
    
    if you keep downsizing your fontsize until either xw.ch or xw.cw gets 0,
    st crashes, because there is an unchecked division in cresize.

commit aba6c292af347588b9c2f5d1a400a6270b5a447f
Author: Rian Hunter <rian@alum.mit.edu>
Date:   Thu Jan 29 15:00:39 2015 -0800

    Correct shift amount on MODE_INSERT in tputc()
    
    When MODE_INSERT is set we'd shift characters on the same
    line forward before inserting our character in tputc().
    This did not account for wide characters where width != 1.
    This patch makes it so we shift the correct amount.

commit 4d14d97547d335974e98aa612ac5b4fcfc25e1d9
Author: Rian Hunter <rian+suckless-dev@thelig.ht>
Date:   Thu Jan 29 15:06:43 2015 -0800

    Fix crash due to wide characters
    
    In tputc(), when a character wasn't large enough to fit
    on the current line, we would call tnewline() to place it on
    the next line. Unfortunately, we weren't resetting our glyph
    pointer and this caused memory corruption when a
    wide character (width == 2) was being written. This patch
    resets our glyph pointer after calls to tnewline().

commit 708b697ed77e1ba4e96399ed6cb0f73a37565321
Author: Ivan Delalande <colona@ycc.fr>
Date:   Fri Dec 12 08:39:07 2014 +0100

    Fix crash due to invalid timespec given to pselect
    
    If blinktimeout is set to a value greater than 1000, pselect will
    receive a timeout argument with tv_nsec greater than 1E9 (1 sec), and
    fail, making st crash. This patch just ensures that the timespec
    structure is correctly filled with a value properly decomposed between
    tv_sec and tv_nsec.
    
    Reported by JasonWoof on IRC. Thanks!

commit 09f5d98251469070b76f3911cc6a83d977871656
Author: Ivan Delalande <colona@ycc.fr>
Date:   Sun Nov 16 09:02:57 2014 +0100

    Trim trailing whitespaces in every selection case
    
    Trailing whitespaces are trimmed when copying from normal selection and
    rectangular selection on lines that have their last character included
    or on the left of the selection. It leads to inconsistent behaviors when
    copying the exact same text from the left and right window in
    applications with vertical splits.
    This patch solves this issue by always trimming the selection.

commit 4418939dd9f3a7b3cfd3071234ed18ae86538f2a
Author: sin <sin@2f30.org>
Date:   Tue Nov 11 18:29:11 2014 +0000

    Call _exit() instead of exit() if exec*() fails
    
    exit() will also unwind the atexit() functions.  This is bad
    because if exec*() fails the process is in an inconsistent state.

commit bafbba56cd5735c680676db2adf6f614ba61356f
Author: Eric Pruitt <eric.pruitt@gmail.com>
Date:   Tue Oct 28 17:51:42 2014 -0700

    Check for presence of SHELL environment variable
    
    - POSIX states the SHELL environment variable "... shall represent a
      pathname of the user's preferred command language interpreter." As
      such, st should check for its presence when deciding what shell to
      use; just as HOME can be defined to override one's passwd-defined home
      directory, a user should also be able to override their passwd-defined
      shell using the SHELL environment variable.

commit 11625c7166b7e4dad414606227acec2de1c36464
Author: czarkoff@gmail.com <czarkoff@gmail.com>
Date:   Tue Oct 28 12:55:28 2014 +0100

    Replace character with U+FFFD if wcwidth() is -1
    
    Helpful when new Unicode codepoints are not recognized by libc.

commit 008aae541b5cb1e67a025048adef9a06eaa11c2e
Author: Quentin Rameau <quinq.ml@gmail.com>
Date:   Thu Oct 16 00:42:53 2014 +0200

    Avoid failing when embedding with a Window id of 0
    
    I'd like to let st run with its own window when trying to embed it to a window with id 0 instead of exiting with an error.

commit cd159883d14c5874446a6ae949be031a1c9d37c2
Author: Christoph Lohmann <20h@r-36.net>
Date:   Tue Oct 21 16:36:01 2014 +0200

    Reverting smacs and rmacs to the xterm defaults.
    
    These are needed by ncurses to correctly handle the switch between line
    drawing. The changes to the alternative characterset code already fixed the
    urwid hack.

commit f9fb620914f7b1e2580a890f23b66e18762788b7
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Wed Oct 15 19:42:20 2014 +0200

    Do not set SHELL to utmp ever
    
    SHELL must be set to the SHELL of the user, but it was possible set
    it to utmp.

commit 86633ada91d1c7d8be1bf0398caff8a62fb1b805
Author: CustaiCo <custaico@openmailbox.org>
Date:   Fri Oct 3 19:25:21 2014 +0000

    patch for bell in st
    
    The XBell() call currently used when a bell is recieved sends a message
    to the X server, but if the X server doesn't know how to sound it,
    it just gets ignored and I have not been able to find anywhere in x.org's
    code a way to configure the action that the server does.
    
    However, if you use XkbBell() then you can have a process listening for
    the XkbBellNotifyEvent that is produced and either alert you visually or
    play an audio file or whatever you want as your notification. You have
    to include one more header file but the function seems to be compiled as
    part of Xlib, at least on my installation.
    
    CustaiCo

commit dcfe505d3c97506918d5aff24ab62e17e5f58fdb
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Wed Oct 8 11:35:45 2014 +0200

    Use G1 for alternate charset
    
    St has enacs, which must be printed if a program requires to use
    the alternate charset (graphic charset), that in st case was to
    select charset graphic for G1, but it was not useful
    at all because smacs and rmacs were always redefining the value
    of G0.

commit 88429cdcbf937c4042cc315b31fcb8c662bd51fb
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Wed Oct 8 11:33:36 2014 +0200

    Add LS2 and LS3
    
    These sequences are the equivalents of LS0 and LS1, but for G2 and
    G3.

commit 0c8feecbf74674132070169986802c75dd49d688
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Wed Oct 8 10:30:20 2014 +0200

    Fix SI and SO
    
    SI (0x0F or ^O) means Shift In, and it selects G1 charset definition,
    and SO (0x0E or ^N) means Shift Out, and it selects G0 charset
    definition, but st was doing just the inverse.

commit a7eef8f230bcf72a85af68fc9a08ca94e52ca18d
Author: Christoph Lohmann <20h@r-36.net>
Date:   Mon Sep 29 15:41:10 2014 +0200

    Removing an extra space.

commit 63a07eb19c908ac86936b6f9857738107326d27a
Author: Christoph Lohmann <20h@r-36.net>
Date:   Mon Sep 29 15:40:37 2014 +0200

    Minor style changes for the last patch.

commit dc8c5c82aa14e75305bd5b0e42b4f8bba45702a8
Author: Christoph Lohmann <20h@r-36.net>
Date:   Mon Sep 29 15:38:21 2014 +0200

    Implementing xzoomreset.
    
    Thanks mvdan@mvdan.cc for proposing this.

commit c7a945c4086ab913cd8a05997bfbc1906645eff4
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Wed Aug 20 10:41:41 2014 +0200

    Add missed names of charset sequences

commit 5afb3862ba368de8888c0c570098baababc7bc19
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Thu Aug 28 12:48:29 2014 +0200

    Add support for utmp in st
    
    St runs an interactive shell and not a login shell, and it means
    that profile is not loaded. The default terminal configuration
    in some system is not the correct for st, but since profile is
    not loaded there is no way of getting a script configures the
    correct values.
    
    St doesn't update the utmp files, this is the job of another
    suckless tool, utmp. Utmp also opens a login shell (it is the
    logical behaviour when you create a new user record) it is a
    good option execute utmp and then get a correct input in
    utmp, wtmp and lastlog file, and execute the content of the
    profile.

commit 0392d165d07143eec29c730364006bc0613e1198
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Sun Aug 24 16:27:28 2014 +0200

    Remove indentation level in xdrawcursor

commit 98a1085d0e7c3d84e19185ba666c4b0c725cd974
Author: Ben Hendrickson <ben@1m7.com>
Date:   Fri Aug 22 09:25:04 2014 -0700

    Removing wrapping newlines from selection
    
    When getting selected text, lines that were wrapped because of length
    ought not include the wrapping newline in the selection.
    
    This comes up, for example, when copying a bash command that is long
    enough to wrap from the console and pasting it back into the console.
    The extra newline breaks it.
    
    Similiarly, changes behavior when trimming whitespace from the end of a
    physical line to only do so if the line does not wrap. Otherwise we are
    trimming whitespace from the middle of a logical line, which may change
    its meaning.
    
    Signed-off-by: Roberto E. Vargas Caballero <k0ga@shike2.com>

commit 51466e019a67e9319e6c5a7fa4205842ca860b71
Author: Ivan Delalande <colona@ycc.fr>
Date:   Wed Aug 20 21:20:44 2014 +0200

    Change the behavior of word snapping on delimiters
    
    This makes any sequence of identical delimiters be considered a single
    word in word-snapping mode. This seems more coherent for this mode and
    is similar to what xterm does.
    
    Signed-off-by: Roberto E. Vargas Caballero <k0ga@shike2.com>

commit c490a60b804f467490cd4d8275a181dc37edef9f
Author: Ivan Delalande <colona@ycc.fr>
Date:   Wed Aug 20 21:14:08 2014 +0200

    Move calls to selsnap into selnormalize
    
    This simplifies getbuttoninfo() and bpress(), and fixes a bug which made word
    snapping behave incorrectly when a delimiter was at the beginning or end of
    line.
    
    Signed-off-by: Roberto E. Vargas Caballero <k0ga@shike2.com>

commit 83dea7fd7bb5f6e8a11a7ac8a734d8016d1ed0cb
Author: Alexander Huemer <alexander.huemer@xx.vu>
Date:   Wed Aug 20 12:05:12 2014 +0200

    Improve readability of enum members
    
    The 'left shift from one' notation of power of two integers is more
    expressive than the result.
    
    Signed-off-by: Alexander Huemer <alexander.huemer@xx.vu>
    Signed-off-by: Roberto E. Vargas Caballero <k0ga@shike2.com>

commit e5f6736ee0a0f29a14afec5494a5b3f204cedc1c
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Wed Aug 20 09:56:24 2014 +0200

    Add eschandle()
    
    We already have a csihandle() function, where is located code about
    CSI sequences, so it is logical do the same with ESC sequences.
    This change helps to simplify tcontrol(), which has a complex flow
    and should be rewritten.

commit a3549c2eecf12b3453e6c86ba1721e7837f23746
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Tue Aug 19 00:55:02 2014 +0200

    Improve execsh() and don't allow anonymous shells
    
    This patch improves the shell selection on execsh and forbid
    shell with users don't registered in the passwd file.

commit 8342036f983288046e03a34055c10fc6b6b11017
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Mon Aug 18 23:23:51 2014 +0200

    Fix definition of CONTROLC0
    
    DEL character is not thecnically talking a C0 control character,
    although it has some common properties with them, so it is useful
    for us consider it as C0. Before this patch DEL (\177), was not
    ignored as it ought to be.

commit 9d9e049eac3dacb2725f9d792f7cdd2230062313
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Mon Aug 18 23:19:58 2014 +0200

    Make useful DEL in application mode
    
    DEL key has to generate the sequence ^[P in application mode,
    because such sequence means delete current character. It implies
    that the character sent in keypad mode must be ^? (DEL character).

commit 177d888dff2fdf987dfa7fc3eb8495fa107879ad
Author: Quentin Carbonneaux <q@c9x.me>
Date:   Mon Aug 18 19:20:41 2014 +0200

    reset the alt screen in treset
    
    Signed-off-by: Roberto E. Vargas Caballero <k0ga@shike2.com>

commit fa04911c91a049f397337d3436c4a5692da558fa
Author: Quentin Carbonneaux <q@c9x.me>
Date:   Mon Aug 18 19:19:42 2014 +0200

    simplify loop in tresize
    
    Signed-off-by: Roberto E. Vargas Caballero <k0ga@shike2.com>

commit 1926305318cf020e20732461293d3e8c1c201734
Author: Alexander Huemer <alexander.huemer@xx.vu>
Date:   Mon Aug 18 01:52:53 2014 +0200

    Simplify README
    
    The term 'virtual terminal emulator' was broken. There is nothing
    virtual about it, it's a terminal emulator.
    
    Signed-off-by: Alexander Huemer <alexander.huemer@xx.vu>
    Signed-off-by: Roberto E. Vargas Caballero <k0ga@shike2.com>

commit 8f3e6a577d0d9733d356c0b691fea7b523d8ade7
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Sun Aug 17 20:49:33 2014 +0200

    Fix man page and usage()
    
    Man page was repeating -f option, the second time instead of -i,
    and this option was lost in usage() message. This patch also indent
    the output of usage().

commit f8b4998b32cbabe2090dc8027720203d6cd2d24d
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Fri Aug 15 15:00:48 2014 +0200

    Convert VT102ID to a config variable
    
    VT102ID is the sequence that the terminal returns when it is inquired
    to identify itself. This value should be configurable in the same
    way that another st parameters.

commit 6530025bcaf3a65083667a93ae50035bd7137bae
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Fri Aug 15 14:48:16 2014 +0200

    Fix portability problem in techo()
    
    ISCONTROL chechks if a value is between 0 and 0x1f or
    between 0x80 and 0x9f. Char signess depends of architecture
    and compiler, so in some environment the second case is
    always false (and wrong), Techo() calls ISCONTROL with a
    char variable, whose type cannot be changed because tpuc()
    expects a pointer to char, so the solution is to insert a
    cast in the call to ISCONTROL.

commit d4a17316d33f3c5a0017d7fe6e7e174883ccaa97
Author: noname <noname@inventati.org>
Date:   Mon Apr 28 02:16:21 2014 +0400

    Don't set dirty all lines because tswapcreen do it
    
    Signed-off-by: Roberto E. Vargas Caballero <k0ga@shike2.com>

commit 20c4f122543b67c0cdcefd151eb38b3bee599c10
Author: noname <noname@inventati.org>
Date:   Mon Apr 28 02:03:04 2014 +0400

    tresize return value is not used
    
    Signed-off-by: Roberto E. Vargas Caballero <k0ga@shike2.com>

commit 821a6e00a5a9395f40c10c00d19c569bd0f2688e
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Thu Aug 7 10:19:48 2014 +0200

    Remove ul capability
    
    This capability indicates that underscore '_' overstrike current
    letter under the cursor. It means that you can generate a
    underline 'b' using 'b^H_', because it writes a 'b' then backward
    one characther and then overstrike '_'. St has not such behaviour,
    so it is an error to have this capability.

commit 8de8ae3923b3b91b034077c8c35acba629588233
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Thu Aug 7 10:11:38 2014 +0200

    Unset mode when clearing regions
    
    tclearregion() was clearing regions using spaces and the current
    attributes of the terminal. It was correct with all the modes excepct
    underline, because they didn't affect the space character, but in
    the case of underline it was a problem. A easy way of seeing this
    problem is writing this in the last line of the terminal:
    
            tput smul ; echo first; tput rmul; echo second; echo third
    
    Fist was underlined, and second and third were not underlined, but
    the spaces at the right of second was underlined becuause in the
    previous scrool underline mode was set.

commit ec3268961d1dc4072f6caa6f97db5436da2ff411
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Mon Aug 4 22:07:04 2014 +0200

    Add error message when child exits whit error
    
    Master proccess was not showing any error message when the child
    died with an error, and it was very confusing for the user (for
    example with incorrect -e command).

commit 769d48180747c3255653360d161c77ec2a2e8d13
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Thu Jul 31 19:37:59 2014 +0200

    Remove difference between fast and slow blinking
    
    One blinking mode is good enough, and two is too much. The best aproach
    is emulate the fast blinking with the slow blinking, that it is more
    used.
    It is removed the flag ATTR_FASTBLINK because it has not a different
    meaning of ATTR_BLINK, so it is not needed.
    
    Signed-off-by: Roberto E. Vargas Caballero <k0ga@shike2.com>

commit b4dfa18124451f9ee29a0719ef36ffd58fae4477
Author: Michael Forney <mforney@mforney.org>
Date:   Sat Jul 26 00:48:15 2014 -0700

    Fix disabling of bold and fastblink
    
    According to ECMA-48¹ 8.3.117, an attribute value of 21 is "doubly
    underlined", while 22 is "normal colour or normal intensity (neither
    bold nor faint)".
    
    Additionally, 25 is "steady (not blinking)", which likely means neither
    slow blink nor fast blink.
    
    ¹: http://www.ecma-international.org/publications/files/ECMA-ST/Ecma-048.pdf
    
    Signed-off-by: Roberto E. Vargas Caballero <k0ga@shike2.com>

commit e8f3513bf4d953176ae932c5d7eb5c374b05a2a0
Author: Wolfgang Corcoran-Mathe <first.lord.of.teal@gmail.com>
Date:   Fri Jul 25 13:32:29 2014 -0400

    Add info about Backspace and Delete to the FAQ
    
    Here is a modest attempt at cleaning it up a little bit. I changed a
    few phrases that seemed awkward, but I think the content is the same.
    
    --
    Wolfgang Corcoran-Mathe
    
    Signed-off-by: Roberto E. Vargas Caballero <k0ga@shike2.com>

commit f210ea26c444607980d5de17ed7d4e62bb813631
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Thu Jul 24 19:56:58 2014 +0200

    Add info about Backspace and Delete to the FAQ

commit 8306568bd0b9d082c58ad897b4562ffe6822e585
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Sun Jul 20 10:31:16 2014 +0200

    Add information about librt and OpenBSD to the FAQ

commit 844cd7ce17aaad93cfc2ffba6b7511bac855786c
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Sun Jul 20 10:31:16 2014 +0200

    Add information about librt and OpenBSD to the FAQ

commit 8c5ba1cfb09edc12d4992df4667c6ea2a476c82f
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Sun Jul 20 10:31:16 2014 +0200

    Add information about librt and OpenBSD to the FAQ

commit 3949aa7c5db6db76e545f6201b1c49f1b91fb245
Author: Wolfgang Corcoran-Mathe <first.lord.of.teal@gmail.com>
Date:   Sun Jul 20 11:05:39 2014 -0400

    Very minor grammar fixes in FAQ
    
    Self-explanatory.
    
    Signed-off-by: Roberto E. Vargas Caballero <k0ga@shike2.com>

commit 84ceefe0890ee235dd736543fe30479393562fb6
Author: Weng Xuetian <wengxt@gmail.com>
Date:   Wed Jul 16 18:36:46 2014 -0400

    Fix st with input method.
    
    XFilterEvent need to be called against every event, otherwise it would
    missing some message in the xim protocol and misbehave on some im server.
    
    Signed-off-by: Roberto E. Vargas Caballero <k0ga@shike2.com>

commit b5d0a13c10ab6ba6121c5fa67b9f20c8d41de349
Author: Eric Pruitt <eric.pruitt@gmail.com>
Date:   Mon Jul 14 09:05:07 2014 -0500

    Changed inconsistent indent
    
    - A line was indented using spaces despite the rest of the code using
      tabs.
    
    Signed-off-by: Roberto E. Vargas Caballero <k0ga@shike2.com>

commit 984c12d2a67fd19ee69b35152d93de8cb67595e8
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Fri Jun 20 09:51:18 2014 +0200

    Add 8 bit version of DCS, APC, PM, OSC
    
    DCS, APC, PM, OSC version for 7 bits environments already was implemented
    in st.  This patch adds the 8 bit version of it.

commit da78629cf5fa234204f002ff2c2b597a2bf7e76f
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Fri Jun 20 09:51:18 2014 +0200

    Add 8 bit version of HTS
    
    HTS version for 7 bits environments already was implemented in st.
    This patch adds the 8 bit version of it.

commit f5356d018505963a72d1a5bb505c69b2cf32792b
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Fri Jun 20 09:51:18 2014 +0200

    Add 8 bit version of NEL
    
    NEL version for 7 bits environments already was implemented in st.
    This patch adds the 8 bit version of it.

commit bcbaf5d9beb72f29d228d103634d648ca28fb48d
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Fri Jun 20 09:51:18 2014 +0200

    Add 8 bit version of DECID
    
    DECID version for 7 bits environments already was implemented in st.
    This patch adds the 8 bit version of it.

commit f796533b1bab9aa8ea4e70b79d305c9aea47fe6a
Author: Anders Eurenius <aes@spotify.com>
Date:   Sun Jun 22 00:10:59 2014 +0200

    Render faint attribute
    
    Faint text is implemented by allocating a new color at one-half
    intensity of each of the r, g, b components, or if the text bold at the
    same time, it is not made lighter.
    
    Signed-off-by: Roberto E. Vargas Caballero <k0ga@shike2.com>
    Signed-off-by: Christoph Lohmann <20h@r-36.net>

commit 955923b38b1f08f6cb25a706cea2af5966339187
Author: Ivan Delalande <colona@ycc.fr>
Date:   Fri Jun 27 09:15:56 2014 +0200

    Remove all strcmp and strlen calls on Glyph.c[]
    
    There were a few occurrences of strcmp and strlen being called on Glyph.c[],
    which is not always null-terminated (this actually depends on the last values in
    the buffer s in ttyread()). This patch replace all the calls to strcmp with a
    test on c[0] directly or a call to tlinelen, and the one to strlen with utf8len.
    I also took the opportunity to refactor getsel and tdumpline.
    
    Signed-off-by: Roberto E. Vargas Caballero <k0ga@shike2.com>

commit 0015e198bfceae50a55403ad1339345340f4dcc0
Author: Christoph Lohmann <20h@r-36.net>
Date:   Mon Jun 30 17:33:43 2014 +0200

    Making surf compile again with rt.
    
    The clock_gettime patch needs librt to be linked to surf.
    
    Thanks _odie for the hint.

commit 1fc4afd1e6609732178369c7f17c917204aad4cc
Author: Anders Eurenius <aes@spotify.com>
Date:   Sat Jun 21 20:32:34 2014 +0200

    Render struck-out attribute
    
    Implement crossed-out text with an XftDrawRect call, similar to how
    underline is implemented. The line is drawn at 2/3 of the font ascent,
    which seems to work nicely in practice.
    
    Signed-off-by: Roberto E. Vargas Caballero <k0ga@shike2.com>

commit 21bd4f4f9dce4dd19f218965e5a223c93a5a0fec
Author: Anders Eurenius <aes@spotify.com>
Date:   Sat Jun 21 20:30:22 2014 +0200

    Render invisible attribute
    
    Implement invisible mode by setting the foreground color to be the same
    as the background color. Not rendering anything would also be an
    alternative, but this seems less likely to cause surprises in
    conjunction with any hacks.
    
    Signed-off-by: Roberto E. Vargas Caballero <k0ga@shike2.com>

commit 50e6355e0d6c9843b51ac4711980401205ce06c1
Author: Anders Eurenius <aes@spotify.com>
Date:   Sat Jun 21 20:29:36 2014 +0200

    Reorder and extend glyph attributes
    
    Faint, invisible, struck and fast blink are added as glyph attributes.
    Since there's an edit here, let's take the opportunity to reorder them
    so that they correspond to the two's power of the corresponding escape
    code. (just for neatness, let's hope that property never gets used for
    anything.)
    
    Signed-off-by: Roberto E. Vargas Caballero <k0ga@shike2.com>

commit 77569526c0166e6364bb635fceb8eeabd58ce683
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Thu Jun 26 12:37:06 2014 +0200

    Remove CEIL macro
    
    This macro was not correct in some cases, and it was used only in
    one place, where we did'nt get any benefit in performance of in size,
    so the macro is removed and ceilf is used instead of it. The only
    function needed from math.h is ceilf, so this patch defines the
    prototype of it instead of including math.h.

commit 19d095717f656d844cd9d696d9c921a0821a5ea7
Author: Ivan Delalande <colona@ycc.fr>
Date:   Thu Jun 26 04:30:43 2014 +0200

    Fixed wrong nanosecond factor 10E6.
    
    Commit 5edeec1 introduced a wrong factor for nanosecond computation, the correct
    value is 1E6. Time and timeout values are 10 times less than they should be and
    this cause high CPU usage.
    
    Reported by pyroh on IRC. Thanks!
    
    Signed-off-by: Roberto E. Vargas Caballero <k0ga@shike2.com>

commit 5edeec1b20fcb5900d4f1408594d1e76b6c544f0
Author: FRIGN <dev@frign.de>
Date:   Mon Jun 23 16:51:51 2014 +0200

    Use monotonic clock to prevent timing issues
    
    This patch replaces the gettimeofday()/timeval-system with
    uses of clock_gettime() with a monolithic clock and timespec-structs.
    gettimeofday() is not accurate and prone to jumps and POSIX.1-2008
    marks it as obsolete. Read more here [0].
    
    The patch should speak for itself and decreases the binary
    size for me by almost 200K(!).
    
    [0]: http://blog.habets.pp.se/2010/09/gettimeofday-should-never-be-used-to-measure-time
    
    Signed-off-by: Roberto E. Vargas Caballero <k0ga@shike2.com>

commit 738f555f66e2423678d7f81344131d2e01f7c2e9
Author: Eric Pruitt <eric.pruitt@gmail.com>
Date:   Wed Jun 18 08:39:57 2014 -0500

    Fix typo in config.def.h
    
    Signed-off-by: Roberto E. Vargas Caballero <k0ga@shike2.com>

commit 58eaa998b37bc44acbf4356a3bc4116acf570893
Author: Troy Sankey <sankeytms@gmail.com>
Date:   Wed Jun 18 10:41:26 2014 -0700

    update size hints on zoom
    
    On font zooming (i.e. xzoom()), window size hints are not updated.  This
    patch does that.
    
    Signed-off-by: Roberto E. Vargas Caballero <k0ga@shike2.com>

commit c2fd2754ebea6f802e4c71219af269c58b78262e
Author: Silvan Jegen <s.jegen@gmail.com>
Date:   Fri Jun 6 22:09:22 2014 +0200

    Refactor the innermost loop of the xdraws function
    
    Signed-off-by: Silvan Jegen <s.jegen@gmail.com>
    Signed-off-by: Christoph Lohmann <20h@r-36.net>

commit 27b28f1dc264e9947ea22bd64fd8f00ac98442f5
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Mon Jun 9 17:19:15 2014 +0200

    FAQ: update typo and escape code for smkx
    
    Signed-off-by: Roberto E. Vargas Caballero <k0ga@shike2.com>

commit 587b4435924bab598a904531dc8d01656d1e519a
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Jun 7 13:49:04 2014 +0200

    Style police.

commit 93661042a2a0cf6f3655360f5c52215c684a4211
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Sat Jun 7 13:23:45 2014 +0200

    Simplify tdeftrans

commit 18a05fdf4326ac1c7165de8cad0895b5c44fac83
Author: FRIGN <dev@frign.de>
Date:   Fri Jun 6 14:08:51 2014 +0200

    Remove unnecessary typedef
    
    This should also fix compiling-errors on OpenBSD,
    as reported by Nils R. Thanks!
    
    Signed-off-by: Roberto E. Vargas Caballero <k0ga@shike2.com>

commit 5159d55c631cd1179bd2f872859d4540668745b9
Author: Colona <colona@ycc.fr>
Date:   Thu Jun 5 06:32:01 2014 +0200

    Refactor selsnap SNAP_WORD.
    
    Refactor the SNAP_WORD part in selsnap, and fix a bug that caused the word
    delimiters to be ignored if it was at the very beginning or end of a wrapped
    line.
    
    Signed-off-by: Roberto E. Vargas Caballero <k0ga@shike2.com>

commit 6fd887077e29efd789499e06193314d7abdcac38
Author: Colona <colona@ycc.fr>
Date:   Tue Jun 3 21:47:55 2014 -0700

    Fix rectangular selection.
    
    selsort computes the wrong normalized coordinates when rectangular
    selection is enabled, causing rectangular selection to only work
    when going toward either the top left corner, or the bottom right
    one.
    
    Signed-off-by: Roberto E. Vargas Caballero <k0ga@shike2.com>

commit bb6dc332067fddcdcb0940ebc9b5f41c61429c46
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Tue Jun 3 17:55:53 2014 +0200

    tiny cleanup
    
    Signed-off-by: Roberto E. Vargas Caballero <k0ga@shike2.com>

commit 2323e962e6bcddba42fd8be977088fb63ed8844c
Author: Colona <colona@ycc.fr>
Date:   Tue Jun 3 04:34:58 2014 +0200

    Make selection consistent over line breaks.
    
    Currently, selection is expanded to the end of the line over line breaks only in
    regular selection mode, when the line in not empty and when going down and/or
    right. This covers all the cases including word selection mode, with the
    exception of rectangular selection because it would make this mode too rigid.
    This adjustment is made in selsort so I renamed it to selnormalize to better
    reflect what it does now.
    
    Signed-off-by: Roberto E. Vargas Caballero <k0ga@shike2.com>

commit c6fcb78b3a9a73b691875048848430c18870a0fc
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sun Jun 1 17:08:16 2014 +0200

    Fixing color and refactor xsetcolorname.
    
    By  the recommendation of FRIGN I refactored xsetcolorname to remove the
    unnecessary r, g, b variables when allocating a new  color.  Colors  are
    now freed and set to the new color. A die() should not happen here. Oth‐
    erwise it is easy for applications to kill st. St should be resilent  to
    malicious input.
    
    Second  this  patch  standardises  the  naming  of  »color«. There is no
    »colour« here. Maybe in some parts of the world.

commit 8b4cfcea73a37ab6d67c06c69e9af3de304185e3
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sun Jun 1 16:52:19 2014 +0200

    Revert "Refactor xsetcolorname()"
    
    This reverts commit a32c5f5726f514b49bd396f27aab0e78c40126d3.

commit a32c5f5726f514b49bd396f27aab0e78c40126d3
Author: FRIGN <dev@frign.de>
Date:   Sun May 25 12:13:22 2014 +0200

    Refactor xsetcolorname()
    
    I mainly improved the slightly off algorithm used to load colours in the 256-colour-space and
    removed unnecessary local values (r,g,b,colour).
    "colour" is not necessary as a punchbag for XftColorAlloc[Value,Name], as they don't mess with
    the result-adress until they are absolutely sure everything worked out[0].
    
    Being at it, I changed the error-returns for AllocValue to dies (just like in xloadcols()), as
    a failure is most likely an OOM-situation you better catch early.
    In case of an invalid name everything stays the same.
    
    [0]: http://www.opensource.apple.com/source/X11libs/X11libs-40/libXft/libXft-2.1.13/src/xftcolor.c
    
    Signed-off-by: Christoph Lohmann <20h@r-36.net>

commit ba36d1394b3add5b9d4c174f1443cc312bcc7e09
Author: Balazs Kezes <rlblaster@gmail.com>
Date:   Sat May 31 22:24:58 2014 +0100

    Don't report release events for mouse wheel
    
    Signed-off-by: Christoph Lohmann <20h@r-36.net>

commit ede83bd08b922f2f53264876f6500b564d3c5ef0
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sun Jun 1 15:54:28 2014 +0200

    Fixing italic bold.
    
    Thanks Felipe Spychalski <spychalski@gmail.com> for the patch!

commit 2411308bd24c4db97a3bb06d38f183a679aec1ea
Author: Alexander <alex0player@gmail.com>
Date:   Mon May 26 09:23:56 2014 +0400

    Fixed copying empty lines inside selection.
    
    The code was assuming that empty lines have implicit wrap-around attribute.
    
    Signed-off-by: Roberto E. Vargas Caballero <k0ga@shike2.com>

commit d03aa8d20bcc8a94a7737331a9ec0bf11df3e572
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat May 24 21:27:54 2014 +0200

    Fix some more LICENSE changes.

commit 80d80512690c0ecb2627b31e1e0296256b27c896
Author: FRIGN <dev@frign.de>
Date:   Sat May 24 21:07:53 2014 +0200

    Add FRIGN to License, remove trailing whitespace
    
    Signed-off-by: Christoph Lohmann <20h@r-36.net>

commit 488977c8efd0b3ad5bcc7a76f35e737f56381f45
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat May 24 13:52:24 2014 +0200

    Brightening is again on the TODO list.

commit f4ebb3180f9f03bc35034348a5aff8745eac9ebf
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat May 24 13:48:44 2014 +0200

    Fixing trailing whitespaces.

commit 3544e354b2dcdfcced1a2f4aeedb4d479abd543c
Author: FRIGN <dev@frign.de>
Date:   Thu May 22 15:00:33 2014 +0200

    Fix colour-model and simplify xloadcols()
    
    Signed-off-by: Christoph Lohmann <20h@r-36.net>

commit cf890e5bf06a65a35fe195aa1ef8ae3e1eb55f51
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Mon May 12 14:39:37 2014 +0200

    Allow mouse selection override using ShiftMask
    
    Similar to xterm or urxvt holding shift before selecting text with the mouse
    allows to override copying text. For example in tmux with "mode-mouse on" or
    vim (compiled with --with-x), mc, htop, etc.
    
    forceselmod in config.h sets the modifier to use this mode, by default
    ShiftMask.
    
    Signed-off-by: Hiltjo Posthuma <hiltjo@codemadness.org>

commit bdb850a16a6d7a2d12b2bd5500a3b7d70290a74a
Author: Christoph Lohmann <20h@r-36.net>
Date:   Fri May 9 17:12:58 2014 +0200

    Redraw needs all dirty lines to have flash etc. work.

commit e31829f659a818e438bf2fe45708abb2983f8765
Author: Colona <colona@ycc.fr>
Date:   Fri May 9 10:23:53 2014 +0200

    End a sequence only on CAN, SUB, \a and C1s.

commit 5e917ab2874de556de12ce43e9a97300c9c722a2
Author: Colona <colona@ycc.fr>
Date:   Wed May 7 10:05:27 2014 +0200

    Also clears ESC_START on interrupt characters during sequences.
    
    Otherwise, the rest of the input is interpreted as a new escape
    sequence.
    For the ESC character, ESC_START is re-set in tcontrolcode.

commit 99fb365aa30e6d9f8fa035f4d2adbc3145fafb00
Author: noname <noname@inventati.org>
Date:   Fri Apr 25 18:26:54 2014 +0400

    Consistent FALLTHROUGH comments.

commit 870f961c49d3f9dfea8d78666e73fcdd0f90cc57
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Tue Apr 29 09:58:55 2014 +0200

    Fix displaying control code
    
    Control code are never displayed. It is not important if graphic
    charset is displayed or not.

commit 1629363f2d009a0c0d61209e4126ff09fa0e11a4
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Tue Apr 29 08:58:10 2014 +0200

    Remove ATTR_GFX and tselcs
    
    ATTR_GFX was used long time ago to detect when terminal was in
    graphic mode. Today graphic mode is implemented using a charset
    pointer, so ATTR_GFX is not needed anymore because graphic
    condition can be detected directly checking if current charset
    is GRAPHICS C0.

commit 6b315558f8095b91988d5b305ed06e082da48889
Author: noname <noname@inventati.org>
Date:   Tue Apr 29 02:35:22 2014 +0400

    Do not save cursor in tresize.
    
    This patch fixes the bug introduced in
    8f11e1cd034ff28ca47bb4955505db7fa8016ba8
    
    To reproduce the bug:
    1. Save cursor: printf '\e[s'
    2. Load cursor: printf '\e[u'
    3. Resize st window.
    4. Load cursor again: printf '\e[u'

commit 5f91983541014d34274087dbf723b48551f90fc0
Author: noname <noname@inventati.org>
Date:   Sun Apr 27 15:16:41 2014 +0400

    Simplify selected().

commit 9e3e8ce4661d31629f9d4862467b2fb21c628e38
Author: noname <noname@inventati.org>
Date:   Sun Apr 27 15:39:53 2014 +0400

    Do not export chscale and cwscale.

commit 0e439e5624113233525266c2a104792f2c33b7e3
Author: noname <noname@inventati.org>
Date:   Mon Apr 28 02:41:17 2014 +0400

    Simplify xunloadfonts.

commit 74962bf56636e608f0ee35f2076bc6b48923119d
Author: noname <noname@inventati.org>
Date:   Sun Apr 27 15:40:23 2014 +0400

    Remove one indentation level in getsel().

commit 6681af165b06c32cf65bf970a295600d46cb7025
Author: noname <noname@inventati.org>
Date:   Sun Apr 27 15:40:01 2014 +0400

    Remove unused dump() function.

commit 1ae2745fd160bbc25bab56be31d04a9d7f8ef4d4
Author: noname <noname@inventati.org>
Date:   Sun Apr 27 15:39:47 2014 +0400

    Add missing function prototypes.

commit a48f2be7f537cb1655c6b550d9346a17459a94bd
Author: noname <noname@inventati.org>
Date:   Sun Apr 27 15:39:39 2014 +0400

    Use MODBIT in xseturgency.

commit 17fa1493ee0d8c53c63b3c8d1325ee38fd3192e1
Author: noname <noname@inventati.org>
Date:   Sun Apr 27 15:39:29 2014 +0400

    Compute ena_sel as one expression.

commit a8a9e66a7d481c66bd9680ff0670c322bedd7ca7
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Sun Apr 27 10:25:15 2014 +0200

    Simplify expressions in tputc()

commit 17290f493b3701f57f1e8a1f2d26fc12ab968928
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Sat Apr 26 09:30:53 2014 +0200

    Fix misplaced break
    
    This misplaced break was causing an incorrect fall through
    from DSR to DECSTBM.

commit 43d74ef362b7dc5da3232cdc9412981ea6386df6
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Sat Apr 26 09:24:04 2014 +0200

    Create a function for DEC test
    
    Almost of the sequences execute their action in a separate function,
    which is good because helps to read the full set of sequences
    faster.

commit 3764f38fc805a8846bd18f1d555a10227fd14e29
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Mon Apr 28 18:32:09 2014 +0200

    Fix tputc control code handling
    
    The patch 53105cf modified how control codes were detected, because
    it tried to handle also C1 control codes (0x80-0x9f), that have
    upper bit to 1, so they are multi byte character in utf8.
    Code was checking the value of width in order to known that after
    decoding the unicode point had a width of 1 byte, but it as incorrect
    because this width is the columnb width.

commit 53105cf74fde46229912275c073f8c0f219b05bb
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Sat Apr 26 01:45:10 2014 +0200

    Remove repeated initialisation of term.esc
    
    Once a sequence is completed term.esc must return to 0, so
    instead of repeating this expression in all the cases is
    better put it at the end of the block.

commit aa35bbd7a16c6c210a7574a8c45bbe939d5b2922
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Sat Apr 26 01:34:46 2014 +0200

    Cancel DCS with SUB, CAN, ESC or any CC1 code
    
    From http://www.vt100.net/docs/vt510-rm/chapter4:
    
            *The VT510 ignores all following characters until it receives a
             SUB, ST, or any other C1 control character.
    
    So OSC, PM and APC sequence ends with a SUB (it cancels the sequence
    and show a question mark as error), ST or any another C1 (8 bits)
    code, or their C0 (7 bits) equivalent sequences (at this moment we
    do not handle C1 codes, but we should). But it is also said that:
    
            Cancel  CAN
            1/8     Immediately cancels an escape sequence, control sequence,
                    or device control string in progress. In this case, the
                    VT510 does not display any error character.
    
            Escape  ESC
            1/11    Introduces an escape sequence. ESC also cancels any escape
                    sequence, control sequence, or device control string in
                    progress.

commit 704d12442e85ded011f71c95e90534ebacc81692
Author: Markus Teich <markus.teich@stusta.mhn.de>
Date:   Sat Apr 26 23:50:37 2014 +0200

    add break;s for last cases in switch statements

commit 02d2df5790d186f16e0e22becd8107a85f328c2f
Author: noname <noname@inventati.org>
Date:   Sat Apr 26 00:12:41 2014 +0200

    Do not eat ESC character if control string is not properly terminated.
    
    Currently tputc handles the case of too long control string waiting for
    the end of control string.
    
    Another case is when there is ESC character is encountered but is not
    followed by '\\'.  In this case st stops processing control string,
    but ESC character is ignored.
    
    After this patch st processes ESC characters in control strings properly.
    
    Test case:
    printf '\e]0;abc\e[1mBOLD\e[0m'
    
    Also ^[\ is actually processed in the code that handles ST.
    According to ECMA-048 ST stands for STRING TERMINATOR and is used to
    close control strings.

commit c4b79b055df9ef0126f05dd6dbd2bbf935dcb980
Author: noname <noname@inventati.org>
Date:   Fri Apr 25 18:28:00 2014 +0400

    Fix for multibyte characters in techo.
    
    Works for both signed and unsigned char.

commit 7f1e02e4dbb6e6f033797a09a7deea4fe29f2ca6
Author: noname <noname@inventati.org>
Date:   Fri Apr 25 18:27:48 2014 +0400

    s/DSC/DCS/ DCS stands for DEVICE CONTROL STRING

commit 84f6dbffa5a26e1a2f94f844844d76f80dd6c5a0
Author: noname <noname@inventati.org>
Date:   Fri Apr 25 18:27:26 2014 +0400

    Use xwrite instead of write.

commit 2d67f99d286b7c00b298d0f0908035ca49cd4909
Author: noname <noname@inventati.org>
Date:   Fri Apr 25 18:27:15 2014 +0400

    Remove unnecessary break

commit 4a8574b439e2118bd4cb40374185fba861903620
Author: noname <noname@inventati.org>
Date:   Fri Apr 25 18:26:43 2014 +0400

    Comment fix.

commit 8f11e1cd034ff28ca47bb4955505db7fa8016ba8
Author: Colona <colona@ycc.fr>
Date:   Thu Apr 24 20:35:41 2014 +0200

    On terminal resize, clear the alt screen with its own cursor.
    
    Currently the alternate screen get messed up on resize if it has
    different colors or mode.

commit 844c503c800e5e1db1e409f5db729431ee2e5c00
Author: noname <noname@inventati.org>
Date:   Wed Apr 23 23:12:45 2014 +0400

    Optimize tputtab.
    
    Before this patch executing
            printf '\e[10000000000I'
    or
            printf '\e[10000000000Z'
    resulted in long delay.

commit 1b0b9759dca9739da04f5c8a206b2f8ee5ed8b25
Author: noname <noname@inventati.org>
Date:   Wed Apr 23 23:12:36 2014 +0400

    Use != instead of ^ for logical values.
    
    sel.alt is only changed by
            sel.alt = IS_SET(MODE_ALTSCREEN);

commit 99d2d6007ace1d5558ee349224af275722fcc701
Author: noname <noname@inventati.org>
Date:   Wed Apr 23 23:12:29 2014 +0400

    Use BETWEEN macro in xsetcolorname and fix style.

commit fe31a3f6344b0a1dbe72540aad63812f1edb6c12
Author: Christoph Lohmann <20h@r-36.net>
Date:   Fri Apr 25 22:34:24 2014 +0200

    Conformity in the -g geometry handling.
    
    Thanks to Yuri Karaban for suggesting this!
    
    These changes make -g correspond to <cols>x<rows> and honor it so non-tiling
    window managers can work with the size hints afterwards. It also adds a -i
    flag to force the window size. This is needed so -g keeps being useful in dwm.

commit 6b7f63bac597ca03e18fe63ad522b4d1bded08d1
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Fri Apr 25 17:24:12 2014 +0200

    Simplify a bit more tdeletechar and tinsertblank
    
    The large and repeated expression used in memmove to indirect
    the line can be simplified using a pointer, that makes more
    clear where begins and where ends the movement.

commit 80b32af794b659cb15745cfb2a19fce0829c42c7
Author: noname <noname@inventati.org>
Date:   Wed Apr 23 02:08:13 2014 +0400

    Simplify tdeletechar and tinsertblank and fix memory corruption.
    
    Current CSI parsing code uses strtol to parse arguments and allows them
    to be negative. Negative argument is not properly handled in tdeletechar
    and tinsertblank and results in memory corruption in memmove.
    
    Reproduce with printf '\e[-500@'
    
    Patch also removes special handling for corner case and simplifies
    the code.
    
    Removed
            term.dirty[term.c.y] = 1
    because tclearregion sets dirty flag.

commit 16ac85bf5422a7e925743f6134572d3ac1a25188
Author: noname <noname@inventati.org>
Date:   Sun Apr 20 17:26:39 2014 +0400

    Style fixes in tscrollup.

commit fe527aa508851d83f166b8f50ae4c2ed5f1e4ec8
Author: noname <noname@inventati.org>
Date:   Sun Apr 20 17:26:50 2014 +0400

    Do not set dirty flag twice in tscrollup and tscrolldown.

commit 3afdb4ff04b45a5e4209a56d5073341c9d506b38
Author: noname <noname@inventati.org>
Date:   Sun Apr 20 17:26:13 2014 +0400

    Use tsetdirt in tscrollup and tscrolldown.
    
    tscrollup and tscrolldown do not use tsetdirt, but their code is
    equivalent to
    
            tsetdirt(orig, term.bot-n);
            tsetdirt(orig+n, term.bot);
    
    tclearregion also marks cleared lines as dirty.
    In tscrolldown it sets lines from term.bot-n+1 to term.bot dirty, and in
    tscrollup it sets lines from orig to orig+n-1 dirty.
    
    In both functions all lines from orig to term.bot are effectively set
    dirty, but in tscrolldown lines from orig+n to term.bot are set dirty
    twice, and in tscrollup lines from orig to term.bot-n are set dirty
    twice.
    
    These patches make it clear which lines are set dirty and sets them
    dirty once in each funciton.

commit f9dc374ea01c2921ec3bd1214f292a7036d069ae
Author: noname <noname@inventati.org>
Date:   Wed Apr 23 00:26:07 2014 +0400

    Fix techo handling of control and multibyte characters.
    
    techo compares signed char to '\x20'. Any character with code less then
    '\x20' is treated as control character.  This way characters with MSB
    set to 1 are considered control characters too.
    
    Also this patch makes techo display DEL character as ^?.
    
    To reprocuce the bug, enable echo mode using printf '\e[12l',
    then type DEL character or any non-ASCII character.

commit fa19f241a34deddf6e089ab462cbd9cb02f61b3d
Author: noname <noname@inventati.org>
Date:   Tue Apr 22 21:59:48 2014 +0400

    Make xrealloc and xstrdup style consistent.

commit df1810dd8fcb7a14f4cd2ff2ec3ce8780591f87f
Author: noname <noname@inventati.org>
Date:   Tue Apr 22 21:59:39 2014 +0400

    Use BETWEEN in tsetchar.

commit ed855ea432156cea5ca3c6c942392f97d4c3ab1d
Author: noname <noname@inventati.org>
Date:   Tue Apr 22 21:59:32 2014 +0400

    Use uint and uchar instead of unsigned int and unsigned char.

commit 68d97457ecf044bda62a37dd6158bbba4e28d7fe
Author: noname <noname@inventati.org>
Date:   Tue Apr 22 21:59:21 2014 +0400

    Remove argument names from function prototypes.

commit 49672dac7b40d27e140f5b6d6b3829c9c5f728ba
Author: noname <noname@inventati.org>
Date:   Tue Apr 22 21:59:14 2014 +0400

    Style fix in tdumpsel.

commit f21e47f44a11b9a24a5d5081fea46f5b5f02eadf
Author: noname <noname@inventati.org>
Date:   Tue Apr 22 21:59:01 2014 +0400

    Use BETWEEN in tinsertblankline and tdeleteline.

commit 87abc7cd596ca34a2e664f1c762f8b69b82eba40
Author: Christoph Lohmann <20h@r-36.net>
Date:   Tue Apr 22 19:22:58 2014 +0200

    It's 2014 now.

commit 138887033193389854a2cb748b8940793a7bfb6f
Author: noname@inventati.org <noname@inventati.org>
Date:   Sun Apr 20 13:08:09 2014 +0400

    move MODBIT to Macros section
    
    Patch moves MODBIT to macros section and uses it in tselcs.

commit 6b56cbf9cc597b529f244ee8fcb1cbbcc338c7b7
Author: noname@inventati.org <noname@inventati.org>
Date:   Sun Apr 20 15:41:40 2014 +0400

    misplaced parenthesis in LEN macro

commit 3269bf213d8fdbfb78e9eb1cc9eb677114508e57
Author: Markus Teich <markus.teich@stusta.mhn.de>
Date:   Sun Apr 20 13:15:40 2014 +0200

    remove confusing SERRNO macro
    
    I found the SERRNO Macro slightly confusing, since you have to look
    it up, if you don't know it already. A web search showed it does
    not seem to be any kind of standard. Also there was no reason in
    the commit log when it was introduced in 2009. As you can see it
    also leads to new patches, which don't use this macro (probably the
    author did not know about it).

commit 4ad2fc7f18c8a58d9f88d9a91fb4972849cfd964
Author: noname@inventati.org <noname@inventati.org>
Date:   Sun Apr 13 20:21:32 2014 +0400

    Simplify techo
    
    Remove special case for \e because it is handled well by "control code"
    case.

commit dc74c4f729a4350267f269c767aa6e377d8d4fbc
Author: noname@inventati.org <noname@inventati.org>
Date:   Sat Apr 5 20:54:01 2014 +0400

    typedefs instead of #defines
    
    Replaced #defines with typedefs where possible, patch attached.

commit b8d6171cb00c28e4c90e58e101554097003b59d3
Author: q@c9x.me <q@c9x.me>
Date:   Wed Apr 9 20:37:23 2014 +0200

    fix cursor handling when alt screen is disabled
    
    I don't like this alt screen thing, but when
    allowaltscreen == 0, the cursor is still saved
    and restored after calling 'less' (or 'man').
    
    This patch makes allowaltscreen == 0 usable.

commit ebb6e03201ce0e5a00be7cff2e365ad3d6cb7195
Merge: 3cb8084 f27b44b
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Tue Apr 15 08:11:47 2014 +0200

    Merge remote-tracking branch 'origin/master' into omaster

commit f27b44b7c271bda4ad3a0c4043bb709e0a4e4fbb
Author: Christoph Lohmann <20h@r-36.net>
Date:   Fri Apr 11 18:11:25 2014 +0200

    Removing two unnecessary gettimeofday().

commit 3cb80840dbf9add2b5f9c26da9650da39e34906d
Author: Toaster Toaster <toaster23456@gmail.com>
Date:   Mon Apr 7 10:53:59 2014 -0700

    Increment XSync consistency
    
    This patch cleans up a style inconsistency.

commit c46d929fe18e4a3c9c41101eafa7a9668c8c8830
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Fri Apr 11 15:08:37 2014 +0200

    Fix Backspace and Delete characters
    
    Backspace key must generate the backspace character (\010) and
    Delete key must generate the delete character (\0177). In
    some systems the kernel configuration for erasing previous character
    is \0177, so some programs (for example cat, ed, mail, ...), can not
    understand the correct meaning of backspace. In this cases it is only
    needed this command:
    
            stty erase 

commit 0baf2d8be57d93a86973c8363df4ea3f3e641925
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Apr 5 20:40:11 2014 +0200

    0.5 release.

commit 62f9142478d58185fee74f41055978f708bffa46
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Apr 5 20:39:46 2014 +0200

    Updating the TODO in preparating for 0.5.

commit a495fce128a887275d455c09c37b3882e909f962
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Apr 5 20:34:57 2014 +0200

    There is no need for a full dirt redraw.

commit 6f4cfa5136d354f3901871b71e460ba9f0f182a3
Author: Christoph Lohmann <20h@r-36.net>
Date:   Wed Apr 2 09:26:28 2014 +0200

    Fixing a compiler warning with the assignment.

commit 672e4e4b03d8987103020d399b2c05c95a9ea2f8
Author: Rafa Garcia Gallego <rafael.garcia.gallego@gmail.com>
Date:   Wed Mar 26 23:58:27 2014 +0100

    Fix segfault when pressing PrintScr without a selection

commit 45b808b88ee63f21a188800ba3473a24a3c4b987
Author: Damian Okrasa <dokrasa@gmail.com>
Date:   Tue Mar 25 20:20:26 2014 +0100

    new utf decoder
    
    This patch replaces current utf decoder with a new one, which is ~50
    lines shorter and should be easier to understand. Parsing 5 and 6
    sequences, if necessary, requires trivial modification of UTF_SIZ
    constant and utfbyte, utfmask, utfmin, utfmax arrays.

commit 71328cbcdc88f4fdfbb62d8c0324938e245c8971
Merge: 85f8a41 1584956
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Mon Mar 10 15:16:26 2014 +0100

    Merge branch 'master' of ssh://suckless.org/gitrepos/st

commit 85f8a414be21ed4d7df153763a1cf679814c72cd
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Sat Feb 1 11:11:11 2014 +0100

    Add terminfo entries for printer
    
    These capabilities inform to programs how print in local printer
    of the terminal.

commit 78f8843bc7d6dc731f23d5ff3a8536fdcc5e4be6
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Sat Feb 1 13:41:58 2014 +0100

    Add sequence for printing the current selection
    
    This is very usefull in order to can select what is sent
    to the plumber.

commit 96c230e476a4fb446a8fa8d651c88fda32cd5427
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Fri Jan 31 23:05:42 2014 +0100

    Add key definition for printer sequences
    
    These new combinations generate the same behaviour (basically) of
    vt102. It is a good way of communicating st with other programs.
    
    [0] http://www.vt100.net/docs/vt102-ug/chapter2.html

commit 6166a1afc8c7875ce9ba62e5001040014269a26d
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Fri Jan 31 22:25:51 2014 +0100

    Add MC for the full screen
    
    This sequence is very useful because allows comunicate the content
    of the terminal to another program.

commit cf332a325dafe7e9ed6d87df9dcec29149c5042c
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Fri Jan 31 21:53:53 2014 +0100

    Add MC for a single line
    
    This sequence print the current line. It is different to the
    'printer on' sequence, where all the characters that arrive to the
    terminal are printer. Here only the ascii characters are printed.

commit 1584956a60f7739e46c5a0cd0e0e8295aa26071c
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Mar 1 11:04:03 2014 +0100

    Style cleanup.
    
    Add some note about the main reason why st is still that big.

commit d2ec39f0ef4b9d7f291aeba548a56144fce8a42f
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Mar 1 09:22:57 2014 +0100

    Style matters.

commit 1f0d981bd7a1450ddfae3591c6e457253b3a6842
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Fri Jan 31 20:57:09 2014 +0100

    Add MC sequence
    
    This sequence control when the printer is enabled or disabled. This
    sequence control the behaviour of the -o option.

commit cdb3b1892af40110660da8c3f6fc06b1b054fd12
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Sat Feb 1 11:12:47 2014 +0100

    Add xstrdup function
    
    Since we are using xmalloc, xrealloc ..., then it is not logical
    call directly to strdup.
    
    Signed-off-by: Roberto E. Vargas Caballero <k0ga@shike2.com>

commit 315b7ee9ce13603339104cab0402d7d6c10e92b8
Merge: 6521b5d c2026a4
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Tue Feb 4 11:46:45 2014 +0100

    Merge remote-tracking branch 'origin/master'

commit c2026a495097a7e3bcfe4b58e1b9e393433cf150
Author: Christoph Lohmann <20h@r-36.net>
Date:   Mon Feb 3 20:54:25 2014 +0100

    Removing the w3img support.
    
    The patch to add w3img support destroys our way to handle fps and so stop
    wasting resources on fast scrolling. Due to w3img being a hack to display
    images in an ugly way, is there no need to support this. Use some real way to
    display images.

commit 6521b5dc32d9bdc4d8826324cb7b2877910cc633
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Fri Jan 31 17:30:00 2014 +0100

    Remove non defined behaviour in selcopy
    
    It is not defined when lateral effects of expressions are
    calculated, so an expression as:
    
            --last >= gp && !(selected(last - gp, y)
    
    is non portable.

commit a8d5870073af14aa08032ab8520c5fe17bb8a1e8
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Fri Jan 31 17:04:18 2014 +0100

    Remove duplicated code in strhandle
    
    The error condition was duplicated in two different switches.
    This new version centralized the error handling in only one place.

commit 21d905c076735783b41eec55f31d933129fd9f22
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Fri Jan 31 16:54:58 2014 +0100

    Make Shift+Home equal to CLS in ascii mode

commit 9523233e257f72d07abdf3b07e5fd9ce0c7f31d0
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Fri Jan 31 14:18:25 2014 +0100

    Make CONTROL + DELETE delete a line
    
    If CONTROL + INSERT inserts a line then it seems natural CONTROL + DELETE
    removes a line.

commit d2173cd7162f89df4acaf9da8a30b5e5c0f2b9ab
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Fri Jan 31 12:23:53 2014 +0100

    Fix SHIFT+DEL definition
    
    The AppMode and AsciiMode were inverted in the definition of this
    combination.
    
    Signed-off-by: Christoph Lohmann <20h@r-36.net>

commit 95591001306dc5c6b57f46155bd3e2b919114ea6
Author: Eric Pruitt <eric.pruitt@gmail.com>
Date:   Sun Jan 19 10:48:35 2014 -0600

    Use character scaling in XCopyArea

commit c0a56ef4be2a0f84360f41b2d45964e7ef297746
Author: Amadeusz Sławiński <amade@asmblr.net>
Date:   Sat Jan 11 12:54:36 2014 +0100

    Make w3mimgdisplay work with st
    
    Before this patch draw() calls drawregion which calls xdraws and then
    updates whole window in one call thus overdrawing anything drawn by
    w3mimgdisplay. After moving XCopyArea to xdraws it only updates the
    regions which are being updated by XftDraw* functions. It may do a few
    more calls to XCopyArea with this patch.
    
    Signed-off-by: Amadeusz Sławiński <amade@asmblr.net>

commit 9df9a4723dedf4f5e12c954376c4931a6976b918
Author: Amadeusz Sławiński <amade@asmblr.net>
Date:   Fri Jan 3 15:24:24 2014 +0100

    Fix truecolor escapes, when both bg and fg are set
    
    for example
    echo -e "\e[48;2;255;0;0m\e[38;2;0;0;255m test "
    should render on red bg with blue fg
    
    also now elinks works correctly when using 'truecolor' option
    in preferences
    
    Signed-off-by: Amadeusz Sławiński <amade@asmblr.net>

commit e8dba89164fe70647a413b8568b545ff2d887a78
Author: Eon S. Jeon <esjeon@hyunmu.am>
Date:   Tue Dec 17 15:14:19 2013 -0500

    query pixel size from matched font
    
    Sorry for another duplicated mail. I found the patch is malformed
    significantly. I've been away from my laptop for a while, so I'm quite
    unfamiliar with the settings on this system...

commit 33da67dac035b0d592f984bce90aec8d815b38a8
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Wed Dec 18 08:29:28 2013 +0100

    Update arg.h from sbase
    
    sbase did some interesting modifications to arg.h (basically it
    was fixed an incorrect use of the _ namespace), and this commit
    take this last version for st.

commit d60ee7337b5f378d8858ef3774c5552d2c8e54fa
Author: Eon S. Jeon <esjeon@hyunmu.am>
Date:   Tue Dec 17 12:45:38 2013 -0500

    Prevent resizing stdin
    
    This fixes a bug that the parent tty gets resized whenever you launch
    st through command line.
    
    The problem was that ioctl was resizing cmdfd before it gets
    initialized in ttynew. Since cmdfd is a global variable, its initial
    value is 0, and consequently stdin was being resized.

commit ef1dc9fc4bdfcd944b054c329bb5d51b8c52eb5c
Author: Mark Edgar <medgar123@gmail.com>
Date:   Sun Oct 20 19:16:33 2013 +0200

    Replace alignment tabs with spaces.

commit 6162d631517c892ec76663f6ac2b8e4d109fe2d4
Author: Mark Edgar <medgar123@gmail.com>
Date:   Sun Oct 20 18:18:00 2013 +0200

    Fix comments in config.def.h to match field names.

commit fb8e3f67f7ca86e8118c731ed510345112a6d9d8
Author: Mark Edgar <medgar123@gmail.com>
Date:   Sun Dec 15 16:45:51 2013 +0100

    Fix definition of F28 key.
    
    Shitf modifier adds 12 to the function number of the function keys,
    while Control adds 24, so Control + F4 generates F28

commit 39f28b18b76b9dc8353ae399cb8a99f13f9de2c2
Author: Eric Pruitt <eric.pruitt@gmail.com>
Date:   Wed Dec 11 07:10:08 2013 -0600

    Set _NET_WM_PID attribute

commit 2738592de6d1b53e1f5aa896c8fd3bb5a4204749
Author: Eric Pruitt <eric.pruitt@gmail.com>
Date:   Fri Dec 6 09:22:37 2013 -0600

    Fix rmul definition
    
    rmul means "exit underline mode", so a full reset of all
    the attributes is not the correct way of exiting from
    underline mode, because it is going to modify also another
    attributes not related.

commit 08a3eea571f8e81b6820c18d30f9264b6ee6e08b
Author: René Rietz <rrietz@informatik.tu-cottbus.de>
Date:   Mon Nov 25 16:06:22 2013 +0100

    Add stdint include
    
    Since st is using now int32_t and uint32_t the inclusion of
    stdint or inttype is mandatory, because in other case the
    definition of these new types will not be known by the
    compiler.

commit 53474391bcf2122921d27356a70e6da3c78d058e
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Mon Nov 25 14:09:53 2013 +0100

    Fix stupid bug in tdefcolor returning -1 in unsigned function
    
    k0ga misktook applying patch of others. Sorry guys!!!!

commit 1fe0a5f39a8755da4cd16e92f2ea00676d9ee3ca
Author: Johannes Hofmann <johannes.hofmann@gmx.de>
Date:   Sun Nov 24 10:20:45 2013 +0100

    Use int instead of long for color
    
    This patch replaces long by int32_t. It saves
    some memory on 64bit systems.

commit 4435e0ee6791136e641d58ce6cf00f8665fe3065
Author: Carlos J. Torres <vlaadbrain@gmail.com>
Date:   Fri Nov 22 10:45:48 2013 -0500

    add _NET_WM_NAME

commit 7263820759aa914b27ab3097613bdf22432ed736
Author: Mark Edgar <medgar123@gmail.com>
Date:   Sat Oct 19 15:13:13 2013 +0200

    Simplify logic in kmap().

commit 1fa27b93f9a78ee78a35a5449bb8c4d0c3ef0f1b
Author: Mark Edgar <medgar123@gmail.com>
Date:   Sat Oct 19 14:56:40 2013 +0200

    Simplify logic in match().

commit 3d3c37bc70042cd2f4bbc8f6ea5fceb2311f0a32
Merge: 297c886 489982d
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Mon Oct 28 19:18:24 2013 +0100

    Merge remote-tracking branch 'origin/master' into omaster

commit 489982d4b8442af25a380f8c22be542055cda81f
Author: Rob Pilling <rob@egbert>
Date:   Wed Jun 19 21:24:01 2013 +0100

    Fixed lock up when system time jumps backwards
    
    Signed-off-by: Christoph Lohmann <20h@r-36.net>

commit 297c886b72f4e9093973aaa14b66d392f6196634
Author: Mark Edgar <medgar123@gmail.com>
Date:   Sun Sep 22 00:07:49 2013 +0200

    Ignore numlock (Mod2Mask) for button events too.
    
    Conflicts:
            config.def.h
            st.c

commit 0f6942cdf6f8220f1ecd06e4b398e95c43833d44
Author: Mark Edgar <medgar123@gmail.com>
Date:   Sun Oct 6 12:19:12 2013 +0200

    Avoid buffer overrun in bpress()
    
    Use correct type for Mousekey.b (XButtonEvent.button).

commit 8e577322a3a55abf2f8226218ec87a7eec7fc3b1
Author: Mark Edgar <medgar123@gmail.com>
Date:   Sat Oct 5 11:49:35 2013 +0200

    New ttysend() function calls ttywrite() and techo(). Honor MODE_ECHO when pasting in selnotify().

commit 939e149544e4da958c333f3b6d00991d459c2e34
Author: Mark Edgar <medgar123@gmail.com>
Date:   Sat Oct 5 11:45:44 2013 +0200

    Avoid buffer overrun in kpress() and remove limit on shortcut strings.

commit 02ae3ce6fdc178ca6eb9b10b6447bb56a6513a27
Author: Mark Edgar <medgar123@gmail.com>
Date:   Sat Oct 5 11:45:17 2013 +0200

    Simplify Mod1 logic in kpress(), eliminating locals and a memcpy.

commit 7a4eefe87cb7661c8a77286d05b6c3afb467f806
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Tue Oct 1 21:23:11 2013 +0200

    Add support for multiple charset definitions
    
    vt100 has support for two defined charset, G0 and G1. Each charset
    can be defined, but in each moment is selected only one of both
    charset. This is usually used selecting a national charset in G0
    and graphic charset in G1, so you can switch between graphic
    charset and text charset without losing the national charset
    already defined.
    
    st hasn't support for national charsets, because it is an utf8
    based terminal emulator, but it has support for graphic
    charset because it is heavily used, but it only supports G0,
    without understanding G1 selection sequences, which causes some
    programs in some moments can print some garbage in the screen.
    
    This patch adds a fake support for multiple charset definitions,
    where we only support graphic charset and us-ascii charset, but
    we allow more of one charset definition.
    
    This patch allow define G0 until G3 charsets, but only accepts
    select G0 or G1, and it accepts some national charset definitions
    but all of them are mapped to us-ascii.

commit c5c2365ab7c7ac2671b6e7d31cc9b0d41636393c
Author: Christoph Lohmann <20h@r-36.net>
Date:   Wed Oct 2 21:06:50 2013 +0200

    People, learn to keep to styles. Thanks.

commit 62ab938965f2673e029ae2e2a4244788e673bd70
Author: Mihail Zenkov <mihail.zenkov@gmail.com>
Date:   Tue Oct 1 20:02:24 2013 +0200

    Fix save/restore cursor
    
    st was assuming that save/restore cursor position was independent
    of the screen that was shown in each moment, but it is not true,
    because each screen has a different save/restore buffer. This
    patch fixes it.

commit 2b1bc8087f232a7b0ba4c7233e76be7abae25a88
Author: Mihail Zenkov <mihail.zenkov@gmail.com>
Date:   Tue Oct 1 20:01:15 2013 +0200

    Add DSR cursor position sequence

commit eeae9b0ceef9e2fec4cb4f1132748c302e5ac702
Author: Maurice Quennet <mjq@gmx.net>
Date:   Sat Sep 21 23:33:56 2013 +0200

    Fix core in multi-line selection on OpenBSD
    
    OpenBSD 5.3 amd64 release version with the most current st
    version from git, crash and dump core when selecting multiple
    lines whith the cursor.  This happens, because on line 964
    of st.c (gp-1)->mode is accessed, although gp is still
    pointing at the beginning of the array term.line[y] (see
    line 939 for initialization of gp).

commit 8ac0a5f872b0024bab161fa020126013724758ba
Author: Egmont Koblinger <egmont@gmail.com>
Date:   Mon Sep 23 09:22:47 2013 +0200

    Add bracketed paste mode
    
    This patch enables bracketed paste mode (
    http://invisible-island.net/xterm/ctlseqs/ctlseqs.html#Bracketed%20Paste%20Mode
    ).
    
    It's mainly useful for text editors to disable line wrapping and auto
    indentation when text is being pasted, rather than typed from keyboard.
    
    On the emulator side, it is supported by at least xterm, urxvt,
    gnome-terminal, putty, iterm2; and I have a patch for konsole.
    
    On the application side, vim can be configured easily to handle this, and
    I have pending patches for mcedit and joe. Probably many others also
    support it.

commit eae31a532e1c3249abe3fe0dbce286cac263832f
Author: Michael Forney <mforney@mforney.org>
Date:   Thu Jul 25 16:19:19 2013 -0700

    Fix some bugs in mouse tracking logic
    
    * Button number in X10 mode:
    
      I believe the button - 1 came from "C b is button - 1" from [0].
      However, above this section, it states
    
        "Normally, parameters (such as pointer poisition and button number)
         for all mouse tracking escape sequences generated by xterm encode
         numeric parameters in a single character as value+32. For example, !
         specifies the value 1."
    
      Also, from the description of SGR,
    
        "The encoded button value in this case does not add 32 since that
         was useful only in the X10 scheme for ensuring that the byte
         containing the button value is a printable code."
    
      This suggests that we should still add 32 to the button value when in
      MODE_MOUSEX10.
    
    * No button release reporting in X10 mode:
    
        "X10 compatibility mode sends an escape sequence only on button press,
         encoding the location and the mouse button pressed."
    
    * Fix MODE_MOUSEMOTION:
    
      Currently, motion reporting is skipped when oldbutton == 3
      (corresponding to no button being pressed). However, oldbutton is
      only set on a button press, which will never be 3.
    
    [0]: http://invisible-island.net/xterm/ctlseqs/ctlseqs.html

commit cc2ea3147accc342f4d411b42c8cae5b883b1224
Author: Christoph Lohmann <20h@r-36.net>
Date:   Thu Sep 12 20:52:10 2013 +0200

    Default volume of the bell is 0.

commit bef599bb279e6c9b08853ceebefade066e362c48
Author: Roberto E. Vargas Caballero <rvargas@bsccs347.bsc.es>
Date:   Thu Sep 12 20:41:34 2013 +0200

    Add audible bell
    
    \a is the character for bell, and st is only marking the window as urgent
    if it is not active. This patch adds an audible bell which can be disable
    with bellvolume variable.
    
    Signed-off-by: Christoph Lohmann <20h@r-36.net>

commit 210dda9570095443bac887c2bfcd75f2bcc23780
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Sep 7 12:41:36 2013 +0200

    Wide character support.
    
    Thanks "Eon S. Jeon" <esjeon@hyunmu.am>!

commit a4358a1fbd1c71269129404c9af4f539b2d7627c
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Sep 7 12:29:44 2013 +0200

    Adding some contributors. Thanks to you all!

commit 4245ba0d12a330b3e54c6498e88024d90956ae34
Author: Mark Edgar <medgar123@gmail.com>
Date:   Mon Aug 26 00:10:47 2013 +0200

    Correctly initialize altscreen when defaultbg is not 0.
    
    The alternate screen is not properly initialized when st starts. To see
    this, set defaultbg in config.h to anything other than 0 (for example, swap
    defaultfg and defaultbg), and run:
    
    ./st -e sh -c 'tput smcup; read'
    
    You should see that the top-left 80x24 rectangle is black (or whatever
    colorname[0] is), while the rest of the screen (if any) has the desired
    colorname[defaultbg] color.
    
    The attached patch fixes this by initializing term.c.attr in tnew() before
    calling tresize(). It also removes the unnecessary xcalloc() calls, which
    misled me on this bug hunt since it is really tclearregion() which
    initializes term.lines and term.alt in tresize().

commit f3d438b1015a031bc543bb2d65c81cc2329787d4
Author: Eon S. Jeon <esjeon@hyunmu.am>
Date:   Sun Aug 11 06:42:30 2013 -0400

    Regarding commit 7e3cff3
    
    Hello.
    
    I reviewed and tested commit 7e3cff3, and made a patch that fixes some
    problems in it.
    
    1. There's a semicolon after an if statement, which is obviously a
    typo.
    
    2. The current way of calculating text position in "xdraws" yields
    inconsistent results in some cases. This is due to the use of
    "font->width", which varies. Instead, "xw.cw" has to be used as the
    character width.
    
    Sincerely,
    Eon

commit 587bc939f63b49c6155c4f1fdf97e73380207446
Author: Christoph Lohmann <20h@r-36.net>
Date:   Thu Aug 22 19:32:49 2013 +0200

    Tmux is using C-b by default.
    
    Thanks for noticing Fidel Barrera Cruz!

commit 8d21ced08527e79489f37b7a4ad19355bca2207c
Author: Christoph Lohmann <20h@r-36.net>
Date:   Tue Aug 20 18:18:48 2013 +0200

    Correcting the bitmask value check.

commit 457969381869f9f3ecbb462bf40f053f2a748a02
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Mon Aug 12 15:25:18 2013 +0200

    Add terminfo definitions for terminals with meta key
    
    Some programs don't check the value of km and use smm and rmm
    capabilites, and they cause the terminal change to meta enabled
    mode even in cases where is not desirable.
    
    Allmost all people is using the terminal waiting that meta sends
    escape, so rmm and smm are not needed. If someone needs meta
    sets 8 bit he can use the correct terminfo definition in TERM.

commit 347a45c35299c94e97c976b6e1df383dc2b8fbda
Author: Eon S. Jeon <esjeon@lavabit.com>
Date:   Mon Aug 5 16:37:59 2013 -0400

    Fix signess of tdefcolor
    
    tdefcolor() returns -1 on error, while its return type is
    unsigned long. At the same time, line 1724 and 1731 are checking the
    positivity of its unsigned return value.

commit 22eeda56b7c1532773343811dee1f76c0999d01c
Author: Alexander Sedov <alex0player@gmail.com>
Date:   Mon Jul 29 11:50:44 2013 +0400

    Fixed memory leak in xsettitle().

commit 86c03ddc82d2f9f84f22f79741e13ade0e0b8cd1
Author: Michael Forney <mforney@mforney.org>
Date:   Thu Jul 25 16:24:16 2013 -0700

    Fix blink mode check
    
    ATTR_BLINK is an attribute for a Glyph and will not be set in term.mode.

commit 7e3cff33ffbd69a112fa4071a9f0ed2dc93bfc57
Author: Eric Pruitt <eric.pruitt@gmail.com>
Date:   Mon Aug 5 11:33:37 2013 +0200

    Use character size scaling factors
    
    The bounding boxes for characters can be scaled using "cwscale" and "chscale"
    to scale the width and height respectively.

commit aaee0e8b28a353c215b6d1c8fc06d20038d7b426
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Sat Jul 20 21:52:40 2013 +0200

    Reload colors in reset
    
    Colors definition can be changed using a OSC sequence, so
    we have to reload them if we want be sure all the colors
    are the correct.
    
    Could be desirable free the colors allocated due to rgb
    colors and inverse colors (XftColorAllocValues in xdraws),
    but it is impossible due we use the same structure for all
    of them.

commit 8dde8cde41caa311718d2b990ea3356272ee25ee
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Fri Jul 19 20:34:36 2013 +0200

    Add RGB color definition
    
    This patch uses the bit 24 in the color descriptor as an indicator
    of RGB color, so we can take the values and generating the XftColour
    directly in xdraws.

commit 33ad83d49213749f4fcec850327f57a33ca8b921
Author: Eon S. Jeon <esjeon@lavabit.com>
Date:   Fri Jul 19 01:07:02 2013 -0400

    Improved font caching
    
    I made a patch that improves the performance of font caching mechanism.
    This is based on a funny behaviour of FontConfig: it was handling
    FcCharSet in a somewhat unexpected way.
    
    So, we are currently adding "a character" to a new FcCharSet, and then
    add it to a FcPattern. However, if we toss the FcPattern to FontConfig,
    it loads the entire language(charset) that contains the character we
    gave. That is, we don't always have to load a new font for each unknown
    character. Instead, we can reused cached fonts, and this significantly
    reduces the number of calls to extremely slow FontConfig matching
    functions.
    
    One more thing. I found that, in libXft, there's a function called
    XftCharExists. XftCharIndex internally calls this function, and
    does more stuffs if the character does exist. Since the returned index
    is never used in st, we should call XftCharExists instead of
    XftCharIndex. Please note that I already made this change in the patch.

commit 40e4d76d227d9c517054036f546acd49431bca42
Author: Markus Teich <markus.teich@stusta.mhn.de>
Date:   Sat Jun 22 23:07:00 2013 +0200

    fix: whitespace

commit fbc589d50603e8b0de9239e4800e227ab5d0ea69
Author: Alexander Sedov <alex0player@gmail.com>
Date:   Sun Jun 23 21:05:29 2013 +0400

    Remove long text being cropped/wrapped to standard 80x24 on launch.
    
    To be more specific, now tty creation is delayed until X window is
    actually mapped; last ConfigureNotify before mapping determines
    initial tty size.
    Please report problems if there are any.

commit 6fc471ccc660b305cf836dcb8d57cdbffb4ed017
Author: Markus Teich <markus.teich@stusta.mhn.de>
Date:   Sat Jun 22 23:06:49 2013 +0200

    fix: consistent usage of bitmask operations on unicode functions

commit 8b602a37a65a3c001bd9334d8b1cfc17fc5dd45c
Author: Markus Teich <markus.teich@stusta.mhn.de>
Date:   Sat Jun 22 23:05:03 2013 +0200

    fix: do not need an extra variable for a single read

commit 6e1c7c8afce3a0e6f896231a3155a27543d261e5
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Sun Jun 23 10:33:53 2013 +0200

    Fix match function bugs
    
    There were two problems with match denfinition.
    
    1) There was a forward declaration in the form:
    
            static inline bool match(uint, uint);
    
    but later the function was defined as:
    
            inline bool
            match(uint mask, uint state) {
    
    This causes that there were two different functions in the code, one local
    and inline, and other inline but extern. All was working without problems
    due to we were using -Os, and the compiler was using the extern definition
    and it was no expanding the static declaration. If you removed the -Os flag,
    then you got linker errors due it was no able to find the static definition
    of the static declaration.
    
    2) The mask checking was incorrect because we were doing the test:
    
            (state & mask) != state
    
    and this test only was saying that at least all the enabled bits of state
    were enabled also in mask, but no all the possible bits in mask. This was
    the origin of the bug reported by Xavier Cartron, where he said it was
    possible activated some shortcuts with some of the modifiers defined in the
    config.h file.

commit 90c6f055b637a58da0381a21b4a290ce26f56d8f
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Sun Jun 23 12:13:26 2013 +0200

    Remove unneded call to draw
    
    draw is the function which update the Xwindow with the information st has,
    and it is designed in a way that it must be called once in the main loop
    (run function), and calling it in other places it is a waste of time.

commit ebbac77d7416d365a2a33f159780ef0f06cc3351
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Sun Jun 23 12:09:19 2013 +0200

    Fix selection clearing
    
    The way st knows if there is a selection activated is checking if sel.ob.x
    is equal to -1. In some parts of the code the way of disabling the selection
    was only setting it to -1, but after it you can't be sure if the selection
    is clearing from the terminal representation, because it is necessary mark
    all the lines affected by the selection as dirty. Already there is a functon
    which perform this task, selclear.

commit 7af030c999ba87cad2f3155bb9f58bf2854ad2bb
Author: Markus Teich <teichm@fs.tum.de>
Date:   Sat Jun 22 16:22:41 2013 +0200

    fix PageUp Modifier Mask in config.def.h
    
    Signed-off-by: Christoph Lohmann <20h@r-36.net>

commit 5d3318c0c734a1d65e78ed4ce103b4517be8ec3b
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sun Jun 9 15:52:35 2013 +0200

    Fixing title setting with the title argument.

commit 369734c80c6e5049d704a00f436c59ecf4dafae8
Author: Christoph Lohmann <20h@r-36.net>
Date:   Thu Jun 6 19:09:18 2013 +0200

    Adding xterm behaviour to setting the title.
    
    Thanks Airwave!

commit 2cf4f366d615a4e5ed199f90e6cdb7741606a38e
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Jun 1 14:39:13 2013 +0200

    Bumping up the xfps so mouse motion won't reap the CPU.

commit 7530694987596642b0b83db1c4a61f2794c20397
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Jun 1 14:37:30 2013 +0200

    Adding true mouse motion support.

commit d743b93fdaee4900052a94b37c24073008888002
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Jun 1 13:17:20 2013 +0200

    This is a shorter bit handling in MODE_MOUSE.

commit 317b7859210c187f898ddbc8ec0cc50885f340bc
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Jun 1 13:13:01 2013 +0200

    Add some comments about the other mouse reporting modes.

commit 405fd89ac1d333be79325417c973a07ccad67453
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Jun 1 13:06:53 2013 +0200

    Implementing mouse focus and all events.

commit 8315dc417982936186837edfac24420d0d0e516e
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Jun 1 12:23:55 2013 +0200

    Fixing bad highlighting on first SNAP_WORD multiline select.

commit b5144100a59956b5bf69614a077bd4d252d7dc6c
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sun May 26 16:10:22 2013 +0200

    Fixing the selection in a single line again.
    
    Thanks p37sitdu@lavabit.com!

commit 8f1bef05025c0052603f7ca30552a43395b4c13f
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sun May 26 13:07:26 2013 +0200

    Fixing the selection scrolling and the selection naming.
    
    Thanks p37sitdu@lavabit.com!

commit 8f47c4a4dea7272d72833d2ae26eacc3896d8f5c
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat May 11 21:59:55 2013 +0200

    Lazy font unloading too.

commit 62502a88e94dd908fdd4418899afdd09a4de3bea
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat May 11 08:54:26 2013 +0200

    Lazy fontset loading.
    
    Thanks Johannes Hofmann <Johannes.Hofmann@gmx.de>!

commit 678eff6e1882a888deda5e4e429df42c39b604fe
Author: Christoph Lohmann <20h@r-36.net>
Date:   Mon May 6 19:50:14 2013 +0200

    Removing an old select() regression.

commit 8e968739c3cfc4e9f7088a9ea360bc4f37e9ad9f
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat May 4 19:04:20 2013 +0200

    Allow more complex delimiters for word selections.
    
    Thanks Alexander Rezinsky <alexrez@gmail.com>!

commit 0c2b513d01697aea20bb4a2a144b55e72c625e86
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat May 4 19:00:32 2013 +0200

    Expand the last line with '\n' in case of overselection.
    
    Thanks Alexander Rezinsky <alexrez@gmail.com>!

commit 634c247fa76a5f649cdcc51109970e46ddaf5c32
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat May 4 08:05:11 2013 +0200

    Select to the end of row if end of line is reached.
    
    Thanks Alexander Rezinsky <alexrez@gmail.com>!

commit 5938fa9d32379815757a83076069584f29a8d276
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat May 4 08:01:17 2013 +0200

    Better comments for the snapping code.

commit 8618386de947a1e2d0b449d6f60fde478e931ecb
Author: Christoph Lohmann <20h@r-36.net>
Date:   Wed May 1 13:14:46 2013 +0200

    More stable blinking.

commit e1458ef467f1164fa3ca51e64e3c768c8c69b346
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sun Apr 28 21:32:42 2013 +0200

    Explaining blinking for the dummies.

commit 911ba5674bc4eb53a2ed548856a50032c39ca7f2
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sun Apr 28 18:14:15 2013 +0200

    Selection snapping is now considering wrapping.
    
    Thanks Alexander Rezinsky <alexrez@gmail.com> for mentioning this!

commit a53017c8b47f511cf0462ac910cf9223a31ceb2f
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sun Apr 28 17:42:30 2013 +0200

    Add a possibility to modify the string sent by mouse buttons.
    
    Thanks Alexander Rezinsky <alexrez@gmail.com> for the suggestion!

commit a77b01176a34de741485024e5e36002cff3c1124
Author: Christoph Lohmann <20h@r-36.net>
Date:   Fri Apr 26 18:55:40 2013 +0200

    Be more efficient in blinking.

commit 1e09726518b84091e80dfaf96632c122f6f446a6
Author: Christoph Lohmann <20h@r-36.net>
Date:   Fri Apr 26 18:41:54 2013 +0200

    Enable blinking in st.

commit 1b2751f5c24ca06afbb68e41e73fc9fce6c6b521
Author: Christoph Lohmann <20h@r-36.net>
Date:   Thu Apr 25 06:28:11 2013 +0200

    Fixing the selection handling to allow one char selection.
    
    Thanks Alexander Sedov <alex0player@gmail.com> for suggesting the fix!

commit 0851f2be2ab48ee3a67ef2287c09bd67622dcd8e
Author: Christoph Lohmann <20h@r-36.net>
Date:   Wed Apr 24 21:30:59 2013 +0200

    Fixing the selection issue in altscreens.

commit 011c0f9e5bb87838afa90f2a33ba68920681e3ce
Author: Alexander Sedov <alex0player@gmail.com>
Date:   Wed Apr 24 02:34:59 2013 +0400

    Removed redundant check in draw code.
    
    We're now clearing empty areas with spaces, so there is no point to check
    if character contains non-empty string.
    
    Signed-off-by: Christoph Lohmann <20h@r-36.net>

commit 048c54fd5b275ac54d7819020485b77e99fcc469
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Tue Apr 23 20:34:52 2013 +0200

    Fix selecting clearing and BCE
    
    The commit b78c5085f72 changed the st behaviour enabling BCE capability,
    that means erase regions using background color. Problem comes when you
    clear a region with a selection, because in this case the real mode of the
    Glyph is not the value of term.line[y][x], due in drawregion we had enabled
    the ATTR_REVERSE bit.
    
    Signed-off-by: Christoph Lohmann <20h@r-36.net>

commit 6b03bb769a105f797bce40aa0258cf035266e7bf
Author: Christoph Lohmann <20h@r-36.net>
Date:   Tue Apr 23 19:37:28 2013 +0200

    Now clipping is more clear.

commit db6f796ecfafcee879613b60a772be3e5d9e355e
Author: Christoph Lohmann <20h@r-36.net>
Date:   Tue Apr 23 19:17:50 2013 +0200

    Removing the overdrawing of some fonts.

commit 7ea68632081e5adc2f0d2681ac89ed5decfac7b9
Author: Christoph Lohmann <20h@r-36.net>
Date:   Tue Apr 23 15:38:48 2013 +0200

    Yes, rs2 != is2.

commit 8037dac847b1006f1ba94a9aa2c7ef3ba72690e5
Author: Christoph Lohmann <20h@r-36.net>
Date:   Tue Apr 23 15:33:21 2013 +0200

    There is no 8bit by default and reset 8bit too.

commit 2bd6afd1c9eb341d9e2c5d89bc16bb7758691e1f
Author: Christoph Lohmann <20h@r-36.net>
Date:   Tue Apr 23 15:22:14 2013 +0200

    Implementing 8 bit mode for meta.

commit b596d6ba3c50bc379adc298a4e2ba7c122b116ab
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sun Apr 21 13:01:16 2013 +0200

    Adding wrap handling in selection.

commit 872a7f18eaffd96eefb31e3dcb45fd86bc67029b
Author: Alexander Sedov <alex0player@gmail.com>
Date:   Mon Apr 15 10:28:31 2013 +0400

    Added support for double/triple click+dragging.
    
    Now double-click+dragging automatically snaps both ends to word boundaries
    (unless on series of spaces), and triple-click selects whole lines.
    As a side effect, snapping now occurs on button press, not button release
    like it previously was, but I hope that won't be inconvenient for anyone.
    
    Signed-off-by: Christoph Lohmann <20h@r-36.net>

commit 3c546ae73924804ddc6d29dc3ab2f12a93287009
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Apr 20 15:29:39 2013 +0200

    0.4.1 release.

commit 645c1b0afccf14a5bcdf754475516554437599ca
Author: Christoph Lohmann <20h@r-36.net>
Date:   Fri Apr 19 21:11:29 2013 +0200

    Making st compile on OpenBSD again.

commit e5ff746430725b05e223c454febbde949df2fde2
Author: Alexander Sedov <alex0player@gmail.com>
Date:   Thu Apr 18 12:47:23 2013 +0400

    Selection now handles empty lines less counter-intuitively.
    
    Now, when you are selecting a region, you will get all empty lines that happen
    to be in it, including trailing ones. Last line terminator is omitted as it previously
    was, though.
    
    Signed-off-by: Christoph Lohmann <20h@r-36.net>

commit da182612b7c7a6be67b2c7be0c0d85562220f1e4
Author: Christoph Lohmann <20h@r-36.net>
Date:   Thu Apr 18 06:51:18 2013 +0200

    Removing trailing whitespace.

commit b7e6a5c825a8d786a0cc4dbacc82df1c90ad7020
Author: Alexander Sedov <alex0player@gmail.com>
Date:   Mon Apr 15 17:13:19 2013 +0400

    Got rid of redundant Glyph state.
    
    Now, newly allocated Glyphs are set to spaces and current cursor colors
    with tclearregion() routine.
    
    Signed-off-by: Christoph Lohmann <20h@r-36.net>

commit 3ae02990648447ec3252b42f5b64e18818c19fd8
Author: Christoph Lohmann <20h@r-36.net>
Date:   Thu Apr 18 06:41:54 2013 +0200

    Removing unneeded comments.

commit fed9968ba5d3c6874f73517b261968746d36801e
Author: Alexander Sedov <alex0player@gmail.com>
Date:   Mon Apr 15 00:12:10 2013 +0400

    Got rid of code duplication in tnew() and tresize().
    
    Signed-off-by: Christoph Lohmann <20h@r-36.net>

commit 0ca0dd8b11ec0febc547e485395b7c9ec01e2866
Author: Alexander Sedov <alex0player@gmail.com>
Date:   Sun Apr 14 23:17:44 2013 +0400

    Strip trailing spaces from lines when copying selection.
    
    Signed-off-by: Christoph Lohmann <20h@r-36.net>

commit c371fe58a36abbfbf684e62d6b4026173dbc79be
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sun Apr 14 18:30:10 2013 +0200

    Enable BCE everywhere.

commit 44db38a5f8560564851683f80e1a649836e5885c
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Apr 13 15:24:26 2013 +0200

    Fix the geometry handling.

commit 4de64fa4d24fe0164bc59dd853982a43a9c19e56
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Apr 13 12:26:17 2013 +0200

    \033 should be used in printf in the FAQ.
    
    Never apply patches of Apple users without shouting at them. The basic rule of
    nature is that when you apply Appl users patches without shouting at them that
    something will go horribly wrong.

commit de4cd2f6afdf450aaa97abb328f4c4849602c7db
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Apr 13 09:49:11 2013 +0200

    Resize now uses xclear().

commit 1e7816c2023f48728e15cc4128ad8be163986902
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Apr 13 09:44:00 2013 +0200

    Drawing a more visible rectangle as cursor on unfocus.
    
    To have a more visible cursor on unfocused windows this patch makes st draw a
    rectangle around the terminal cell.
    
    Thanks Mark Hills <mark@xwax.org> for the suggestion!

commit 5dc48af29e9972527767977be3bbc9c072cf1c13
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Apr 13 08:51:30 2013 +0200

    Patching while not really woken up.

commit 5984657c001fe5b4690cef5ddffe11acbf7da7f2
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Apr 13 08:50:38 2013 +0200

    Minor naming issue fixed.

commit 4018b2c5075c1cab603ca137ef5f6d68b9cee483
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Apr 13 08:48:17 2013 +0200

    Making the copy and pasting consistent.
    
    The copying and pasting in the terminald and GUI world is flawed. Due to the
    discussion on the mailinglist it seems that sending '\n' is what GUIs expect
    and '\r' what terminal applications want. St now implements that behaviour.

commit ddd429ea2478beeb7d17d9b548abd9173049dcc6
Author: Kai Hendry <hendry@webconverger.com>
Date:   Tue Apr 9 22:13:54 2013 +0100

    Convert FAQ into Markdown, to make it easier to integrate it into http://st.suckless.org/
    
    Signed-off-by: Christoph Lohmann <20h@r-36.net>

commit 684cf55a0d21da19a6e9e4a490a7c4dd3334638d
Author: Christoph Lohmann <20h@r-36.net>
Date:   Wed Apr 10 17:48:32 2013 +0200

    Make st work with a plain -e command.

commit b1813b14d956978ae8af37166b3cccc3a7b4b720
Author: Christoph Lohmann <20h@r-36.net>
Date:   Wed Apr 3 21:00:38 2013 +0200

    Adopting arg.h with more flexible cmd handling.

commit 580c8bbd4691218849c9a809acaa4c95f65cb846
Author: Christoph Lohmann <20h@r-36.net>
Date:   Wed Apr 3 20:42:27 2013 +0200

    Add an option to disable alternative screens.

commit 502911e55442a89602bd5681763f68250bff330b
Author: Christoph Lohmann <20h@r-36.net>
Date:   Fri Mar 29 19:44:37 2013 +0100

    Updating the TODO file for after 0.4.

commit a3a5b8e15e2b32337959cb87f821b053cc08c3ac
Author: Christoph Lohmann <20h@r-36.net>
Date:   Fri Mar 29 19:13:26 2013 +0100

    Releasing 0.4.

commit 7e7760c2ed1a6fc9d500da51bd8dc499fb36e1b0
Author: Christoph Lohmann <20h@r-36.net>
Date:   Fri Mar 29 19:01:24 2013 +0100

    Add the possibility to have default highlight colors.
    
    Thanks to stargrave@stargrave.org for the suggestion!

commit adde5c6d9dec3a0ab4d78b9d6e70b970ffb33a05
Author: Christoph Lohmann <20h@r-36.net>
Date:   Fri Mar 29 18:45:09 2013 +0100

    Adding PgUp + Ctrl.
    
    Thanks stargrave@stargrave.org!

commit f876810626773828747f48675a6d1f33dc163662
Author: Christoph Lohmann <20h@r-36.net>
Date:   Fri Mar 29 18:43:32 2013 +0100

    Adding PgUp and PgDown + Ctrl to config.def.h
    
    Thanks stargrave@stargrave.org!

commit a1e3b94b374c269f9d379f40b67b8519a485b8a6
Author: Christoph Lohmann <20h@r-36.net>
Date:   Fri Mar 29 18:39:01 2013 +0100

    Removing an undefined case. just do regular selections.

commit 4b17dddb104bd2ac87dd6e334aafd325197c1407
Author: Christoph Lohmann <20h@r-36.net>
Date:   Wed Mar 20 21:19:28 2013 +0100

    Making rectangular selection work again.
    
    People sending me patches against strange revisions and basing on their own
    revisions make me having to reapply them. Then such errors appear.
    
    Thanks Alexander Sedov <alex0player@gmail.com> for noticing this.

commit 55adf0aad1d5acf0b9a00e2a9f834cef8b61b3b3
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sun Mar 10 21:16:51 2013 +0100

    Pange seems to use ascent + descent instead of height.
    
    Thanks Bobby Powers <bobbypowers@gmail.com> for noticing this!

commit 82494f248d778e1195a9eabfac916ce08c52b6da
Author: Christoph Lohmann <20h@r-36.net>
Date:   Tue Mar 5 22:12:11 2013 +0100

    Making st compile on OS X.

commit c6b89f23e7546c30dea42a3c49f99682c5818190
Author: Christoph Lohmann <20h@r-36.net>
Date:   Tue Feb 26 21:43:40 2013 +0100

    Using strsep and fixing null termination in csiparse.
    
    Thanks for the hint from Alexander Sedov <alex0player@gmail.com>!

commit 1c1621da699adae49a4344b145f856dacb57270c
Author: Christoph Lohmann <20h@r-36.net>
Date:   Tue Feb 26 19:08:51 2013 +0100

    Changing the way how paste is handled, just for the nano people.

commit 1aa26b4ecd68e6071d36e9103aa9c21711bbf6ea
Author: Christoph Lohmann <20h@r-36.net>
Date:   Tue Feb 26 19:07:23 2013 +0100

    Fixing a bug while parsing empty arguments in csiparse.

commit 7d32471efffa825f52d24930b5ee617105f9c83e
Author: Christoph Lohmann <20h@r-36.net>
Date:   Tue Feb 26 18:19:44 2013 +0100

    Fixing bugs in the strtol and strtok_r replacements.
    
    Thanks "Roberto E. Vargas Caballero" <k0ga@shike2.com> for the comments!

commit 7cb0d95509d1b2837e4fa7d131f497800b20d22c
Author: Christoph Lohmann <20h@r-36.net>
Date:   Mon Feb 25 13:36:40 2013 +0100

    Using strtok_r for the string parsing.

commit 37863356b00cd41c24e10243121649473b98824f
Author: Christoph Lohmann <20h@r-36.net>
Date:   Mon Feb 25 13:23:56 2013 +0100

    Using strtol with overflow checking.

commit be7c6d7fb09ff50127332060d771b94a3bc8e44c
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Feb 23 21:50:13 2013 +0100

    Add insert for the primary clipboard to MOD + Shift + Ins.
    
    Thanks Mantas Mikulėnas <grawity@gmail.com> for the patch!

commit e40d8da194cb02b400b09d2c8642f701c5c16821
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Feb 23 21:44:06 2013 +0100

    Removing dbe and introducing umlauts to titles.
    
    Thanks Alexander Sedov <alex0player@gmail.com> for the title patch!

commit efaf1c2a94ed9193c04c3a67f374d31f988b0e9a
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Feb 23 21:20:21 2013 +0100

    Add umlaut support for title change.
    
    Thanks Alexander Sedov <alex0player@gmail.com>!

commit 1b6c6535c10172facb350f4b8fef442f7f8ddc5a
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Feb 23 21:17:25 2013 +0100

    Replace parse_int with atoi().

commit 800800a3bba020f1e71e821b31c1ad037aab64ee
Author: Alexander Sedov <alex0player@gmail.com>
Date:   Tue Feb 19 21:39:13 2013 +0400

    Added basic xterm-ish palette swap support.
    
    Signed-off-by: Christoph Lohmann <20h@r-36.net>

commit 3865e9eaaf4e1c7820b1f41ce9d0b1d7b109fb26
Author: Christoph Lohmann <20h@r-36.net>
Date:   Tue Feb 19 19:08:41 2013 +0100

    Implement rectangular mouse selection.
    
    Thanks Alexander Sedov <alex0player@gmail.com>!

commit e5295629cdffb711001f3fdffbb9aa4ef772add0
Author: joe9 <joe9mail@gmail.com>
Date:   Mon Feb 18 12:31:29 2013 -0500

    ensure that the italic font has the same weight as the normal font
    
    The specified font[] pattern need not have a medium weight. It could be
    specified as a number too or have a different weight other than medium.
    
    Signed-off-by: Christoph Lohmann <20h@r-36.net>

commit 0e738c3d7291675472380a25b74f0358306541e5
Author: Christoph Lohmann <20h@r-36.net>
Date:   Tue Feb 19 16:04:54 2013 +0100

    Style inquisition.

commit 7f297e297ccec99a66b7af46e2b1725545ba3746
Author: Christoph Lohmann <20h@r-36.net>
Date:   Tue Feb 19 15:51:25 2013 +0100

    Fixing the reverse mode of st colors.
    
    Thanks Alexander Sedov <alex0player@gmail.com> for finding this!

commit f4a6c20f464df79a9b15b4a2a11daaa7a06c60a0
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Feb 16 13:57:12 2013 +0100

    Adding a way to ignore bits in the state.

commit e0ec2cf984ff8006b99cf4ca8590ceec7113daac
Author: Christoph Lohmann <20h@r-36.net>
Date:   Fri Feb 15 19:36:20 2013 +0100

    Style inquisition.

commit a92a678e252aeeb54537dfa7e3f106eac88f8d77
Author: Christoph Lohmann <20h@r-36.net>
Date:   Fri Feb 15 19:34:53 2013 +0100

    The refresh rate for the action needs to be high too.

commit de7e0e9c8d978f581328962b39e94b59e86f077e
Author: Christoph Lohmann <20h@r-36.net>
Date:   Fri Feb 15 19:32:37 2013 +0100

    Changing the fps to something reasonable high.

commit 086cd61511aa5ca4cbef0048137bb9ae0467d283
Author: Christoph Lohmann <20h@r-36.net>
Date:   Fri Feb 15 19:30:43 2013 +0100

    Doing it like the new run() was proposed.

commit 95033753be32e93915ddce14ea41b8765b665771
Author: Christoph Lohmann <20h@r-36.net>
Date:   Fri Feb 15 19:10:22 2013 +0100

    Adding a more efficient drawing code.
    
    Thanks Mihail Zenkov <mihail.zenkov@gmail.com> for giving the hint!

commit b7261c84aa3af984d5a7e5f5239c4173255a215d
Author: Christoph Lohmann <20h@r-36.net>
Date:   Fri Feb 15 17:45:38 2013 +0100

    Tmux wants this to be mutually exclusive.
    
    Thanks Egmont Koblinger <egmont@gmail.com> for noticing this!

commit 05a1ff03e95877a3b4c0ffee3164db65bb36d3ed
Author: Christoph Lohmann <20h@r-36.net>
Date:   Wed Feb 13 21:35:27 2013 +0100

    Adding mor explict font patterns.

commit eeffbe11ab8b3ea94eefcf178003e36d389f8776
Author: Christoph Lohmann <20h@r-36.net>
Date:   Mon Feb 11 22:20:16 2013 +0100

    Making st not activate the cursor in case of Mod + k in dwm.
    
    Thanks Jens Nyberg <jens.nyberg@gmail.com>!

commit 8a9475a0dd9b8751b9b0ed4c7da4db09232e318e
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sun Feb 10 16:36:03 2013 +0100

    Setting the surrounding border to defaultbg.
    
    Thanks Stephen Caraher <moskvax@gmail.com>!

commit ce3efa9e9b50b0d86ef2d030657dfc69034d6ef7
Author: Christoph Lohmann <20h@r-36.net>
Date:   Fri Feb 8 20:24:26 2013 +0100

    Removing some debug messages.

commit efd04ccad6d3c4e981b3efdb0423d8f5ca40f984
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sun Jan 27 17:48:01 2013 +0100

    Fixing the menus in mc.

commit 26c101b70671d1adbdd4e31af70502605fe3ebbf
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sun Jan 27 13:26:06 2013 +0100

    Fixing the black remaining lines in mc and dialog.
    
    This also applies some style fixes and handles some old blink codes.

commit 384fabdb5b2ac6c700a974a7fac539c8c14107f6
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Jan 26 15:13:56 2013 +0100

    Adding extended mouse reporting in st.
    
    Thanks Egmont Koblinger <egmont@gmail.com>!

commit deb720af7fe480b03c881818e79164817ce6f85f
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sun Jan 20 17:13:48 2013 +0100

    Removing the debug messages again.

commit 57f39defaf3f84b5d9efb3e7a8494cc7ff09e7af
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sun Jan 20 17:12:41 2013 +0100

    Fixing the clipboard copying to st itself.

commit 3036051fb18addd8ac15eac9e0ef3ee6aeb8bbc6
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sun Jan 20 15:12:45 2013 +0100

    St is in 2013 now.

commit d8f3809345d62477c204e03071db61fe8443fd5f
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sun Jan 20 14:55:08 2013 +0100

    Removing BCE from the TODO list.

commit b78c5085f72d66de26468e2c07fb3c72d0afe63b
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sun Jan 20 14:54:35 2013 +0100

    Implementing Back Color Erase (BCE).

commit b4b513c791e01e46399b460789b830ddfc7cb425
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Jan 19 18:38:28 2013 +0100

    Make line drawing work again.

commit 15c2bff9faa87644abf96c19b17133d03d40b974
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Jan 19 15:49:34 2013 +0100

    Yes, xft should be on the buffer. Thanks Mihail Zenkov.

commit c7b033b8f0a31ec08d3d9dafa390b24c6e232e09
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Jan 19 15:00:16 2013 +0100

    Trying out the double buffering without dbe.

commit 0e232a41150d67539df05e60c7e829f0bfb431d0
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Jan 19 09:13:52 2013 +0100

    Dbe is not required anymore.

commit 3ce96aea8af566c88ed1e076d270b4d1abcf6e96
Author: Christoph Lohmann <20h@r-36.net>
Date:   Fri Jan 18 19:22:11 2013 +0100

    Adding the FAQ entry for zsh.
    
    Thanks Roberto E. Vargas Caballero! You were committing this patch against the
    wrong version of the FAQ, so I had to rewrite it.

commit ed90afb743911b7b95dc2bf36b65076532779269
Author: Christoph Lohmann <20h@r-36.net>
Date:   Fri Jan 18 19:11:25 2013 +0100

    The title can now be set with UTF-8 characters.
    
    Thanks Mihail Zenkov <mihail.zenkov@gmail.com>!

commit c9bd58e4dd04e61aa3613eab57ba6fb716a41146
Author: Christoph Lohmann <20h@r-36.net>
Date:   Wed Jan 16 18:53:32 2013 +0100

    Adding a nasty resize bug. Maybe it can be fixed.

commit f25c75d72a07edaec7750cfe5ca251ca395b65e5
Author: Christoph Lohmann <20h@r-36.net>
Date:   Wed Jan 9 17:36:59 2013 +0100

    Removing the .hgtags file. Thanks ilf.

commit 1827e0643fc95b44d12eaf951be5994637d1b30d
Author: Christoph Lohmann <20h@r-36.net>
Date:   Tue Jan 8 20:36:49 2013 +0100

    Standout mode has changed. Thanks p37sitdu@lavabit.com!

commit b3326ab63be167ddd883dbf7be33603f38bbd31d
Author: Christoph Lohmann <20h@r-36.net>
Date:   Tue Jan 8 20:09:33 2013 +0100

    A different double buffering strategy so the background is default set.

commit f741df9cda4d4aa597cf9eff4ac62a610daf44f2
Author: Christoph Lohmann <20h@r-36.net>
Date:   Tue Jan 8 19:46:28 2013 +0100

    Standout is now reverse. This makes bsd-games work in st.

commit 73879c172943928542225cdc975b3b7e2449ddc0
Author: Christoph Lohmann <20h@r-36.net>
Date:   Mon Jan 7 19:53:41 2013 +0100

    Adding an FAQ entry for the keypad handling.
    
    Thanks "Roberto E. Vargas Caballero" <k0ga@shike2.com>!

commit 5facd29f75401891fbac9c83d64c684bdb8f7c39
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sun Jan 6 09:52:03 2013 +0100

    Synchronizing the FAQ of the website and the repository.

commit b233007e0fddbb5ad8da3e436533254d099c8861
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Jan 5 20:56:58 2013 +0100

    Damn, my fault. The cache should have at least some entries.

commit c772a6e5719aa24d10d664262383b76a36e3458b
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Jan 5 20:30:25 2013 +0100

    Applying the changes to the docs; by Peter Hartman.

commit 4682cc9596a5c82325882bdf1313728de95467d2
Author: Christoph Lohmann <20h@r-36.net>
Date:   Fri Jan 4 20:52:22 2013 +0100

    Making the fontconfig and freetype paths portable in config.mk.

commit 4e14a4a97f7f7ef134fdc25d2fa34c8db7bb6e6c
Author: Christoph Lohmann <20h@r-36.net>
Date:   Tue Jan 1 13:15:43 2013 +0100

    A fix for the XopenIM() errors.

commit c99db5b0170555c5bb0359ac8a8229cdada64b30
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sun Dec 30 17:35:41 2012 +0100

    Increasing font cache for speeding up UTF8 demos.

commit 44e1b79abfe81d5d9d1b4845a68533e84b37e2f0
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sun Dec 30 17:35:15 2012 +0100

    Removing the warning about extents.

commit 08e06ef079e5190c7f219c7e50044745c57cea86
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Dec 29 16:24:33 2012 +0100

    Fixing the font unloading in case of zoom.

commit addc84834506e24387c1fb70b5d33b3f2ba55b66
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Dec 29 15:03:03 2012 +0100

    Speeding up the drawing, then all characters are known.

commit 9c44229c626ea7351a7809540435f40cffb624bc
Author: Christoph Lohmann <20h@r-36.net>
Date:   Fri Dec 28 23:52:04 2012 +0100

    Adding fallback support to st.

commit 082bab29f3551e5cee332832ff767c3fb65a5cbc
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Dec 22 19:50:02 2012 +0100

    Fixing a compile error.

commit ac4c6da4ef9b05e2886c26272745effc4f975042
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Dec 22 13:39:27 2012 +0100

    Fixing a off-by-one error in the penultimate row drawing.

commit 4d37763ee767d0c8bd8425744c3375817967dda3
Author: Christoph Lohmann <20h@r-36.net>
Date:   Tue Dec 18 13:00:00 2012 +0100

    Fixing a precedence problem. Thanks tridactyla!

commit fc2b3669682eaf571fc96762bd3c8e48bccac989
Author: Christoph Lohmann <20h@r-36.net>
Date:   Thu Dec 13 20:57:15 2012 +0100

    Checking for the lower X11 special keys too. Thanks Benjamin R. Haskell!

commit 3c6ec1995d8ec4d8d5da7ca81d15adfdb08086aa
Author: Christoph Lohmann <20h@r-36.net>
Date:   Tue Dec 11 08:32:08 2012 +0100

    Adding error checks for XCreateIC and XOpenIM.

commit 2696f8187509eb94644bbac5b05348e37c391bea
Author: Christoph Lohmann <20h@r-36.net>
Date:   Mon Dec 10 23:02:58 2012 +0100

    Be careful about mar77i's patches.

commit 78215c8ee0f4cb62655730260520f185ce97c620
Author: Christoph Lohmann <20h@r-36.net>
Date:   Mon Dec 10 20:45:46 2012 +0100

    Fixing the nasty selection bug. Thanks p37sitdu@lavabit.com!

commit fe3fb82d29bd4c3b2194aa7b66733de4c8cd2161
Author: Christoph Lohmann <20h@r-36.net>
Date:   Mon Dec 10 15:02:32 2012 +0100

    Applying the patch of mar771 right.

commit fdce8bba1a87fe1639aa9e7537ed93cf29138761
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sun Dec 9 21:39:02 2012 +0100

    Applying the change of the Del key assingment. Thanks Martti Kühne!

commit d5994b43ca78196b81ea276d7acb5ef2d4a671f7
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Sun Nov 25 22:13:29 2012 +0100

    Add support for End key
    
        - Shift + End : Delete until end of line.
        - Control + End : Delete until end of screen.
    
    When  the End  key is  pressed  without any  modifier is  not generated  the
    correct sequence for it  (going to the end of the  screen), because the size
    of the  terminal is not known,  so it is  not possible write a  sequence for
    this purpouse.
    ---
     config.def.h |   10 ++++++++--
     st.info      |    2 ++
     2 files changed, 10 insertions(+), 2 deletions(-)

commit 7c34ff1703381c4d0c2ea602ddd607597bd32ad5
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Sun Nov 25 22:13:24 2012 +0100

    Add support for Supr key
    
        Del : Delete character under cursor.
        Shift + Del : Delete the line under cursor.
        Ctrl + Del: Delete the full screen.
    ---
     config.def.h |   16 ++++++++++++----
     st.info      |    2 ++
     2 files changed, 14 insertions(+), 4 deletions(-)

commit 3c99be68e8d3c4d67b2db54b8650bf55d769b98e
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Sun Nov 25 22:13:19 2012 +0100

    Add support for insert key
    
    Insert key stands for a key which allows enter or leaves insert mode, so let
    it generates the correct sequence to change between these modes:
    
       - Insert: Enter in insert mode.
       - Shift + Insert: Leave insert mode (replace mode).
       - Control + Insert: Insert a blank line.
    
    Like Shift + Insert also paste text, if a user want this feature be full
    functional he has to modify such shortcut.
    ---
     config.def.h |   16 ++++++++++++----
     st.info      |    3 +++
     2 files changed, 15 insertions(+), 4 deletions(-)

commit e7904128c61f96b2adbed6e946964053c70e3d4e
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Sun Nov 25 22:13:13 2012 +0100

    Fix value of ka1 terminfo capability
    
    ka1 stands for upper left of keypad, so the correct value is the one
    generated by Home in application keypad mode.
    ---
     st.info |    2 +-
     1 file changed, 1 insertion(+), 1 deletion(-)

commit 61b20f4bc1eae90fd9d5f3582252d6181ee21b4f
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sun Nov 25 15:59:16 2012 +0100

    Add a notice in the config.def.h file how to obtain the syntax for
    
    xft/fontcache.

commit 373a8f56286d72ae10c9d3a2a7326e2515d141d9
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sun Nov 25 09:23:34 2012 +0100

    The style inquisition was here.

commit 172f65436ce14a52842d67b862fdc45f8ff3ada3
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Sun Nov 25 09:23:02 2012 +0100

    Add key for toogling numlock handling
    
    Keypad will generate keycodes when keypad application mode is enabled. It
    can cause problems with some programs like vi, which operates in such
    mode.
    
    This patch change by default don't generate the keycodes never, but this
    behaviour can be changed using the combination Alt + NumLock.
    ---
     config.def.h |   34 ++++++++++++++++++----------------
     st.c         |   17 +++++++++++++++--
     2 files changed, 33 insertions(+), 18 deletions(-)

commit b26df1d0d3f7791504150820e7c105b20c6b1c3b
Author: Christoph Lohmann <20h@r-36.net>
Date:   Wed Nov 21 20:38:15 2012 +0100

    Fixing the calculation of the base tty pixel size.

commit cf04354e06aa0ee54b0f8e9b9491dd0e39d8c4ea
Author: Christoph Lohmann <20h@r-36.net>
Date:   Mon Nov 19 17:22:32 2012 +0100

    Restoring the Alt + Backspace functionality. Thanks Brandon Invergo!

commit 55087ec2c7e78e4349259c4547aa58fa705fa915
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Fri Nov 16 11:32:17 2012 +0100

    Add application cursor sequences for Home
    
    The commit 'Fixing some key issues with mc' fix the problem where mc didn't
    recognize home key because the generated code and the terminfo entry were
    different (terminfo khome = \E[1~ but generates \033[H).
    
    Home key in ansi mode should generate the sequence CUP (\033[H) to 0,0 (home
    position), but it is also interesting generate a application code which
    identifies the key. Real vt520 only generates the ansi sequence CUP, linux
    console generates only the application code \033[1~, xterm generates CUP in
    ansi mode and \033OH in cursor application mode, rxvt only generates the
    application code \033[7~.
    
    This patch sets CUP in ansi mode and \033[1~ in cursor application mode, so
    it can be used in both modes and the application mode value is similar to
    near values (insert = \033[2~, Prior = \033[5~, Next = \033[6~, End =
    \033[4~, Supr = \033[3).
    ---
     config.def.h |    7 ++++---
     1 file changed, 4 insertions(+), 3 deletions(-)

commit 1cbe56026b1003d96d81c17e43ff21d1b0064b21
Author: Christoph Lohmann <20h@r-36.net>
Date:   Fri Nov 16 05:43:00 2012 +0100

    Fixing some key issues with mc. Thanks nsz!

commit 440a19a662cec7aaec07cec47e7743f22f0e5f26
Author: Christoph Lohmann <20h@r-36.net>
Date:   Thu Nov 15 21:42:58 2012 +0100

    Getbuttoninfo is always used the same and just a helper function. Shrinking it
    
    a bit. Thanks nsz!

commit 6312f76ca47f94119a7740dd36f7dd6ce037e907
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Thu Nov 15 20:57:37 2012 +0100

    Fix speech error in comment
    
    ---
     st.c |    2 +-
     1 file changed, 1 insertion(+), 1 deletion(-)

commit 0df350cd0b64f83fbc2324bb2a1bc04b51e657e0
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Thu Nov 15 20:57:33 2012 +0100

    Remove unused fields in cursor_movement
    
    ---
     st.c |    4 ----
     1 file changed, 4 deletions(-)

commit 1cea02be8d331597b3cfccf1d23eb22e57433c85
Author: Christoph Lohmann <20h@r-36.net>
Date:   Thu Nov 15 20:25:16 2012 +0100

    Removing my debug fprintf().

commit 2b6521f5d23da404a597d675d12d4c0cf89657de
Author: Christoph Lohmann <20h@r-36.net>
Date:   Thu Nov 15 20:19:35 2012 +0100

    Optimizing the key lookup to the X11 function key. It is still possible to
    
    remap other keys.

commit 927d8fb45971ddf0eac115ad04161aba6bbd8bc7
Author: Christoph Lohmann <20h@r-36.net>
Date:   Thu Nov 15 20:03:18 2012 +0100

    Making all function keys accessible.

commit a29ab30f256439dd701a475bb0c51eb2d02cafa9
Author: Christoph Lohmann <20h@r-36.net>
Date:   Thu Nov 15 20:00:46 2012 +0100

    Adding support for XK_F35.

commit 90e1427632d6c5852d10c8d2bafa787012903eb9
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Thu Nov 15 19:01:16 2012 +0100

    Fix Shift + Insert shortcut
    
    This patch apply the same code for shortcuts that it is used now for defined
    keys. So it is possible use now XK_NO_MOD and XK_ANY_MOD for defining shortcuts.
    ---
     st.c |   35 ++++++++++++++++++++---------------
     1 file changed, 20 insertions(+), 15 deletions(-)

commit cc86d148cb4092a57af2b58eeae96bbd721de803
Author: Christoph Lohmann <20h@r-36.net>
Date:   Thu Nov 15 16:36:48 2012 +0100

    Changing the TODO to the current state.

commit d5640c772998de7bccd76c3f8e934fa685cb2bb4
Author: Christoph Lohmann <20h@r-36.net>
Date:   Thu Nov 15 16:26:50 2012 +0100

    Fixing the return and keypad enter sent characters. Terminals produce \r. And
    
    some minor style changes.

commit 801ea034b652025dc22d26f6e1b802de932346da
Author: Christoph Lohmann <20h@r-36.net>
Date:   Thu Nov 15 16:21:23 2012 +0100

    Import the patch of Eckehard Berns to add insert mode. Thanks!

commit e87d21bb3d6b48f68340c193dff8b6021f00be10
Author: Christoph Lohmann <20h@r-36.net>
Date:   Thu Nov 15 15:57:01 2012 +0100

    The crlf mode was reversed.

commit e7bb14e03e383daf2505ca304adca78b57884513
Author: Christoph Lohmann <20h@r-36.net>
Date:   Thu Nov 15 15:54:34 2012 +0100

    Fixing Return in non-crlf mode.

commit 4389f2eb1b27f7a210e1f631e703c48a8ca8d50b
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Thu Nov 15 15:36:20 2012 +0100

    Use XK_ANY_MOD instead of XK_NO_MOD in key definition
    
    Usually terminal emulators don't generate any sequence for a combination
    they don't have registered, for example Shift + Next, but st behavior
    previous to the keyboard patch generates the sequence without the modifier,
    in this example Next. This patch uses the XK_ANY_MOD in order to get this
    same behaviour.
    ---
     config.def.h |  114 ++++++++++++++++++++++++++++++----------------------------
     1 file changed, 59 insertions(+), 55 deletions(-)

commit 88bb76c1bccbc8bb68b6776062cd2ef28bda8561
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Thu Nov 15 15:36:13 2012 +0100

    Fix XK_NO_MOD and XK_ANY_MOD behavior
    
    XK_NO_MOD match a key without modifiers and XK_ANY_MOD match a key does not
    matter what modifiers are pressed to. Like they are mask the best value for
    XK_ANY_MOD is all the bits to 1, so the and with any state will be equal to
    the state. This also imply that is necessary check the case for XK_NO_MOD
    (no modifiers at all) with some modifier in state, and the inverse
    (some mask different to XK_ANY_MOD or XK_NO_MOD and no modifiers in state).
    ---
     st.c |   12 +++++++-----
     1 file changed, 7 insertions(+), 5 deletions(-)

commit 16ccf344deccbae53865b6efbe9dc23ebdceccb7
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Wed Nov 14 11:14:29 2012 +0100

    Fix tab key
    
    When Shift + Tab is pressed X server send the event XK_ISO_Left_Tab with
    ShiftMask, so this is the entry we need in config.def.h
    
    This patch also revert the previous patch for this issue because it breaks
    the keyboard.
    ---
     config.def.h |    2 +-
     st.c         |    2 +-
     2 files changed, 2 insertions(+), 2 deletions(-)

commit 461aac159cf3dbb8514e645df6387e03e7c26084
Author: Christoph Lohmann <20h@r-36.net>
Date:   Wed Nov 14 06:37:24 2012 +0100

    Fixing the tab key, when no mask is wanted.

commit 7474a2fc3785eb1aad00f8cf2b50711bbe1fff0b
Author: Christoph Lohmann <20h@r-36.net>
Date:   Tue Nov 13 20:13:39 2012 +0100

    The style inquisition was here again.

commit 620e3bb39ebe617b69b5cb1323b4f47c2f699527
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Tue Nov 13 20:05:02 2012 +0100

    Add missed key definitions
    
    This patch adds the keys for the keypad (in both modes, application mode or
    ansi mode) and function keys. It uses the same convention than xterm and
    instead of using the XK_Fxx values it generates them using F1-F12 and
    modifiers. For example:
    
       F1 -> ^[OP
       F1 + Shift = F13 -> ^[[1;2P
       F1 + Control = F25 -> ^[[1;5P
       F1 + Mod2 = F37 -> ^[[1;6P
       F1 + Mod1 = F49 -> ^[[1;3P
       F1 + Mod3 = F61 -> ^[[1;4P
    
    It is also important notice than the terminfo capability kIC (shifted insert
    key) only can be generated using the keypad keyboard, because the shorcut
    for selection paste is using the same combination.
    
    After this path the number of elements in the Key array becomes high, and
    maybe a sequencial search is not enough efficient now.
    ---
     TODO         |    6 +---
     config.def.h |  102 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++-
     st.info      |   70 ++++++++++++++++++++++++++++++++++++++--
     3 files changed, 169 insertions(+), 9 deletions(-)

commit 44597b359e030d86e16ab9b6510f54366d57e5ac
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Tue Nov 13 20:04:54 2012 +0100

    Add control and meta combinations for arrow keys
    
    Since there isn't any terminfo capability for control and meta modifiers for
    arrows keys it is necessary use the same that almost terminal emulators use,
    because there are a lot of programs which have these codes hardcoded.
    
    This cause also that shift combinations are also changed, but in this case
    this is not a problem since there are terminfo capabilities for them. After
    this patch shift-up and shift-down continue not working in emacs with
    TERM=st, but they work with TERM=xterm, so it is possible some other changes
    are necessary in the terminfo entry.
    ---
     config.def.h |   16 ++++++++++++----
     st.info      |    8 ++++----
     2 files changed, 16 insertions(+), 8 deletions(-)

commit 3b16695f4e8a29f47ad273912065dfba53544a29
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Tue Nov 13 20:04:50 2012 +0100

    Fix arrow keys terminfo capabilities
    
    Usually the arrow keys generate the ANSI sequence which terminal will
    understand like a movement, so it is not necessary any dealing for them, the
    program can not know if the sequence is generate for a echo key or directly
    from the program. If you need really know if the key was pressed then you
    need activate the keypad mode where the keys will generate a special code
    for each keypad key.
    
    The terminfo capabilities kcub1, kcud1, kcuf1 and kcuu1 are used for this
    keypad code, not for the sequence generate in the ansi mode.
    ---
     st.info |    8 ++++----
     1 file changed, 4 insertions(+), 4 deletions(-)

commit ea782bfc5d34d712bc9391e498935d2d27f3116c
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Tue Nov 13 20:04:45 2012 +0100

    Remove hardcoded keys form kpress
    
    Some keys were in the Key array while others were hardcoded in
    kpress().This cause some problems with some keys which can generate more of
    one string based in the configuration of the terminal.
    ---
     config.def.h |   70 ++++++++++++++++++++++++++++++++++++++++-----------------
     st.c         |   71 +++++++++++++++++++++++++---------------------------------
     2 files changed, 79 insertions(+), 62 deletions(-)

commit 93f31166bfff317e050dde1723cfa8302c6f85d3
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Tue Nov 13 20:04:39 2012 +0100

    Move Shift + Insert to shortcut
    
    Shift + Insert is used like a hot key for paste the selection, so it is more
    logical move it to shortcut array instead of having special code for it.
    ---
     config.def.h |    1 +
     st.c         |   13 +++----------
     2 files changed, 4 insertions(+), 10 deletions(-)

commit 69ee3ba3a771ca60bc8738174c79fc851818a36b
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Tue Nov 13 20:04:34 2012 +0100

    Fix keypad mode and cursor mode
    
    Keypad mode is used for detecting when keys in the auxiliary keypad are
    pressed, while cursor mode is used for detecting when a cursor is pressed,
    but they are different modes.
    
    St was mixing both modes and DECPAM and DECPNM modified the cursor mode, and
    this was incorrect.
    ---
     st.c    |    5 +++--
     st.info |    4 ++--
     2 files changed, 5 insertions(+), 4 deletions(-)

commit 73177ba366e5363b8a6695882b52617a8909a925
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Tue Nov 13 20:04:26 2012 +0100

    Add SRM sequence
    
    This sequence enable/disable the local echo.
    ---
     st.c |   76 ++++++++++++++++++++++++++++++++++++++++++++++++------------------
     1 file changed, 56 insertions(+), 20 deletions(-)

commit ace789a79fc44c1c3b629f5c0fb477c651d84a48
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sun Nov 11 19:46:34 2012 +0100

    Gc is not used anymore.

commit c4a9ccec19b14a6bdc980d149e2c27c30f250945
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sun Nov 11 19:38:41 2012 +0100

    Removing some xft naming cruft.

commit 5d5a7c627a3709c3758c516de87609bb6b518e13
Author: Christoph Lohmann <20h@r-36.net>
Date:   Thu Nov 8 17:22:48 2012 +0100

    Moving the alt declaration to the beginning of the function.

commit 866590521609ba35606e53990e381bdc2adf742f
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Thu Nov 8 17:22:04 2012 +0100

    Move unsupported sequences to ignored.
    
    These sequences will be never implemented and in this moment they are
    generating a lot of noise.
    ---
     st.c |   14 +++++++-------
     1 file changed, 7 insertions(+), 7 deletions(-)

commit 27468403cc436cf8197c886158e6e61f24ae5b8d
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Thu Nov 8 17:21:41 2012 +0100

    Ignore DECARM sequence
    
    DECARM modify the auto repeat settings in the keyboard, and since we can not
    modify this setting in the Xserver the best solution is only ignore it.
    ---
     st.c |    3 +--
     1 file changed, 1 insertion(+), 2 deletions(-)

commit d5b80e05e8df29b989c072b6529745576056d0bc
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Thu Nov 8 17:21:24 2012 +0100

    Fix VPR sequence
    
    VPR stands for Move cursor down a number of rows, and the code was moving
    the cursor up instead of moving it down.
    ---
     st.c |    4 ++--
     1 file changed, 2 insertions(+), 2 deletions(-)

commit 5260a9ea2249b9159c188a6e27a39a38d131e411
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Thu Nov 8 17:21:10 2012 +0100

    Add DECOM sequence
    
    DECOM sequence allows to the user defines a new home position. The home
    position is used as base for all the movement commands except HVP and
    VPA. It is important notice than DECSLM moves cursor to absolute position
    0,0.
    ---
     st.c |   33 ++++++++++++++++++++++++++-------
     1 file changed, 26 insertions(+), 7 deletions(-)

commit ee3e0a9fd032bb35eea5c46fc0a9efcd6a80579a
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Thu Nov 8 17:20:15 2012 +0100

    Save cursor position in terminal reset
    
    After terminal reset saved terminal position is reset to 0, allowing know
    where cursor will go in next restore cursor operation.
    ---
     st.c |    2 ++
     1 file changed, 2 insertions(+)

commit ba9d0365ac7e138b643d7179457f8465a1dc1191
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Thu Nov 8 17:17:26 2012 +0100

    Clarify some or exclusive expressions
    
    Since relational expresions are always evaluated to 0 or 1, we can use
    bitwise xor operator instead of using more complex boolean expressions.
    ---
     st.c |   14 +++++++-------
     1 file changed, 7 insertions(+), 7 deletions(-)

commit 950ff21e17af487b205ea0b666be015790114fa7
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Thu Nov 8 17:15:26 2012 +0100

    Fix bug restoring cursor position
    
    Sequences like DECSC, DECRC, ESC [?1047l or ESC [?1047h save and restore
    cursor attributes, than taken from vt100 manual are:
    
           Save Cursor (DECSC) ESC   7
           ===========================
           Saves the following in terminal memory.
    
          - cursor position
          - graphic rendition
          - character set shift state
          - state of wrap flag
          - state of origin mode
    
          Restore Cursor (DECRC) ESC 8
          ===========================
          Restores the states described for (DECSC) above. If none of these
          characteristics were saved, the cursor moves to home position; origin
          mode is reset; no character attributes are assigned; and the default
          character set mapping is established.
    
    This implies that hide attribute of the cursor should not be saved/restored
    in these sequences. The best way to fix this problem is moving hide
    attribute into the terminal mode, instead of having it in the cursor state.
    ---
     st.c |   12 ++++++------
     1 file changed, 6 insertions(+), 6 deletions(-)

commit 5d39afc9023bc9a692ba6faf590abf9397a890ae
Author: Christoph Lohmann <20h@r-36.net>
Date:   Tue Nov 6 23:44:37 2012 +0100

    Adding scrollwheel support. Thanks Brandon Invergo!

commit 9df1e56142527de1b8917434093d25212dd9da1e
Author: Christoph Lohmann <20h@r-36.net>
Date:   Mon Nov 5 04:02:20 2012 +0100

    Changing the license to MIT/X.

commit 0fbe1559c8a62a87ea3af19366220bd790179f4c
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sun Nov 4 00:04:56 2012 +0100

    Fixing meta+return. Thanks Szabolcs Nagy!

commit 86261187ab92a037a44af72847f6ed304ea58e64
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Nov 3 14:05:45 2012 +0100

    Removing the debugging for the last fix too.

commit 9888c5064badc60cd5e894f60451c2be762a481c
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Nov 3 14:05:15 2012 +0100

    Fixing a resize bug, if a smaller amount than the lineheight is resized.
    
    Thanks c00kiemon5ter!

commit f8db65439a705f5e94c7a130ac44689e050e5654
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Nov 3 13:43:20 2012 +0100

    Fixing bold fonts in reverse mode.

commit 76a8e5f72b542f230d7248c09efe202a12bc3771
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Nov 3 08:35:32 2012 +0100

    Now italic and bold works.

commit abe85c0e997ed1882c69bde511f7e2746f68d9ab
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Nov 3 03:24:22 2012 +0100

    Fixing an out-of-bound bug in the selection code. Thanks Szabolczs Nagy!

commit 091ae143ce09e930fd61dae15f8d613c7eab5a61
Author: Christoph Lohmann <20h@r-36.net>
Date:   Fri Nov 2 23:19:56 2012 +0100

    Fixing the italic-bold font check. Thanks nsz.

commit cd90969cab2d980977a76b79f936929834f2bdba
Author: Christoph Lohmann <20h@r-36.net>
Date:   Fri Nov 2 20:08:51 2012 +0100

    Added tag 0.3 for changeset 9d54ce4daf34

commit b0ed3e289730e42195f3388ffcc437e6cb3b8377
Author: Christoph Lohmann <20h@r-36.net>
Date:   Fri Nov 2 20:08:27 2012 +0100

    0.3 release.

commit c631e9bb917ec268463b3f1f331b286c43a6bd0b
Author: Christoph Lohmann <20h@r-36.net>
Date:   Fri Nov 2 20:07:11 2012 +0100

    Make it possible to use the corefont font description too. It is not very
    
    useful, but easy to implement.

commit 393825f9f8a23dfcdfda5220aa8029e9356fa15b
Author: Christoph Lohmann <20h@r-36.net>
Date:   Fri Nov 2 19:56:02 2012 +0100

    Moving to the dwm config.h variable usage.

commit e5d7c5a69e17d858984fe2c28b7d026672f42177
Author: Christoph Lohmann <20h@r-36.net>
Date:   Wed Oct 31 20:36:32 2012 +0100

    Adding a FAQ to reference utmp(1).

commit 784765ca35389a9579976d3e5ec9dc73de4bf4d9
Author: Christoph Lohmann <20h@r-36.net>
Date:   Wed Oct 31 20:35:07 2012 +0100

    Cleaning up the TODO file.

commit 1d378227c0349d83c540771815250c4506d578f3
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sun Oct 28 14:13:39 2012 +0100

    Removing the now senseless comment in config.def.h. Thanks to bnwe!

commit c5dd7fb377d4bfe9988ef150a55b4a3756d09524
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sun Oct 28 13:37:11 2012 +0100

    Applying the patch of the little girl <yui@blekksprut.net> to make cjk input
    
    possible. Thanks!

commit b56a0da283bd09d5084f472353c1a0b1b084613e
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sun Oct 28 13:35:00 2012 +0100

    Applying the tab expansion patch from koga.

commit 71b09ec4f172da9a89be2add54b5b94da8af3bea
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sun Oct 28 13:25:53 2012 +0100

    Adding a more flexible fontstring handling, shortcuts and a zoom function.

commit 6d4e525ed95fbddc38be441394a02dc9233b157d
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sun Oct 28 06:54:08 2012 +0100

    Applying the patch of Roberto Caballero to set WINDOWID and all the pwuid()
    
    variables. Thanks! xinit() and ttynew() had to be switched in their
    call-appearance. Otherwise xw.win is not set.

commit 35421371ca150b6bd0fd1330e7b30a99029dbce1
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sun Oct 28 06:32:54 2012 +0100

    Applying the patch of Rafa Garcia Gallega <rafael.garcia.gallego@gmail.com> to
    
    not emulate the vt100 behaviour of selecting all whitespaces. Thanks!

commit ee3fbeb6c8c354cf4db226a5b1583c531ea37af4
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Sun Oct 28 06:27:42 2012 +0100

    Add error control to iofile
    
    write can write less bytes than we request, so it is necessary check the
    return value, in case of error print a message and don't continnue writing
    in the file.
    ---
     st.c |   39 ++++++++++++++++++++++++++++++---------
     1 file changed, 30 insertions(+), 9 deletions(-)

commit 2e38ab7afdc56e3853751918f1b7705362bea01c
Author: Christoph Lohmann <20h@r-36.net>
Date:   Tue Oct 9 19:40:37 2012 +0200

    Well, I was confused. Damn state exams. Instead of discussing this shit I
    
    should really learn opthalmology instead. :O

commit eb6713acf1928ec94364627ed583252370051705
Author: Christoph Lohmann <20h@r-36.net>
Date:   Tue Oct 9 19:33:26 2012 +0200

    If there is really someone without SHELL set, help him/her.

commit 9e813947cf4631c0ca8e5f73ebfb269ef2f8252b
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Sun Oct 7 11:06:17 2012 +0200

    Add DEC alignment test
    
    This sequence was used by DEC personal in to for verifying the screen adjust
    of terminals. It is the unique test sequence implemented by all the
    emulators, and I think it is because they want be conforms with vttest which
    uses this sequence in some tests.
    ---
     st.c |   31 +++++++++++++++++++++++--------
     1 file changed, 23 insertions(+), 8 deletions(-)

commit b7a7f171effb301ce8dbce07c1c77a6b06ef980f
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Sun Oct 7 11:06:08 2012 +0200

    Avoid initialization of vt100_0 in each call to tsetchar
    
    If vt100_0 is a automatic variable then it is initializated in each call to
    tsetchar, but if the variable is static it is initializated only in compile
    time.
    ---
     st.c |    2 +-
     1 file changed, 1 insertion(+), 1 deletion(-)

commit 25f47cb83a71f7d2872a197209cc2d8cd1c955ec
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Sun Oct 7 11:06:00 2012 +0200

    Fix Identification sequences
    
    Do not send NUL character in the identification (use (sizeof(VT102ID) - 1),
    and finish  the sequence once you execute it.
    ---
     st.c |    5 +++--
     1 file changed, 3 insertions(+), 2 deletions(-)

commit ffeeb678c5c6c6b895ad494b5b62195dd9893f65
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Sat Oct 6 21:19:56 2012 +0200

    Add DA and DECID sequences
    
    These sequences are used by the host in order to can detect which kind of
    terminal is connected. St will answer like a vt102 terminal with this patch.
    ---
     st.c |    9 +++++++++
     1 file changed, 9 insertions(+)

commit bffa6e5cc612dcead2d6ff3803ec72cb69c151bd
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Oct 6 21:02:25 2012 +0200

    Fixing a typo.

commit b16b5d77d31c4c6b2577ab0986e85b43baaf834a
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Oct 6 20:52:22 2012 +0200

    Fixing a off-by-one error in the new border clearing code.

commit 2bd0c23fa7bb42724c75416342d36e00c435f404
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Sat Oct 6 19:15:30 2012 +0200

    Print control codes only in graphic mode
    
    Non handled codes must be ignored, except in graphic mode. Also STR
    sequences have higher priority than control codes, so they must be handled
    before of them.
    ---
     st.c |  160 ++++++++++++++++++++++++++++++++++++------------------------------
     1 file changed, 87 insertions(+), 73 deletions(-)

commit 034dc71fb8227e8963f22b123f30962ec0b6bca7
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Sat Oct 6 19:13:36 2012 +0200

    Add SI and SO control codes
    
    SI and SO allows change the G0 and G1 selection. This implementation is not
    full vt100 compatible, but it is complatible with linux virtual terminal
    implementation. For full vt100 compatibility we need remake a lot of stuff
    relate to the different charmaps.
    ---
     st.c |    7 +++++--
     1 file changed, 5 insertions(+), 2 deletions(-)

commit fbfa1f83eb501e885d1077e95739a7d7cab2397f
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Sat Oct 6 19:13:08 2012 +0200

    Add SUB and CAN control codes
    
    These control codes reset any escape sequence already initialised.
    ---
     st.c |    7 +++++--
     1 file changed, 5 insertions(+), 2 deletions(-)

commit ac8f05c45a65788523af7223b1a94e8baf890b6e
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Sat Oct 6 19:12:46 2012 +0200

    Add documentation to control codes
    
    Add the documentation from the vt100 manual programmer:
    
    Control         Octal      Action Taken
    Character       Code
    -------------------------------------------
    NUL             000     Ignored on input (not stored in input buffer;
                            see full duplex protocol).
    ENQ             005     Transmit answerback message.
    BEL             007     Sound bell tone from keyboard.
    BS              010     Move the cursor to the left one character position,
                            unless it is at the left margin,
                            in which case no action occurs.
    HT              011     Move the cursor to the next tab stop,
                            or to the right margin if no further tab stops
                            are present on the line.
    LF              012     This code causes a line feed or
                            a new line operation. (See new line mode).
    VT              013     Interpreted as LF.
    FF              014     Interpreted as LF.
    CR              015     Move cursor to the left margin on the current line.
    SO              016     Invoke G1 character set, as designated by SCS
                            control sequence.
    SI              017     Select G0 character set, as selected by ESC ( sequence.
    XON             021     Causes terminal to resume transmission.
    XOFF            023     Causes terminal to stop transmitted all codes
                            except XOFF and XON.
    CAN             030     If sent during a control sequence, the sequence is
                            immediately terminated and not executed. It also causes
                            the error character to be displayed.
    SUB             032     Interpreted as CAN.
    ESC             033     Invokes a control sequence.
    DEL             177     Ignored on input (not stored in input buffer).
    --------------------------------------------
    ---
     st.c |   28 +++++++++++++++++++---------
     1 file changed, 19 insertions(+), 9 deletions(-)

commit 02f3b37a2d354c74169f5ed038bb1cb6225d691a
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Oct 6 13:45:14 2012 +0200

    Forgot to remove the xclearborders() definition from the last commit.

commit 0cc7ee5e737c9df5a41a4bca708e583117830085
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Oct 6 13:43:01 2012 +0200

    Removing the xclearborders() hack. St now cleans up the parts of the border,
    
    if something needs to be drawn close to it.

commit 4eddf19fdc2f3845c927291b99d3faefe73f98f3
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Oct 6 09:58:45 2012 +0200

    The style inquisition was here. Yes, making it a unified style. The last
    
    infidels will be squashed too!

commit 7efa4514d104d51793c4dd01ddedd4976080be07
Author: Christoph Lohmann <20h@r-36.net>
Date:   Fri Oct 5 22:59:08 2012 +0200

    Adding the patch of David Dufberg Töttrup to implement WM_DELETE_WINDOW. Thank you!

commit bf6cf05ba5211b35d7b10169624679428c5f4974
Author: Christoph Lohmann <20h@r-36.net>
Date:   Fri Oct 5 22:51:08 2012 +0200

    Fixing the brightening on bold. For the 256 colors and greyscale I assumed a
    
    reasonable solution.

commit 5caa46cf575a48e6421aaf8757e066f6d32263d9
Author: Christoph Lohmann <20h@r-36.net>
Date:   Fri Oct 5 11:07:55 2012 +0200

    Turning on antialias by default really makes it more unreadable. Maybe if once
    
    the majority has bigger screens, this can be turned on by default again.
    Thanks pancake, for the hint.

commit 0b489c4a6a3da54fd6ce99e19520262a0e6a3cd1
Author: Christoph Lohmann <20h@r-36.net>
Date:   Fri Oct 5 09:38:10 2012 +0200

    When the drawing behaviour was changed underline was not corrected.
    
    Thanks to Peter A. Shevtsov!

commit 2752018e27420947a034d50f1ce165bbb76ae1a8
Author: Christoph Lohmann <20h@r-36.net>
Date:   Thu Oct 4 22:59:45 2012 +0200

    This adds the fontcache dependency to try something out. Additionally the
    
    invert mode now works as expected. In the config.def.h autohint is set to
    false, so the fonts are drawn correctly, without any overlapping.

commit 0d88f1ef75c2fe9403a72c80d6fa8ed199ec474f
Author: Christoph Lohmann <20h@r-36.net>
Date:   Tue Oct 2 12:48:55 2012 +0200

    Thanks to c00kiemon5ter. Not changing bold to bright colors seems to be the
    
    right choice.

commit af9e248f976e8396c5aa7fd021ff95ccab78cb72
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sun Sep 30 20:23:45 2012 +0200

    Removing the now obsolete definitions from the config.def.h file.

commit 5dfd5df4fe566beb17069e6390236854f6ace58f
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sun Sep 30 20:23:10 2012 +0200

    This changes -f to be the parameter for the font. Now -f is -o.
    
    The parameters were reordered according to the alphabet too.

commit 9cae1eb0ded2e1ca604753893e2307531ef73afc
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sun Sep 30 20:10:58 2012 +0200

    Remove the cruft of the user to have to define the different font styles.

commit ed5b8700a6e6c14b814dcc2e54a90eb1868070b5
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Sep 29 11:23:34 2012 +0200

    We need all the colors to be available, so die() on some not available.
    
    This is a new opportunity to see if X11 somewhen handled colors in a strange
    way.

commit d7b1e31eec9a87c666334006de25a7f8102c55a9
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Sep 29 11:17:16 2012 +0200

    All xcolors are not Xft colors and the clearing of the borders has been
    
    optimized. There is a speedup when resizing windows.

commit 29b209f5f55c80e457a5a913a463bd24f8e307e9
Author: Christoph Lohmann <20h@r-36.net>
Date:   Thu Sep 27 19:28:44 2012 +0200

    Vt escape sequences allow escape sequences in escape sequences and escape
    
    sequences, so we have to support escape sequences in escape sequences that
    escape sequences in escape sequences – setting a title won't notify you
    anymore.

commit 3af49e34f666554fcd52a52a7ca15f3e7eafa197
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Wed Sep 26 20:55:18 2012 +0200

    Allow control characters inside escape sequences
    
    Taken from vt100 manual programmer:
    
            Control characters (codes \0 to \37 inclusive) are specifically
            excluded from the control sequence syntax, but may be embedded
            within a control sequence. Embedded control characters are executed
            as soon as they are encountered by the VT100. The processing of the
            control sequence then continues with the next character received.
    ---
     st.c |   68 +++++++++++++++++++++++++++++++++---------------------------------
     1 file changed, 34 insertions(+), 34 deletions(-)

commit a7d7e29300acade90f2025f0b85fa5eae06edb24
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Wed Sep 26 20:53:46 2012 +0200

    Ignore all control characters not handled
    
    Taken from vt100 programmer manual:
    
            Control characters have values of \000 - \037, and \177. The control
            characters recognized by the VT100 are shown in Table 3-10. All
            other control codes cause no action to be taken.
    
    We have to take attention when we are using alternate charset, because in
    this cases they are not used as control characters.
    ---
     st.c |   20 ++++++++++----------
     1 file changed, 10 insertions(+), 10 deletions(-)

commit 375b6e5b175ce0a01d47288e94e9c4a8acc3939a
Author: Christoph Lohmann <20h@r-36.net>
Date:   Wed Sep 26 20:21:59 2012 +0200

    Switching to Liberation Mono as default solely because of line drawing. A next
    
    patch to fix the font symbols in all fonts should make it easier to choose a
    better font.

commit 3a095984b053ebb159956368eb3258f51f50e352
Author: Christoph Lohmann <20h@r-36.net>
Date:   Wed Sep 26 20:21:08 2012 +0200

    Implementing line drawing right.

commit c3b0e2202b908834d3c08e3eaf70e0ac282cf319
Author: Christoph Lohmann <20h@r-36.net>
Date:   Tue Sep 25 21:39:25 2012 +0200

    A reset should reset the line drawing too.

commit 980c5956ed4eb0c1e748f1e5c550fabdaaf4ef14
Author: Christoph Lohmann <20h@r-36.net>
Date:   Tue Sep 25 21:17:43 2012 +0200

    Enabling enacs and adding compatibility to xterm and urxvt for alternative
    
    charsets.

commit eb360e5fd151107ca8088a9c1aad33aa373c4fb0
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Tue Sep 25 21:04:35 2012 +0200

    Fix bug in tputc writing to io file
    
    If -f options is enabled then tputc() writes all the data to a file. Actual
    code assumes that all the strings in 'c' parameters have always 1 byte
    length, but this is not always true, because due to utf-8 encoding some
    characters can have a diferent length. So it is necessary pass string length
    to tputc in order it can call to write() correctly.
    ---
     st.c |    8 ++++----
     1 file changed, 4 insertions(+), 4 deletions(-)

commit 246d704ba0c1d83b3eed2388483300687276b797
Author: Christoph Lohmann <20h@r-36.net>
Date:   Mon Sep 24 14:01:59 2012 +0200

    Changing the default font to DejaVu Sans Mono, which is more appealing and
    
    activating antialiasing.

commit 055a4f6d2cc727cc58509a39e130bdd8dbfa452b
Author: Christoph Lohmann <20h@r-36.net>
Date:   Mon Sep 24 11:04:26 2012 +0200

    The xinit() call needs to be behind all the tty init, otherwise all the
    
    allocated structures are wrong. The xclear() is now done on purpose. Please
    keep X11 calls out of the way of pure tty-related calls.

commit e9c677816c0161a6702dabb244bd2fd918dcb0af
Author: Christoph Lohmann <20h@r-36.net>
Date:   Mon Sep 24 10:31:35 2012 +0200

    Adding a TODO for xft fallback.

commit 74d6abfee5a1455c7c126d6b78760efd65d9d7c3
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Mon Sep 24 10:29:37 2012 +0200

    Add some documentetion to tsetmode
    
    The names of the terminal modes supported by vt102 are (taken from the VT220
    programmer reference manual):
    
    Table 4-7 ANSI-Standardized Modes
    Name  Mnemonic              Parameter (Ps)
    Error (ignored)             -         0 (3/0)
    Keyboard action             KAM       2 (3/2)
    Insert/replace              IRM       4 (3/4)
    Send/receive                SRM       12 (3/1 3/2)
    Line feed/new line          LNM       20 (3/2 3/0)
    
    Table 4-8 ANSI-Compatible DEC Private Modes
    Name  Mnemonic            Parameter (Ps)
    Error (ignored)           -         0 (3/0)
    Cursor key                DECCKM    1 (3/1)
    ANSI/VT52                 DECANM    2 (3/2)
    Column                    DECCOLM   3 (3/3)
    Scroll                    DECSCLM   4 (3/4)
    Screen                    DECSCNM   5 (3/5)
    Origin                    DECOM     6 (3/6)
    Auto wrap                 DECAWM    7 (3/7)
    Auto repeat               DECARM    8 (3/8)
    Printer form feed         DECPFF    18 (3/1 3/8)
    Printer extent            DECPEX    19 (3/1 3/9)
    Text cursor enable        DECTCEM   25 (3/2 3/5)
    National replacement character sets DECNRCM 42 (3/4 3/2)
    
    This patch adds a comment for each one of these sequences.
    ---
     st.c |   26 +++++++++++++++++++++-----
     1 file changed, 21 insertions(+), 5 deletions(-)

commit c3b6345595c6b5ec5925544a2f462458f16cbf6a
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Mon Sep 24 10:28:35 2012 +0200

    Fix LNM sequence
    
    LNM sequence is a standard ANSI mode, not a DEC private mode.
    ---
     st.c |    6 +++---
     1 file changed, 3 insertions(+), 3 deletions(-)

commit 2f215654a4b27eb573fb6551d28bdf760e95ef58
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Mon Sep 24 10:28:05 2012 +0200

    Add KAM sequence
    
    This sequence lock/unlock the keyboard ignoring all the key pressing events
    from X server.
    ---
     st.c |    8 +++++++-
     1 file changed, 7 insertions(+), 1 deletion(-)

commit 11bec67875936ffd954c7c28faf98b3cc25cb47f
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Mon Sep 24 10:27:22 2012 +0200

    Remove unused parameters in ttyresize
    
    ---
     st.c |    6 +++---
     1 file changed, 3 insertions(+), 3 deletions(-)

commit b6cfff16254bb9014f27ff4c5c9e49953ee91735
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Mon Sep 24 10:26:50 2012 +0200

    Clear X window in tsetreset()
    
    tsetreset() is called when it is necessary a full initialization of the
    terminal, so it also should clean the full X window and not only the
    terminal content. It is necessary change the order of the
    initialization in main(), and put xinit before of tnew(), because tnew()
    calls to tsetreset(), and  this can cause a call to xreset() with
    incorrect values.
    ---
     st.c |    3 ++-
     1 file changed, 2 insertions(+), 1 deletion(-)

commit 21a0c4a2e08ede1d04c472497db7d9aef644d00c
Merge: 2b3c121 816a70c
Author: Christoph Lohmann <20h@r-36.net>
Date:   Mon Sep 24 10:24:36 2012 +0200

    Merging xft and current st heads.

commit 2b3c1219c863d9faa30ae58e5bf56d58ada0247d
Author: Christoph Lohmann <20h@r-36.net>
Date:   Mon Sep 24 10:20:45 2012 +0200

    Initial Xft support for st. More to follow.

commit 816a70c01ba6bf5e5d2d5e91830f75ef8e4b595d
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Wed Sep 19 16:03:16 2012 +0200

    use typedef'd unsigned type and regular bool type.

commit 1ba5f4172f0bf8b5001ffcfc69118b62bf0fb78a
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Tue Sep 18 19:13:19 2012 +0200

    config.def.h: typo in comment.

commit 50a619cee3093ad00a5672075b1f8914467d37e0
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Tue Sep 18 19:08:03 2012 +0200

    LEGACY: typo.

commit 0eaed8f085d9b0c4763ca3a42338f40e2401e335
Author: Christoph Lohmann <20h@r-36.net>
Date:   Mon Sep 17 23:14:40 2012 +0200

    Redrawing is fixed.

commit e4bf2679c1bbbd4d4a8bfdf9c1a143b59ce5888c
Author: Christoph Lohmann <20h@r-36.net>
Date:   Mon Sep 17 22:44:27 2012 +0200

    Fixing the redrawing patch of k0ga, so it's using xclear() in redraw() too.

commit 4876d6e05b6c1b17b0c366f15ae72ae48f045068
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Mon Sep 17 22:13:17 2012 +0200

    Clean windows display after resizing
    
    Some times the size after a resizing is not an exact multiply of a number of
    characters, so redrawn the screen using the lines and columns of the neww
    size can cause that some old graphics keep in the screen. Solution is clean
    all the windows with the background color.
    ---
     st.c |    3 +++
     1 file changed, 3 insertions(+)

commit 88a8f85a8a6de56d23510cf6e7810d90478085a5
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Mon Sep 17 22:13:09 2012 +0200

    Copy non set positions as spaces
    
    st selection don't insert in the selection position whose value is not
    set. This is correct for the positions in the end of the line, but cause
    some problems in the beginning. For example echo -e 'a\tb' will print in the
    screen:
    
    a       b
    
    but after selecting and copying in some place you get:
    
    ab
    
    because positions from 1 to 7 don't have any value. This patch deals all
    positions without value as blank (even at the end of the line).
    ---
     st.c |   17 ++++++++++-------
     1 file changed, 10 insertions(+), 7 deletions(-)

commit 111199cf226b33f12e6ee3e66e50fbe5c3566e33
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Mon Sep 17 22:11:28 2012 +0200

    Add newline in error messages
    
    ---
     st.c |    4 ++--
     1 file changed, 2 insertions(+), 2 deletions(-)

commit e3671006dba1c21316c570e11d6688f5513fb44e
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Mon Sep 17 22:11:20 2012 +0200

    Add xcalloc wrapper
    
    malloc and realloc are called through xmalloc and xrealloc, so calloc should
    be called through xcalloc.
    ---
     st.c |   13 +++++++++++--
     1 file changed, 11 insertions(+), 2 deletions(-)

commit 426887ccec8577ee33d1fb44f258d6a70a2eddf1
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sun Sep 16 20:43:51 2012 +0200

    Applying a shortening proposal for the run loop of k0ga.

commit 58a57a23051deba7c77901c9971d839a0db05db0
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Sun Sep 16 14:02:35 2012 +0200

    Remove call to draw in resize
    
    In previous commits draw was removed from all the X events, but I forgot do
    it in resize.
    ---
     st.c |    3 +--
     1 file changed, 1 insertion(+), 2 deletions(-)

commit 2257932261375d663aa5b99ce4592499470ab06a
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sun Sep 16 13:59:10 2012 +0200

    Adding some more fields to the manpage, like authors, license etc.

commit b93741e34df3ebe05f7ccc14f1fd4b0da01bf1fa
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sun Sep 16 13:50:07 2012 +0200

    Remove some solved issues and add some new.

commit 9fbafe55c996324a73a0be3af80edcd39e5a393b
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sun Sep 16 13:22:23 2012 +0200

    Preliminary solution to the stuttering problem.

commit d81250e5f96e96dd430a3fc61b5b47ffc04f98d8
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Sun Sep 16 10:49:12 2012 +0200

    Fix selection bug
    
    After the commit named "Remove timeout in the main loop", selection is not
    working in the proper way. After selecting something, press mouse button in
    a line outside of selection causes an incorrect highlight. This patch fix
    the problem forcing a draw after the press event, but this is only a fast
    hack. Real solution means rewriting selection code.
    ---
     st.c |    5 ++++-
     1 file changed, 4 insertions(+), 1 deletion(-)

commit c5a9b799d44be9c0fa4264dc34d9dd61321be795
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Sun Sep 16 10:48:38 2012 +0200

    Render only once in each main loop iteration
    
    draw() runs over all lines of the screen and renders only the dirty lines,
    this avoids render lines which are not modified since last draw() call. In
    this moment the main loop is something like:
    
         - Wait something to read from file descriptors
         - Read from pseudo tty
         - Call draw() for rending
         - Read X events
    
    This cause the problem that all the X events that have to update the screen
    have to call draw() (because draw() is called before of X events handling),
    so you can have multiples renderings in only one iteration, that will waste
    a lot of resources.
    
    This patch change the main loop to:
    
         - Wait something to read from file descriptors
         - Read from pseudo tty
         - Read X events
         - Call draw() for rending
    
    So X events don't have to worry about rendering, because draw() is called
    after them.
    
    The only place where draw is called outside of the main loop is in redraw(),
    but it is necessary for getting a good tput flash.
    ---
     st.c |   29 ++++++-----------------------
     1 file changed, 6 insertions(+), 23 deletions(-)

commit 85849ce72aa4e9cee307a031b97777e9eba2d453
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Sun Sep 16 10:47:21 2012 +0200

    Remove timeout in the main loop
    
    The main loop waits until there is some data to read in file descriptors of
    the X server or the pseudo tty. But it uses a timeout in select(), which
    causes that st awake each 20 ms, even it doesn't have something to do. This
    patch removes this problem removing the timeout, which is not needed.
    ---
     TODO |    1 -
     st.c |   27 +++------------------------
     2 files changed, 3 insertions(+), 25 deletions(-)

commit 15cc8754c2e272ebac6e86845859816e881da000
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Sun Sep 16 10:46:08 2012 +0200

    Call XSync in redraw
    
    It is necessary call to XSync if you want a good tput flash, because in
    other way you can not be sure that white screen will be shown.
    ---
     st.c |    1 +
     1 file changed, 1 insertion(+)

commit ba1e9daeef0d7e6e52a9889d8f7eb61d74480cf0
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Sun Sep 16 10:45:36 2012 +0200

    Call XdbeQueryExtension before of calling any Xdbe function
    
    XdbeQueryExtension() tells to the caller if the Xdbe extension is present in
    the X server, so it should be called for sanity. But like is said in
    XdbeQueryExtension(3):
    
            No other Xdbe functions may be called before this function.  If a
            client violates this rule, the effects of all subsequent Xdbe calls
            that it makes are undefined.
    
    it is mandatory call this function.
    ---
     st.c |    5 +++--
     1 file changed, 3 insertions(+), 2 deletions(-)

commit a62789788c87425fd90209bad15b324f8dee84da
Author: Christoph Lohmann <20h@r-36.net>
Date:   Fri Sep 14 19:46:07 2012 +0200

    Implementing italic-bold. This will require an increase of the avgWdth.

commit b1563526561a913dc2a69ee78eb5aaa09cc98978
Author: Christoph Lohmann <20h@r-36.net>
Date:   Thu Sep 13 23:21:40 2012 +0200

    Ignore NUL character as a padding character. Telnet may use this. Patch of
    
    Roberto Vargas.

commit 776a022e39a3c8f7c81b35d6b4307ffaa0ae3df8
Author: Christoph Lohmann <20h@r-36.net>
Date:   Thu Sep 13 23:19:57 2012 +0200

    Importing the patch of Roberto Vargas to inherit signal handlers.

commit fe2ba95b3d81127b98a5dc6fa0341a90beabd1a0
Author: Christoph Lohmann <20h@r-36.net>
Date:   Thu Sep 13 07:16:38 2012 +0200

    Reset window title on terminal reset too.

commit 977c5d908903c4c300b02811382a9ab53ec73803
Author: Christoph Lohmann <20h@r-36.net>
Date:   Thu Sep 13 07:04:59 2012 +0200

    Adding a statemant on legacy support.

commit d018c9c8efc3e1781d84d7b7d24e9531bb841b34
Author: Christoph Lohmann <20h@r-36.net>
Date:   Thu Sep 13 07:04:34 2012 +0200

    Adding another bold off sequence.

commit 720cb816dcff55f8b75bdc2a8ffa265f460f5d55
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Wed Sep 12 21:51:55 2012 +0200

    Remove buffering to fileio instead of calling fflush
    
    By default text files are line buffered, and this means that -f option will
    not write the line until a \n is printed. This is not very useful for
    debugging, so a call to fflush was added. This patch substitute this call
    (which will be done by each character painted) by the full remove of the
    buffering in the file.
    ---
     st.c |   12 +++++-------
     1 file changed, 5 insertions(+), 7 deletions(-)

commit b9d5fec4f277b688b3bb4741134abf152e801e90
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Wed Sep 12 21:25:35 2012 +0200

    Add xmalloc and xrealloc wrappers
    
    If malloc  or realloc fail they return NULL. Theorically this condition
    should be tested in the code, but it's a strange condition today (basically
    if this is hapenning thenyou have a big problem), and even Linux never returns
    NULL in the default configuration (only if the process don't have room in
    the space address, something a bit impossible in the case of st). But stis
    enough small for being executed in low resources computers where this can be
    a real problem. So the easy way is creating a wrappers function for them and
    call to die in case of error.
    ---
     st.c |   44 +++++++++++++++++++++++++++++++-------------
     1 file changed, 31 insertions(+), 13 deletions(-)

commit 8f1144edee8f4c9ac54faae2ad522544e9e217fa
Author: Christoph Lohmann <20h@r-36.net>
Date:   Wed Sep 12 13:20:10 2012 +0200

    Make nyancat(1) work. Important release feature!

commit 121d9109e8202aaa8df836f2d23922008bdf2c72
Author: Christoph Lohmann <20h@r-36.net>
Date:   Wed Sep 12 13:08:26 2012 +0200

    Add preliminary blink stubs. Real implementation is still missing.

commit c092bce366ce7469e92f59c889b31fa9037976b2
Author: Christoph Lohmann <20h@r-36.net>
Date:   Wed Sep 12 13:00:39 2012 +0200

    Add another obscure way to set a window title.

commit af29fb2a5015918a8bb32075ab82b4e59d85910a
Author: Christoph Lohmann <20h@r-36.net>
Date:   Mon Sep 10 13:39:41 2012 +0200

    Fixing the too small window in non-tiling window managers.

commit 122ed577027ccbb85b2fe6a0f9449035fe074a9e
Author: Christoph Lohmann <20h@r-36.net>
Date:   Thu Sep 6 08:02:56 2012 +0200

    Making the selection work again.

commit a1cd28f8099eac3938461f9e63ff6b74d4d824ef
Author: Christoph Lohmann <20h@r-36.net>
Date:   Thu Sep 6 00:00:50 2012 +0200

    Allow simpler stdout -f handling.

commit f2da43a0b66f76532ebef5ed2b2c9135aca771a5
Author: Christoph Lohmann <20h@r-36.net>
Date:   Wed Sep 5 23:38:57 2012 +0200

    Adding instantenous debug output and fixing italic with a reset.

commit 86cf8e3073aa5c51f7ea8ea9a9ca5f13dde829c3
Author: Christoph Lohmann <20h@r-36.net>
Date:   Wed Sep 5 23:06:59 2012 +0200

    Adding the removal of the timeouts to the TODO.

commit 4a4ae19158a6d18d63b8e9fce92e6e5e45543746
Author: Christoph Lohmann <20h@r-36.net>
Date:   Wed Sep 5 22:39:09 2012 +0200

    Removing masks for unhandled enter and leaving events.

commit dd0b7a077f5184c0eac99955aeb91f3c6a0d9c11
Author: Christoph Lohmann <20h@r-36.net>
Date:   Wed Sep 5 22:17:42 2012 +0200

    If the selection is cleared, draw() and do it on button press too.

commit f471a32d29ad9e5e06cf5e5d5efc8422483f535e
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Wed Sep 5 21:55:45 2012 +0200

    Unhighlight selection when selection is owner by other window
    
    st marks the active selection using reverse colors in the box selection, but
    once that another window becomes owner of the selection, it is very
    confusing that st keeps highlight the old selection. Usually terminal
    emulators remove the highlight when it is not valid anymore.
    
    X sends a SelectionClear event in this situation, so we only have to add a
    callback which unhighlight the selectin box.
    ---
     st.c |    9 +++++++++
     1 file changed, 9 insertions(+)

commit 017af76f5c89fa1acf9b54ceaad2101dcfd880a0
Author: Christoph Lohmann <20h@r-36.net>
Date:   Wed Sep 5 21:54:52 2012 +0200

    Forcing the parameter limit to xcopy() and selpaste(). Thanks to Rob Pilling.

commit 42505c5215c84db192287337922581ba43dec89d
Author: Christoph Lohmann <20h@r-36.net>
Date:   Wed Sep 5 21:52:01 2012 +0200

    Removing unneeded arguments to copy(). Thanks to Andrew Hills.

commit 462a966ee2c0f49f432bedaf8e6ebdff995262a9
Author: Christoph Lohmann <20h@r-36.net>
Date:   Wed Sep 5 21:48:26 2012 +0200

    Implement italic font support.

commit 56c551e4f4b5678ba770106bf8a679c044bcf57e
Author: Christoph Lohmann <20h@r-36.net>
Date:   Wed Sep 5 01:32:42 2012 +0200

    Add to TODO to make function keys work.

commit a61b9ea82ef65cd00f1d4908113fb9e3f7c7cc66
Author: Christoph Lohmann <20h@r-36.net>
Date:   Wed Sep 5 01:25:37 2012 +0200

    Enable keypad set and unset commands.

commit da4a77edbebbb75fcb549c5ecac326d5e59aeef5
Author: Christoph Lohmann <20h@r-36.net>
Date:   Wed Sep 5 00:58:17 2012 +0200

    Disable BCE again.

commit 98dc91eb82843da4683a16a98050a23746e2fa68
Author: Christoph Lohmann <20h@r-36.net>
Date:   Wed Sep 5 00:09:13 2012 +0200

    Removing the resize issue from the TODO file.

commit 67c1a23053666dbac6b1ff9b17698f59b6b27887
Author: Christoph Lohmann <20h@r-36.net>
Date:   Wed Sep 5 00:08:13 2012 +0200

    Fixing the resizing behaviour.

commit e09709d92d89c8593f7390f12dc22fdc563eb57f
Author: Christoph Lohmann <20h@r-36.net>
Date:   Tue Sep 4 22:51:29 2012 +0200

    Forgot one line. It's late.

commit b1d383a0a344e35dad1064e129f70d52bddfd7b2
Author: Christoph Lohmann <20h@r-36.net>
Date:   Tue Sep 4 22:44:33 2012 +0200

    Cleaning up the fixed window size and the resizing of clients.

commit e02d72441ab6c1fba649ca65824b2d5dbb9db0f4
Author: Christoph Lohmann <20h@r-36.net>
Date:   Tue Sep 4 22:06:54 2012 +0200

    Another thing for TODO – resize.

commit 052a617828e446c8ee17dfefceba447fcf1f50e2
Author: Christoph Lohmann <20h@r-36.net>
Date:   Tue Sep 4 22:05:24 2012 +0200

    Updating the TODO and enabling BCE.

commit 6e88c7f60206275a5378521ef5d3dd96b0b09f36
Author: Christoph Lohmann <20h@r-36.net>
Date:   Tue Sep 4 21:56:55 2012 +0200

    CUP == HVP; CHA == HPA;

commit 59fe59d3d1f922ec3a99c758e54ab88cfdf939be
Author: Christoph Lohmann <20h@r-36.net>
Date:   Tue Sep 4 20:34:43 2012 +0200

    Unifying the old style.

commit 98b6f84bfcb63cff54f8aee87191432fa769346c
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Tue Sep 4 20:33:01 2012 +0200

    Check alternative screen before drawing box selection
    
    Some programs use the alternative screen (vi, less, ...), whose
    content is different of the main screen. If you select text in one of
    the screen, you don't wait the box selection is painted in the other
    screen, so it is necessary check if the selection was done in the same
    screen we are going to paint. Before to this commit, you could do
    something like:
    
            $ LESS="" ls | less
            (select some code)
            q
    
    and selection box remains drawing in the main screen, but the content
    of selection keeps text of the alternate screen.
    ---
     st.c |    7 ++++++-
     1 file changed, 6 insertions(+), 1 deletion(-)

commit 66669a558560c0ba3b5da4cd2009de81d68a2263
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Tue Sep 4 20:31:21 2012 +0200

    Add newline to stderr message
    
    ---
     st.c |    2 +-
     1 file changed, 1 insertion(+), 1 deletion(-)

commit 1d6702024b8930587f719288b86ba5b931ad557c
Author: Christoph Lohmann <20h@r-36.net>
Date:   Mon Sep 3 23:09:34 2012 +0200

    Fixing the border pixel when there is a negative position.

commit 579f12d47b38e23abb1073b8e70d67c0c203c42c
Author: Christoph Lohmann <20h@r-36.net>
Date:   Mon Sep 3 23:02:29 2012 +0200

    Add -g geometry to st and the manpage.

commit 466decd53552059bfba9551a924354ae989cb46a
Author: Christoph Lohmann <20h@r-36.net>
Date:   Mon Sep 3 21:54:40 2012 +0200

    Fixing a type in in2 in the st.info.

commit 930b2c4a7f222e15e6493d5bbb8fd90e681d2626
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Mon Sep 3 21:52:34 2012 +0200

    Force redisplay of all lines in DECSCNM
    
    When it is called DECSCNM all lines become dirty, because it is necessary
    redraw all lines for getting the new colors. It is easy see the problem
    running 'echo ^[[?5h'.
    
    In order to get a correct flash when running tput flash is necessary wait
    after DECSCNM, until the changes are displayed, because in other case the
    switch between reverse on/reverse off will be too much fast and nothing will
    happen.
    ---
     st.c |   12 +++++++++++-
     1 file changed, 11 insertions(+), 1 deletion(-)

commit a984ffc4cb755c6dcdbc153b2591dca0ae6a8ead
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Mon Sep 3 21:52:21 2012 +0200

    Add write I/O to file
    
    This is a theorical feature listed in http://st.suckless.org/goals. All the
    input/output of the terminal will be written to a file, which can be very
    useful for debugging, and also allow interconnect st to other process
    through named pipes.
    ---
     st.1 |    6 ++++++
     st.c |   14 +++++++++++++-
     2 files changed, 19 insertions(+), 1 deletion(-)

commit cfefa054e80afa22d6948bf997a6818e778801f6
Author: Christoph Lohmann <20h@r-36.net>
Date:   Mon Sep 3 21:50:22 2012 +0200

    Patch from Roberto Vargas. »Add initialization strings in terminfo«
    
    
    Taken from the description:
    
    When tput init is executed the list of task performed are (taken from
    terminfo(5)):
    
                  run the program
                         iprog
    
                  output is1 is2
    
                  set the margins using
                         mgc, smgl and smgr
    
                  set tabs using
                         tbc and hts
    
                  print the file
                         if
    
                  and finally
                         output is3.
    
    When reset is executed, a more stronger initialization process is performed,
    so the terminal can return from an unknown state. rs1, rs2 and rs3 are used
    in this case instead of
    using is1, is2 and is3.
    
    This patch makes is2 = rs2, resets insert mode and set normal keypad
    mode. For rs1 it performs a full initilization using ^[c.

commit b11d85c9bef5a49c071553410c3f73c3181c6ece
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sun Sep 2 19:53:50 2012 +0200

    Add standout mode.

commit 7f17a70834961cd1ff748b2621c6fc87c069be22
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sun Sep 2 19:43:29 2012 +0200

    Cleaning up lonely tabs.

commit 588ba51a539d18de5f9497a38ab7875e7b3e1429
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sun Sep 2 19:42:00 2012 +0200

    Make it more obvious where the wrong attribute is used.

commit c79df9f78d0defed1c7420201416c10768c46076
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Sun Sep 2 19:09:35 2012 +0200

    Enable multiple arguments in SM and RM
    
    SM and RM can receive multiple parameters, but the code only was accepting
    only one. This patch join the code of set and reset modes (SM and RM) in a
    common function and uses a loop which deals with all the arguments of the
    sequence. This patch improves xterm and vt100 compability.
    ---
     st.c |  180 ++++++++++++++++++++++++++++--------------------------------------
     1 file changed, 76 insertions(+), 104 deletions(-)

commit 4cdcc395397f7b7db48265f5ce0949effaf99c1f
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Sun Sep 2 19:08:52 2012 +0200

    Add vpa terminfo capability
    
    ---
     st.info |    2 ++
     1 file changed, 2 insertions(+)

commit 81c678e53e21d496a18a1cde539101da77237e24
Author: Christoph Lohmann <20h@r-36.net>
Date:   Thu Aug 30 21:19:53 2012 +0200

    Silencing the compiler but keeping strparse.
    
    This will really be needed when there is a full 256 color support.

commit c58950f2efd8f203e72add7b22e7f5b973c09a7d
Author: Christoph Lohmann <20h@r-36.net>
Date:   Thu Aug 30 21:17:54 2012 +0200

    Applying the CBT patch of Roberto Vargas. Thanks.

commit 91fa81dbac4f09de234921cdf5afacb8c8295919
Author: Christoph Lohmann <20h@r-36.net>
Date:   Thu Aug 30 07:38:47 2012 +0200

    Never trust terminfo fata morganas. And adding other xterm compatibility.

commit 6696ef8563a58ee07e4de5b3a74b52b91934f6a9
Author: Christoph Lohmann <20h@r-36.net>
Date:   Wed Aug 29 23:14:20 2012 +0200

    Add OSC, DSC, PM, APC and settitle.

commit ff040e9894f62fe28bf100488211d0a407740668
Author: Christoph Lohmann <20h@r-36.net>
Date:   Wed Aug 29 21:13:47 2012 +0200

    Adding setb and setf and a comment about terminfo installation.

commit aaef13aaaaddbbf1e793b9df0e9cfc4d6d28d1b9
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Wed Aug 29 20:05:25 2012 +0200

    Add CHT sequence
    
    This sequence performs "Cursor Forward Tabulation <n> tab stops", which
    although is not present in vt100 or vt102, xterm accepts it.
    ---
     st.c |    5 +++++
     1 file changed, 5 insertions(+)

commit 12de47a93393e098d5d48333290a5710a543c3d6
Author: Christoph Lohmann <20h@r-36.net>
Date:   Wed Aug 29 20:01:34 2012 +0200

    Applying the patches of k0ga and changing the LICENSE file in the appropriate
    
    way.

commit c084c06b402de4fe995734a2c89cae26ff7c9064
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Wed Aug 29 19:59:47 2012 +0200

    Add TBC sequence
    
    This sequence clears tab stops in the terminal. If the argument is not present
    or is zero, then removes the tab stop of the current horizontal position. If
    the argument is 3 then removes all the tab stops of the terminal. It was
    necessary modify the terminfo entry tbc, because it has \E[2g instead of the
    correct \E[3g.
    
    Signed-off-by: Roberto E. Vargas Caballero <k0ga@shike2.com>
    ---
     st.c    |   12 ++++++++++++
     st.info |    2 +-
     2 files changed, 13 insertions(+), 1 deletion(-)

commit 93901ca4fee8a1ab71cb8b918f3d65404460f9ce
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Wed Aug 29 19:59:43 2012 +0200

    Add HTS sequence
    
    This sequence adds a new tab stop in the current horizontal position. This
    means that tputtab must be look for the next tab stop in the tabs array
    instead of using a hard coded value offset. Also, CHT sequence XXX message
    is removed because it is not a vt10x sequence (as far as I know it is a
    vt50x sequence), and it is not implemented by linux virtual terminal neither
    by xterm.
    
    Signed-off-by: Roberto E. Vargas Caballero <k0ga@shike2.com>
    ---
     st.c |   12 +++++++++---
     1 file changed, 9 insertions(+), 3 deletions(-)

commit ee7fd748ac7bfabda2ac37251d230b45adb3e138
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Wed Aug 29 19:59:37 2012 +0200

    Add tabs field into Term struct
    
    Tabs stop are simulated in st using a fixed size of 8, always, without be
    worried about sequences changing the tab stops. A user can put a tab stop in
    each horizontal position of the screen, so we need at least one flag for
    each column of the screen. In the same way as dirty flags is used for the
    rows, it is used a bool dinamic array.
    
    Signed-off-by: Roberto E. Vargas Caballero <k0ga@shike2.com>
    ---
     st.c |   22 +++++++++++++++++++---
     1 file changed, 19 insertions(+), 3 deletions(-)

commit c6853fe18564437fe0a4cb06565a0a7d63d40b5a
Author: Brandon Invergo <brandon@invergo.net>
Date:   Fri Aug 3 14:46:40 2012 +0200

    apply post-XDBE patch BORDER fix

commit 94771d05886fbdd2422e66b7c0256ab27fa375cb
Author: Brandon Invergo <brandon@invergo.net>
Date:   Sat Jul 28 14:27:26 2012 +0200

    Implement Xdbe-based double-buffering

commit 8fdba7494fe33d3be1f6f96b8e900ef1bca01d47
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Mon Feb 27 12:48:13 2012 +0100

    update TODO.

commit cfea72c7b48261006079a327a9ce1adbe2bdc3e3
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Mon Feb 27 12:44:02 2012 +0100

    cleanup. refactored dirt-related function.

commit 6c0a1eff2fb2419b9bbfb545d0cf21a2e524efb2
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Thu Feb 16 19:24:46 2012 +0100

    use SHELL as default shell.

commit 7823aeb1f9eb5b7a77b42506f5f60a5743f7f71f
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Thu Feb 16 01:06:45 2012 +0100

    revert to "tip" in VERSION.

commit 83b06565889ff7bae8f335effec80d7da53b2214
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Thu Feb 16 01:05:26 2012 +0100

    Added tag 0.2.1 for changeset 108926a0fe61

commit 970d44a60db7b64279e1c14d8750253580feecaa
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Thu Feb 16 01:05:14 2012 +0100

    bump version.

commit ff5edcfd7055102c46098f18adf1b469eec7caef
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Thu Feb 16 00:59:26 2012 +0100

    replace fwrite by printf.

commit cb2e0e9c31a510cd6cdbbd3b0da231157a975d95
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Thu Feb 16 00:58:16 2012 +0100

    rewrite csidump().

commit 53ac69e90d95e52dedf99129e39a993d45c812ea
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Thu Feb 16 00:33:11 2012 +0100

    clean and name enum definitions.

commit 751fb765e4f26ce1500b4e8ee9f4cd5b6039b495
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Thu Feb 16 00:10:32 2012 +0100

    fix default color overwriten bug.

commit be2877cd042eaf5d0f7dda102f526357aa577232
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Wed Feb 15 19:33:48 2012 +0100

    show dark cursor when unfocused.

commit d8e11bdb0ecbccbaab7d944a577b9557ccff5d52
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Wed Feb 15 19:11:07 2012 +0100

    document possible configuration.

commit 33558ca042357ee7387b7c0ba9574af1106c4037
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Wed Feb 15 19:10:31 2012 +0100

    handle dim/bright colors.

commit 6de1ba6e7437919a137dfc5b925f5504085f4311
Merge: cee6ccc b11e22d
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Mon Feb 13 01:01:41 2012 +0100

    merge

commit b11e22df7d965fb5dff0954623e55093b50d3a62
Author: anselm@garbe.us <unknown>
Date:   Sat Feb 11 10:48:18 2012 +0100

    some minor fixes

commit cee6ccc6ee21fb6a4e4e04c2727aec26b7d47e07
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Wed Feb 8 16:45:52 2012 +0100

    reduce size of each glyph for faster copy.

commit b6b90253b88f6787804c5ced60d48e37394512f2
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Tue Feb 7 23:53:45 2012 +0100

    Added tag 0.2 for changeset 3c2f9f2ab5e4

commit bcb7ec68c2780a65d0d362bafd3690b2a8f5473e
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Sat Jan 21 23:43:03 2012 +0100

    cosmetic, whitespace, etc.

commit df54ab040509829b4baec1673e4b158038ff983d
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Sat Jan 21 23:26:53 2012 +0100

    fix PRINT/DRAW _TIMEOUT and fix redrawing bug.

commit 896310e5928b6daab5f594acd9648ffe8233022e
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Sat Jan 21 23:14:41 2012 +0100

    copy dirty lines to screen, add select() timeout & min time between draw() calls.
    
    
    * add a timeout value (SELECT_TIMEOUT) of 20ms in the select() call
    * wait at least 20ms (DRAW_TIMEOUT) between draw() calls
    * only copy dirty lines from the buffer to the screen
    
    what draw() does:
    * clears dirty lines in the buffer
    * draws the longest same-attributes string of each
      dirty line to the buffer with multiple xdraws() call
    * copies the current dirty line from buffer to the screen with a single
      xcopy() call
    
    this changeset makes st run ~10x faster.

commit 13a8eeb810ccfdaefd58c52328dd0ec867e3ae8d
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Tue Jan 10 22:21:03 2012 +0100

    fix segfault in selection. (thx Martti Kühne)

commit ab9c9a4e3af246d0b4c6419bffb02a23fd5c1462
Merge: a20125a 23bb97d
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Tue Nov 1 16:37:16 2011 +0100

    merge.

commit a20125a3d1fd9fec2af7886a474691a1839f8537
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Tue Nov 1 16:33:43 2011 +0100

    fix selection. (thx Tarmo Heiskanen)

commit 23bb97d9f3b01da5bc4ad5c01616606adee4f1da
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Thu Oct 20 23:26:58 2011 +0200

    drawregion() only copies region on screen.

commit 0dbf9c8c12a5de35d1cef22349ab80e8f0a8f10e
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Thu Oct 20 23:20:59 2011 +0200

    add dirty flag for lines

commit 907cb8bfa69926616639f9a19127117b37326029
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Thu Oct 6 21:32:34 2011 +0200

    no palette limit (thx Nick)

commit 9d613092d6698ef41cb7492cdb3214ee9a5ab4d7
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Thu Sep 22 10:04:58 2011 +0200

    simplify version format.

commit 4bd087766f16bd541a1aebd0b0348ecc5fe9b94c
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Fri Sep 16 18:48:16 2011 +0200

    selection is removed or scrolled properly. (thx Rafa Garcia Gallego)

commit b032814e25ddb166b4621262be4b8a1a0a609e37
Merge: 8e66b5c f78b793
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Fri Sep 16 18:24:13 2011 +0200

    working on old repo, merging recent changesets.

commit 8e66b5cc16831583a1086f3ba9cd0eaa55f02230
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Fri Sep 16 18:21:48 2011 +0200

    move xembedatom in XWindow struct, add link to xembed specs.

commit 8d2d8848e8ac7117adffe9e1d168c5125934dfcf
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Fri Sep 16 18:03:44 2011 +0200

    tweak focus to support XEMBED client message and remove focus on EnterNotify. (thx Adrian)

commit d5f3d120eae2377b8a2f80c94fbb5e4bd7a6189d
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Fri Sep 16 17:57:56 2011 +0200

    remove dup of default window size.

commit f78b793d91f954c769e029fe6e1613c22d30f5cc
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Sun Aug 14 17:15:19 2011 +0200

    change "op" cap in terminfo entry to xterm/rxvt value.

commit 6f260ba164ee302b50398e529f71e305e435504a
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Sun Aug 14 17:13:59 2011 +0200

    fix custom key handling.

commit 8503f954a1cb2d08124fe2c1f0227bd23dffff46
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Thu Jun 9 18:25:56 2011 +0200

    fix focus state when embed in another window.

commit cddbd6eee59104a029087c30f9ff5e7e415bc584
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Thu Jun 9 14:27:07 2011 +0200

    fix segfault with mouse selection. (thx anonymous)

commit 3959a99293785e603270d8798fbe0cb2ba0ae0ee
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Wed Jun 8 21:35:58 2011 +0200

    add -w option to embed st. (thx nodus cursorius)

commit 4736edd469d07685f6ceeb4bfe438ba48335bd81
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Wed Jun 8 20:26:00 2011 +0200

    applied parts of "anonymous" cleanup patch.

commit 189a81caa11a278079fde3e610870e07870d8968
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Wed Jun 8 20:22:38 2011 +0200

    add altscreen escseq alias & caps to terminfo entry. (thx Bert Münnich)

commit 9b404c0dfb99a7fd918760984ba4d0c50d3c87b8
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Wed Jun 8 19:32:10 2011 +0200

    disable mouse highlight when mouse report enabled. (thx Bert Münnich)

commit d59f92d6f19a4a914ba99168fdc42d1783eee1ba
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Wed Jun 8 12:40:35 2011 +0200

    reverse video mode. (thx Bert Münnich)

commit b2db58c2a05168257ee4e4b941f0533c6dde2a10
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Wed Jun 1 19:57:48 2011 +0200

    add status bar (window title) to terminfo. (thx Rafa Gallego)

commit 6734de9b6e1e74e6c713a6a3e22322e80884828d
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Sun May 22 16:57:27 2011 +0200

    set title before mapping window (thx Kamil Cholewiński).

commit 7d352f143655ace75dd4e40432199f18f296da5e
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Sat May 14 17:47:37 2011 +0200

    applied parts of Connor Lane Smith's cleanup patch.

commit 5beae6a62ee15dfe36048e377ebf86df09a0cf82
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Tue May 10 22:55:35 2011 +0200

    macro cleanup.

commit 0107293a446725551ceb756affe50b4853046f05
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Tue May 10 22:54:30 2011 +0200

    add mouse report escape to terminfo entry.

commit 80da37203e1699d9143cacfcfaeae7e7645c645d
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Tue May 10 22:22:44 2011 +0200

    support for x11 xterm mouse reporting

commit 8eaed2cdda375e8e951eb389af3859e18761eddc
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Tue Apr 26 20:29:28 2011 +0200

    whitespace.

commit babf4db52b58da74c9e1072d14cb0b9ef5b4dee7
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Tue Apr 26 20:22:15 2011 +0200

    cleanup.

commit aede91e22a41cbf4b11d64faa42575d1bdbd8446
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Fri Apr 22 00:42:58 2011 +0200

    update TODO

commit 9d5ea14b9dffac863b41432e4ce12b5624592000
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Fri Apr 22 00:18:53 2011 +0200

    selection clicks, shift+arrow keys, fast(er) redraw, key mask in config.h (thx Magnus Leuthner)

commit d3c5aba2d9b0f6046e4cc72fb056cbd56c6314e6
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Sun Apr 3 21:40:33 2011 +0200

    update README.

commit 742a4a18c2a071bf48133a7db6791ec7b74c68b4
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Sun Apr 3 21:05:41 2011 +0200

    quick bug-fixing 0.1.1 release.

commit 73e37f562964c2d1cb6029693d1d79a69a22ff14
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Sun Apr 3 21:04:45 2011 +0200

    update VERSION.

commit 89c8a3a2d9735fe10bcd85b90c8405fa20b4199e
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Sun Apr 3 21:03:48 2011 +0200

    take BORDER into account for selection. (thx Petr Sabata)

commit 9b63dd9f435408caf3f91b4dfa9144a611302dd6
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Sun Apr 3 21:00:55 2011 +0200

    fix utf8 clipboard. (thx Petr Sabata)

commit 1adf2e3978365c1e530d79372dd9d67f17fb19f7
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Sun Apr 3 02:02:31 2011 +0200

    Added tag 0.1 for changeset cbc18c988236

commit 674434ef6f75247fb25d8e5b39786bca9a0cabec
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Sun Apr 3 00:35:02 2011 +0200

    add support for utf8 clipboard. fix usage message.

commit a047431d34aa77ac7a8fab08151fb569bbe2148e
Author: pancake@nopcode.org <unknown>
Date:   Fri Apr 1 09:35:38 2011 +0200

    do not add newline to selection text if next line not selected (Nick)

commit fe724836866d16a6dfd6de3ca3664033d9146a54
Author: pancake@nopcode.org <unknown>
Date:   Fri Apr 1 09:33:28 2011 +0200

    remove debugging printf

commit 1ab42fd49e68a11bfbbe5990ebdab2d3ca502178
Author: pancake@nopcode.org <unknown>
Date:   Fri Apr 1 09:32:41 2011 +0200

    apply Nick's patch to fix some error printf to use stderr

commit 4d649c240326aa3292adf629c90ea528ecbe844f
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Sun Jan 23 12:30:01 2011 +0100

    fix insert key, terminfo and changed TERM back to st. (thx Ondrej Martinek)

commit 0a208cb6168a0acc9b5692b84ef061b25a5e81f1
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Sun Dec 12 13:32:13 2010 +0100

    change X cursor to "I".

commit e8b18dd97b34d29670484b3850c315213f01dfa5
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Wed Dec 8 18:41:55 2010 +0100

    update terminfo entry.

commit fd1149866f5bc4e3cfdbd281cdd3a45d7db56b40
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Wed Dec 8 18:09:39 2010 +0100

    add new line glitch to terminfo entry.

commit 86c5cb6de6644aeea3c480f66bdeb5e685aab86f
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Tue Nov 30 22:55:44 2010 +0100

    change -e behaviour and update man page.

commit 732b9601ed2543b1fa6acbc08ddc05818279265f
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Sun Nov 28 13:17:20 2010 +0100

    -e flag handles arguments.

commit 54bc450dbf057e66bed5f10d13d90a469e5ca8ae
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Sun Nov 28 01:40:39 2010 +0100

    use memmove() instead of memcpy() in ttyread().

commit af75c433e56e74d2ad7a315d504a9303ea532f18
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Sat Nov 27 21:19:31 2010 +0100

    fix and clean ttyread(). buf wasn't static.

commit 41a4497ecfa66c1dbc65202ae80542c18c5d7793
Merge: 00ba696 eaf38bf
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Fri Nov 26 22:12:54 2010 +0100

    merge.

commit 00ba6969f863c75536910a0138b5161bbd0638c9
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Fri Nov 26 22:11:31 2010 +0100

    s/xw.dis/xw.dpy/

commit eaf38bf310a3c7850df2444fcdd77683ab8e4dc2
Author: pancake@nopcode.org <unknown>
Date:   Wed Nov 24 14:27:44 2010 +0100

    Fix unused variable issue and OSX includes

commit b61925b5d6fd8af0ad0ccc922db60dff1746cfe2
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Sat Nov 20 22:24:04 2010 +0100

    cleanup & bugfix in xdraws().

commit 81a048d6cfda84a06353911130fee029df077c8d
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Fri Nov 19 22:32:39 2010 +0100

    clean comment regarding redrawing in bmotion().

commit b61afd24be566d8c8d7d5310fdad973441139428
Author: Gregor Best <gbe@ring0.de>
Date:   Fri Nov 19 17:13:13 2010 +0100

    Add -c option to override the default window class

commit 70464e208060746ad9184dfc298005fff3035d72
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Thu Nov 18 12:43:33 2010 +0100

    some code cleaning.

commit 9b74fcadc46ee78b38b20e9663c6924cd9df7e84
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Thu Nov 18 01:00:04 2010 +0100

    utf8 support! print text in delicious unicode greatness! all hail to the glorious Damian Okrasa for the patch!
    
    TERM set back to xterm.
    changed default fonts.
    Note: drawing is now (even) slower.

commit d581bfccd7c2987e12809383d8ce1f833529b715
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Mon Nov 8 19:49:13 2010 +0100

    selection code cleanup.

commit b1e6099220f7e10d88adb8d960db27f63f1d8ccb
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Sun Oct 31 20:29:22 2010 +0100

    fixed ED.

commit edfbc9b432bc779ec9c41f7523be52b99edeec85
Author: Devin J. Pohly <djpohly@djpohly.com>
Date:   Mon Oct 25 16:45:13 2010 -0400

    redraw if we scroll on resize

commit 638a30359d26c1f84a87f0f8df17df1765068029
Author: Devin J. Pohly <djpohly@djpohly.com>
Date:   Mon Oct 25 16:00:10 2010 -0400

    get rid of artifacts in border on resize down

commit d85f7319a2c0d0bc53c1e0be6539284823fe7389
Author: Devin J. Pohly <djpohly@djpohly.com>
Date:   Mon Oct 25 15:26:47 2010 -0400

    copy old pixmap to new on resize

commit 12435817723b44189bd412937403c401e5bbc136
Author: Devin J. Pohly <djpohly@djpohly.com>
Date:   Mon Oct 25 15:10:41 2010 -0400

    move code into new xresize func, add early exit to resize

commit 722688d989bae9ce5e71507be5656c9b78ae7834
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Sat Oct 16 20:54:19 2010 +0200

    \v and \f are have the same behaviour of \n.

commit 6f87a39444166674daa94860d365e72343e0b882
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Sat Oct 16 20:50:29 2010 +0200

    added LNM mode; re-organized kpress() to handle it.

commit ce27e634910e10c470b2dcb2edcd20f05d25343b
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Sat Oct 16 17:13:22 2010 +0200

    redraw optimization.

commit 9e004846def39ee73eeb06ba9b1be0e389752441
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Thu Oct 14 19:21:12 2010 +0200

    fixed newline bug.

commit 68d8fcf62a4f016c0292db543c1c2e694afc5b54
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Wed Oct 13 01:27:09 2010 +0200

    replaced memset by loops in tresize(); turns out it's faster.

commit e4bf56ae1a9e2612ec9a6faf2aaecd6eadcccaa7
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Wed Oct 13 01:25:04 2010 +0200

    remove useless draw().

commit d693b304c78708acb911773fe24971ef969d237e
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Wed Oct 13 01:24:11 2010 +0200

    applied xclipboard patch. thx David Isaac Wolinsky.

commit 3a50a4fd931ed58454b680c9fc5c1bc2278e67f3
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Wed Oct 13 00:50:18 2010 +0200

    clean button selection code.

commit 3470e3af23f4b98ce4293f6090c8df59a08329d9
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Tue Sep 21 16:04:13 2010 +0200

    compose key patch. thx federico luna.

commit 6faedce53a8de8a81da1ba045ffbc2b7603128cd
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Sat Sep 11 16:07:36 2010 +0200

    s/hasfocus/focus/ for consistency.

commit ab7037cb33b4be4d16e3197d907066ed5b8ab16b
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Sat Sep 11 16:05:57 2010 +0200

    don't draw if the window is not visible.

commit f693476365c9383ac83420319dd69372c55f9f50
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Sat Sep 11 16:01:41 2010 +0200

    use xclear() in draw().

commit 8c3757986a41ff8fa95b175be40f67d67d7e27b1
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Sat Sep 11 15:59:54 2010 +0200

    use XCreateWindow(), set gravity bit.

commit 273d4ba938dc6bf7edb2b1154ea36c19bfcd22d1
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Fri Sep 3 00:15:43 2010 +0200

    cleaning st.info. added comment in st.c for DECSCNM.

commit c43526153fbe368351f6139f5e672e1798f6d2f1
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Fri Sep 3 00:00:41 2010 +0200

    cleaning st.info. fixed cvvis.

commit 58083da61f53cdcea2112bfe835f8aeebd44850b
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Thu Sep 2 22:35:55 2010 +0200

    set terminal colors to xterm default ones.

commit ebc287271cd1c31a0a44826915257093867733ac
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Thu Sep 2 21:59:05 2010 +0200

    removed gfx chars not present in xterm acsc.

commit 7d325a3797006297e47cbdcb4a5de61348c82664
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Thu Sep 2 20:24:33 2010 +0200

    fixed start/end sequence of gfx.

commit 223909e008bae6fce33cc1ad72e8480fc36805ca
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Thu Sep 2 20:21:40 2010 +0200

    undefined gfx doesn't draw \0.

commit b6af0fdc20cd79861fbf770c71484ec04405e744
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Thu Sep 2 02:03:53 2010 +0200

    fixed makefile.

commit 2080dfebeaf82c6426c9ec2708ec8d96a7af76bb
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Thu Sep 2 02:02:56 2010 +0200

    added manpage.

commit fbc6ec3207fa1298ec8347697ddea6b3e78f13d0
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Thu Sep 2 01:42:03 2010 +0200

    resize from the top.

commit 9d82bdd94708fa2daabc0b53f8b71bca2a3c6f0a
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Thu Sep 2 01:37:01 2010 +0200

    added -e and -t option.

commit 97695baf4f9bc3632792a3330fb46e188ef166a2
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Wed Sep 1 23:20:54 2010 +0200

    factored code and fixed behaviour of tnewline().

commit 32e160c939ba1c6bdda7b2181c72ca6df06d94ad
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Wed Sep 1 22:54:28 2010 +0200

    updated TODO.

commit 42344b715420a26a5711bb687a0e5f68bbcd3c86
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Wed Sep 1 22:54:07 2010 +0200

    started to go through st.info and fix things.

commit a79bc96c94e786c0e542539f80b622147d7385ac
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Wed Sep 1 19:47:46 2010 +0200

    capabilities sorted by capname in st.info. copy acsc from xterm.

commit df5c5ed04547986ad2fd22226aaa3da430310374
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Wed Sep 1 18:12:54 2010 +0200

    removed debug code.

commit 5ce6c5c0324ef3b7d0f5b9e6e2ba4d87ae0d3bb1
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Wed Sep 1 17:21:09 2010 +0200

    fixed IL and DL.

commit ef69118028afad1938951a1f7dff8db2aa557879
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Wed Sep 1 16:26:12 2010 +0200

    factor and cleanup code.

commit f732ca5f1f03a0a496a07aa6bda15f6c363a2484
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Wed Sep 1 00:30:39 2010 +0200

    added correct line drawing characters for default font.

commit cfe897554d4467fdf4c002429370fc7716e419bc
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Tue Aug 31 18:30:18 2010 +0200

    use struct instead of array.

commit 9703859e6c1e2280036dc7992cb4c54688f719f5
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Tue Aug 31 18:22:59 2010 +0200

    cleanup.

commit 591d147af7d59f31a68513f613124d49f25f9859
Author: pancake@nopcode.org <unknown>
Date:   Tue Aug 31 17:36:55 2010 +0200

    fix segfault when selecting big buffers
    
    shift+insert paste clipboard
    honor CFLAGS and LDFLAGS in config.mk

commit 1132d9e2d65f469dedd9c5b6f356495c7a87b743
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Tue Aug 31 16:56:27 2010 +0200

    fix build.

commit c4225bdcc9da2eb87e49608cc1821757cbd69dee
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Tue Aug 31 16:53:34 2010 +0200

    add selinit() and renamed clipboard_* to sel*.

commit f211bc2eedaa8ea86dc66ad04ccd08938c73a93c
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Tue Aug 31 16:30:11 2010 +0200

    move event configuration in xinit().

commit ee858b4805aec3e12bff48cf27433ebcd3f6ac34
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Tue Aug 31 15:36:13 2010 +0200

    use one global struct instead of many vars for selection. Cleanup.

commit 80f70f1c224ec6fb10f04c29ea2205f47ae553ff
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Tue Aug 31 14:52:52 2010 +0200

    use GLYPH_SET to test if a char is set; cleanup.

commit 23cc3fc5715a650c91e3b99074c31aaf63e2102c
Author: pancake@nopcode.org <unknown>
Date:   Tue Aug 31 11:40:57 2010 +0200

    fix crash for small windows
    
    use unconditional infinite loops

commit 160bda1b60148ce8f7d3b001ada2b12f1da9e152
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Tue Aug 31 11:02:17 2010 +0200

    toggle ATTR_REVERSE on selected text, factored some code and fixed Makefile.

commit 596bb133a55a6aba13b55795a9a38e29fcf1b38b
Author: pancake <pancake@nopcode.org>
Date:   Mon Aug 30 23:49:15 2010 +0200

    fix build
    
    use config.def.h mechanism
    add SHELL in config.h

commit 0ba53e48c76a2a2668dfa270cfd0227461c3a91b
Author: pancake <pancake@nopcode.org>
Date:   Mon Aug 30 23:41:37 2010 +0200

    initial implementation of selection and clipboard

commit e1ce89f2678628b1c0e904800822a553de2817de
Author: pancake@nopcode.org <unknown>
Date:   Mon Aug 30 17:07:54 2010 +0200

    fix segfault

commit 12c25bcea973ced6e3b3b03f05cdb3f45fcd9f7f
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Mon Aug 30 16:48:18 2010 +0200

    added support for alternate screen.

commit 326586ba434fb873ebdb81f385ebe838419a98a7
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Mon Aug 30 15:28:29 2010 +0200

    cursor is hid when unfocused.

commit ae5baac932af877cb18df6853d45f033ed9b270f
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Mon Aug 30 13:04:19 2010 +0200

    use predefined OS macro instead of uname.

commit bef87acd0d0e22ba4689be6f1c39ce2d90812317
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Mon Aug 30 01:20:38 2010 +0200

    st should compile on NetBSD.

commit 1bb7398f4b9e38e1c42157717a9dc420bc645d2d
Merge: e851736 581ae58
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Mon Aug 30 03:12:11 2010 +0200

    removed pty.h. minimal system guessing added in config.mk.

commit e851736e8bd6c04f1805659d4783de2314ecb263
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Mon Aug 30 03:05:05 2010 +0200

    removed (visual) bell. '\a' sets the urgency flag if st is unfocused.

commit 188293c828033fd7ff74d753239b3a5052b372a2
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Mon Aug 30 01:45:57 2010 +0200

    removed useless cursor init. and renamed xcursor() to xdrawcursor().

commit 7d88cf88d05c5f5fffbe096da9fac79d7d8957f9
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Mon Aug 30 01:35:37 2010 +0200

    added support for the "magic margin", changed c.hide to c.state, changed xcursor() to use term instead of a
    
    parameter and fixed the cursor position after setting a scrolling region.

commit 1f6e7b84c6131612cb8cb7751a2b373af9957c6d
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Mon Aug 30 01:19:05 2010 +0200

    removed old VT52 escapes, fixed VT100 IND.

commit 581ae58b4182c2d472b30d11dbbef813704642f1
Author: pancake <pancake@nopcode.org>
Date:   Mon Aug 30 00:32:49 2010 +0200

    fix warning

commit 5258d6054599e456c260984b8619500d0b4b75b7
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Sun Aug 29 20:12:44 2010 +0200

    fixed optimized drawing routine and factored some code.

commit b4f623f9109cc38a87469c6430d5e780e9a01989
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Sun Aug 29 19:41:36 2010 +0200

    fixed pixmap buffer drawing.

commit eab9aad1dcd87ba1721bc63ef987203b7a643c69
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Sun Aug 29 19:14:05 2010 +0200

    added a XFlush() in xbell().

commit 2181040594ae63f2821899caba0bef34257a6c2b
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Sun Aug 29 18:55:15 2010 +0200

    moved term.hidec in term.c for consistency, put back delay in xbell()
    
    along with duration in config.h, factored some code in tnew()/treset()
    and cleaned some code.

commit c186c8ef9a995616384c425c5568b6913676b252
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Sun Aug 29 12:27:59 2010 +0200

    merged tscroll() with tscrollup().

commit 6db6980e27bdde6f2d444dd3cdd7a46985fa84fc
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Sat Aug 28 03:18:22 2010 +0200

    st now runs on Linux, OpenBSD and FreeBSD.

commit c56332857145d1c6741d4f6c1bbc87dcc6c6ab97
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Fri Aug 27 13:53:27 2010 +0200

    removed XINERAMA from config.mk and fixed a segfault when st is
    
    started without a display. (thx Hiltjo Posthuma)

commit a1018e0e9e52f29fe220a6af85a237a1a02a732c
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Fri Aug 27 00:58:28 2010 +0200

    fixed potential bug in IS_SET().

commit fbb66da9a9ef3c12c1e8dee7433d003b85d70e9c
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Fri Aug 27 00:28:27 2010 +0200

    merged tcursorwrap() with tnewline(), added few comments and updated copyright.

commit 42b2912e2151f02e181bd014ce1610f7e03a7d07
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Fri Aug 27 00:05:50 2010 +0200

    cleaned some spaces.

commit 5d611cd5476b56884077120bc2a6ba9727fcdd2c
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Thu Aug 26 23:43:08 2010 +0200

    added macro to test flags, removed tmovecursor().

commit 4db3df312ada9d92564d5580fb4e67f7704efff8
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Thu Aug 26 21:37:12 2010 +0200

    faster resizing.

commit e8c13ebe8001a7870a70b698d8b8fa80b7c90fd3
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Thu Aug 26 21:36:21 2010 +0200

    close master/slave pty in the shell process.

commit 5c93f399c564f3475ffa4d3b3314a06db533e410
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Thu Aug 26 21:34:37 2010 +0200

    clean \t.

commit 44226483fb0a3d6270970399d8a91abb2d16146b
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Thu Aug 26 21:33:53 2010 +0200

    update function prototypes.

commit b09401b96b640a796d11774664c49031cee3245a
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Thu Aug 26 21:32:34 2010 +0200

    fix \b and clean \t.

commit a7922bd1d94ace6d14e40a27820e217cd6c4e632
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Sun Aug 22 19:46:46 2010 +0200

    added F1-12 key, fixed DCH and ICH.

commit ce3f4fc647be3ab28f934db9365445a56ebd85bf
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Thu Aug 19 12:46:54 2010 +0200

    fixed backspace problem, updated terminfo entry and moved TNAME in config.h.

commit d2f157c7418e2762316e5471f819ec1e5c49e93c
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Fri Aug 13 22:43:30 2010 +0200

    renamed a function.

commit 10e49a0505a250fc78c41842d93eb2a0abaf4c93
Author: Anselm R Garbe <anselm@garbe.us>
Date:   Sat Jul 24 12:09:14 2010 +0100

    applied Devin J Pohly's st color info patches, thanks Devin!

commit 9e8f5f1348e3a38d5c0d90bddcf40c9c03caa098
Author: pancake@nopcode.org <unknown>
Date:   Thu Jul 8 17:34:02 2010 +0200

    fix gcc warnings

commit 499c70cda048e9d62ab9085efb3a6d484c64bf37
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Thu Jul 8 16:31:41 2010 +0200

    fixed background color bug (thx Devin J. Pohly).

commit 2f96cfeadaac871456e2e2acae3b997c23c93d63
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Thu Jun 3 23:14:37 2010 +0200

    added PBaseSize hint and set default title to "st".

commit 2f5ebe0a4d71aea0bb3aa0e500765a402e4a96f4
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Wed Jun 2 16:01:30 2010 +0200

    rearranged code, resize fixed.

commit 476f93794acc36ea69dfd33551e311863c8afc9a
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Tue Apr 27 00:04:29 2010 +0200

    little clean up.

commit d01c55c9ab58588d98239c515aa8db6443ae75ca
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Mon Apr 26 19:20:53 2010 +0200

    use SHELL environment variable (thx Thomas Adam)

commit b3b7ffce5f1cb1d82aa26df976f0316d89d15d7f
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Mon Mar 15 23:56:38 2010 +0100

    double-buffering added using pixmap (finally).
    
    results in a lot of simplification :
            - no more dirty flags (perf are good enough).
            - no more ugly gfx call in emulation functions.
    LINESPACE removed from config.h.
    BORDER is now handled correctly.

commit 0f4dd5035ed920c67133f1a4b8aef5cbd957c7be
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Thu Mar 11 23:50:50 2010 +0100

    bold attribute is back.
    
    visibility of the cursor is not saved/loaded anymore.
    scrolling up/down is fixed.
    added RI and RIS sequences.
    fixed cursor drawing bug.

commit 7cdaf130b17e4991da9bb3d8d1341e0092474a73
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Sun Feb 21 14:59:32 2010 +0100

    added VT100 NEL.

commit 639f16d200eee5e297187c582afd9fd2e3e8ef57
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Sun Feb 21 14:39:31 2010 +0100

    added VT100 RI.

commit 636c369d86b6452a89f54c497a9816ca1f866d4e
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Sun Feb 21 14:28:32 2010 +0100

    added VT100 save&load cursor support.

commit 3ba517e796e0c7a73c5030ad791be1db36a8cec5
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Sun Feb 21 14:14:58 2010 +0100

    ECH handled correctly.

commit eff05c7b90429ac4dddbbc53ac7d4c05dfc5efd4
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Mon Feb 8 23:16:55 2010 +0100

    more escapes & more compability:
    
    cursor keys are handled in kpress according to the Application Mode (DECPAM).
    define & enum were renamed.
    tcursor() is now tmovecursor() which is more correct.
    tcpos() is now tcursor(), as DECSC is also supposed to save attributes.
    capnames are indicated whenever possible.
    
    Currently:
    alsamixer looks fine, totally usable.
    ncmpc is almost ok.
    emacs looks like shit.

commit e6b3f5c755349ba7a339dd43958870e4cceb57bf
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Wed Feb 3 16:18:04 2010 +0100

    graphic charset and a few more escapes.

commit 0981437524b64579cc656f60b0108abdcdf8a0cd
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Wed Feb 3 03:25:35 2010 +0100

    TERM set to xterm by default (which broke a lot of stuff), better escape handling (title), and a little clean up.

commit f2dff29a16ef0eb1a0b680cdd753471ba406e4f5
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Wed Oct 28 14:34:22 2009 +0100

    drawing is faster but the bold attr is not supported anymore.

commit 4e6915a16b75c1e79142e15a9b23e761140d4e9b
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Mon Sep 7 21:19:29 2009 +0200

    Fixed possible segfault by reverting to the key struct (again).

commit dab8326e6428a5db6b7a6e08f40fa1e5ac77bc6f
Author: Anselm R Garbe <garbeam@gmail.com>
Date:   Fri Jul 10 16:27:14 2009 +0100

    only compile tdump if DEBUG flag is set

commit cf65699a29683bff9d50187c18b160e21a538f48
Author: Anselm R Garbe <garbeam@gmail.com>
Date:   Fri Jul 10 16:23:11 2009 +0100

    we definately need pixmaps for the drawing, currently drawing into the window is painfully slow! much more slower than drawing into a pixmap and mapping that when finished -- several optimisations

commit 0a5e5102096d65a3ba8e39ea9b9b0eb89fe30e04
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Sun Jun 21 19:52:06 2009 +0200

    reverted back to the old Key struct.

commit 4d794b3479cc586de7796d9b060b2eb469a6500d
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Sun Jun 21 19:37:12 2009 +0200

    updated "key" to a lookup table.

commit 44d8c319a9fe51b011ba6a44779659aec45023a7
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Wed Jun 17 20:44:36 2009 +0200

    removed old unused cursor() proto.

commit b8ffa1d7e9cffda8bd8cc7f4ccf612201a617b34
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Wed Jun 17 02:58:40 2009 +0200

    fixed the scrolling bug and cleaned some stuff.

commit d5f4554431f82424af40600ed6835672ab8e44ae
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Tue Jun 16 12:34:10 2009 +0200

    dump escseq if not handled.

commit 53937e045aba6cdefd9e8e81556b306976691747
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Tue Jun 16 02:41:45 2009 +0200

    clean up.

commit 2e37752961f439c33614a9d8469d7c297f0465cb
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Tue Jun 16 02:33:38 2009 +0200

    added/removed files, updated Makefile.

commit 8b4bfe31ec1075316dbb2e7d21753771ae3e5590
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Tue Jun 16 02:23:46 2009 +0200

    made kpress() more flexible, removed st.h, added config.h.

commit 5d8aa08ba5a13b20166f21540370b01e239819b1
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Thu Jun 11 17:03:25 2009 +0200

    updated TODO.

commit ad39f000be87ec16e74c05bdc3fa81ef307b5477
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Thu Jun 11 16:41:14 2009 +0200

    added sigchld handler, cleaned error checking.

commit 2f35cef54b5a32b5498aded0a25f78d0d973a152
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Thu May 28 01:33:01 2009 +0200

    cleaned up (removed space indentation). select/event bug fixed.

commit 129bcd7586968ed882e41c0df76c5c0c0c414e6d
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Tue May 26 02:21:02 2009 +0200

    fixed a memory leak & segfault in tresize.

commit 059d2ba264f8ee2f6fbdb4d7199b611433ad8a72
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Fri May 15 00:40:47 2009 +0200

    updated TODO.

commit a866108af2c6c008e37a32c61cee931efa5e4f9a
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Fri May 15 00:39:51 2009 +0200

    tab moves the cursor instead of inserting spaces.

commit 1cf8b77d2798a43c979b71e16fd45d63b808f569
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Thu May 14 01:03:17 2009 +0200

    handle tabulation (still not perfect)

commit 0ecfcc39b07bb7cca6a688a743299e6ef990e122
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Thu May 14 00:28:10 2009 +0200

    removed truecolor stuff

commit abe6f3b0e4a76ff80315cf6e958549e8295737d6
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Thu May 14 00:27:37 2009 +0200

    removed the truecolor stuff

commit 86fa756033e9072a4b114a50896baff36b804ce4
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Thu May 14 00:18:05 2009 +0200

    same thing, really fixed this time.

commit ccafacb3ff22c85516ff46a88275097936dfe442
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Thu May 14 00:04:34 2009 +0200

    added some error checking in xinit (fixed the segfault caused by a missing font)

commit fd281ad336166de21c9d8652f465ab40a0f12468
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Sun May 10 23:32:21 2009 +0200

    Removed unused variable and cleaned some comment.

commit d58dd3b8bc42ed31232e4145696d7dacb117a31c
Author: Anselm R Garbe <garbeam@gmail.com>
Date:   Sun May 10 13:17:09 2009 +0100

    backport of local changes

commit 802f1922f93aef1e4876719e107828a1fa15b1a6
Author: Matthias-Christian Ott <ott@enolink.de>
Date:   Fri Sep 5 20:25:34 2008 +0200

    add accidentally omitted word

commit a7f50ebb64892900e5b56e30c6edd83807a4040b
Author: Matthias-Christian Ott <ott@enolink.de>
Date:   Mon Aug 25 17:56:00 2008 +0200

    use stdio(3)

commit 07d1edcd76cf8ec3f6e72e79bbc1481da77e30f7
Author: Matthias-Christian Ott <ott@enolink.de>
Date:   Mon Aug 25 16:29:37 2008 +0200

    add description of std

commit d61a2a8fce2638594644feb664ce04398825b0f3
Author: Matthias-Christian Ott <ott@enolink.de>
Date:   Thu Aug 7 10:38:54 2008 +0200

    add prototype for command parsing

commit 240411e7d08006f181afbf70930f748d7585ce85
Author: Matthias-Christian Ott <ott@enolink.de>
Date:   Mon Jul 21 17:10:33 2008 +0200

    correct year of copyright notice

commit e0d0a2b96e84bba95f6f3e274131e3bbfb3a4f56
Author: Matthias-Christian Ott <ott@enolink.de>
Date:   Mon Jul 21 17:06:59 2008 +0200

    simplify Makefile
    
    
    Due to consideration of POSIX compliance issues config.mk had
    to be removed. Configuration variables can be overridden by
    environment variables or specified via command line.
    
    Additionally all pretty-printed messages were removed and
    built-in rules are used. This also simplifies and purges
    the Makefile.

commit 082d8bb82bc478bdd0b1470232ba52976a0c035d
Author: Matthias-Christian Ott <ott@enolink.de>
Date:   Mon Jul 21 10:34:02 2008 +0200

    reunite pty.c with std.c

commit 6c6b65ea6ec775cc02c25b8cf69cce32971f9fe8
Author: Matthias-Christian Ott <ott@enolink.de>
Date:   Mon Jul 21 09:25:47 2008 +0200

    correct programme name

commit 746931a3d4114f9bd35a43307fd48bfa64ff0d8b
Author: Matthias-Christian Ott <ott@enolink.de>
Date:   Mon Jul 21 09:25:25 2008 +0200

    use errx() for help and version messages

commit a95f4f2ed9772599c491e582e65f90ff4fd7085d
Merge: fb4508b 7a132bd
Author: Matthias-Christian Ott <ott@enolink.de>
Date:   Thu Jul 10 22:43:24 2008 +0200

    merge with backout head

commit 7a132bd6ac40bfa32b6ac1da412c8c7d35e2d5ca
Author: Matthias-Christian Ott <ott@enolink.de>
Date:   Thu Jul 10 22:42:10 2008 +0200

    Backed out changeset d2bb4220fdf3
    
    
    Ptm and pts are used by pty.c, thus they have to be non-static.

commit fb4508b0b7ca638decb03482535c2087383a523d
Author: Matthias-Christian Ott <ott@enolink.de>
Date:   Wed Jul 9 11:10:38 2008 +0200

    remove TODO

commit 0cbcedb89ffe6e29b3c0640f371bed578c6e0c07
Author: Matthias-Christian Ott <ott@enolink.de>
Date:   Wed Jul 9 10:50:44 2008 +0200

    make ptm and pts static

commit afc73c920df958dabaf1e8e544be47cbe9c919ce
Author: Matthias-Christian Ott <ott@enolink.de>
Date:   Sat Jul 5 13:29:21 2008 +0200

    remove useless variable

commit b3902ca1782515ee8b9cd38af10e51bc3ba2fc98
Author: Matthias-Christian Ott <ott@enolink.de>
Date:   Fri Jul 4 18:18:51 2008 +0200

    remove emallocz()

commit f982c1c37ccc4adc38260a132aa64ee29d1a1a8c
Author: Matthias-Christian Ott <ott@enolink.de>
Date:   Fri Jul 4 18:05:08 2008 +0200

    replace eprint() functions with BSD error functions

commit d83cbc27b99427d00846832a73810f285d8f0d05
Author: Matthias-Christian Ott <ott@enolink.de>
Date:   Sun Jun 15 17:31:24 2008 +0200

    simplify flushing

commit 3cb67937811b34fcc600b4eb96bd8fdd392ecab4
Author: Matthias-Christian Ott <ott@enolink.de>
Date:   Sun Jun 15 09:19:22 2008 +0200

    correct buffering

commit cf147ae9da0221123596b749d4742d06f0ea643b
Author: Matthias-Christian Ott <ott@enolink.de>
Date:   Sat Jun 14 23:29:11 2008 +0200

    make local functions and variables static

commit f9a0524f9430147a3e4a0d200cb3bbd54d1448a4
Author: Matthias-Christian Ott <ott@enolink.de>
Date:   Sat Jun 14 23:24:12 2008 +0200

    add select(2)-based i/o multiplexing

commit a49919a10c11c141f1bfb8414d5c8d2ca9d4a90e
Author: Matthias-Christian Ott <ott@enolink.de>
Date:   Sat Jun 14 23:12:07 2008 +0200

    drop stdio usage
    
    
    Std requires I/O multiplexing which is very complicated with
    stdio, because it provides no transparent buffering.

commit 0c0ada8a7f6e916eb2b05ae5571e375e522d0a2e
Author: Matthias-Christian Ott <ott@enolink.de>
Date:   Sat Jun 14 11:03:29 2008 +0200

    make st and std separate programmes

commit 339e7f35713ae0c35be2537e6639cd5eee592acb
Author: Matthias-Christian Ott <ott@enolink.de>
Date:   Tue Jun 10 18:01:15 2008 +0200

    add missing header file

commit 09fe1e22ce65b2478b47fc2cf1bbe9a9eb966212
Author: Matthias-Christian Ott <ott@enolink.de>
Date:   Tue Jun 10 18:00:15 2008 +0200

    assume glibc by default

commit 5f287254715dd91f2c508a2a6b9853f0ef4ed785
Author: Matthias-Christian Ott <ott@enolink.de>
Date:   Tue Jun 10 17:56:57 2008 +0200

    source utility functions out to util.c

commit 05ebee60843f24201f3e7c5c76ff94b6b5e868b2
Author: Matthias-Christian Ott <ott@enolink.de>
Date:   Tue Jun 10 17:32:15 2008 +0200

    add copyright comment

commit 47d8633f157156ef4701ce71ed7eff766206c107
Author: Matthias-Christian Ott <ott@enolink.de>
Date:   Tue Jun 10 17:30:15 2008 +0200

    source getpty() out to pty.c

commit 0dedee5de8e35f4bab3d707d63be31943715264e
Author: Matthias-Christian Ott <ott@enolink.de>
Date:   Mon Jun 9 22:24:44 2008 +0200

    update TODO

commit 0dce422d31d1178f93ecaf1dcf4e2c0bccb3c076
Author: Matthias-Christian Ott <ott@enolink.de>
Date:   Mon Jun 9 22:21:37 2008 +0200

    correct function name

commit b8f79f0ed0db553745798cd4fb43329ba5c61cef
Author: Matthias-Christian Ott <ott@enolink.de>
Date:   Sun Jun 8 21:36:58 2008 +0200

    remove xinerama flags
    
    
    The xinerama related variables in config.mk are a relict of
    dwm and therefore should be removed.

commit 5e680d7102ec540ca5859a87a82a2c8d93532518
Author: Matthias-Christian Ott <ott@enolink.de>
Date:   Sun Jun 8 21:18:49 2008 +0200

    add missing header file

commit dc01596e6d7b81d52b805a3e8c16e47228325540
Author: Matthias-Christian Ott <ott@enolink.de>
Date:   Sun Jun 8 21:17:02 2008 +0200

    add parser loop

commit 5d055fdc7cb441162f4ff5b67d0cbf6c58439d10
Author: Matthias-Christian Ott <ott@enolink.de>
Date:   Sun Jun 8 20:55:42 2008 +0200

    remove useless variable

commit a6efc851b6b0fa9befe1f81627c5c5955d48e6f6
Author: Matthias-Christian Ott <ott@enolink.de>
Date:   Sun Jun 8 20:47:08 2008 +0200

    replace state with separate variables

commit 50b4785f2650a741f827f4be17ecc18844a1b175
Author: Matthias-Christian Ott <ott@enolink.de>
Date:   Wed Jun 4 19:52:59 2008 +0200

    terminate error message with newline

commit c61b34e8e1883faba38f94b0c6775a47b1267e6f
Author: Matthias-Christian Ott <ott@enolink.de>
Date:   Mon Jun 2 20:15:52 2008 +0200

    correct LENGTH()

commit 693e2413c8c114c6a95327a609c28be643b9d582
Author: Matthias-Christian Ott <ott@enolink.de>
Date:   Mon Jun 2 20:01:35 2008 +0200

    simplify control flow

commit 0b3510df45057bf63f0e3b5ce225ff4491912bb8
Author: Matthias-Christian Ott <ott@enolink.de>
Date:   Mon Jun 2 18:42:23 2008 +0200

    remove debug code

commit 40c0ecfe821036a3eefc210e6f5dc09e846ae5bf
Author: Matthias-Christian Ott <ott@enolink.de>
Date:   Mon Jun 2 18:41:23 2008 +0200

    remove stdio slave pty opening

commit e2ac1676b10e71dcc2c11614637ea8f00d3ba9a1
Author: Matthias-Christian Ott <ott@enolink.de>
Date:   Mon Jun 2 18:40:22 2008 +0200

    drop support for proprietary UNIX variants
    
    
    Proprietary UNIX variants like AIX, HP-UX or SCO UNIX
    are nowadays rarely used and maintaining compatibility to
    non-standard operating systems interfaces is wasteful and
    practically useless.
    
    Projects like xterm suffer from backward compatibility to decades-old
    UNIX variants and terminal standards. This does not conform to st's
    design goals.

commit 375efb8891a2d131d46f1582fd770d34464094e0
Author: Anselm R Garbe <garbeam@gmail.com>
Date:   Sun Jun 1 18:04:49 2008 +0100

    slight changes

commit 771ece25e89882a39700d0a24febbda42363d2ef
Author: Anselm R Garbe <garbeam@gmail.com>
Date:   Sun Jun 1 18:02:48 2008 +0100

    applied Matthias-Christians changes to std.c

commit 1987ae4bacf58c588bbc967434be4e39125c37f9
Author: Anselm R Garbe <garbeam@gmail.com>
Date:   Tue May 20 10:03:59 2008 +0100

    added some new files for the initial rewrite of st from scratch

commit 16f373e36cb2ef0512ac8a281cc18132b2b14b98
Author: arg@localhost.localdomain <unknown>
Date:   Sun May 11 16:36:13 2008 +0000

    added new TODO
======================: FILES :======================
======================: BRANCHES :======================
======================: LOGINFO :======================
commit edb35a9c93f3f12574bf44175989c9d59853df35
Author: Anuradha Weeraman <anuradha@debian.org>
Date:   Fri Dec 9 19:55:08 2022 +0530

    Changed font to NotoSansMono

commit 4e5587f10cc894e33920c98815d0723b24af8422
Author: Anuradha Weeraman <anuradha@debian.org>
Date:   Wed Dec 7 23:37:57 2022 +0530

    Bumped up alpha

commit e80d99a251f2357e3185f207a4383cf6ee5427ea
Author: Anuradha Weeraman <anuradha@debian.org>
Date:   Wed Dec 7 21:57:05 2022 +0530

    Updated

commit f75bc15e9c33edcaabc3e92e1c3279099d1ea6da
Author: Anuradha Weeraman <anuradha@debian.org>
Date:   Sat Oct 29 16:07:11 2022 +0530

    Removed combined.diff from patch

commit fe2a1107d6c734469c60e824fa7930dc4b806e70
Author: Anuradha Weeraman <anuradha@debian.org>
Date:   Sat Oct 29 16:05:46 2022 +0530

    Fullscreen patch

commit 9c7af03090948aaaa4f3dd03194518eb68a8fb89
Author: Anuradha Weeraman <anuradha@debian.org>
Date:   Sat Oct 29 15:58:47 2022 +0530

    Changed font

commit 787f70cb66c3b2da25d38bb6223237c9fcb94130
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Tue Oct 25 17:11:11 2022 +0200

    fix buffer overflow when handling long composed input
    
    To reproduce the issue:
    
    "
    If you already have the multi-key enabled on your system, then add this line
    to your ~/.XCompose file:
    
    [...]
    <question> <T> <E> <S> <T> <question> :
    "1234567890123456789012345678901234567890123456789012345678901234567890"
    "
    
    Reported by and an initial patch by Andy Gozas <andy@gozas.me>, thanks!
    
    Adapted the patch, for now st (like dmenu) handles a fixed amount of composed
    characters, or otherwise ignores it. This is done for simplicity sake.

commit 9e9c0181b257d3d1d1019ce42d5266f9b4c5d7ff
Author: Anuradha Weeraman <anuradha@debian.org>
Date:   Sat Oct 22 00:35:48 2022 +0530

    Fixed config.diff

commit 33f516bda874e8e867656c8334668ac2ce8cb452
Author: Anuradha Weeraman <anuradha@debian.org>
Date:   Sat Oct 22 00:35:04 2022 +0530

    Fixed direction of config.diff

commit c0c9558b902173be1701d01e95b6b160469c5822
Author: Anuradha Weeraman <anuradha@debian.org>
Date:   Sat Oct 22 00:27:42 2022 +0530

    Added custom patches

commit 68d1ad9b54e952e3079356aeab8ab37e44c56c2c
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Tue Oct 4 19:40:30 2022 +0200

    bump version to 0.9

commit 00085199039ee63acc7b1ecb7e3774a9c3552b2a
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Fri Sep 16 23:07:09 2022 +0200

    FAQ: document the color emojis crash issue which affected some systems is fixed
    
    It is fixed in libXft 2.3.6:
    
    https://gitlab.freedesktop.org/xorg/lib/libxft/-/blob/libXft-2.3.5/NEWS

commit 72fd32736a612edec43596c14148322122a5544d
Author: Tom Schwindl <schwindl@posteo.de>
Date:   Thu Aug 18 14:55:19 2022 +0000

    st: use `void' to indicate an empty parameter list

commit baa9357e96d2478baa52a3301e70ac80a229b726
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Sun May 1 18:38:40 2022 +0200

    Makefile: add manual path for OpenBSD

commit 8629d9a1da72cc18568a8f146307b0e939b77ebf
Author: NRK <nrk@disroot.org>
Date:   Fri Jan 7 23:21:04 2022 +0600

    code-golfing: cleanup osc color related code
    
    * adds missing function prototype
    * move xgetcolor() prototype to win.h (that's where all the other x.c
      func prototype seems to be declared at)
    * check for snprintf error/truncation
    * reduces code duplication for osc 10/11/12
    * unify osc_color_response() and osc4_color_response() into a single function
    
    the latter two was suggested by Quentin Rameau in his patch review on
    the hackers list.

commit ef0551932fb162f907b40185d2f48c3b497708ee
Author: NRK <nrk@disroot.org>
Date:   Fri Mar 18 17:03:34 2022 +0600

    base64_digits: reduce scope, implicit zero, +1 size
    
    the array is not accessed outside of base64dec() so it makes sense to
    limit it's scope to the related function. the static-storage duration of
    the array is kept intact.
    
    this also removes unnecessary explicit zeroing from the start and end of
    the array. anything that wasn't explicitly zero-ed will now be
    implicitly zero-ed instead.
    
    the validity of the new array can be easily confirmed via running this
    trivial loop:
    
            for (int i = 0; i < 255; ++i)
                    assert(base64_digits[i] == base64_digits_old[i]);
    
    lastly, as pointed out by Roberto, the array needs to have 256 elements
    in order to able access it as any unsigned char as an index; the
    previous array had 255.
    
    however, this array will only be accessed at indexes which are
    isprint() || '=' (see `base64dec_getc()`), so reducing the size of the
    array to the highest printable ascii char (127 AFAIK) + 1 might also be
    a valid strategy.

commit af3bb68add1c40d19d0dee382009e21b0870a38f
Author: NRK <nrk@disroot.org>
Date:   Fri Mar 18 16:20:54 2022 +0600

    avoid potential UB when using isprint()
    
    all the ctype.h functions' argument must be representable as an unsigned
    char or as EOF, otherwise the behavior is undefined.

commit 2aefa348baf4b702fdce98eb105bcba175d8283f
Author: Zacchary Dempsey-Plante <zacc@ztdp.ca>
Date:   Sun Mar 13 10:44:08 2022 +0100

    make underlines and strikethroughs respect `chscale`

commit e823e2308f2a99023032a3966ebb7036a31d305f
Author: Santtu Lakkala <inz@inz.fi>
Date:   Thu Feb 17 16:00:47 2022 +0200

    Delay redrawals on palette changes
    
    Build on auto-sync and only mark window dirty on palette changes and let
    the event handler do the actual draw.

commit 2c5edf28ec851907305d73c6218ce75d39f1767f
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Wed Jan 12 09:44:27 2022 +0100

    X10/SGR mouse: use alt as meta key instead of super/windows key

commit b1d97fec47b0d6633addb848131388ec40154ebc
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Mon Jan 10 17:11:17 2022 +0100

    LICENSE: bump year

commit ea7cd7b62fdfa6a1fbd882d1565d557577f2cf32
Author: robert <robertrussell.72001@gmail.com>
Date:   Sat Jan 8 11:40:34 2022 -0800

    Fix mousereport
    
    This patch replaces the previous one I sent.
    
    The following changes are made in this patch:
     - Fix tracking of pressed buttons. Previously, pressing two buttons and
       then releasing one would make st think no buttons are pressed, which
       in particular broke MODE_MOUSEMOTION.
     - Always send the lowest-numbered pressed button on motion events; when
       no button is pressed for a motion event in MODE_MOUSEMANY, then send
       a release. This matches the behaviour of xterm. (Previously, st sent
       the most recently pressed button in the motion report.)
     - Remove UB (?) access to potentially inactive struct member
       e->xbutton.button of XEvent union.
     - Fix (unlikely) possibility of overflow for large button numbers.
    
    The one discrepancy I found between st and xterm is that xterm sometimes
    encodes buttons with large numbers (>5) strangely. E.g., xterm reports
    presses of buttons 8 and 9 as releases, whereas st properly (?) encodes
    them as presses.

commit 7fb0c0cc681f36be2ad12091ef93a41671f32738
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Fri Jan 7 12:39:57 2022 +0100

    bump version to 0.8.5

commit 7e1c68f25d9f08687a94eeef8d7f8ffd0d14b911
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Sun Jan 2 12:15:45 2022 +0100

    FAQ: fix a typo, patch -> path

commit 65f1dc428315ae9d7f362e10c668557c1379e7af
Author: jamin <acdimalev@gmail.com>
Date:   Wed Dec 29 09:07:17 2021 -0800

    Fix overtyping wide characters.
    
    Overtyping the first half of a wide character with the
    second half of a wide character results in display garbage.
    This is because the trailing dummy is not cleaned up.
    
    i.e.  ATTR_WIDE, ATTR_WDUMMY, ATTR_WDUMMY
    
    Here is a short script for demonstrating the behavior:
    
            #!/bin/sh
            alias printf=/usr/bin/printf
            printf こんにちは！; sleep 2
            printf '\x1b[5D'; sleep 2
            printf へ; sleep 2
            printf ' '; sleep 2
            echo

commit a0467c802d4f86ed162486e3453dd61181423902
Author: Jochen Sprickerhof <git@jochen.sprickerhof.de>
Date:   Mon Dec 27 11:41:42 2021 +0100

    Fix null pointer access in strhandle
    
    According to the spec the argument is optional for 104, so p can be
    NULL as can be tested with printf '\x1b]104\x07'. This is a regression
    of 8e31030.

commit 273db5ceaf392e68c2faf8f7dec14ea2e25e980d
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Sun Dec 26 19:00:41 2021 +0100

    follow-up fix for OSC color sequences, return
    
    Otherwise the message "erresc: unknown str" is printed.

commit 8e310303903792c010d03c046ba75f8b18f7d3a7
Author: Raheman Vaiya <r.vaiya@gmail.com>
Date:   Sun Dec 26 18:57:04 2021 +0100

    Add support for OSC color sequences

commit 2f6e597ed871cff91c627850d03152cae5f45779
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Tue Aug 24 13:44:35 2021 +0200

    fix possible rare crash when Xutf8TextPropertyToTextList fails
    
    from the XmbTextListToTextProperty(3) man page:
    
    "If insufficient memory is available for the new value string, the functions
    return XNoMemory.  If the current locale is not supported, the functions return
    XLocaleNotSupported.  In both of these error cases, the functions do not set
    text_prop_return."
    
    Reported by Steffen Nurpmeso <steffen@sdaoden.eu>, thanks!

commit 1d3142da968da7f6f61f1c1708f39ca233eda150
Author: Koichi Murase <myoga.murase@gmail.com>
Date:   Tue Aug 24 06:25:05 2021 +0900

    fix a problem that the standard streams are unexpectedly closed
    
    In the current implementation, the slave PTY (assigned to the variable
    `s') is always closed after duplicating it to file descriptors of
    standard streams (0, 1, and 2).  However, when the allocated slave PTY
    `s' is already one of 0, 1, or 2, this causes unexpected closing of a
    standard stream.  The same problem occurs when the file descriptor of
    the master PTY (the variable `m') is one of 0, 1, or 2.
    
    In this patch, the original master PTY (m) is closed before it would
    be overwritten by duplicated slave PTYs.  The original slave PTY (s)
    is closed only when it is not one of the stanrad streams.

commit 2ec571a30c0c3b1a17f6b3631c80d573582f59a1
Author: Petar Kapriš <petarkapris@firemail.cc>
Date:   Sun Jul 18 00:14:00 2021 +0200

    Add 14th bit to XK_SWITCH_MOD bitmask
    
    The bits of uint signal in an XKeyEvent which concern the key group (keyboard
    layout) are bits 13 and 14, as documented here:
    https://www.x.org/releases/X11R7.7/doc/libX11/XKB/xkblib.html#Groups_and_Shift_Levels
    In the older version, only bit 13 was marked as part of XK_SWITCH_MOD, this
    causes issues for users who have more than two keymaps. the 14th bit is not
    in ignoremod, key sequences are not caught by match(), if they switch to a third
    or fourth keyboard.

commit 4536f46cfff50c66a115755def0155d8e246b02f
Author: Markus F.X.J. Oberhumer <markus@oberhumer.com>
Date:   Sun Mar 28 21:16:59 2021 +0200

    Mild const-correctness improvements.
    
    Only touch a few things, the main focus is to
    improve code readability.

commit 9e68fdbcdb06dfa3d23fe3a7a7f7b59e40e1ea2f
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Fri Mar 19 11:54:36 2021 +0100

    fix: correctly encode mouse buttons >= 8 in X10 and SGR mode
    
    These are typically mapped in X11 to the side-buttons (backward/forwards) on
    the mouse. A comparison of the button numbers in SGR mode (first field):
    
    st old:
    0 1 2 64 65 66 67 68 69 70
    
    st new (it is the same as xterm now):
    0 1 2 64 65 66 67 128 129 130
    
    A script to test and reproduce it, first argument is "h" (on) or "l" (off):
    
            #!/bin/sh
            printf '\x1b[?1000%s\x1b[?1006%s' "$1" "$1"
    
            for n in 1 2 3 4 5 6 7 8 9 10; do
                    printf 'button %d\n' "$n"
                    xdotool click "$n"
                    printf '\n\n'
            done

commit 4ef0cbd8b9371f37f7d02ef37b5378b879e6b8bf
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Sun Oct 18 11:18:03 2020 +0200

    remove unused variable from previous patch

commit 28b4c822c5c0acec300fdf15c6e3ede9f5e2335d
Author: John Collis <john.collis@alliedtelesis.co.nz>
Date:   Sun Sep 6 17:53:41 2020 +1200

    ST: Add WM_ICON_NAME property support
    
    Also added _NET_WM_ICON_NAME.

commit fa253f077f19b3220c7655b81bd91e52f4367803
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Fri Jun 19 11:27:17 2020 +0200

    bump version to 0.8.4

commit b27a383a3acc7decf00e6e889fca265430b5d329
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Wed Jun 17 23:47:00 2020 +0200

    config.mk: use PKG_CONFIG in commented OpenBSD section

commit 81067c65ea4dd80e8eb34755a4f50a4a8c7df06b
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Wed Jun 17 23:44:34 2020 +0200

    LICENSE: bump years

commit f74a9df6e1fc88eebe6d673d888b61fd83cf6fc4
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Wed Jun 17 22:05:48 2020 +0200

    remove sixel stub code
    
    Remove stub code that was used for an experiment of adding sixel code to st
    from the commit f7398434.

commit 818ec746f4caae453d09368b101c3e841cf39870
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Wed Jun 17 21:35:39 2020 +0200

    fix unicode glitch in DCS strings, patch by Tim Allen
    
    Reported on the mailinglist:
    
    "
    I discovered recently that if an application running inside st tries to
    send a DCS string, subsequent Unicode characters get messed up. For
    example, consider the following test-case:
    
        printf '\303\277\033P\033\\\303\277'
    
    ...where:
    
      - \303\277 is the UTF-8 encoding of U+00FF LATIN SMALL LETTER Y WITH
        DIAERESIS (ÿ).
      - \033P is ESC P, the token that begins a DCS string.
      - \033\\ is ESC \, a token that ends a DCS string.
      - \303\277 is the same ÿ character again.
    
    If I run the above command in a VTE-based terminal, or xterm, or
    QTerminal, or pterm (PuTTY), I get the output:
    
        ÿÿ
    
    ...which is to say, the empty DCS string is ignored. However, if I run
    that command inside st (as of commit 9ba7ecf), I get:
    
        ÿÃ¿
    
    ...where those last two characters are \303\277 interpreted as ISO8859-1
    characters, instead of UTF-8.
    
    I spent some time tracing through the state machines in st.c, and so far
    as I can tell, this is how it works currently:
    
      - ESC P sets the "ESC_DCS" and "ESC_STR" flags, indicating that
        incoming bytes should be collected into the strescseq buffer, rather
        than being interpreted.
      - ESC \ sets the "ESC_STR_END" flag (when ESC is received), and then
        calls strhandle() (when \ is received) to interpret the collected
        bytes.
      - If the collected bytes begin with 'P' (i.e. if this was a DCS
        string) strhandle() sets the "ESC_DCS" flag again, confusing the
        state machine.
    
    If my understanding is correct, fixing the problem should be as easy as
    removing the line that sets ESC_DCS from strhandle():
    
    diff --git a/st.c b/st.c
    index ef8abd5..b5b805a 100644
    --- a/st.c
    +++ b/st.c
    @@ -1897,7 +1897,6 @@ strhandle(void)
                    xsettitle(strescseq.args[0]);
                    return;
            case 'P': /* DCS -- Device Control String */
    -               term.mode |= ESC_DCS;
            case '_': /* APC -- Application Program Command */
            case '^': /* PM -- Privacy Message */
                    return;
    
    I've tried the above patch and it fixes my problem, but I don't know if
    it introduces any others.
    "

commit 9ba7ecf7b15ec2986c6142036706aa353b249ef9
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Mon Jun 1 14:09:46 2020 +0200

    FAQ: fix single-buffer patch
    
    rebase against master

commit a2a704492b9f4d2408d180f7aeeacf4c789a1d67
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Sat May 30 21:56:18 2020 +0200

    config.def.h: add an option allowwindowops, by default off (secure)
    
    Similar to the xterm AllowWindowOps option, this is an option to allow or
    disallow certain (non-interactive) operations that can be insecure or
    exploited.
    
    NOTE: xsettitle() is not guarded by this because st does not support printing
    the window title. Else this could be exploitable (arbitrary code execution).
    Similar problems have been found in the past in other terminal emulators.
    
    The sequence for base64-encoded clipboard copy is now guarded because it allows
    a sequence written to the terminal to manipulate the clipboard of the running
    user non-interactively, for example:
    
    printf '\x1b]52;0;ZWNobyBoaQ0=\a'

commit 0f8b40652bca0670f1f0bda069bbc55f8b5e364d
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Sat May 30 21:50:54 2020 +0200

    FAQ: add some details about the w3m img hack
    
    ... and an example patch to switch from double-buffering to a single buffer.

commit e6e2c6199f102f1459b53717050eee27832f4f87
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Sat May 30 21:39:49 2020 +0200

    tiny style fix

commit 94b8ec002101a5e8f52a342e53431eea71aa0631
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Sat May 30 21:34:57 2020 +0200

    Partially add back in "support REP (repeat) escape sequence"
    
    Add the functionality back in for xterm compatibility, but do not expose the
    capability in st.info (yet).
    
    Some notes:
    
    It was reverted because it caused some issues with ncurses in some
    configurations, namely when using BSD padding (--enable-bsdpad, BSD_TPUTS) in
    ncurses it caused issues with repeating digits.
    
    A fix has been upstreamed in ncurses since snapshot 20200523. The fix is also
    backported to OpenBSD -current.

commit dec6b530a4fddf405c1822b2cac6e2036d3c8b75
Author: Steve Ward <planet36@gmail.com>
Date:   Wed May 20 22:24:55 2020 -0400

    Call xsetcursor to set win.cursor in main
    
    In xsetcursor, remove "DEFAULT(cursor, 1)" because 0 is a valid value.
    Increase max allowed value of cursor from 6 to 7 (st extension).

commit 475a0a36cb4fda1da30f014da65988e99b222876
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Sat May 16 18:06:42 2020 +0200

    Revert "support REP (repeat) escape sequence"
    
    This reverts commit e8392b282c2eaa28725241a9612804fb55113da4.
    
    There is currently a bug in older ncurses versions (like on OpenBSD) where a
    fix for a bug with REP is not backported yet. Most likely in tty/tty_update.c:
    
    Noticed while using lynx (which uses ncurses/curses).
    To reproduce using lynx: echo "Z0000000" | lynx -stdin
    
    or using the program:
    
    int
    main(void)
    {
            WINDOW *win;
            win = initscr();
    
            printw("Z0000000");
    
            refresh();
    
            sleep(5);
    
            return 0;
    }
    
    This prints "ZZZZZZZ" (incorrectly).

commit e8392b282c2eaa28725241a9612804fb55113da4
Author: Avi Halachmi (:avih) <avihpit@yahoo.com>
Date:   Thu May 14 18:18:07 2020 +0300

    support REP (repeat) escape sequence
    
    The sequence \e[Nb prints the last printed char N (more) times if it's
    printable, and it's ignored after newline or other control chars.
    
    This is Ecma-048/ANSI-X3.6 sequence and not DEC VT. It's supported by
    xterm, and ncurses uses it when possible, e.g. when TERM is xterm* (and
    with this commit also st*).
    
    xterm supports only codepoints<=255, possibly due to internal limits.
    We support any value/codepoint which was placed in a cell.
    
    To test:
    - tput rep 65 4 -> prints 'AAAA'
    - printf "\342\225\246\033[4b" -> prints U+2566 1+4 times.

commit f8afebdfa0cc9a57b22c39c47e9b585f69453eb7
Author: Roberto E. Vargas <k0ga@shike2.com>
Date:   Sat May 16 10:42:51 2020 +0000

    Add rin terminfo capability
    
    Tianlin Qu discovered that st is missing rin (scroll back #1 lines).

commit bda9c9ffa645ee5e4b2507474ebfa1c5efb889b2
Author: k0ga <k0ga@shike2.com>
Date:   Sat May 16 09:48:18 2020 +0000

    Make shift+wheel behaves as shift+Prev/Next
    
    St uses a very good hack where mouse wheel genereates ^Y and ^E,
    that are the same keys that less and vi uses for backward and
    fordward scrolling. Scroll, as many terminal emulators, use
    shift+Prev/Next for scrolling, but it is also using ^E and ^Y
    for scroling, characters that are reserved in the POSIX shell
    in emacs mode for end of line and yanking, making scroll unsable
    in st.
    
    This patch adds a new hack, making shift+wheel returning the
    same sequences than shift+Prev/Next, meaning that scroll or
    any other similar program will not be able to differentiate
    between them.

commit 045a0fab4f80b57f4a982ae6bc5f33fe21d66111
Author: Jakub Leszczak <szatan@gecc.xyz>
Date:   Wed May 6 13:36:59 2020 +0200

    Fix selection: selscroll

commit 9c30066e73f0105c3fccb7582c8172d5117857b3
Author: Jakub Leszczak <szatan@gecc.xyz>
Date:   Wed May 6 13:35:53 2020 +0200

    Fix selection: ignore ATTR_WRAP when rectangular selection in getsel

commit 8304d4f0599b1be2226c28c553547070658d4af3
Author: Jakub Leszczak <szatan@gecc.xyz>
Date:   Wed May 6 13:35:06 2020 +0200

    Fix selection: selclear in tputc

commit 914fb825df3bde7abdd7947e54f8bf4d2b55e34e
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Sat May 9 14:43:31 2020 +0200

    code-style: add fallthrough comment
    
    Patch by Steve Ward, thanks.

commit cde480c6939e62771ba3b60ef4eb848031aee9f9
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Sat May 9 14:03:14 2020 +0200

    optimize column width calculation and utf-8 encode for ASCII
    
    In particular on OpenBSD and on glibc wcwidth() is quite expensive.
    On musl there is little difference.

commit 8211e36d281990a39db1853bcd454ac59e53d521
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Sat May 9 13:56:28 2020 +0200

    fix for incorrect (partial) written sequences when libc wcwidth() == -1
    
    Fix an issue with incorrect (partial) written sequences when libc wcwidth() ==
    -1. The sequence is updated to on wcwidth(u) == -1:
    
            c = "\357\277\275"
    
    but len isn't.
    
    A way to reproduce in practise:
    
    * st -o dump.txt
    * In the terminal: printf '\xcd\xb8'
    - This is codepoint 888, on OpenBSD it reports wcwidth() == -1.
    - Quit the terminal.
    - Look in dump.txt (partial written sequence of "UTF_INVALID").
    
    This was introduced in:
    
    "       commit 11625c7166b7e4dad414606227acec2de1c36464
            Author: czarkoff@gmail.com <czarkoff@gmail.com>
            Date:   Tue Oct 28 12:55:28 2014 +0100
    
                Replace character with U+FFFD if wcwidth() is -1
    
                Helpful when new Unicode codepoints are not recognized by libc."
    
    Change:
    
    Remove setting the sequence. If this happens to break something, another
    solution could be setting len = 3 for the sequence.

commit 87545c612e8ab6e7cd1ef38e2355d0cb86df79f2
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Sat May 9 13:55:34 2020 +0200

    tiny code-style and typo-fix in comment

commit 1d590910652519268152eae6b97cf30ace4e90c0
Author: Avi Halachmi (:avih) <avihpit@yahoo.com>
Date:   Tue Feb 26 22:37:49 2019 +0200

    auto-sync: draw on idle to avoid flicker/tearing
    
    st could easily tear/flicker with animation or other unattended
    output. This commit eliminates most of the tear/flicker.
    
    Before this commit, the display timing had two "modes":
    
    - Interactively, st was waiting fixed `1000/xfps` ms after forwarding
      the kb/mouse event to the application and before drawing.
    
    - Unattended, and specifically with animations, the draw frequency was
      throttled to `actionfps`. Animation at a higher rate would throttle
      and likely tear, and at lower rates it was tearing big frames
      (specifically, when one `read` didn't get a full "frame").
    
    The interactive behavior was decent, but it was impossible to get good
    unattended-draw behavior even with carefully chosen configuration.
    
    This commit changes the behavior such that it draws on idle instead of
    using fixed latency/frequency. This means that it tries to draw only
    when it's very likely that the application has completed its output
    (or after some duration without idle), so it mostly succeeds to avoid
    tear, flicker, and partial drawing.
    
    The config values minlatency/maxlatency replace xfps/actionfps and
    define the range which the algorithm is allowed to wait from the
    initial draw-trigger until the actual draw. The range enables the
    flexibility to choose when to draw - when least likely to flicker.
    
    It also unifies the interactive and unattended behavior and config
    values, which makes the code simpler as well - without sacrificing
    latency during interactive use, because typically interactively idle
    arrives very quickly, so the wait is typically minlatency.
    
    While it only slighly improves interactive behavior, for animations
    and other unattended-drawing it improves greatly, as it effectively
    adapts to any [animation] output rate without tearing, throttling,
    redundant drawing, or unnecessary delays (sounds impossible, but it
    works).

commit d6ea0a1a61853dd892029a7126e7fdb70c371878
Author: Jan Klemkow <j.klemkow@wemelug.de>
Date:   Thu Apr 30 00:10:02 2020 +0200

    replace exit(3) by _exit(2) in signal handler sigchld()
    
    exit(3) is not async-signal-safe but, _exit(2) is.
    This change prevents st to crash and dump core.

commit 43a395ae91f7d67ce694e65edeaa7bbc720dd027
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Mon Apr 27 13:56:25 2020 +0200

    bump version to 0.8.3

commit 72e3f6c7c05b4d5b56388508bb20a863aec279f5
Author: Ivan Tham <pickfire@riseup.net>
Date:   Sun Apr 19 19:38:39 2020 +0200

    Update XIM cursor position only if changed
    
    Updating XIM cursor position is expensive, so only update it when cursor
    position changed.

commit 33a9a456644ceb235ea6ce61282f3bdce7a8b547
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Sat Apr 11 15:45:06 2020 +0200

    just remove the EOF message

commit 771bc401f76b329f78a285ca65355d4b43415172
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Sat Apr 11 14:46:17 2020 +0200

    Add st-mono terminfo entry
    
    This entry is intended for monocolor display and it is very
    helpful for color haters.

commit d66bd405c0d0f29beff89683a04a10297e962cb9
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Sat Apr 11 13:56:31 2020 +0200

    config.def.h: add a comment for the scroll variable

commit e997303502ddd5c26cfc41af0ff5356bffc04359
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Sat Apr 11 13:29:48 2020 +0200

    Fix small typos

commit c1145268f6b6c6f03a8bec1c09d356d6a4eba77e
Author: Quentin Rameau <quinq@fifth.space>
Date:   Sat Apr 11 12:09:20 2020 +0200

    Launch scroll program with the default shell

commit 0b73612c0dc51dbec1717e5da94bc94559c37246
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Sat Apr 11 11:52:58 2020 +0200

    Update FAQ with the last modifications

commit 019449a7e64a881be8cc5d715fe9de32726ba190
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Fri Apr 10 22:50:23 2020 +0200

    Add terminfo entries for backspace mode
    
    St used to use backspace as BS until the commit 230d0c8, but due
    to general lack of knowledge of lusers, we moved to the most common
    configuration in linux to avoid answering the same question 3 times
    per month. With the most common configuration we have a backspace
    that returns a DEL, and we have a Delete key that doesn't return a
    DEL character neither a BS.
    
    When dealing with devices connected using a serial line (or even
    with Plan9) it is more common Backspace as BS and Delete as DEL. For
    this reason, st is not always the best tool when you talk with a
    serial device.
    
    This patch adds new terminfo entries for Backspace as BS and Delete
    as DEL. A patch for confg.h is also added, to make easier switch
    between both configurations.

commit fbae700a3f32db76106b0ff6f49a73ecf0c2b4fe
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Fri Apr 10 22:26:12 2020 +0200

    Fix style issue

commit e52319cc7d153e4f59b38c4fb4c0556e118d4775
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Fri Apr 10 22:25:46 2020 +0200

    ttyread: test for EOF while reading tty
    
    When a read operation returns 0 then it means that we arrived to the end of the
    file, and new reads will return 0 unless you do some other operation such as
    lseek(). This case happens with USB-232 adapters when they are unplugged.

commit 21e0d6e8b8d20903494386e7e6f43201b3761154
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Fri Apr 10 22:06:32 2020 +0200

    Add support for scroll(1)
    
    Scroll is a program that stores all the lines of its child and be used in st as
    a way of implementing scrollback.
    
    This solution is much better than implementing the scrollback in st itself
    because having a different program allows to use it in any other program
    without doing modifications to those programs.

commit 5703aa0390484dd7da4bd9c388c85708d8fcd339
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Fri Apr 10 12:12:43 2020 +0200

    make argv0 not static, fixes a warning with tcc
    
    Reported by Aajonus, thanks!

commit 28ad28839985e965c9ca06a9a202523414c84ac4
Author: Avi Halachmi (:avih) <avihpit@yahoo.com>
Date:   Thu Apr 2 11:43:22 2020 +0300

    mouseshortcuts: fix custom modifier on release
    
    This line didn't work at mshortcuts at config.h:
    
      /*  mask       button   function  arg       release */
        { ShiftMask, Button2, selpaste, {.i = 0}, 1 },
    
    and now it does work.
    
    The issue was that XButtonEvent.state is "the logical state ... just prior
    to the event", which means that on release the state has the Button2Mask
    bit set because button2 was down just before it was released.
    
    The issue didn't manifest with the default shift + middle-click on release
    (to override mouse mode) because its specified modifier is XK_ANY_MOD, at
    which case match(...) ignores any specific bits and simply returns true.
    
    The issue also doesn't manifest on press, because prior to the event
    Button<N> was not down and its mask bit is not set.
    
    Fix by filtering out the mask of the button which we're currently matching.
    
    We could have said "well, that's how button events behave, you should
    use ShiftMask|Button2Mask for release", but this both not obvious to
    figure out, and specifically here always filtering does not prevent
    configuring any useful modifiers combination. So it's a win-win.

commit 51e19ea11dd42eefed1ca136ee3f6be975f618b1
Author: Ivan Tham <pickfire@riseup.net>
Date:   Tue Feb 18 23:28:47 2020 +0800

    Remove explicit XNFocusWindow
    
    XCreateIC ICValues default XNFocusWindow to XNClientWindow if not
    specified, it can be omitted since it is the same.
    
    From the documentation
    https://www.x.org/releases/current/doc/libX11/libX11/libX11.html
    
    > Focus Window
    >
    > The XNFocusWindow argument specifies the focus window. The primary
    > purpose of the XNFocusWindow is to identify the window that will receive
    > the key event when input is composed.
    >
    > When this XIC value is left unspecified, the input method will use the
    > client window as the default focus window.

commit 26cdfebf31f024e331429e482b1ee342708888e3
Author: Quentin Rameau <quinq@fifth.space>
Date:   Sun Feb 2 21:47:19 2020 +0100

    x: fix XIM handling
    
    Do not try to set specific IM method, let the user specify it with
    XMODIFIERS.
    
    If the requested method is not available or opening fails, fallback to
    the default input handler and register a handler on the new IM server
    availability signal.
    
    Do the same when the input server is closed and (re)started.

commit cd785755f2e3e3305c7d2556a04423a40bce060a
Author: Quentin Rameau <quinq@fifth.space>
Date:   Sun Feb 2 17:38:36 2020 +0100

    x: check we still have an XIC context before accessing it

commit 2cb539142b97bd2a5c1a322fd7c063c6afb67c9b
Author: Quentin Rameau <quinq@fifth.space>
Date:   Sun Feb 2 15:38:08 2020 +0100

    x: do not instantiate a new nested list on each cursor move

commit 99de33395126fc9708f442d155e737b9182f6ef4
Author: Quentin Rameau <quinq@fifth.space>
Date:   Sun Feb 2 15:37:29 2020 +0100

    x: move IME variables into XWindow ime embedded struct

commit 895e5b50a8cc835c19a45e1e328eb4dc78f5fd0c
Author: Ivan Tham <pickfire@riseup.net>
Date:   Sat Jan 18 15:52:25 2020 +0800

    Increase XmbLookupString buffer
    
    Current buffer is too short to input medium to long sentences from IME.
    Input with longer text will show the wrong input, taking 64 instead of
    32 bytes should be enough for most of the cases. Broken cases before,
    
    Chinese (taken from song 也可以)
    可不可以轻轻的松开自己
    
    Japanese (taken from bootleggers rom quote)
    あなたは家のように感じる

commit 384830110bddcebed00b6530a5336f07ad7c405f
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Sun Nov 17 20:04:52 2019 +0100

    update FAQ
    
    - add common question about the w3m image drawing hack.
    - remove some bad advise about $TERM.
    - change some links to https.

commit 2e54a21b5ae249a6bcedab9db611ea86037a018b
Author: Avi Halachmi (:avih) <avihpit@yahoo.com>
Date:   Wed Oct 16 12:55:53 2019 +0300

    OSC 52 - copy to clipboard: don't limit to 382 bytes
    
    Strings which an application sends to the terminal in OSC, DCS, etc
    are typically small (title, colors, etc) but one exception is OSC 52
    which copies text to the clipboard, and is used for instance by tmux.
    
    Previously st cropped these strings at 512 bytes, which for OSC 52
    limited the copied text to 382 bytes (remaining buffer space before
    base64). This made it less useful than it can be.
    
    Now it's a dynamic growing buffer. It remains allocated after use,
    resets to 512 when a new string starts, or leaked on exit.
    
    Resetting/deallocating the buffer right after use (at strhandle) is
    possible with some more code, however, it doesn't always end up used,
    and to cover those cases too will require even more code, so resetting
    only on new string is good enough for now.

commit 289c52b7aa9b0e826bbea6f956755b3199b3ccac
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Wed Oct 16 12:38:43 2019 +0300

    CSIEscape, STREscape: use size_t for buffer length

commit 7ceb3d1f72eabfa678e5cfae176c57630ad98c43
Author: Avi Halachmi (:avih) <avihpit@yahoo.com>
Date:   Wed Oct 16 12:19:49 2019 +0300

    STREscape: don't trim prematurely
    
    STRescape holds strings in escape sequences such as OSC and DCS, and
    its buffer is 512 bytes.
    
    If the input is too big then trailing chars are ignored, but the test
    was off-by-1 such that it took 510 chars instead of 511 (before a
    terminating NULL is added).
    
    Now the full size can be utilized.

commit ea4d933ed9d8ce16699c84892a29e070c70b2eb9
Author: Avi Halachmi (:avih) <avihpit@yahoo.com>
Date:   Wed Oct 16 11:17:23 2019 +0300

    base64dec: don't read out of bounds
    
    Previously, base64dec checked terminating input '\0' every 4 calls to
    base64dec_getc, where the latter progressed one or more chars on each
    call, and could read past '\0' in the way it was used.
    
    The input to base64dec currently comes only from OSC 52 escape seq
    (copy to clipboard), and reading past '\0' or even past the buffer
    boundary was easy to trigger.
    
    Also, even if we could trust external input to be valid base64, there
    are different base64 standards, and not all of them require padding
    to 4 bytes blocks (using trailing '=' chars).
    
    It didn't affect short OSC 52 strings because the buffer is initialized
    to 0's, so typically it did stop within the buffer, but if the string
    was trimmed to fit (the buffer is 512 bytes) then it did also read past
    the end of the buffer, and the decoded suffix ended up arbitrary.
    
    This patch makes base64dec_getc not progress past '\0', and instead
    produce fake trailing padding of '='.
    
    Additionally, at base64dec, if padding is detected at the first or
    second byte of a quartet, then we identify it as invalid and abort
    (a valid quartet has at least two leading non-padding bytes).

commit 83866428de031300eab03fbb116bcf7d2b1d4f60
Author: Sebastian J. Bronner <waschtl@sbronner.com>
Date:   Tue Nov 5 18:16:39 2019 +0100

    Fix tmux terminfo extensions Se and Ss
    
    The tmux terminfo extensions Ss and Se are currently specified as
    booleans in `st.info`. They should be strings. See
    https://github.com/tmux/tmux/blob/eeedb43ae847a0a692ceea965f7556e84bca4fd0/tty-term.c
    lines 254 and 265.
    
    I have used the values from
    https://invisible-island.net/ncurses/terminfo.src.html#toc-_S_I_M_P_L_E_T_E_R_M
    for this patch.

commit 1f09f0b0bbba29ceed9b4e6d558b6ad5b0843cfe
Author: Ingo Lohmar <ingo.lohmar@posteo.net>
Date:   Fri May 31 22:25:35 2019 +0200

    apply hints before initial mapping (ICCCM)
    
    For WM_CLASS this is mentioned in the ICCCM docs
    https://tronche.com/gui/x/icccm/sec-4.html#s-4.1.2.5
    (third sentence).
    
    When changing the WM_CLASS from the command line, this is necessary for
    window managers to pick it up before applying class-based rules.

commit a2c479c4c8d035c11a91e4b954a9f161bf4c7150
Author: Avi Halachmi (:avih) <avihpit@yahoo.com>
Date:   Thu Oct 24 15:42:07 2019 +0300

    mouse shortcuts: allow using forcemousemod (e.g. shift)
    
    The recent mouse shurtcuts commits allow customization, but ignore
    forcemousemod mask (default: shift) as a modifier, for no good reason
    other than following the behavior of the KB shortcuts.
    
    Allow using forcemousemod too, which now can be used to invoke
    different shortcuts, though the automatic effect of forcemousemod will
    be lost for buttons which use mask with forcemousemod.
    
    E.g. the default is:
    
    static uint forcemousemod = ShiftMask;
    ...
    { XK_ANY_MOD,           Button4, ttysend,        {.s = "\031"} },
    ...
    
    where ttysend will be invoked for button4 with any mod when not in mouse
    mode, and with shift when in mouse mode.
    
    Now it's possible to do this:
    { ShiftMask,            Button4, ttysend,        {.s = "foo"} },
    { XK_ANY_MOD,           Button4, ttysend,        {.s = "\031"} },
    
    Which will invoke ttysend("foo") while shift is held and ttysend("\031")
    otherwise. Shift still overrides mouse mode, but will now send "foo".
    
    Previously with this setup the second binding was always invoked
    because the forceousemod mask was always removed from the event.
    
    Buttons which don't use forcemousemod behave the same as before.
    
    This is useful e.g. for the scrollback mouse patch, which wants to
    configure shift+wheel for scrollback, while keeping the normal behavior
    without shift.

commit d2b75db8d7519a20af8bf09e9c205507f9ff828c
Author: Avi Halachmi (:avih) <avihpit@yahoo.com>
Date:   Fri Oct 11 02:26:10 2019 +0300

    mouse shortcuts: don't hardcode selpaste
    
    Because selpaste is activated on release, a release flag was added to
    mouse shortcuts which controls whether activation is on press/release,
    and selpaste binding to button2 was moved to config.h .
    
    button1 remains the only hardcoded mouse button - for selection + copy.

commit b6d280de6df30167ce9cf30fadefc362e77729e7
Author: Avi Halachmi (:avih) <avihpit@yahoo.com>
Date:   Thu Oct 10 23:42:30 2019 +0300

    mouse shortcuts: allow override for all shortcuts
    
    Allow forceselmod to override all mouse shortcuts rather than only
    selection, and rename it to forcemousemod as it's now more appropriate.
    
    This will affect mouse shortcuts which use mask other than XK_ANY_MOD.
    
    This does not affect the default behavior because the default mouse
    shortcuts (wheel) use XK_ANY_MOD, where forceselmod already activated
    the override also before this change.
    
    Previously, if a mouse shortcut was configured with a specific mod and
    forceselmod was held, then the shortcut did not execute unless the
    configured mod included forceselmod.

commit ba7f4d69af62d20e13fea78a408095e017410651
Author: Avi Halachmi (:avih) <avihpit@yahoo.com>
Date:   Thu Oct 10 23:02:26 2019 +0300

    mouse shortcuts: allow same functions as kb shortcuts
    
    Previously mouse shortcuts supported only ttywrite.
    
    This required adding an "Arg" function ttysend - which does what the
    original mouse shortcuts did.

commit 2b8333f553c14c15398e810353e192eb05938580
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Mon Aug 26 17:58:47 2019 +0200

    config.def.h: remove crlf value section
    
    this is not used anymore.
    
    patch sent as an ed script using RFC2549 by k0ga.

commit caa1d8fbea2b92bca24652af0fee874bdbbbb3e5
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Fri May 17 13:00:10 2019 +0200

    FAQ: add entry about color emoji Xft bug
    
    This has been asked many times on IRC and the mailinglist. Make it easier to
    find information about this particular Xft issue by adding it to the FAQ.

commit f1546cf9c1f9fc52d26dbbcf73210901e83c7ecf
Author: Avi Halachmi (:avih) <avihpit@yahoo.com>
Date:   Wed Apr 10 01:54:43 2019 +0300

    selection: fix view to match actual selection on first cell

commit 21367a040f056f6a207fafa066bd1cb2d9cae586
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Fri Mar 15 20:40:16 2019 +0100

    revert part of commit add0211522737b79dad990ccd65c8af63b5cc1dd
    
    "use iswspace()/iswpunct() to find word delimiters
    
        this inverts the configuration logic: you no longer provide a list of
        delimiters -- all space and punctuation characters are considered
        delimiters, unless listed in extrawordchars."
    
    Feedback from IRC and personal preference.

commit b650256044f867851725f712fdac58d4ff294808
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Fri Mar 15 14:44:28 2019 +0100

    dont print color warning on color reset OSC 104 without parameter
    
    also print explicitly "(null)" when printf "%s" p=NULL.
    
    noticed when exiting mutt: printf '\x1b]104\x07'

commit 9acec468fbeaa9f90578352b610431ca9b2d4ee4
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Fri Mar 15 14:42:50 2019 +0100

    minor code-style, initialize var at the top of function

commit 927621f6da015f51710c03279b00c6cc38057e32
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Fri Mar 15 12:31:54 2019 +0100

    config.def.h: tweak extra worddelimiters
    
    This changes the selection more like xterm.
    To test try: "find /" and select a path.

commit add0211522737b79dad990ccd65c8af63b5cc1dd
Author: Lauri Tirkkonen <lotheac@iki.fi>
Date:   Wed Mar 13 17:15:04 2019 +0200

    use iswspace()/iswpunct() to find word delimiters
    
    this inverts the configuration logic: you no longer provide a list of
    delimiters -- all space and punctuation characters are considered
    delimiters, unless listed in extrawordchars.

commit d5efd256aa3840476579a27293ef1fb92a4b51e7
Author: Lauri Tirkkonen <lotheac@iki.fi>
Date:   Wed Mar 13 19:40:52 2019 +0200

    replace utf8strchr with wcschr

commit 75b4ba4b4be70a3ae429b1719d18b021839216d5
Author: Lauri Tirkkonen <lotheac@iki.fi>
Date:   Wed Mar 13 17:08:50 2019 +0200

    be silent about explicitly unhandled mouse modes

commit ed68fe7dce2b21b4e0e595b99d47790e76812cb7
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Sun Mar 3 11:29:43 2019 +0100

    simplify (greedy) font caching allocating a bit
    
    POSIX says:
    "If ptr is a null pointer, realloc() shall be equivalent to malloc() for the
     specified size."

commit 4e0135afeca43f5affe13d7269cb98e7ac526074
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Sun Mar 3 11:23:54 2019 +0100

    style: remove double empty newlines

commit a8cb8e94547d7e31441d2444e8a196415e3e4c1f
Author: magras <dr.magras@gmail.com>
Date:   Thu Feb 28 04:56:01 2019 +0300

    fix use after free in font caching algorithm
    
    Current font caching algorithm contains a use after free error. A font
    removed from `frc` might be still listed in `wx.specbuf`. It will lead
    to a crash inside `XftDrawGlyphFontSpec()`.
    
    Steps to reproduce:
    $ st -f 'Misc Tamsyn:scalable=false'
    $ curl https://www.cl.cam.ac.uk/~mgk25/ucs/examples/UTF-8-demo.txt
    
    Of course, result depends on fonts installed on a system and fontconfig.
    In my case, I'm getting consistent segfaults with different fonts.
    
    I replaced a fixed array with a simple unbounded buffer with a constant
    growth rate. Cache starts with a capacity of 0, gets increments by 16,
    and never shrinks. On my machine after `cat UTF-8-demo.txt` buffer
    reaches a capacity of 192. During casual use capacity stays at 0.

commit e85b6b64660214121164ea97fb098eaa4935f7db
Author: Ivan Tham <pickfire@riseup.net>
Date:   Tue Feb 12 18:41:41 2019 +0100

    better Input Method Editor (IME) support
    
    Features:
    
    - Allow input methods swap with hotkey (E.g. left ctrl + left shift).
    - Over-the-spot pre-editing style, pre-edit data placed over insertion point.
    - Restart IME without segmentation fault.
    
    TODO:
    
    - Automatically pickup IME if st started before IME

commit 75f92eb3489275bfcad901e5ca424134eda6e2f4
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Sat Feb 9 12:48:39 2019 +0100

    bump version to 0.8.2

commit 3be4cf11d79ca87ff1fbbb57801913ec6f822429
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Thu Jan 10 18:16:17 2019 +0100

    config: add Shift+Insert as selpaste() again
    
    This was changed before in:
    commit 20f713548de451b67db3306cf8cf7b2f38fee05c on Wed Jan 25 19:17:38 2017

commit 16d98738e74f189b3a00c23390ab5a9a22b056a1
Author: Paride Legovini <pl@ninthfloor.org>
Date:   Thu Jan 10 13:36:09 2019 +0100

    Let the user specify CPPFLAGS
    
    This complements the work done in d4928ed, allowing the user to specify
    the preprocessor flags with the CPPFLAGS environment variable. This is
    useful for example to specify preprocessor macros with -D.
    
    CFLAGS could be used instead, but CPPFLAGS is more correct and is expected
    to be honored in some cases. For example, the helper scripts to build
    Debian packages make use of CPPFLAGS, but the variable is currently
    being ignored unless manually appended to CFLAGS.

commit e23acb9188b7bc7a7cfc418ac45671003abcc341
Author: Paride Legovini <pl@ninthfloor.org>
Date:   Fri Jan 4 09:48:37 2019 +0100

    Set the path of pkg-config in a variable instead of hardcoding it
    
    In this way the path of pkg-config can be overridden from the command
    line. This is useful for example when cross-compiling.

commit 7e19e116764d2651721cb9062ccaac31b0c771f2
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Fri Jan 4 12:33:01 2019 +0100

    Makefile: fix dependencies on config.h
    
    patch by Younes Khoudli (changed slightly). Thanks

commit 096b125db7ec254002a049ef3a5c1204bd7f0ad9
Author: Lauri Tirkkonen <lotheac@iki.fi>
Date:   Tue Dec 11 11:43:03 2018 +0200

    output child WEXITSTATUS/WTERMSIG on abnormal termination

commit d7bf023b2f2d41cb6983bb3ce2c6d1bf049150b3
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Sun Nov 4 14:35:07 2018 +0100

    fix memory leak in xloadcols()
    
    reported by Avi Halachmi (:avih)" <avihpit@yahoo.com>
    
    patch slightly changed by me.

commit b4d68d4daa2716c0064605a2a92082a7287ee54a
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Sun Nov 4 14:30:56 2018 +0100

    st: small typofix in comment

commit 30ec9a3dc354ab1a561c9edd808046bdf5dfd392
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Tue Sep 11 19:06:35 2018 +0200

    small code-style fix

commit 67d0cb65d0794e2d91e72e5fa1e3612172e5812e
Author: Quentin Rameau <quinq@fifth.space>
Date:   Tue Sep 11 13:11:28 2018 +0200

    Remove the ISO 14755 feature
    
    And move it to the patches section.
    Keeping it would force to add an exec pledge on OpenBSD, and some
    people think it's bloated, so bye!

commit 4f4bccd1627c845330235721f593d2e93418723d
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Tue Jul 17 20:01:58 2018 +0200

    Revert "Simplify cursor color handling"
    
    This reverts commit 1911c9274d9b03f3d7999c6ce26e2d5169642d26.

commit 8ed7a4b3b755407a7724a586ef224051bc306f4f
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Tue Jul 17 20:01:57 2018 +0200

    Revert "Make cursor follow text color"
    
    This reverts commit b51bcd5553af3db394014efbd78acf7828fa48ff.

commit 732be223ee7ba5486713c63f944699fd6285af96
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Tue Jul 17 20:01:54 2018 +0200

    Revert "Fix crash when cursor color is truecolor"
    
    This reverts commit 5535c1f04c665c05faff2a65d5558246b7748d49.

commit 5535c1f04c665c05faff2a65d5558246b7748d49
Author: Jules Maselbas <jules.maselbas@grenoble-inp.org>
Date:   Sun Jul 15 13:53:37 2018 +0200

    Fix crash when cursor color is truecolor
    
    Reported-by: Ivan Tham <pickfire@riseup.net>

commit b51bcd5553af3db394014efbd78acf7828fa48ff
Author: Jules Maselbas <jules.maselbas@grenoble-inp.org>
Date:   Sat Jul 14 11:16:37 2018 +0200

    Make cursor follow text color

commit 1911c9274d9b03f3d7999c6ce26e2d5169642d26
Author: Jules Maselbas <jules.maselbas@grenoble-inp.org>
Date:   Sat Jul 14 11:16:36 2018 +0200

    Simplify cursor color handling

commit 29f341da7cf32888f45005e08de202d9a372d972
Author: Jules Maselbas <jules.maselbas@grenoble-inp.org>
Date:   Wed Jun 27 17:08:30 2018 +0200

    Fix crash on resize
    
    Prevent to realloc xw.specbuc with a negative number of col.
    Add proper hints for the minimal size, for one character.

commit dc3b5babf1f8639a0d65cd347fc7879ac0461012
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Sat Jun 2 17:11:14 2018 +0200

    config.mk: remove extra newline before EOF

commit 235a783e039986fca3ccefec08ea45804dab196f
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Fri May 25 13:04:09 2018 +0200

    code-style for pledge(2)
    
    feedback from Klemens, thanks

commit 30ce2cc002585409b36c630512c6ca4db8f88f15
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Fri May 25 11:59:28 2018 +0200

    Pledge on OpenBSD

commit 041912a791e8c2f4d5d2415b16210d29d7e701c5
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Thu Mar 29 18:30:05 2018 +0200

    error message style and use strerror in a few places

commit bd3f7fd84270025696790512cf3c2dafaf5bc77f
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Thu Mar 29 18:18:30 2018 +0200

    st -v: remove years and copyright text

commit 74cff67bd7746c2636ea7bc78a0b8af2f8c44838
Author: Daniel Tameling <tamelingdaniel@gmail.com>
Date:   Wed Mar 28 21:27:58 2018 +0200

    set sel.alt in selstart instead of selextend

commit 6f0f2b7ec3713351de274707672fbadb6cc727a2
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Tue Mar 20 21:29:10 2018 +0100

    bump version to 0.8.1

commit f4020b2cc4fe45c9e8bfe47fc73deccd867cf9de
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Tue Mar 20 21:25:30 2018 +0100

    fix regression by selecting clipboard text
    
    "restore the old behaviour that the primary doesn't get deleted by a simple
    left click"
    
    Patch by Daniel Tameling <tamelingdaniel@gmail.com>, thanks!

commit a5a928bfc1dd049780a45e072cb4ee42de7219bf
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Tue Mar 20 21:22:27 2018 +0100

    don't modify argv, use a counter
    
    on some platforms (OpenBSD) this changes the exposed argv in tools using
    the kvm_* interface, such as ps and pgrep.

commit 6ac8c8aa50d521f82d491ab54eb972660fdf3207
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Sat Mar 17 13:48:29 2018 +0100

    selextend: clarify: !sel.mode == SEL_IDLE

commit 5345db3c9be1a22ca19202035b881b951c2f0f9e
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Sat Mar 17 13:48:10 2018 +0100

    clipcopy: no need to check for free(NULL), set to NULL after free

commit 7648697f711d5ae336af142e9cd464d943341b24
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Fri Mar 16 16:45:58 2018 +0100

    minor code-style: whitespace fixes

commit 0b507bb73138c636fd0ad6f2321624aae1346d58
Author: Quentin Rameau <quinq@fifth.space>
Date:   Fri Mar 16 16:19:18 2018 +0100

    Fix title initialization

commit e7ef3c4ce95a21cfcd0988d493f636e1d0115871
Author: Quentin Rameau <quinq@fifth.space>
Date:   Fri Mar 16 15:03:10 2018 +0100

    Fix regression from 69e32a6 when setting title.

commit 8ab629031bd958d93deee9203fea32c38fe8ac30
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Wed Mar 14 20:06:42 2018 +0100

    LICENSE: fix a few years

commit a712c2dd1815f83a56be33e8055eee29e05dfef7
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Wed Mar 14 20:00:35 2018 +0100

    update LICENSE: major contributors

commit 0f245dfeb9bb4e87a005da2ecdcd7a88ba6e7f32
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Wed Mar 14 19:54:50 2018 +0100

    Makefile: add all files to make dist

commit 49a4f91fc5caf4b8b64f2b73a6be506fa06917b9
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Wed Mar 14 19:50:37 2018 +0100

    bump version to 0.8

commit c5ba9c025b7ebc34979e839453528f6e4a18712d
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Fri Mar 9 15:36:38 2018 +0100

    use math.h for ceilf

commit b81888ee7d95d9ecb7b1749630b09a96065a8fea
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Fri Mar 9 15:36:25 2018 +0100

    xhints: no need to initialize sizeh

commit 8b8255ac0e188445f6904ff16272e9e93093cbde
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Fri Mar 9 15:35:34 2018 +0100

    regression: include termios.h for tcsendbreak etc

commit 20e0da7f14cc5f30863e0b8014fa223fbaff1e30
Author: Devin J. Pohly <djpohly@gmail.com>
Date:   Sat Feb 24 17:09:13 2018 -0600

    General cleanup
    
    Simplifies logic in a couple places and removes a redundant function
    call.
    
    Signed-off-by: Devin J. Pohly <djpohly@gmail.com>

commit 403c57ebb5b3745ff93e49b87e526c49dc59a5b9
Author: Devin J. Pohly <djpohly@gmail.com>
Date:   Sat Feb 24 16:45:42 2018 -0600

    Clean up #includes
    
    Signed-off-by: Devin J. Pohly <djpohly@gmail.com>

commit e0215d53770a9b6bc6e5d7b9a603ecd34dbd7100
Author: Devin J. Pohly <djpohly@gmail.com>
Date:   Sat Feb 24 16:32:20 2018 -0600

    Reduce visibility wherever possible
    
    When possible, declare functions/variables static and move struct
    definitions out of headers.  In order to allow utf8decode to become
    internal, use codepoint for DECSCUSR extension directly.
    
    Signed-off-by: Devin J. Pohly <djpohly@gmail.com>

commit 30683c70ab62fd37b5921cf72077b9aef2cb842e
Author: Devin J. Pohly <djpohly@gmail.com>
Date:   Sat Feb 24 16:16:12 2018 -0600

    Limit usage of extern to config.h globals
    
    Prefer passing arguments to declaring external global variables.  The
    only remaining usage of extern is for config.h variables which are
    needed in st.c instead of x.c (where it is now included).
    
    Signed-off-by: Devin J. Pohly <djpohly@gmail.com>

commit a3beb626d2dae9d4d0883c7c8cb6ba58b0609105
Author: Devin J. Pohly <djpohly@gmail.com>
Date:   Sat Feb 24 15:32:48 2018 -0600

    Remove x.c dependency on term
    
    The xinit function only needs to the rows/cols, so pass those in rather
    than accessing term directly.  With a bit of arithmetic, we are able to
    avoid the need for term.row and term.col in x2col, y2row, and
    xdrawglyphfontspecs as well, completing the removal.
    
    Term is now fully internal to st.c.
    
    Signed-off-by: Devin J. Pohly <djpohly@gmail.com>

commit a5dc1b46976b2252f9d7bb68f126c4b0f351dd1a
Author: Devin J. Pohly <djpohly@gmail.com>
Date:   Sat Feb 24 14:58:54 2018 -0600

    Pull term references out of xdrawcursor
    
    Gradually reducing x.c dependency on Term object.  Old and new cursor
    glyph/position are passed to xdrawcursor.  (There may be an opportunity
    to refactor further if we can unify "clear old cursor" and "draw new
    cursor" functionality.)
    
    Signed-off-by: Devin J. Pohly <djpohly@gmail.com>

commit 88d8293fb4ba150a5f19d58d133b5db93d9dcfa5
Author: Devin J. Pohly <djpohly@gmail.com>
Date:   Sat Feb 24 14:53:23 2018 -0600

    Move win-agnostic parts of draw/drawregion to st.c
    
    Introduces three functions to encapsulate X-specific behavior:
     * xdrawline: draws a portion of a single line (used by drawregion)
     * xbegindraw: called to prepare for drawing (will be useful for e.g.
       Wayland) and returns true if drawing should happen
     * xfinishdraw: called to finish drawing (used by draw)
    
    Signed-off-by: Devin J. Pohly <djpohly@gmail.com>

commit 05c66cb37d9ff278a3e0c45682c4b5e7945deb42
Author: Devin J. Pohly <djpohly@gmail.com>
Date:   Fri Feb 23 14:16:52 2018 -0600

    Split mode bits between Term and TermWindow
    
    Moves the mode bits used by x.c from Term to TermWindow, absorbing
    UI/input-related mode bits (visible/focused/numlock) along the way.
    
    This is gradually reducing external references to Term.  Since
    TermWindow is already internal to x.c, we add xsetmode() to allow st to
    modify window bits in accordance with escape sequences.
    
    IS_SET() is redefined accordingly (term.mode in st.c, win.mode in x.c).
    
    Signed-off-by: Devin J. Pohly <djpohly@gmail.com>

commit 33201ac65f74e45b4fa60822ba9a538c3cfa9b25
Author: Devin J. Pohly <djpohly@gmail.com>
Date:   Thu Feb 22 01:05:12 2018 -0600

    Move CRLF input processing into ttywrite
    
    This also allows us to remove the crlf field from the Key struct, since
    the only difference it made was converting "\r" to "\r\n" (which is now
    done automatically in ttywrite).  In addition, MODE_CRLF is no longer
    referenced from x.c.
    
    Signed-off-by: Devin J. Pohly <djpohly@gmail.com>

commit 52d6fb1ab1f7d41839edebb63c3408578cd44e3c
Author: Devin J. Pohly <djpohly@gmail.com>
Date:   Thu Feb 22 00:42:23 2018 -0600

    Move terminal echo logic into st.c
    
    The only thing differentiating ttywrite and ttysend was the potential
    for echo; make this a parameter and remove ttysend.
    
    Signed-off-by: Devin J. Pohly <djpohly@gmail.com>

commit cfc7acdfd923924ae150a32061fb95987697b159
Author: Devin J. Pohly <djpohly@gmail.com>
Date:   Wed Feb 21 23:54:29 2018 -0600

    Move remaining selection mode logic into selextend
    
    The "done" parameter indicates a change which finalizes the selection
    (e.g. a mouse button release as opposed to motion).
    
    Signed-off-by: Devin J. Pohly <djpohly@gmail.com>

commit bcb5d3adbe57ead05a829e5144c2ba1dc465865f
Author: Devin J. Pohly <djpohly@gmail.com>
Date:   Wed Feb 21 23:29:41 2018 -0600

    Move terminal-related selection logic into st.c
    
    The front-end determines information about mouse clicks and motion, and
    the terminal handles the actual selection start/extend/dirty logic by
    row and column.
    
    While we're in the neighborhood, we'll also rename getbuttoninfo() to
    mousesel() which is, at least, less wrong.
    
    Signed-off-by: Devin J. Pohly <djpohly@gmail.com>

commit 5683b1f80c5ac274adf98517ce2217b4d4896243
Author: Devin J. Pohly <djpohly@gmail.com>
Date:   Wed Feb 21 22:56:02 2018 -0600

    Move X-specific selection info into XSelection
    
    Data about PRIMARY/CLIPBOARD and clicks are part of the front-end, not
    the terminal.
    
    Signed-off-by: Devin J. Pohly <djpohly@gmail.com>

commit 138caf294ea4d7968df36ead9d5ff5fc49f6215f
Author: Devin J. Pohly <djpohly@gmail.com>
Date:   Wed Feb 21 22:48:28 2018 -0600

    Have selected() check whether selection exists
    
    Signed-off-by: Devin J. Pohly <djpohly@gmail.com>

commit d84f3f4bd15e7d65fc0334cf7d62913c901bad00
Author: Devin J. Pohly <djpohly@gmail.com>
Date:   Wed Feb 21 22:28:41 2018 -0600

    Rely on ttyresize to set tty size
    
    This removes ttynew's dependency on cresize being called first, and then
    allows us to absorb the ttyresize call into cresize (which always
    precedes it).
    
    Signed-off-by: Devin J. Pohly <djpohly@gmail.com>

commit 8b564c1a3f51c08e64c2f589852a02b8595d44ca
Author: Devin J. Pohly <djpohly@gmail.com>
Date:   Mon Nov 6 18:30:45 2017 -0600

    Remove X and fontconfig from st.c
    
    None of the X-related includes are needed any longer.  In addition, move
    the X modifier defines into x.c, as they are not used outside.
    
    Signed-off-by: Devin J. Pohly <djpohly@gmail.com>

commit 3bb900cd6c1c7a5364bd79bce63fdd8711bc878b
Author: Devin J. Pohly <djpohly@gmail.com>
Date:   Mon Nov 6 18:25:58 2017 -0600

    Remove Time argument from xsetsel
    
    This is an X type and should be internal to x.c.
    
    The selcopy() function was a single line and only used in one place, so
    it was inlined to reduce LOC.
    
    Signed-off-by: Devin J. Pohly <djpohly@gmail.com>

commit 323d38da20c8a1d295ab1dbc0fc7ce947ef824e1
Author: Devin J. Pohly <djpohly@gmail.com>
Date:   Mon Nov 6 17:57:45 2017 -0600

    Make win variable internal to x.c
    
    There was only a single reference to the `win` variable in st.c, so
    exporting that to x.c allows us to rid ourselves of another extern.
    
    Signed-off-by: Devin J. Pohly <djpohly@gmail.com>

commit 416dd257274fd334be082b1138338adffa3e2d5e
Author: Devin J. Pohly <djpohly@gmail.com>
Date:   Tue Oct 17 16:46:26 2017 -0500

    Move X-related config.h types into x.c
    
    No need to expose Shortcut, MouseShortcut, and Key anymore.
    
    Signed-off-by: Devin J. Pohly <djpohly@gmail.com>

commit 75c9a0ee1d232a1a177746d97a13cf92b03da44a
Author: Devin J. Pohly <djpohly@gmail.com>
Date:   Tue Oct 17 15:46:31 2017 -0500

    Remove unneeded array-length variables
    
    These were only used in x.c, which now has direct visibility of the
    config.h arrays.
    
    Signed-off-by: Devin J. Pohly <djpohly@gmail.com>

commit 428f01969aaf48ffa2983746c0a397bcc8946799
Author: Devin J. Pohly <djpohly@gmail.com>
Date:   Tue Oct 17 15:43:32 2017 -0500

    Inline clipboard functions
    
    No need to keep a function that only calls another function in the same
    file.
    
    Signed-off-by: Devin J. Pohly <djpohly@gmail.com>

commit 65976c1a29f2945c3cfb6af74cd6440cf193021d
Author: Devin J. Pohly <djpohly@gmail.com>
Date:   Tue Oct 17 15:21:04 2017 -0500

    Move config.h include from st.c to x.c
    
    config.h includes references to KeySyms and other X stuff.  Until we
    come up with a cleaner way to separate configuration, it is simpler
    (leads to more code removal) to have this here.
    
    Signed-off-by: Devin J. Pohly <djpohly@gmail.com>

commit 32d3b1d00f66eda4f5446f3b32cabed2c9a77a40
Author: Devin J. Pohly <djpohly@gmail.com>
Date:   Sun Oct 15 20:35:48 2017 -0500

    Factor out equivalent code from ttyread/ttysend
    
    The echo-to-terminal portions of ttyread and ttysend were actually doing
    the same thing.  New function twrite() now handles this.  The parameter
    show_ctrl determines whether control characters are shown as "^A".  This
    was the only difference between tputc and techo, and techo is now unused
    and removed.
    
    (This commit should not change st's behaviour.)
    
    Signed-off-by: Devin J. Pohly <djpohly@gmail.com>

commit 69e32a61df15787c410a48eaa10a89240c36257d
Author: Devin J. Pohly <djpohly@gmail.com>
Date:   Thu Oct 12 22:25:49 2017 -0500

    Move opt_* into same file as main()/run()
    
    This commit is purely about reducing externs and LOC.  If the main and
    run functions ever move elsewhere (which will probably make sense
    eventually), these should come along with them.
    
    Signed-off-by: Devin J. Pohly <djpohly@gmail.com>

commit ed132e11271d18a5d8aa163096bc6192c694bc47
Author: Devin J. Pohly <djpohly@gmail.com>
Date:   Wed Oct 11 08:47:14 2017 -0500

    Move key-matching functions into x.c
    
    Modifiers and keysyms are specific to X, and the functions match and
    kmap are only used in x.c.  Needed to global-ize the key arrays and
    lengths from config.h (for now).
    
    Signed-off-by: Devin J. Pohly <djpohly@gmail.com>

commit dbe8676d7d69651132bde2b6d9ec3787cbbc552a
Author: Devin J. Pohly <djpohly@gmail.com>
Date:   Tue Oct 10 15:51:23 2017 -0500

    Pass new dimensions into ttyresize
    
    This removes another reference to TermWindow from st.c.
    
    Signed-off-by: Devin J. Pohly <djpohly@gmail.com>

commit a8314643b1aeaa2187dad71dc5748aaac1760c1b
Author: Devin J. Pohly <djpohly@gmail.com>
Date:   Tue Oct 10 12:46:53 2017 -0500

    Move window-manipulating functions into x.c
    
    xresize is now internal to x.c
    
    Signed-off-by: Devin J. Pohly <djpohly@gmail.com>

commit a09138afa57adb4b76dba8ca72dc7ee2642a5c8d
Author: Devin J. Pohly <djpohly@gmail.com>
Date:   Tue Oct 10 12:17:25 2017 -0500

    Move font/fontspec variables into x.c and XWindow
    
    Signed-off-by: Devin J. Pohly <djpohly@gmail.com>

commit 626b0ae40c71b6c1e02ece79bf033432647381a6
Author: Devin J. Pohly <djpohly@gmail.com>
Date:   Tue Oct 10 12:01:18 2017 -0500

    Move window urgency handling entirely into x.c
    
    This allows us to make xseturgency internal.
    
    Signed-off-by: Devin J. Pohly <djpohly@gmail.com>

commit d5275012b45149a2a6e94679609aacca478221ad
Author: Devin J. Pohly <djpohly@gmail.com>
Date:   Tue Oct 10 11:30:36 2017 -0500

    Move zoom functions into x.c
    
    This makes x(un)loadfonts internal to x.c.  Needed to reorder includes
    and move a typedef to keep the compiler happy.
    
    Signed-off-by: Devin J. Pohly <djpohly@gmail.com>

commit 3518dba2a5fb57f601b74528ddeb67f173e4024b
Author: Devin J. Pohly <djpohly@gmail.com>
Date:   Tue Oct 10 11:11:27 2017 -0500

    Move usage() to be with run() in x.c
    
    run/usage/xinit are now all internal to x.c
    
    Signed-off-by: Devin J. Pohly <djpohly@gmail.com>

commit 3e44ee5569a81ba6f06e1ecd19bf0ceb1e97f18d
Author: Devin J. Pohly <djpohly@gmail.com>
Date:   Tue Oct 10 10:30:23 2017 -0500

    Call xsetenv() in main process instead of child
    
    This makes xsetenv internal to x.c, and allows iso14755's external
    command to use $WINDOWID instead of having to snprintf it again.  (The
    same benefit will apply to the externalpipe patch.)  The xwinid function
    is no longer needed.
    
    Signed-off-by: Devin J. Pohly <djpohly@gmail.com>

commit 1f24bde82b19912c080fbb4a0b153a248cd6c6ea
Author: Benno Fünfstück <benno.fuenfstueck@gmail.com>
Date:   Tue Dec 26 16:23:24 2017 +0100

    Fix color with FAINT attribute
    
    The alpha value needs to be initialized as well.

commit e829e13bb1a830e0cdce749ea0865cd93af1846c
Author: Benno Fünfstück <benno.fuenfstueck@gmail.com>
Date:   Tue Dec 26 16:38:27 2017 +0100

    Apply ATTR_REVERSE after ATTR_FAINT
    
    An example where the new behaviour makes more sense:
    
    Suppose some text is formatted with ATTR_FAINT for red for the foreground, so it
    is rendered in a dark red. In that case, when selected with the mouse, the
    intended behaviour is that foreground and background color are swapped: so the
    selection should be rendered in dark red and the text in the default background
    color.
    
    Before this patch, what happened was that the selection would be in normal red
    and the text in the darkened background color, making it almost unreadable.
    
    For an example application that uses the FAINT attribute, try dmesg from
    util-linux with color support, it uses FAINT for segfault messages.

commit c1d23afa9c44cc29818c538126790ae90a64a3c5
Author: George Ornbo <george@shapeshed.com>
Date:   Wed Dec 20 09:05:32 2017 +0000

    Fix FAQ typo

commit 0ac685fc015362e749bf82cfaa3cfe2dd9b305f0
Author: Paride Legovini <pl@ninthfloor.org>
Date:   Tue Oct 10 17:49:38 2017 +0200

    Fix manpage typo
    
    Signed-off-by: Paride Legovini <pl@ninthfloor.org>

commit b1338e91ed632adbcd08388de37e46cf25326e01
Author: Gary Allen Vollink <gary@vollink.com>
Date:   Thu Sep 14 15:30:02 2017 -0400

    Add an error for XftFontOpenPattern failure.

commit b2ac91775302fa4b8ce462a6e7bcfffa93923471
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Fri Sep 15 11:16:37 2017 +0200

    Revert "Revert "fixed STLDFLAG order in broken st Makefile""
    
    This reverts commit 274d46ace00003d1df718b974d17642cbce167d5.
    
    Sorry, the original commit was correct after all. It allows has the
    correct link order and supports static-linking also.
    
    Just a reminder: it is important to give a (brief) rationale of the
    patch intentions.

commit ee5cc8e903574bf629e5159334ae6b0fad6af402
Author: Suraj N. Kurapati <sunaku@riseup.net>
Date:   Thu Aug 17 23:00:10 2017 -0700

    base64dec: skip non-printable characters like \r\n
    
    Non-printable characters, such as line breaks, in a base64 encoded
    string violate the "string length must be a multiple of four" rule.
    
    This patch pads the result buffer by one extra unit of four bytes,
    and skips over non-printable characters found in the input string.

commit 274d46ace00003d1df718b974d17642cbce167d5
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Wed Sep 13 22:40:36 2017 +0200

    Revert "fixed STLDFLAG order in broken st Makefile"
    
    This reverts commit 7f990328e4fec8dfaaad311cb8af2304b58c872e.
    
    this was wrong as pointed out by k0ga:
    "STLDFLAGS is about flags to the linker, for example -L
    not about -l for that reason it must go before the object list".

commit 9c61f29bb7da237907e42875ebe7d0084e8ab1ac
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Sat Sep 2 13:52:33 2017 +0200

    Revert "make clipboard patch obsolete"
    
    This reverts commit 77c51c5a6b16387f1792e23acbcf2080f790aa25.
    
    Having multiple clipboards are useful, for example for plumber scripts.
    I've discussed this on IRC and it is useful to have.

commit 77c51c5a6b16387f1792e23acbcf2080f790aa25
Author: Anselm R Garbe <anselm@garbe.us>
Date:   Fri Sep 1 09:48:24 2017 +0200

    make clipboard patch obsolete

commit 7f990328e4fec8dfaaad311cb8af2304b58c872e
Author: Anselm R Garbe <anselm@garbe.us>
Date:   Sun Jul 23 11:17:26 2017 +0200

    fixed STLDFLAG order in broken st Makefile

commit 8dacdfbab1c476063a31bc3b8d7222ac2b70ff66
Author: Quentin Rameau <quinq@fifth.space>
Date:   Tue Jul 11 23:16:25 2017 +0200

    Revert "Add bold off SGR"
    
    This reverts commit 6cb6d61525931c88971cce323f63e40451a6d365.
    This wasn't a useful thing after all.

commit c0882f2ed1d7a2dd0fa2efa52157e6fc6fde3652
Author: Quentin Rameau <quinq@fifth.space>
Date:   Tue Jul 11 23:03:27 2017 +0200

    Add dim/smxx/rmxx to terminfo, remove duplicate kich1

commit d4928edba0fe2cc63b3bc13fd6dad0bcb875174e
Author: Quentin Rameau <quinq@fifth.space>
Date:   Wed Jul 12 00:26:35 2017 +0200

    Let the user specify C and LD FLAGS

commit fabd4602b3223666165c76c397644a081b9a97e5
Author: Quentin Rameau <quinq@fifth.space>
Date:   Wed Jul 12 00:24:51 2017 +0200

    Do not obfuscate what make is doing.
    
    Change some styling too while we're at it.

commit b331da550b290d54592b7ba11242c92f5a303a48
Author: Marc André Tanner <mat@brain-dump.org>
Date:   Mon May 15 12:45:41 2017 +0200

    Add color change terminfo capabilities

commit 6cb6d61525931c88971cce323f63e40451a6d365
Author: Quentin Rameau <quinq@fifth.space>
Date:   Sun May 28 09:56:57 2017 +0200

    Add bold off SGR

commit 5a10aca702bf7bc9094cb4abaea6c59558740d29
Author: greg.reagle@umbc.edu <greg.reagle@umbc.edu>
Date:   Mon Apr 10 18:24:03 2017 +0200

    st.1: modify man page to accurately reflect default keybindings
    
    Attached.
    
    ===> 2/ (text/x-patch) [file]
            cp /mail/fs/mbox/298/2/body /usr/k0ga/0001-st.1-modify-man-page-to-accurately-reflect-default-k.patch
    
    From 265db94b1eca5850d484f86b7db4af8e57822cfe Mon Sep 17 00:00:00 2001
    From: Greg Reagle <greg.reagle@umbc.edu>
    Date: Sun, 9 Apr 2017 23:05:47 -0400
    Subject: [PATCH] st.1: modify man page to accurately reflect default
     keybindings

commit 745c40f8b07ab898d1f9d4f564881b40599bc80d
Author: Quentin Rameau <quinq@fifth.space>
Date:   Tue Apr 4 17:20:55 2017 +0200

    Simplify how we keep ATTRs under cursor
    
    Thanks to tarug0 for the suggestion/patch.

commit 149c0d3aedffe69b625ef95868daae200941d5f5
Author: Alexander Krotov <ilabdsf@gmail.com>
Date:   Sat Mar 25 23:02:42 2017 +0300

    Fix commented out code

commit f2bfd513b14a2aa27796670235557a550b4189db
Author: Nils Reuße <n.reusse@hxgn.net>
Date:   Wed Mar 29 18:34:12 2017 +0200

    keep some glyph modes for the cursor
    
    st currently does not keep any mode for the cursor that was active
    in the underlying glyph (e.g. italic text), the mode is always
    ATTR_NULL [1].  At [2] you can find a screenshot that shows the
    implications.  Other terminals (at least vte-based, such as
    XFCE-terminal) keep some modes for the cursor.  I find the current
    behaviour very disruptive, so here is a patch that keeps a few
    (arbitrarily chosen) modes for the cursor.
    
    [1] http://git.suckless.org/st/tree/st.c#n3963
    [2] http://i.imgur.com/R2yCEaC.png

commit e7ed326d2e914a57017c9f34459824614075519b
Author: osandov@osandov.com <osandov@osandov.com>
Date:   Sat Mar 18 11:55:04 2017 +0100

    Support xterm Ms feature to set clipboard
    
    This is used by, e.g., tmux.

commit 20f713548de451b67db3306cf8cf7b2f38fee05c
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Wed Jan 25 19:17:38 2017 +0100

    Change default keybindings
    
    CTRL+SHIFT is an impossible combination in the terminal world
    (0x20 | x & 0x1F), so it is perfect to be used for internals
    shortcuts of terminals, and being a double combination
    reduces the prossibility of having comflicts.

commit e2ee5ee6114eb74bb08cb9abe5a3020203e92688
Author: Michael Forney <mforney@mforney.org>
Date:   Fri Jan 20 00:06:39 2017 -0800

    Split X-specific code into x.c

commit c63a87cd936c1eeef14c4c21572e5b782d3df4bc
Author: fpqc <harry.gindi@live.com>
Date:   Wed Dec 14 06:51:27 2016 +0000

    Move column and row default numbers into config.h

commit e44832408bb3147826c346872b49de105a4d0e0b
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Thu Nov 24 20:21:19 2016 +0100

    Revert "Initial font size issue."
    
    This reverts commit 424202798b02554092ba84dd59fb7b79b59b7b75.

commit fa9a4599720703932d1c4f16b9aeee1f91f96263
Author: Spencer Phippen <spencer.phippen@gmail.com>
Date:   Wed Nov 23 19:17:59 2016 +0100

    Fixed 'missing glyph doesn't use fontconfig config substitutions' bug
    
    XftFontMatch does display-specific font configuration (commit 528241a).
    Nice. Unfortunately, when we switched from FcFontMatch, we also stopped
    storing the post-Fc{Config,Default}Substitute FcPattern for future
    lookups. The result is that if a glyph isn't found in the primary font,
    secondary font lookups use the original FcPattern, not the configured
    one. If you have custom fontconfig rules (like me), this can be
    disappointing.
    
    I basically just copied the guts out of XftFontMatch[1] and saved
    the intermediate configured FcPattern. Could be related to the bug that
    inspired commit 4242027.
    
    [1]: https://cgit.freedesktop.org/xorg/lib/libXft/tree/src/xftfont.c

commit 740ada1447a0bf9eb7db327d9433fa0b96e0a4d8
Author: Manuel Tobias Schiller <mala@hinterbergen.de>
Date:   Mon Nov 14 18:25:51 2016 +0100

    make the various combinations of arrow keys and shift/control/meta work
    
    When using st with screen, I've bound next, prev, new screen to
    combinations like Ctrl-Alt-Right,Left,Down; xterm and (u)rxvt work fine
    when this combination of modifiers is pressed, st does not seem to
    transport all of them; a single modifier key is fine (e.g. Ctrl-Up,
    Alt-Down etc., but combinations are not). While I'm not terribly
    familiar with this, I have tried to hack config.h in a more or less
    systematic way to generate the expected sequences.

commit 424202798b02554092ba84dd59fb7b79b59b7b75
Author: ian@remmler.org <ian@remmler.org>
Date:   Fri Nov 11 17:52:07 2016 +0100

    Initial font size issue.
    
    Hi,
    
    When I specify a font by point size (I'm using "Inconsolata:size=12"),
    characters that are substituted from another font because they are not in the
    main one appear too small.  Doing a zoom reset fixes it.  For example:
    
    Before: http://i.imgur.com/G4Mfv4X.png
    After:  http://i.imgur.com/PMDhfQA.png
    
    I found that adding the pixel size (acquired from the initial font load) to the
    pattern then reloading the font fixes the problem.  I'm not sure if this is a
    proper fix, though.

commit 3ca7249c8685a9ff2d8ce23273fe0313b5804473
Author: pl@ninthfloor.org <pl@ninthfloor.org>
Date:   Fri Nov 11 17:45:45 2016 +0100

    tic -s -> tic -sx (Treat unknown capabilities as user-defined.)

commit 06f8cf8ca87a81db15816658c40b2afcd1ad5332
Author: pl@ninthfloor.org <pl@ninthfloor.org>
Date:   Fri Nov 11 17:45:46 2016 +0100

    Add tmux capabilities to st.info

commit 902a392b905107c7b8a318c103837c54e47a068e
Author: pl@ninthfloor.org <pl@ninthfloor.org>
Date:   Fri Nov 11 17:45:52 2016 +0100

    Make strdump(), csidump(), print to stderr
    
    The two functions strdump(), csidump() are called to show errors and
    their output is introduced by a message printed to stderr. Thus, it it
    more consistent to have them print to stderr.
    
    Moreover stderr is unbuffered (at least on Linux), making problems
    immediately visible.

commit 8c99915608beee03eca3bae6ed92264a0da87e2f
Author: Quentin Rameau <quinq@fifth.space>
Date:   Sat Oct 22 16:36:10 2016 +0200

    Do not use color when font attributes are supported
    
    If fontconfig gives us a font without the attributes we asked for,
    display an alternative color instead.

commit 7854fde1ff95ba85239ccfe1b59b555bd245d0db
Author: Quentin Rameau <quinq@fifth.space>
Date:   Sat Oct 22 10:42:46 2016 +0200

    st.1: add an entry for ISO-14755 shortcut

commit 68bae9c7b121e30114f6b0cabe15da3fae46e673
Author: Quentin Rameau <quinq@fifth.space>
Date:   Sat Oct 8 16:22:18 2016 +0200

    Add support for iso14755
    
    We launch dmenu for getting a codepoint, then convert it and send it to
    the terminal.

commit 331033f1f6abe259218666e6f6a848f38d884078
Author: Klemens Nanni <kl3@posteo.org>
Date:   Thu Oct 13 16:28:50 2016 +0200

    Add missing device path to '-l' example
    
    Also, it's ttyS0 not ttySO.

commit f7398434b8fa949af7bf43472caaefdd97eed0f3
Author: Roberto E. Vargas Caballero <roberto.vargas@igrid-td.com>
Date:   Wed Sep 14 08:27:32 2016 +0200

    Add parsing of DCS q sequences
    
    These sequences are used to operate with sixels, but they are still
    str sequences, so they are finished with \a, ST or with a C1 control
    code. This patch also disables utf8 handling for the case of sixels.

commit f0e2d28732549690466df995981698173daf39c0
Author: Roberto E. Vargas Caballero <roberto.vargas@igrid-td.com>
Date:   Tue Sep 13 14:01:18 2016 +0200

    Add support for enabling/disabling utf
    
    There are some ocasions where we want to disable the enconding/decoding of utf8, mainly
    because it adds an important overhead. This is partial patch for ESC % G and ESC % @,
    where they modified the way that st reads and write from/to the serial line, but it does
    not modifies how it interacts with the X window part.

commit 078337d7457f7869a85f4ec364be92b79e93c502
Author: Roberto E. Vargas Caballero <roberto.vargas@igrid-td.com>
Date:   Fri Sep 9 13:11:06 2016 +0200

    Delete ncv capability from terminfo
    
    We do not need to disable the previous ncv definition, because
    there is not previous definition.

commit 5ce853a1c14bab21c79af5470bff7bed07159ec5
Author: Quentin Rameau <quinq@fifth.space>
Date:   Thu Sep 8 12:57:43 2016 +0200

    st.info: do not prevent st from displaying attributes
    
    With ncv set to 3, we prevent st from displaying A_STANDOUT and
    A_UNDERLINE with colors while our virtual terminal is capable of it.

commit 023225ef40b23d888353e34d95790ddf1cc79458
Author: Christoph Lohmann <20h@r-36.net>
Date:   Thu Aug 11 16:30:29 2016 +0200

    Update the LICENSE.
    
    This is for the next release.

commit 6e79e8357ed1987a7f7a52cc06249aadef478041
Author: Christoph Lohmann <20h@r-36.net>
Date:   Thu Aug 11 16:25:58 2016 +0200

    0.7 release

commit 308bfbf6be46ac5f0aa77b0e42a242eeb3ae1443
Author: Christoph Lohmann <20h@r-36.net>
Date:   Wed Jul 20 13:56:15 2016 +0200

    Change who's expanding tabs.

commit c4f245eccd649b258c52f1405452df05180f7263
Author: Christoph Lohmann <20h@r-36.net>
Date:   Wed Jul 20 13:52:31 2016 +0200

    Add some hint to have the pseudo terminal in the right mode.
    
    If you don't make sure that the terminal does not expand tabs to spaces, of
    course such a setting won't work.

commit 2251f6465ae48aaa012fd686d6dcc4d3f41f77fe
Author: Christoph Lohmann <20h@r-36.net>
Date:   Wed Jul 20 13:00:43 2016 +0200

    Add comment about tabspaces.
    
    st.info needs to be changed too, when tabspaces are changed.

commit 235b438e689e1fab677ee7e6ee53491867c16b9d
Author: Alive 4ever <alive4ever@live.com>
Date:   Sun Jul 10 06:38:04 2016 +0000

    Consistent Alt+BackSpace behavior
    
    The default config specifies BackSpace as "\177". The default behavior
    should persist across modifier keys, commonly Mod1 (Alt or Meta) which
    is widely used to delete a word on readline and text editors, notably
    Emacs.
    
    This will make Alt+BackSpace behaves as expected, i.e. sends "\033\177"
    instead of "\033\010" as previous default behavior.
    
    Signed-off-by: Christoph Lohmann <20h@r-36.net>

commit 528241aa3835e2f1f052abeeaf891737712955a0
Author: Christoph Lohmann <20h@r-36.net>
Date:   Fri Jun 3 15:02:32 2016 +0200

    Use XftFontMatch in place of FcFontMatch.
    
    git am -s didn't like your patch:
    
    From: Mark Edgar <medgar123@gmail.com>
    
    XftFontMatch calls XftDefaultSubstitute which configures various match
    properties according to the user's configured Xft defaults (xrdb) as well as
    according to the current display and screen. Most importantly, the screen DPI
    is computed [1]. Without this, st uses a "default" DPI of 75 [2].
    
    [1]: https://cgit.freedesktop.org/xorg/lib/libXft/tree/src/xftdpy.c?id=libXft-2.3.2#n535
    [2]: https://cgit.freedesktop.org/fontconfig/tree/src/fcdefault.c?id=2.11.1#n255

commit 60aeb37edb8c5280d31b6b3c801d09c7a5fdca76
Author: v4hn <me@v4hn.de>
Date:   Thu May 19 12:16:57 2016 +0200

    delete clipboard properties after pasting them
    
    https://tronche.com/gui/x/icccm/sec-2.html#s-2.4 specifies:
    > Once all the data in the selection has been retrieved,
    > the requestor should delete the property in the SelectionNotify request
    
    Most Clipboard-Owners ignore whether or not the property is already set,
    so this is mostly a cosmetic change to keep the windows property list clean.
    
    However, at least synergy decides to wait for the requestor to delete
    the properties if they are already set by a previous paste (from synergy).
    
    Signed-off-by: Christoph Lohmann <20h@r-36.net>

commit 66556d967028a0b770e9bfcb9667389a6e994a58
Author: Roberto E. Vargas Caballero <roberto.vargas@igrid-td.com>
Date:   Fri Apr 15 07:58:26 2016 +0200

    Remove stupid assignation in memcpy()

commit 39964614b742c4ec98a326762d98470cb987a45b
Author: Tor Andersson <tor@ccxvii.net>
Date:   Wed Mar 9 17:11:57 2016 +0100

    st: Fix off-by-one error when calculating character width.
    
    LEN(str) is one larger than strlen(str) because it also counts the zero
    terminator. The original code would include the .notdef glyph (since it'll
    try to encode character 0, which gets encoded to the .notdef glyph) when
    measuring the average dimensions of printable ascii characters.
    
    This causes problems with fonts like GNU Unifont where the .notdef glyph is
    not the same width as the usual half-width characters.
    
    Signed-off-by: Christoph Lohmann <20h@r-36.net>

commit 0e48a1995eee1c2babc58523ef0be296e4b1c3e8
Author: Ton van den Heuvel <tonvandenheuvel@gmail.com>
Date:   Mon Mar 7 22:18:12 2016 +0100

    Fix vertical character alignment in some cases
    
    The y-position of a character found by asking fontconfig for a matching
    font does not take the border pixels into account, resulting in a
    slightly misaligned vertical position.
    
    Signed-off-by: Ton van den Heuvel <tonvandenheuvel@gmail.com>
    Signed-off-by: Christoph Lohmann <20h@r-36.net>

commit 6d8f85232ec741ae2357728d6e96cb8a44e842b4
Author: Christoph Lohmann <20h@r-36.net>
Date:   Tue Mar 8 13:55:22 2016 +0100

    I like empty lines.

commit 034a5c8a09e23ce0a410d0c608dd7e050b83681e
Author: Ryusei Yamaguchi <mandel59@gmail.com>
Date:   Tue Mar 8 12:26:04 2016 +0900

    Measure the single advance width with a heuristic method
    
    This fix is needed to use dual-width fonts, which have double-width
    glyphs (e.g. CJK unified ideographs).
    
    Signed-off-by: Ryusei Yamaguchi <mandel59@gmail.com>
    Signed-off-by: Christoph Lohmann <20h@r-36.net>

commit 30440295bc054f37a2a8275acca769cd83bcb780
Author: Christoph Lohmann <20h@r-36.net>
Date:   Mon Mar 7 14:33:05 2016 +0100

    xtermclear() is now done by xdrawglyphfontspecs()
    
    Thanks Ton van den Heuvel for the proposal!

commit 4fdba860c8db70035e9749806ecc6ca2d7c418d0
Author: Lucas Gabriel Vuotto <l.vuotto92@gmail.com>
Date:   Fri Feb 19 15:59:49 2016 -0300

    arg.h: fixed argv checks order
    
    This prevents accessing to a potentially out-of-bounds memory section.
    
    Signed-off-by: Lucas Gabriel Vuotto <l.vuotto92@gmail.com>
    Signed-off-by: Christoph Lohmann <20h@r-36.net>

commit 6d636beb229cebf3b897446c72c7a341bee9f820
Author: Quentin Rameau <quinq@fifth.space>
Date:   Mon Feb 1 12:20:33 2016 +0100

    Fix forgotten bracket and duplicate option in usage()
    
    Scratch the preceding patch, this one is more correct
    (don't forget to 'git am --scissors' ;))
    -- >8 --
    
    Also reformat the strings in a saner layout
    
    Signed-off-by: Christoph Lohmann <20h@r-36.net>

commit 6e70bb97d4e98a5e2fa7c5488b0cba1da140b78f
Author: Quentin Rameau <quinq@fifth.space>
Date:   Sat Jan 30 17:54:41 2016 +0100

    Extract ttyresize() out of cresize()
    
    This way we can call cresize() to set the terminal size before creating
    a tty or spawning a process, which will start with the correct size.
    
    Signed-off-by: Christoph Lohmann <20h@r-36.net>

commit 82335583eba15e87749d0e663270353005fca30b
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Jan 30 09:50:18 2016 +0100

    Ok, no need for a separate version function.
    
    This is just redundant metadata. Please add Java comment meta classes too.

commit 0cd5117a2cfc4134712de748ec416be0655838b2
Author: Quentin Rameau <quinq@fifth.space>
Date:   Fri Jan 29 22:03:01 2016 +0100

    Add -n option for setting WM_CLASS instance name
    
    Signed-off-by: Christoph Lohmann <20h@r-36.net>

commit bd5fdbe64c8abfb624ad59939ed9b221c8b04eef
Author: Quentin Rameau <quinq@fifth.space>
Date:   Fri Jan 29 22:02:40 2016 +0100

    Reformat usage and separate version from it
    
    Signed-off-by: Christoph Lohmann <20h@r-36.net>

commit 504a165277c13797840c42c64807b59cd4e5f3a5
Author: Christoph Lohmann <20h@r-36.net>
Date:   Thu Jan 28 18:09:11 2016 +0100

    Enforce a terminal size to reduce race conditions in too efficient apps.
    
    dvtm is too fast in starting up. It will then have a race condition in finding
    the right. terminal size.

commit 9031e228ce283cd4847832acf012a910f74ad1ed
Author: Christoph Lohmann <20h@r-36.net>
Date:   Thu Jan 14 23:19:03 2016 +0100

    Height is height.

commit 610723a58f1fbd3c5d911c853a8b94c315fc7c2a
Author: Christoph Lohmann <20h@r-36.net>
Date:   Fri Jan 1 14:18:43 2016 +0100

    Bump year.

commit ff241199edc7631d6599c22414ef6823059a1072
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sun Dec 20 01:43:32 2015 +0100

    Fixing the XClassHint setting in st.

commit 375b28720f7c78e6fac1c274f9dee7c40a78aacb
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Sat Nov 21 18:21:03 2015 +0100

    Avoid recursive call to ttywrite from ttyread
    
    Ttyread() calls to ttywrite, so if we check for reading before
    that for writing in ttywrite we can get a circular call sequence.

commit d836561b96097b04760104e7e0f8d014f5889a18
Author: Quentin Rameau <quinq+hackers@fifth.space>
Date:   Sun Nov 8 17:14:58 2015 +0100

    arg.h: remove unused macros
    
    ARGUM isn't used and ARGNUMF uses estrtol() that isn't defined anywhere.
    Those were probably copied from sbase arg.h.
    
    Signed-off-by: Christoph Lohmann <20h@r-36.net>

commit 00873e65eed161ee5f8916fbfb25c1a7f7a9b2f8
Author: Christoph Lohmann <20h@r-36.net>
Date:   Fri Nov 6 20:46:23 2015 +0100

    Introduce lim in all ttywrite() checks.

commit 9f6d8845df3f81e2bc86f593a2f93e098422b2fa
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Fri Nov 6 20:01:00 2015 +0100

    Fix ttywrite()
    
    ttywrite was assuming that if it could not write then it could
    read, but this is not necessarily true, there are some situations
    where you cannot read or write. The correct behaviour is to detect
    if you can read or/and write.

commit f0398db4d172e838ef4b4ae55db3fb6a6fee6717
Author: Ivan Tham <pickfire@riseup.net>
Date:   Sun Nov 1 10:53:56 2015 +0800

    Now the mshortcuts are even more consistent.
    
        Keep everyone happy
    
    Signed-off-by: Christoph Lohmann <20h@r-36.net>

commit e2aa03e6b71436e1c9207b01777baa16b7a00ea5
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Oct 31 09:29:04 2015 +0100

    Now the Shortcuts are more consistent.
    
    Keep the debile happy.

commit f56c58a968c1b3ddae76864bc9e27e5b9cc055c4
Author: Jason Woofenden <jason@jasonwoof.com>
Date:   Sun Oct 11 11:44:34 2015 +0200

    fix bug where first selection snaps to lines

commit 293f573efd8c1c9cddd319caa7564736aa60639a
Author: Quentin Rameau <quinq@fifth.space>
Date:   Tue Oct 6 10:29:44 2015 +0200

    Fix the cursor colors selection
    
    Signed-off-by: Christoph Lohmann <20h@r-36.net>

commit 2ea02c937e3a1810050a5fb9f51e7e522d23af3b
Author: Christoph Lohmann <20h@r-36.net>
Date:   Tue Oct 6 00:21:44 2015 +0200

    Normalize the whole color selection in xdrawcursor.

commit 80fe97f8a66d31945bdddbb9381b2cc54359f48e
Author: Quentin Rameau <quinq@fifth.space>
Date:   Mon Oct 5 23:10:48 2015 +0200

    Fix the cursor color when over selection.
    
    If we want to show a custom selected cursor color, we must not set the
    revert attribute to the drawn glyph.
    
    Signed-off-by: Christoph Lohmann <20h@r-36.net>

commit a2a60f0a2ce33dbd4ef07aaa4a914391481fa1de
Author: Christoph Lohmann <20h@r-36.net>
Date:   Mon Oct 5 23:05:38 2015 +0200

    Make the cursor shapes more descriptive.
    
    »IBeam« is now »Bar« because it's named like that in the source code.

commit 52d0e82df723297438339822f2398f83470fbcd4
Author: Christoph Lohmann <20h@r-36.net>
Date:   Mon Oct 5 22:59:04 2015 +0200

    Snowman is everywhere.

commit 78b04865fb5c8cb841e646058f9a24e7ec9094d2
Author: Christoph Lohmann <20h@r-36.net>
Date:   Mon Oct 5 22:54:44 2015 +0200

    Style normalisation in the config.def.h.
    
    This adds an awareness commit for the big key array too.

commit f7b80caebe2b96ef65e301634d8dc4e02325e357
Author: Christoph Lohmann <20h@r-36.net>
Date:   Mon Oct 5 22:38:19 2015 +0200

    The definition of the reverse cursor is now up to the user.

commit 594a25983639847ed063a3d181893dba54825f5a
Author: Christoph Lohmann <20h@r-36.net>
Date:   Mon Oct 5 22:09:51 2015 +0200

    Fixing the cursor movement in selections.
    
    Before the fix the cursor wouldn't obey if it's in a selection. If it is
    inside it will now change to the reverse. This patch also adds that the
    defaultcs will be reversed for the manually drawn cursors.

commit 91c70213d1e595467b14ce6d28f333dbedd97cab
Author: Christoph Lohmann <20h@r-36.net>
Date:   Mon Oct 5 21:18:34 2015 +0200

    When the cursor is moved, clear the selection.

commit 2677296147fe658376be67821449b8f232c65064
Author: Christoph Lohmann <20h@r-36.net>
Date:   Mon Oct 5 21:06:42 2015 +0200

    Reverse the cursor on selection.

commit 5ece2b5f4a2e56ddfb82e797dc973fca38c5273d
Author: Christoph Lohmann <20h@r-36.net>
Date:   Mon Oct 5 20:48:24 2015 +0200

    More style changes. We forgot some switches.

commit 2bef36ab81c356b106f00221038b743819cd20bd
Author: Christoph Lohmann <20h@r-36.net>
Date:   Mon Oct 5 20:08:21 2015 +0200

    Small style change.

commit 168248432705eff5fc44cf8a566bc090ca59d78a
Author: Christoph Lohmann <20h@r-36.net>
Date:   Mon Sep 28 20:08:58 2015 +0200

    There's no need for libXext to compile st.

commit 4be353e381e07fd8100f0cf29b299180f6681e46
Author: dequis <dx@dxzone.com.ar>
Date:   Fri Sep 25 00:56:15 2015 -0300

    Fix extra bracketed paste markers when pasting >8kb
    
    Before this patch, when pasting over BUFSIZE (8192 bytes here), st would
    do the following:
    
        \e[200~...8192 bytes...\e[201~\e[200~...remaining bytes...\e[201~
    
    With this patch, the start marker is only sent when the offset is 0 (at
    the beginning of selnotify) and the end marker is only sent when the
    remaining bytes to read are 0 (at the end).
    
    For short pastes, both conditions are true in the same iteration.
    
    For long pastes, it removes the extra markers in the middle, keeping the
    intended wrapping:
    
        \e[200~...8192 bytes......remaining bytes...\e[201~
    
    Signed-off-by: Christoph Lohmann <20h@r-36.net>

commit 20d53cebc122829449524ef339ce44e13c6e85ec
Author: FRIGN <dev@frign.de>
Date:   Tue Sep 22 13:13:25 2015 +0200

    dup() -> dup2()
    
    gcc would warn about an unused result. We know it is 0 and dup()
    can't fail in these circumstances, as we closed fd0 previously.
    Using dup2() to do the same saves one line and shuts gcc up, bringing
    us a clean build back.

commit bf8c71e42937b623f76ced22c9557f87e3d945da
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Sep 12 16:43:32 2015 +0200

    The times of bad fonts are over.
    
    The antialiasing was false due to circumstances that do not exist anymore. We
    need antialiasing on big screens with big fonts. Autohinting too.

commit 5d2d9d540d84761cf11648ea42a6413001a5d7b9
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Thu Sep 10 11:53:11 2015 +0200

    Fix copy of line with len = 0
    
    When a line has no any character linelen is 0, so last = &term.line[y][MIN(lastx, linelen-1)]
    generated a pointer to the end of the previous line. The best thing we can do in this case
    is to add a newline, because we don't have a glyph to print (and consult its state of
    wrapping).

commit a1ed5071e54e4f8ce765c07d5415da7d8cedf618
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Tue Sep 8 17:00:20 2015 +0200

    Change Pause to Break in shortcut for serial break

commit 3ba9c8fc3f547a5762b3d4a6a16cc794446d76a3
Author: Jan Christoph Ebersbach <jceb@e-jc.de>
Date:   Tue Sep 8 07:28:52 2015 +0200

    Expose cursor shape in config.def.h
    
    Signed-off-by: Christoph Lohmann <20h@r-36.net>

commit 1f087aa8b70fce67e7c43f689b5fb35667b5d84c
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Tue Sep 8 12:10:11 2015 +0200

    Add key to send a break to the serial line

commit 473326f2e3115f4b745730be782b2eba63e0934c
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Tue Sep 8 10:44:35 2015 +0200

    Set default values of stty according to the man page
    
    This configuration is basically 38400 8N1, without echo and
    in raw mode. Kernel will not process any of the characters
    sent by the user.

commit aa5d4c3b340d180eb0b375b3b4a923cf91ffb04a
Author: Christoph Lohmann <20h@r-36.net>
Date:   Mon Sep 7 22:59:05 2015 +0200

    Making st.1 more descriptive about -l and fix -l in st.c.

commit 080a5ae4252c9c9a9d83b702d8478966ab79326e
Author: Christoph Lohmann <20h@r-36.net>
Date:   Mon Sep 7 20:00:49 2015 +0200

    Fix the st manpage for -l line.

commit 9eeb4e1ea22b9ca53b885615b896cd5ed8dee04a
Author: Christoph Lohmann <20h@r-36.net>
Date:   Mon Aug 31 15:26:21 2015 +0200

    Reordering and adding control codes.
    
    For completeness and documentation add all C1 control codes.

commit 0c94f8621b738c51c9e08abc3c52fe8dfe24b953
Merge: 0d838b7 7e61f5e
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sun Aug 30 11:29:23 2015 +0200

    Merge branch 'master' of ssh://suckless.org/gitrepos/st

commit 0d838b72437c6cac0d87366352939fdb86c2b697
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sun Aug 30 11:28:35 2015 +0200

    Don't read if we chunked the input data.

commit 7e61f5e4c514a233250442263b62d887c9e5ca9c
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Mon Aug 17 11:25:38 2015 +0200

    Do not mark as invalid UTF8 control codes
    
    wcwidth() returns -1 for all the non visible characters, but it doesn't
    necessarilly mean that they are incorrect. It only means that they are not
    printable.

commit 9984ad4ba730b043d064095dca42b490904e38f3
Author: Quentin Rameau <quinq@fifth.space>
Date:   Tue Aug 11 17:47:12 2015 +0200

    st.info: replace the acsc entry from xterm to urxvt
    
    The current acsc entry, copied from xterm was not exposing capability to
    display arrows.

commit ee5cad439b427fa974903a6f0bb2689d11119d89
Author: Alex Kozadaev <akozadaev at yahoo com>
Date:   Tue Jul 28 10:30:14 2015 +0100

    Adding mouse colour/shape settings

commit dc33d1d66e89ee974cc6d7cfa2efb693ce67aa86
Author: Christoph Lohmann <20h@r-36.net>
Date:   Fri Jul 24 18:25:33 2015 +0200

    Adding -T to the usage too.

commit b5e29cce5246f30dc671cbb9486af704bc8cd2fc
Author: Christoph Lohmann <20h@r-36.net>
Date:   Fri Jul 24 18:24:10 2015 +0200

    Add -T, as recommended by Dmitrij D. Czarkoff

commit 4a193b96862c8ed7147048592aa4a898b3c05b5b
Author: Quentin Rameau <quinq+hackers@fifth.space>
Date:   Fri Jul 24 11:52:17 2015 +0200

    Fix type for write(2) return variable.
    
    A little fix in xwrite().
    
    >From 3727d2e3344b57128ab51c7839795204f1f839ff Mon Sep 17 00:00:00 2001
    From: Quentin Rameau <quinq@fifth.space>
    Date: Fri, 24 Jul 2015 11:40:46 +0200
    Subject: [PATCH] Fix type for write(2) return variable.
    
    The allocated lengh of s fits into an integer so we can safely use
    ssize_t here.

commit 1d348e98e3745ef98bf9fa36119ead6294c6c80b
Author: Mytchel Hammond <mytchel@openmailbox.org>
Date:   Fri Jul 24 17:58:18 2015 +1200

    added note about the low precedence of shell to config.def.h

commit 62756fdb4945a80f4a53e6d354d5d93f51035517
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Fri Jul 24 07:44:34 2015 +0200

    Fix style in execsh

commit d032b6159719b2fbbbd550781b378ca79a25d3a2
Author: Christoph Lohmann <20h@r-36.net>
Date:   Fri Jul 10 14:31:40 2015 +0200

    Make the comment for the IM XFilter more understandable.

commit 684c72d05e54780c283c6580f271fb6920c3060d
Author: Christoph Lohmann <20h@r-36.net>
Date:   Fri Jul 10 14:30:37 2015 +0200

    Return style unification.

commit b823f57fa045bf8efa5648adbfeb0b6a7a9eb48b
Author: Christoph Lohmann <20h@r-36.net>
Date:   Fri Jul 10 14:21:52 2015 +0200

    Aligning the macros.

commit 684f0a0729442e18115f71bc594a159725418ce8
Author: Christoph Lohmann <20h@r-36.net>
Date:   Fri Jul 10 14:19:52 2015 +0200

    Unix end of file.

commit d3c7b6fb73bc5273b56c84c6c4c50a61ee5ab2bc
Author: Christoph Lohmann <20h@r-36.net>
Date:   Fri Jul 10 14:19:31 2015 +0200

    No inline declarations please.

commit 41f70a1cff9c5653bebea996728fa76e2507eca3
Author: Christoph Lohmann <20h@r-36.net>
Date:   Fri Jul 10 14:17:51 2015 +0200

    Typo and the missing incr atom from the patches.

commit 261ea4b7e0b8d979c0c91ec75251c6970caf39e2
Author: Christoph Lohmann <20h@r-36.net>
Date:   Fri Jul 10 14:15:39 2015 +0200

    Implement chunked write to the cmdfd.
    
    This is needed so big input like a paste of several megabyte does not clog our
    I/O.

commit f8c6e7d0419d10c1425cb2c7123c5798ffb3b942
Author: Christoph Lohmann <20h@r-36.net>
Date:   Fri Jul 10 14:10:17 2015 +0200

    Implement INCR transfers in the clipboard.

commit 539afe3af1b0d8b56b9ebfaa3bb7fc4e40f68c71
Author: FRIGN <dev@frign.de>
Date:   Fri Jul 10 12:27:13 2015 +0200

    Update LICENSE
    
    Signed-off-by: Christoph Lohmann <20h@r-36.net>

commit f1307d91e2ec351a4a8b7352be8b5f6e4cb24294
Author: FRIGN <dev@frign.de>
Date:   Fri Jul 10 10:29:53 2015 +0200

    Don't treat clauses like functions
    
    and add a space between the keyword and the parentheses.
    
    Signed-off-by: Christoph Lohmann <20h@r-36.net>

commit 13233574ed1ead29bb7e99e71a0665e62c640617
Author: FRIGN <dev@frign.de>
Date:   Thu Jul 9 23:59:50 2015 +0200

    Use BSD-style function notation
    
    Put the opening brace on a new line. This was already used for some
    functions inside st.c.
    
    Signed-off-by: Christoph Lohmann <20h@r-36.net>

commit 9de853a98da8fe0f458b244970f0e0d3e9b38a50
Author: FRIGN <dev@frign.de>
Date:   Wed Jul 8 23:56:55 2015 +0200

    Unboolify st
    
    This practice proved itself in sbase, ubase and a couple of other
    projects.
    Also remove the True and False defined in X11 and FcTrue and FcFalse
    defined in Fontconfig.
    
    Signed-off-by: Christoph Lohmann <20h@r-36.net>

commit abfad4c4fc69ebb22febfe32677aadd112ce375a
Author: FRIGN <dev@frign.de>
Date:   Wed Jul 8 23:49:25 2015 +0200

    Remove insane *_FILENO and EXIT_* usage
    
    Any system having different assignments than the usual 0, 1, 2 for
    the standard file numbers and 0, 1 for the exit-statuses is broken
    beyond repair.
    Let's keep it simple and just use the numbers, no reason to fall
    out of the window here and bend down for POSIX.
    In one occasion, the ret-variable was not necessary. The check was
    rewritten.
    
    Signed-off-by: Christoph Lohmann <20h@r-36.net>

commit 92e092efe6c6b2a6b6ec9da33170317d4426cab0
Author: Christoph Lohmann <20h@r-36.net>
Date:   Tue Jul 7 22:26:44 2015 +0200

    Commit to push the 0.6 release.

commit 5f48e89716a74e75b6040fdb067372180626b699
Author: Weng Xuetian <wengxt@gmail.com>
Date:   Thu Jul 2 08:31:12 2015 +0200

    Revert "Remove unnecessary XFilterEvent call."
    
    This reverts commit d2937b05aed9cee8d6651cd806d31682a853c773.

commit bdd649a10289ade364f3deab3bbf6ee3169d67ca
Author: Quentin Rameau <quinq@quinq.eu.org>
Date:   Sun May 31 12:26:11 2015 +0200

    do not truncate font size when zooming

commit 71fa10f613a22b3e75e0e897ee1be6667be3f449
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Wed Jun 3 08:07:55 2015 +0200

    Revert "Optimize memory footprint of line buffers"
    
    This reverts commit 7ab6c92e18d468968811256e808b02309c160a22.
    We need 32 bits for real color support.

commit caa97cc781ccf29f28c3d9e6683a66eb3f70e2bd
Author: Jan Christoph Ebersbach <jceb@e-jc.de>
Date:   Fri May 22 16:06:57 2015 +0200

    Support UTF-8 characters as word delimiters
    
    For a higher usefulness of the utf8strchr function, the index of the
    UTF-8 character could be returned in addition with a Rune instead of a
    char*.  Since utf8strchr is currently only used by ISDELIM I didn't
    bother to increase the complexity.

commit c03548750b2527a6ddb5edfd945c5799066a6224
Merge: 8e15887 980991f
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Fri May 15 07:51:58 2015 +0200

    Merge branch 'master' of ssh://suckless.org/gitrepos/st

commit 8e15887de95a7076b9515dcbb428b364f6dc3849
Author: v4hn <me@v4hn.de>
Date:   Thu May 14 15:46:07 2015 +0200

    set selection to IDLE on clear
    
    Otherwise a tangling bmotion event will consider
    the selection still valid and selnormalize segfaults
    because of an invalid sel.ob.y index.

commit 89cf0fc597a2bcc16b1516c6f6d750a06175f1c7
Author: suigin <suigin@national.shitposting.agency>
Date:   Sat May 9 15:22:40 2015 -0700

    Small bugfix for makeglyphfontspecs call in drawregion
    
    Here's a patch that fixes a bug when calling `makedrawglyphfontspecs'
    in `drawregion'. Wasn't offseting the pointer into the input glyphs
    array by `x1'. The bug isn't causing any problems currently, because
    `drawregion' is always called with `x1' and `y1' values of 0, but if
    this ever changes in the future, the bug would certainly cause some
    problems.

commit 980991fa6e7b737d54f8e5c60c26275890eb28ff
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sun May 10 15:19:48 2015 +0200

    Fix the new -e handling. An empty cmd has to work for backwards compatibility.

commit ae1923d27533ff46400d93765e971558201ca1ee
Author: suigin <suigin@national.shitposting.agency>
Date:   Tue May 5 20:24:00 2015 -0700

    Clean up xdraws and optimize glyph drawing with non-unit kerning values
    
    I have another patch here for review that optimizes the performance of
    glyph drawing, primarily when using non-unit kerning values, and fixes a
    few other minor issues. It's dependent on the earlier patch from me that
    stores unicode codepoints in a Rune type, typedef'd to uint_least32_t.
    
    This patch is a pretty big change to xdraws so your scrutiny is
    appreciated.
    
    First, some performance numbers. I used Yu-Jie Lin termfps.sh shell
    script to benchmark before and after, and you can find it in the
    attachments. On my Kaveri A10 7850k machine, I get the following
    results:
    
    Before Patch
    ============
    
    1) Font: "Liberation Mono:pixelsize=12:antialias=false:autohint=false"
       cwscale: 1.0, chscale: 1.0
       For 273x83 100 frames.
       Elapsed time :     1.553
       Frames/second:    64.352
       Chars /second: 1,458,159
    
    2) Font: "Inconsolata:pixelsize=14:antialias=true:autohint=true"
       cwscale: 1.001, chscale: 1.001
       For 239x73 100 frames.
       Elapsed time :   159.286
       Frames/second:     0.627
       Chars /second:    10,953
    
    After Patch
    ===========
    
    3) Font: "Liberation Mono:pixelsize=12:antialias=false:autohint=false"
       cwscale: 1.0, chscale: 1.0
       For 273x83 100 frames.
       Elapsed time :     1.544
       Frames/second:    64.728
       Chars /second: 1,466,690
    
    4) Font: "Inconsolata:pixelsize=14:antialias=true:autohint=true"
       cwscale: 1.001, chscale: 1.001
       For 239x73 100 frames.
       Elapsed time :     1.955
       Frames/second:    51.146
       Chars /second:   892,361
    
    As you can see, while the improvements for fonts with unit-kerning is
    marginal, there's a huge ~81x performance increase with the patch when
    using kerning values other than 1.0.
    
    So what does the patch do?
    
    The `xdraws' function would render each glyph one at a time if non-unit
    kerning values were configured, and this was the primary cause of the
    slow down. Xft provides a handful of functions which allow you to render
    multiple characters or glyphs at time, each with a unique <x,y> position,
    so it was simply a matter of massaging the data into a format that would
    allow us to use one of these functions.
    
    I've split `xdraws' up into two functions. In the first pass with
    `xmakeglyphfontspecs' it will iterate over all of the glyphs in a given
    row and it will build up an array of corresponding XftGlyphFontSpec
    records. Much of the old logic for resolving fonts for glyphs using Xft
    and fontconfig went into this function.
    
    The second pass is done with `xrenderglyphfontspecs' which contains the
    old logic for determining colors, clearing the background, and finally
    rendering the array of XftGlyphFontSpec records.
    
    There's a couple of other things that have been improved by this patch.
    For instance, the UTF-32 codepoints in the Line's were being re-encoded
    back into UTF-8 strings to be passed to `xdraws' which in turn would then
    decode back to UTF-32 to verify that the Font contained a matching glyph
    for the code point. Next, the UTF-8 string was being passed to
    `XftDrawStringUtf8' which internally mallocs a scratch buffer and decodes
    back to UTF-32 and does the lookup of the glyphs all over again.
    
    This patch gets rid of all of this redundant round-trip encoding and
    decoding of characters to be rendered and only looks up the glyph index
    once (per font) during the font resolution phase. So this is probably
    what's responsible for the marginal improvements seen when kerning values
    are kept to 1.0.
    
    I imagine there are other performance improvements here too, not seen in
    the above benchmarks, if the user has lots of non-ASCII code plane characters
    on the screen, or several different fonts are being utilized during
    screen redraw.
    
    Anyway, if you see any problems, please let me know and I can fix them.

commit 38af006b5e4a36c77f25affbb3f7e28899db75ed
Author: suigin <suigin@national.shitposting.agency>
Date:   Tue May 5 13:13:21 2015 -0700

    Changed type for UTF-32 codepoints from long to uint_least32_t

commit c990abfedf56cb8d3176fe6d5152ff65bb68bff0
Author: noname <noname@inventati.org>
Date:   Sun May 3 19:28:10 2015 +0000

    Fix empty selection highlighting bug.
    
    When user clicks LMB, one character is selected, but will not be copied
    to selection until the user moves cursor a bit. Therefore, the character
    should not be highlighted as selected yet.
    
    Before the patch, the trick was not to mark line as dirty to avoid
    highlighting it. However, if user has already selected something and
    clicks in line that contains selection, selclear sets the line as dirty
    and one character is highlighted when it should not.
    
    This patch replaces dirty trick with explicit check for sel.mode inside
    selected().

commit 3cb7f27afe89c33c74b51c5460b7fb16413f786b
Author: noname <noname@inventati.org>
Date:   Sun May 3 02:49:23 2015 +0000

    Fix indentation.

commit 1811b6030cd9ac6bb938449eef778c6f54ab0e49
Author: noname <noname@inventati.org>
Date:   Fri May 1 17:13:13 2015 +0000

    Add enumeration for sel.mode
    
    This patch also prevents sel.mode from increasing beyond 2. It is almost
    impossible, but sel.mode may overflow if mouse is moved around for too
    long while selecting.

commit 22571ea4e8729efee6940b704666566b46e42e76
Author: noname <noname@inventati.org>
Date:   Thu Apr 30 19:59:24 2015 +0000

    selnormalize: make special case explicit
    
    Special case is when regular selection spans multiple lines.
    Otherwise, just sort sel.ob.x and sel.ob.y.

commit 8751809aff596fc2030026713651c11b3743f88e
Author: noname <noname@inventati.org>
Date:   Fri May 1 02:22:32 2015 +0000

    selsnap: simplify SNAP_LINE case
    
    Also make sure y never exceeds term.row-1 even if ATTR_WRAP is set for
    some reason.

commit 765bb0fd1420e36b04ecc03c18f01f5bda96c563
Author: noname <noname@inventati.org>
Date:   Thu Apr 30 20:51:35 2015 +0000

    Remove first argument of selsnap.

commit 07ce96a3a0f4a650933f5f586082cbf2064ea2c1
Author: Jochen Sprickerhof <dwm@jochen.sprickerhof.de>
Date:   Wed Apr 22 17:22:34 2015 +0200

    Fix sigchld
    
    Only wait for termination of the shell.

commit 190b94c7a2a7bb2f5d55cbb6eb1779fd042c6467
Author: mvdan@mvdan.cc <mvdan@mvdan.cc>
Date:   Wed Apr 22 15:08:06 2015 +0200

    len assignment is never used
    
    Signed-off-by: Daniel Martí <mvdan@mvdan.cc>

commit 4f21c41a1c19f769a2bf7941ee18fa0606266cca
Author: mvdan@mvdan.cc <mvdan@mvdan.cc>
Date:   Wed Apr 22 15:08:00 2015 +0200

    Clarify calculation precedence for '&' and '?'
    
    Signed-off-by: Daniel Martí <mvdan@mvdan.cc>

commit 3a5053f6c19195df5fde84a7e5eb3217443bb9ab
Author: mvdan@mvdan.cc <mvdan@mvdan.cc>
Date:   Wed Apr 22 15:07:59 2015 +0200

    Use %u for uint
    
    Signed-off-by: Daniel Martí <mvdan@mvdan.cc>

commit 7ab6c92e18d468968811256e808b02309c160a22
Author: suigin <suigin@national.shitposting.agency>
Date:   Mon Apr 27 10:04:04 2015 +0200

    Optimize memory footprint of line buffers

commit 0622ad9badefa985231ddede467d2bd8d94e93e4
Author: noname@inventati.org <noname@inventati.org>
Date:   Tue Apr 21 23:29:15 2015 +0200

    Make tputc, tsetchar and techo accept unicode

commit 21f765426c36991edd8b14f4989d66187e9ff597
Author: noname@inventati.org <noname@inventati.org>
Date:   Tue Apr 21 23:29:01 2015 +0200

    Change internal character representation.

commit 753fe862b14c7dd4b0449ab2c3bf22ecbb10030e
Author: noname@inventati.org <noname@inventati.org>
Date:   Tue Apr 21 23:28:40 2015 +0200

    Remove last parameter of utf8encode
    
    This parameter was always UTF_SIZ, so it is better remove it and
    use directly UTF_SIZ in it.

commit 61c35cd24625c6d14b4a2de8bd639da52aa513bd
Author: noname@inventati.org <noname@inventati.org>
Date:   Tue Apr 21 23:27:22 2015 +0200

    Use utf8len instead of utf8decode.

commit 742a41d6554ce1848f45ea89cb83d62c7e881352
Author: alp@alexpilon.ca <alp@alexpilon.ca>
Date:   Tue Apr 21 16:27:51 2015 +0200

    Make build shut up about system() without return value check.
    
        st.c:1321:2: warning: ignoring return value of function declared with warn_unused_result attribute [-Wunused-result]
                system(cmd);
                ^~~~~~ ~~~
    
    Debatable whether an error here should case exit(EXIT_FAILURE). Just
    preserving the existing behaviour for now.

commit f36dd277a2e71e99624fe26365757242d56259c0
Merge: 0d7448d 89807ed
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Thu Apr 23 17:59:39 2015 +0200

    Merge remote-tracking branch 'origin/master'

commit 0d7448dabc981716d277a5afac22fabc127bacca
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Thu Apr 23 17:55:41 2015 +0200

    Fix segmentation fault in strhandle()
    
    We cannot pass strescseq.args[0] to atoi when nargs is zero,
    because in this case it will be null.

commit b17aa18f7c15be8db2afd62ac696b63c75755f1c
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Wed Apr 22 09:16:35 2015 +0200

    Uses a &[] pointer loop instead of + pointer loop

commit 736685d641c23e8b08f3349d64bf30c1c86cd95d
Author: noname@inventati.org <noname@inventati.org>
Date:   Tue Apr 21 22:09:49 2015 +0200

    Do not set terminal title based on stty arguments.

commit 89807ed453e27893dea5ac73ee2c6b4f8dd15afb
Author: noname@inventati.org <noname@inventati.org>
Date:   Tue Apr 21 09:48:33 2015 +0200

    Move common code to xloadcolor

commit 84c756b97e31ca6946f634dc329ff8026caa6539
Author: noname@inventati.org <noname@inventati.org>
Date:   Sun Apr 19 22:24:44 2015 +0200

    Use LEN(dc.col) instead of LEN(colorname).
    
    LEN(colorname) may be below 256 for some configurations.

commit 2fdcc5e5f633083eb5e52b201862106a2c547df9
Author: noname@inventati.org <noname@inventati.org>
Date:   Sat Apr 18 19:33:11 2015 +0200

    Remove WIN_REDRAW flag.
    
    WIN_REDRAW flag was not used since introduction of Xdbe
    in commit 94771d05886fbdd2422e66b7c0256ab27fa375cb

commit ab69ea89b759eb457b1e5314d5345fdeea3dec87
Author: noname@inventati.org <noname@inventati.org>
Date:   Sun Apr 19 01:24:28 2015 +0200

    Place memset arguments in the correct order.

commit 5528280fae23968ffd3cf0527881cabddc24cf85
Author: noname@inventati.org <noname@inventati.org>
Date:   Sun Apr 19 01:24:12 2015 +0200

    Remove explicit 'return' from 'void' functions.

commit 6dc2b546eca11b198c64c9047106970a8d1f85e8
Author: noname@inventati.org <noname@inventati.org>
Date:   Sat Apr 18 18:45:48 2015 +0200

    Increment accuaracy in drawtime calculation
    
    This way is a bit more accurate.

commit c27c731b9f77c1b1c99f3bde737be53996809fcb
Author: noname@inventati.org <noname@inventati.org>
Date:   Sat Apr 18 18:46:17 2015 +0200

    Monotonic clock cannot jump backwards.
    
    The check was introduced back when st used gettimeofday.
    The condition is also modified to increment the accuaracy of the
    calculation.

commit 6ee56d65906362f3f6ade570da0ce9c28788eaf5
Author: noname@inventati.org <noname@inventati.org>
Date:   Sat Apr 18 18:45:21 2015 +0200

    Place tlinelen type on separate line.

commit 215bdb2da3eca77ba01b70503c527baaad67c359
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Mon Apr 13 19:03:53 2015 +0200

    Add tty line support
    
    Not always is desirable to create a pseudo terminal, and some times
    we want to open a terminal emulator over a tty line. With this new
    patch is possible to do someting like:
    
            $ st -l /dev/ttyS0 115200
    
    Without this option was needed to launch another terminal emulator
    over st (for example minicom, picocom, cu, ...).

commit 56abffb4b67f235d20de30f29ba027ab34c171e3
Author: sin <sin@2f30.org>
Date:   Wed Apr 15 09:43:06 2015 +0100

    Fix memmove() invocation with src/dst being NULL
    
    This fixes a segmentation fault on some systems.

commit aff35af275cb82eb876630c9256298ea1d1b2b57
Author: noname@inventati.org <noname@inventati.org>
Date:   Tue Apr 14 09:53:24 2015 +0200

    Use as command arguments the remaining parameters
    
    This change allows execute st as 'st mutt' while it keeps the
    compability with xterm and urxt.

commit 83e73c6242fc309a3859c12b996ab88d36c7e838
Merge: 9619760 42fa1f5
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Tue Apr 14 09:47:19 2015 +0200

    Merge branch 'master' of ssh://suckless.org/gitrepos/st

commit 42fa1f5ce46593a9d6c2f9196c1aae1a60ca07d1
Author: Markus Wichmann <nullplan@gmx.net>
Date:   Sat Apr 11 21:21:34 2015 +0200

    Implement most ICCCM rules for selection handling.
    
    ICCCM mandates the use of real timestamps to interact with the
    selection, to rule out race conditions if the clients are run at
    different speeds. I have implemented the low hanging fruit, putting the
    timestamps into text selection. Also, ICCCM mandates a check for whether
    XSetSelectionOwner() worked. Not sure my version is correct, though.

commit 23ed12857f113603b689521d3f6e40ff954d25bb
Merge: 9eb70a2 ecac5ee
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Mon Apr 13 22:01:40 2015 +0200

    Merge branch 'master' of ssh://suckless.org/gitrepos/st

commit 9eb70a2d3ecbd96a92e5f824868500baba74b688
Author: noname@inventati.org <noname@inventati.org>
Date:   Mon Apr 13 14:03:35 2015 +0200

    Do not use tmoveto in tputtab.
    
    tmoveto resets CURSOR_WRAPNEXT.
    
    Simple testcase:
    
    for i in $(seq 1 200); do
            printf '\t.';
            usleep 100000;
            printf '\t@';
            usleep 100000;
    done
    
    In st executing this script causes @ and . to overwrite each other in
    the last column.

commit 9619760e129b0994cd3bc4c827c83960f6a5e98f
Author: noname@inventati.org <noname@inventati.org>
Date:   Sun Apr 12 10:30:19 2015 +0200

    tresize: remove unnecessary if

commit a6af2cc46961a9378ab43919bb308162dedd4153
Author: noname@inventati.org <noname@inventati.org>
Date:   Mon Apr 13 16:06:21 2015 +0200

    Remove old TODO entry.
    
    It probably refers to
    http://lists.suckless.org/dev/1211/13427.html
    and does not seem like a bug in st.

commit b94ad75e5ded18d7dcafd69070f79838e0ebf24f
Author: noname@inventati.org <noname@inventati.org>
Date:   Mon Apr 13 16:05:49 2015 +0200

    Remove 'titles' variable.
    
    We do not free it until exit anyway.

commit e6dd0f825da9bf68c7642f45afd069500879f5e2
Author: noname@inventati.org <noname@inventati.org>
Date:   Mon Apr 13 14:34:23 2015 +0200

    Remove useless if in tstrsequence.

commit b0310fba5de0c519eae0c8a2817ccc7bfcdd5222
Author: noname@inventati.org <noname@inventati.org>
Date:   Mon Apr 13 14:03:51 2015 +0200

    Simplify tmoveto.
    
    LIMIT returns value. This fact is already used in x2col and y2row.

commit 9d1495f9eeee993a480c7ab1755803d081d794e6
Author: noname@inventati.org <noname@inventati.org>
Date:   Mon Apr 13 14:03:12 2015 +0200

    Fix typo.
    
    It seems that LICENSE files are more common than LICENCE files.
    At least this patch makes spelling consistent.

commit c569e3146e6999f6a02acecd145929c87e15b528
Author: noname@inventati.org <noname@inventati.org>
Date:   Sat Apr 11 19:30:36 2015 +0200

    Remove 'slide' variable in tresize.

commit 39ae1a4de5c471c8626c80ef1e961f0c83f5199d
Author: noname@inventati.org <noname@inventati.org>
Date:   Sat Apr 11 19:30:12 2015 +0200

    Move tresize comments around.

commit 6352502d644d8295ceb2cdf68a5ecbac0891d4a6
Author: noname@inventati.org <noname@inventati.org>
Date:   Sat Apr 11 19:29:52 2015 +0200

    tresize: move for loop outside if
    
    There is no need to check that slide > 0 before executing loop.
    If slide <= 0, loop stops immediately.

commit b9390a54968c3bc4f4270afdcf5b85911df01611
Author: noname@inventati.org <noname@inventati.org>
Date:   Sat Apr 11 12:47:16 2015 +0200

    Simplify loop condition.

commit d2937b05aed9cee8d6651cd806d31682a853c773
Author: noname@inventati.org <noname@inventati.org>
Date:   Sat Apr 11 12:15:51 2015 +0200

    Remove unnecessary XFilterEvent call.
    
    XFilterEvent usually filters KeyPress events according to input method.
    At this point the window is not mapped. The only events that we process
    are ConfigureNotify and MapNotify. They should not be filtered by input
    method.

commit d3e0f3444b91418e3d3cda591c5d8c50caa22957
Author: noname@inventati.org <noname@inventati.org>
Date:   Sat Apr 11 12:18:57 2015 +0200

    Use do..while in window mapping loop.

commit ecac5ee35ef006001b280461ed3f9812d855250c
Author: Omar Sandoval <osandov@osandov.com>
Date:   Thu Apr 9 18:22:31 2015 -0700

    Make DECSCUSR thickness configurable

commit 93b54cfcc437c9bac9af3ceb2d9ba19c442de1ff
Author: noname <noname@inventati.org>
Date:   Thu Apr 9 20:04:43 2015 +0000

    Use MAX macro where possible.

commit 6f5f7701864e6987544cb7e7dc5f2d24db1a4537
Author: noname <noname@inventati.org>
Date:   Wed Apr 8 23:24:06 2015 +0000

    Remove 'xloadfontset' function.
    
    It was used only once and its return value was ignored.

commit 6524f022f7d1d32f43208254e12f934bf64ed559
Author: noname <noname@inventati.org>
Date:   Wed Apr 8 23:17:33 2015 +0000

    Remove keywords from function definitions.

commit 9305f3c184a0179e37802e752c3d1dc830ae893c
Author: noname <noname@inventati.org>
Date:   Wed Apr 8 23:16:57 2015 +0000

    Remove variable names from function declarations.

commit 5bb90125c80a9409745bd7551aaae478dda3f890
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Mon Apr 6 10:55:00 2015 +0200

    Remove redundant control check
    
    control was set, but it was not ever used because it was set
    again some lines later.

commit 69d1fe06a97619e80872aaae2c4c97ced0540b67
Author: noname <noname@inventati.org>
Date:   Sun Apr 5 23:58:10 2015 +0000

    Fixed STR sequence termination condition
    
    ascii code may only be checked for characters that have length equal to
    1, not width equal to 1

commit 288f80cb06b442ef0f55ea62bbceb3260338bf7a
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Fri Mar 20 06:46:59 2015 +0000

    Remove strsep() call
    
    strsep() is not a POSIX function, and it means that every system
    needs different defines to expose it. If the prototype of strsep
    is not exposed then an ugly int/pointer is done and it might mean
    a crash. The best solution?, to remove the strsep and make a custom
    loop. If C programmers cannot do this kind of loops without calling
    a library function, then maybe we should move all the suckless
    software to Java.

commit c9357a8edfe6d047da95b85c5f3c18b9db40d172
Merge: 580302f 246c348
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Thu Mar 19 08:36:50 2015 +0000

    Merge remote-tracking branch 'origin/master'

commit 580302f3179ef3f24cf0329755686dfa7100996b
Author: LemonBoy <thatlemon@gmail.com>
Date:   Wed Mar 18 21:12:47 2015 +0100

    Support the DECSCUSR CSI escape sequence

commit 246c3481d780067dd3294edbd58cf980c2d960a3
Author: Christoph Lohmann <20h@r-36.net>
Date:   Mon Mar 16 22:17:30 2015 +0100

    arg.h wasn't used for dist.

commit b341e513514d50cc995a5646a1bbace65dc4ca67
Author: Alex Pilon <alp@alexpilon.ca>
Date:   Mon Mar 16 11:51:23 2015 -0400

    Handle pasting of empty selection.
    
    Otherwise, pasting the X11 primary selection when empty results an
    error and Xlib forcibly exits.
    
    Signed-off-by: Christoph Lohmann <20h@r-36.net>

commit 86d1e432a823dad7bb64808b8192014fddc8cd9f
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Sun Mar 15 18:07:46 2015 +0000

    Support XA_STRING in notify request
    
    Some programs can only deal with XA_STRING, and it makes impossible st
    be able of copying to them. This patch makes st answer also to XA_STRING,
    althought it sends utf8 strings. It is not a problem because moderm
    applications must support utf8.

commit c7e24e44c8d66cd5b0a6b015d2112da5f1e4e581
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Mar 14 08:53:41 2015 +0100

    TODO: Fix fontconfig

commit 5406e655daa576a909ad69a5ee6ed1f72ca5b15a
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Mar 14 08:52:37 2015 +0100

    Add the new selection shortcuts to the manpage.

commit 72d2accc2299cdda9379db17ed62e8e5df5a9426
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Mar 14 08:43:57 2015 +0100

    Glibc wants me to use _DEFAULT_SOURCe. I do obey.

commit 2fcfea1bf149f839cdbcba5c1efc7c4ce31f6d95
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Mar 14 07:41:59 2015 +0100

    Add Mod + Shift + c/v and no selclear.
    
    Thanks to Alex Pilon <alp@alexpilon.ca>!
    
    Now there is a distinction between the primary and clipboard selection. With
    Mod + Shift + c/v the clipboard is handled. The old Insert behavious does
    reside.

commit b746816b78447b9e4a3af7333a4e992eb8d32254
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Fri Mar 13 07:26:16 2015 +0000

    Allow combinations with Backspace
    
    XN_ANY_MOD makes that any combination of backspace will return always
    DEL. This patch lets to X to decide which value returns.

commit 4f60751440df55c11a8c601470b5d141d853e594
Author: Alexander Huemer <alexander.huemer@xx.vu>
Date:   Tue Mar 10 01:23:07 2015 +0100

    FAQ: fix wording

commit f5075a9e9d27c64e115e056c5b973ab783c6c0f3
Author: Ivan Delalande <colona@ycc.fr>
Date:   Wed Mar 11 17:13:35 2015 +0000

    Backspace value shouldn't depend on keypad state

commit c87d45466bac0812101f3b0036a669cd3f72ab6b
Merge: 28259f5 adeb2e9
Author: Christoph Lohmann <20h@r-36.net>
Date:   Tue Mar 10 21:59:41 2015 +0100

    Merge branch 'master' of ssh://suckless.org/gitrepos/st

commit 28259f5750f0dc7f52bbaf8b746ec3dc576a58ee
Author: Christoph Lohmann <20h@r-36.net>
Date:   Tue Mar 10 21:58:32 2015 +0100

    St now does only set PRIMARY on selection.
    
    http://standards.freedesktop.org/clipboards-spec/clipboards-latest.txt

commit adeb2e95d633cf4bbe1bbe5d2caba71776577c21
Author: Alexander Huemer <alexander.huemer@xx.vu>
Date:   Tue Mar 10 01:23:07 2015 +0100

    FAQ: fix wording

commit 9494362d0b35dfe2fa22c3e36ed7b2043b2e8a3d
Author: Christoph Lohmann <20h@r-36.net>
Date:   Tue Mar 10 21:11:04 2015 +0100

    Fixing the C reading test.
    
    This was a test to see if anyone actually reads what is submitted. The list of
    people not contributing will be valuable in the future.

commit cf1fcc4d96f9162272003f82839388093c01360e
Author: Christoph Lohmann <20h@r-36.net>
Date:   Tue Mar 10 00:20:28 2015 +0100

    Change the FAQ for the new Backspace behaviour.

commit 230d0c8428456603ce3629dac75c46abc4c9f016
Author: Christoph Lohmann <20h@r-36.net>
Date:   Tue Mar 10 00:00:44 2015 +0100

    Finally resolving the backspace problem.
    
    The majority now using the Linux behaviour. Minorities have to live in their
    ghettos.

commit b0bddc694a79dd24edb8f997acadecbff356a9e0
Author: Christoph Lohmann <20h@r-36.net>
Date:   Mon Mar 9 23:16:03 2015 +0100

    Add a hack to handle unknown chars in fontconfig.
    
    The unicode long is added to the cache. So when fontconfig does fall back to
    the default font (where there is no easy way to find this out from the
    pattern) it isn't reloaded.

commit 487bbb24d02190efa3d18093cadfa376f816d7fa
Author: Johannes Postma <jgmpostma@gmail.com>
Date:   Thu Mar 5 15:52:51 2015 +0000

    Update kdch1 definition to three octal digits.
    
    ncurses wasn't able to detect the delete-character key as KEY_DC.  This
    patch fixes that.
    
    kdch1 was defined as "\0177", but terminfo(5) states:
            ... characters may be given as three octal digits after a \.
    
    The delete-character key is correctly defined in config.def.h.

commit 29619a1a35175fd79a743ed006af405ea586a0fd
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Sat Feb 28 16:13:47 2015 +0000

    Small improvements to the FAQ

commit b8804f9f675b79ddd2db47aeef626d6ae3ce5ca3
Author: Greg Reagle <greg.reagle@umbc.edu>
Date:   Thu Feb 19 16:33:22 2015 -0500

    document keys in man page

commit 1b514048b254827f1a83c05e1b2a2428bf31924e
Author: Ivan Delalande <colona@ycc.fr>
Date:   Sun Feb 15 00:34:03 2015 +0100

    Let curses do the dirty work for flash
    
    Use the terminfo delay syntax ($<x>) in our flash capability to avoid
    hardcoding a fixed delay in redraw() when called from tsetmode() with
    DECSCNM.
    We need to turn on the npc capability so that delays are made with
    xon/xoff instead of padding characters.

commit 3604445ffc6ff1bfdfc7614771ca659e423b404b
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Sun Feb 22 10:59:26 2015 +0000

    Comment default CC assignment
    
    CC by default is cc, so the assignment was doing nothing, but
    it was using non standard syntax, so some system (NetBSD) fail
    to compile.

commit ac11bbb03b923cbe02cd17130ae643b2c4b004ec
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Sun Feb 22 10:58:37 2015 +0000

    Update dates in LICENSE

commit c5f1d74fd83319d84887c7ff6769f3d42c3d1a0d
Author: Nils Reuße <ml@hxgn.net>
Date:   Sun Feb 15 17:46:15 2015 +0100

    Update year in usage()

commit 7dd24bfb4c80960567d2d4dd4cf7ca5f2af95a52
Author: Nils Reuße <ml@hxgn.net>
Date:   Sun Feb 15 17:11:22 2015 +0100

    Fix crash on font resize resize
    
    if you keep downsizing your fontsize until either xw.ch or xw.cw gets 0,
    st crashes, because there is an unchecked division in cresize.

commit aba6c292af347588b9c2f5d1a400a6270b5a447f
Author: Rian Hunter <rian@alum.mit.edu>
Date:   Thu Jan 29 15:00:39 2015 -0800

    Correct shift amount on MODE_INSERT in tputc()
    
    When MODE_INSERT is set we'd shift characters on the same
    line forward before inserting our character in tputc().
    This did not account for wide characters where width != 1.
    This patch makes it so we shift the correct amount.

commit 4d14d97547d335974e98aa612ac5b4fcfc25e1d9
Author: Rian Hunter <rian+suckless-dev@thelig.ht>
Date:   Thu Jan 29 15:06:43 2015 -0800

    Fix crash due to wide characters
    
    In tputc(), when a character wasn't large enough to fit
    on the current line, we would call tnewline() to place it on
    the next line. Unfortunately, we weren't resetting our glyph
    pointer and this caused memory corruption when a
    wide character (width == 2) was being written. This patch
    resets our glyph pointer after calls to tnewline().

commit 708b697ed77e1ba4e96399ed6cb0f73a37565321
Author: Ivan Delalande <colona@ycc.fr>
Date:   Fri Dec 12 08:39:07 2014 +0100

    Fix crash due to invalid timespec given to pselect
    
    If blinktimeout is set to a value greater than 1000, pselect will
    receive a timeout argument with tv_nsec greater than 1E9 (1 sec), and
    fail, making st crash. This patch just ensures that the timespec
    structure is correctly filled with a value properly decomposed between
    tv_sec and tv_nsec.
    
    Reported by JasonWoof on IRC. Thanks!

commit 09f5d98251469070b76f3911cc6a83d977871656
Author: Ivan Delalande <colona@ycc.fr>
Date:   Sun Nov 16 09:02:57 2014 +0100

    Trim trailing whitespaces in every selection case
    
    Trailing whitespaces are trimmed when copying from normal selection and
    rectangular selection on lines that have their last character included
    or on the left of the selection. It leads to inconsistent behaviors when
    copying the exact same text from the left and right window in
    applications with vertical splits.
    This patch solves this issue by always trimming the selection.

commit 4418939dd9f3a7b3cfd3071234ed18ae86538f2a
Author: sin <sin@2f30.org>
Date:   Tue Nov 11 18:29:11 2014 +0000

    Call _exit() instead of exit() if exec*() fails
    
    exit() will also unwind the atexit() functions.  This is bad
    because if exec*() fails the process is in an inconsistent state.

commit bafbba56cd5735c680676db2adf6f614ba61356f
Author: Eric Pruitt <eric.pruitt@gmail.com>
Date:   Tue Oct 28 17:51:42 2014 -0700

    Check for presence of SHELL environment variable
    
    - POSIX states the SHELL environment variable "... shall represent a
      pathname of the user's preferred command language interpreter." As
      such, st should check for its presence when deciding what shell to
      use; just as HOME can be defined to override one's passwd-defined home
      directory, a user should also be able to override their passwd-defined
      shell using the SHELL environment variable.

commit 11625c7166b7e4dad414606227acec2de1c36464
Author: czarkoff@gmail.com <czarkoff@gmail.com>
Date:   Tue Oct 28 12:55:28 2014 +0100

    Replace character with U+FFFD if wcwidth() is -1
    
    Helpful when new Unicode codepoints are not recognized by libc.

commit 008aae541b5cb1e67a025048adef9a06eaa11c2e
Author: Quentin Rameau <quinq.ml@gmail.com>
Date:   Thu Oct 16 00:42:53 2014 +0200

    Avoid failing when embedding with a Window id of 0
    
    I'd like to let st run with its own window when trying to embed it to a window with id 0 instead of exiting with an error.

commit cd159883d14c5874446a6ae949be031a1c9d37c2
Author: Christoph Lohmann <20h@r-36.net>
Date:   Tue Oct 21 16:36:01 2014 +0200

    Reverting smacs and rmacs to the xterm defaults.
    
    These are needed by ncurses to correctly handle the switch between line
    drawing. The changes to the alternative characterset code already fixed the
    urwid hack.

commit f9fb620914f7b1e2580a890f23b66e18762788b7
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Wed Oct 15 19:42:20 2014 +0200

    Do not set SHELL to utmp ever
    
    SHELL must be set to the SHELL of the user, but it was possible set
    it to utmp.

commit 86633ada91d1c7d8be1bf0398caff8a62fb1b805
Author: CustaiCo <custaico@openmailbox.org>
Date:   Fri Oct 3 19:25:21 2014 +0000

    patch for bell in st
    
    The XBell() call currently used when a bell is recieved sends a message
    to the X server, but if the X server doesn't know how to sound it,
    it just gets ignored and I have not been able to find anywhere in x.org's
    code a way to configure the action that the server does.
    
    However, if you use XkbBell() then you can have a process listening for
    the XkbBellNotifyEvent that is produced and either alert you visually or
    play an audio file or whatever you want as your notification. You have
    to include one more header file but the function seems to be compiled as
    part of Xlib, at least on my installation.
    
    CustaiCo

commit dcfe505d3c97506918d5aff24ab62e17e5f58fdb
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Wed Oct 8 11:35:45 2014 +0200

    Use G1 for alternate charset
    
    St has enacs, which must be printed if a program requires to use
    the alternate charset (graphic charset), that in st case was to
    select charset graphic for G1, but it was not useful
    at all because smacs and rmacs were always redefining the value
    of G0.

commit 88429cdcbf937c4042cc315b31fcb8c662bd51fb
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Wed Oct 8 11:33:36 2014 +0200

    Add LS2 and LS3
    
    These sequences are the equivalents of LS0 and LS1, but for G2 and
    G3.

commit 0c8feecbf74674132070169986802c75dd49d688
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Wed Oct 8 10:30:20 2014 +0200

    Fix SI and SO
    
    SI (0x0F or ^O) means Shift In, and it selects G1 charset definition,
    and SO (0x0E or ^N) means Shift Out, and it selects G0 charset
    definition, but st was doing just the inverse.

commit a7eef8f230bcf72a85af68fc9a08ca94e52ca18d
Author: Christoph Lohmann <20h@r-36.net>
Date:   Mon Sep 29 15:41:10 2014 +0200

    Removing an extra space.

commit 63a07eb19c908ac86936b6f9857738107326d27a
Author: Christoph Lohmann <20h@r-36.net>
Date:   Mon Sep 29 15:40:37 2014 +0200

    Minor style changes for the last patch.

commit dc8c5c82aa14e75305bd5b0e42b4f8bba45702a8
Author: Christoph Lohmann <20h@r-36.net>
Date:   Mon Sep 29 15:38:21 2014 +0200

    Implementing xzoomreset.
    
    Thanks mvdan@mvdan.cc for proposing this.

commit c7a945c4086ab913cd8a05997bfbc1906645eff4
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Wed Aug 20 10:41:41 2014 +0200

    Add missed names of charset sequences

commit 5afb3862ba368de8888c0c570098baababc7bc19
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Thu Aug 28 12:48:29 2014 +0200

    Add support for utmp in st
    
    St runs an interactive shell and not a login shell, and it means
    that profile is not loaded. The default terminal configuration
    in some system is not the correct for st, but since profile is
    not loaded there is no way of getting a script configures the
    correct values.
    
    St doesn't update the utmp files, this is the job of another
    suckless tool, utmp. Utmp also opens a login shell (it is the
    logical behaviour when you create a new user record) it is a
    good option execute utmp and then get a correct input in
    utmp, wtmp and lastlog file, and execute the content of the
    profile.

commit 0392d165d07143eec29c730364006bc0613e1198
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Sun Aug 24 16:27:28 2014 +0200

    Remove indentation level in xdrawcursor

commit 98a1085d0e7c3d84e19185ba666c4b0c725cd974
Author: Ben Hendrickson <ben@1m7.com>
Date:   Fri Aug 22 09:25:04 2014 -0700

    Removing wrapping newlines from selection
    
    When getting selected text, lines that were wrapped because of length
    ought not include the wrapping newline in the selection.
    
    This comes up, for example, when copying a bash command that is long
    enough to wrap from the console and pasting it back into the console.
    The extra newline breaks it.
    
    Similiarly, changes behavior when trimming whitespace from the end of a
    physical line to only do so if the line does not wrap. Otherwise we are
    trimming whitespace from the middle of a logical line, which may change
    its meaning.
    
    Signed-off-by: Roberto E. Vargas Caballero <k0ga@shike2.com>

commit 51466e019a67e9319e6c5a7fa4205842ca860b71
Author: Ivan Delalande <colona@ycc.fr>
Date:   Wed Aug 20 21:20:44 2014 +0200

    Change the behavior of word snapping on delimiters
    
    This makes any sequence of identical delimiters be considered a single
    word in word-snapping mode. This seems more coherent for this mode and
    is similar to what xterm does.
    
    Signed-off-by: Roberto E. Vargas Caballero <k0ga@shike2.com>

commit c490a60b804f467490cd4d8275a181dc37edef9f
Author: Ivan Delalande <colona@ycc.fr>
Date:   Wed Aug 20 21:14:08 2014 +0200

    Move calls to selsnap into selnormalize
    
    This simplifies getbuttoninfo() and bpress(), and fixes a bug which made word
    snapping behave incorrectly when a delimiter was at the beginning or end of
    line.
    
    Signed-off-by: Roberto E. Vargas Caballero <k0ga@shike2.com>

commit 83dea7fd7bb5f6e8a11a7ac8a734d8016d1ed0cb
Author: Alexander Huemer <alexander.huemer@xx.vu>
Date:   Wed Aug 20 12:05:12 2014 +0200

    Improve readability of enum members
    
    The 'left shift from one' notation of power of two integers is more
    expressive than the result.
    
    Signed-off-by: Alexander Huemer <alexander.huemer@xx.vu>
    Signed-off-by: Roberto E. Vargas Caballero <k0ga@shike2.com>

commit e5f6736ee0a0f29a14afec5494a5b3f204cedc1c
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Wed Aug 20 09:56:24 2014 +0200

    Add eschandle()
    
    We already have a csihandle() function, where is located code about
    CSI sequences, so it is logical do the same with ESC sequences.
    This change helps to simplify tcontrol(), which has a complex flow
    and should be rewritten.

commit a3549c2eecf12b3453e6c86ba1721e7837f23746
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Tue Aug 19 00:55:02 2014 +0200

    Improve execsh() and don't allow anonymous shells
    
    This patch improves the shell selection on execsh and forbid
    shell with users don't registered in the passwd file.

commit 8342036f983288046e03a34055c10fc6b6b11017
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Mon Aug 18 23:23:51 2014 +0200

    Fix definition of CONTROLC0
    
    DEL character is not thecnically talking a C0 control character,
    although it has some common properties with them, so it is useful
    for us consider it as C0. Before this patch DEL (\177), was not
    ignored as it ought to be.

commit 9d9e049eac3dacb2725f9d792f7cdd2230062313
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Mon Aug 18 23:19:58 2014 +0200

    Make useful DEL in application mode
    
    DEL key has to generate the sequence ^[P in application mode,
    because such sequence means delete current character. It implies
    that the character sent in keypad mode must be ^? (DEL character).

commit 177d888dff2fdf987dfa7fc3eb8495fa107879ad
Author: Quentin Carbonneaux <q@c9x.me>
Date:   Mon Aug 18 19:20:41 2014 +0200

    reset the alt screen in treset
    
    Signed-off-by: Roberto E. Vargas Caballero <k0ga@shike2.com>

commit fa04911c91a049f397337d3436c4a5692da558fa
Author: Quentin Carbonneaux <q@c9x.me>
Date:   Mon Aug 18 19:19:42 2014 +0200

    simplify loop in tresize
    
    Signed-off-by: Roberto E. Vargas Caballero <k0ga@shike2.com>

commit 1926305318cf020e20732461293d3e8c1c201734
Author: Alexander Huemer <alexander.huemer@xx.vu>
Date:   Mon Aug 18 01:52:53 2014 +0200

    Simplify README
    
    The term 'virtual terminal emulator' was broken. There is nothing
    virtual about it, it's a terminal emulator.
    
    Signed-off-by: Alexander Huemer <alexander.huemer@xx.vu>
    Signed-off-by: Roberto E. Vargas Caballero <k0ga@shike2.com>

commit 8f3e6a577d0d9733d356c0b691fea7b523d8ade7
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Sun Aug 17 20:49:33 2014 +0200

    Fix man page and usage()
    
    Man page was repeating -f option, the second time instead of -i,
    and this option was lost in usage() message. This patch also indent
    the output of usage().

commit f8b4998b32cbabe2090dc8027720203d6cd2d24d
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Fri Aug 15 15:00:48 2014 +0200

    Convert VT102ID to a config variable
    
    VT102ID is the sequence that the terminal returns when it is inquired
    to identify itself. This value should be configurable in the same
    way that another st parameters.

commit 6530025bcaf3a65083667a93ae50035bd7137bae
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Fri Aug 15 14:48:16 2014 +0200

    Fix portability problem in techo()
    
    ISCONTROL chechks if a value is between 0 and 0x1f or
    between 0x80 and 0x9f. Char signess depends of architecture
    and compiler, so in some environment the second case is
    always false (and wrong), Techo() calls ISCONTROL with a
    char variable, whose type cannot be changed because tpuc()
    expects a pointer to char, so the solution is to insert a
    cast in the call to ISCONTROL.

commit d4a17316d33f3c5a0017d7fe6e7e174883ccaa97
Author: noname <noname@inventati.org>
Date:   Mon Apr 28 02:16:21 2014 +0400

    Don't set dirty all lines because tswapcreen do it
    
    Signed-off-by: Roberto E. Vargas Caballero <k0ga@shike2.com>

commit 20c4f122543b67c0cdcefd151eb38b3bee599c10
Author: noname <noname@inventati.org>
Date:   Mon Apr 28 02:03:04 2014 +0400

    tresize return value is not used
    
    Signed-off-by: Roberto E. Vargas Caballero <k0ga@shike2.com>

commit 821a6e00a5a9395f40c10c00d19c569bd0f2688e
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Thu Aug 7 10:19:48 2014 +0200

    Remove ul capability
    
    This capability indicates that underscore '_' overstrike current
    letter under the cursor. It means that you can generate a
    underline 'b' using 'b^H_', because it writes a 'b' then backward
    one characther and then overstrike '_'. St has not such behaviour,
    so it is an error to have this capability.

commit 8de8ae3923b3b91b034077c8c35acba629588233
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Thu Aug 7 10:11:38 2014 +0200

    Unset mode when clearing regions
    
    tclearregion() was clearing regions using spaces and the current
    attributes of the terminal. It was correct with all the modes excepct
    underline, because they didn't affect the space character, but in
    the case of underline it was a problem. A easy way of seeing this
    problem is writing this in the last line of the terminal:
    
            tput smul ; echo first; tput rmul; echo second; echo third
    
    Fist was underlined, and second and third were not underlined, but
    the spaces at the right of second was underlined becuause in the
    previous scrool underline mode was set.

commit ec3268961d1dc4072f6caa6f97db5436da2ff411
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Mon Aug 4 22:07:04 2014 +0200

    Add error message when child exits whit error
    
    Master proccess was not showing any error message when the child
    died with an error, and it was very confusing for the user (for
    example with incorrect -e command).

commit 769d48180747c3255653360d161c77ec2a2e8d13
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Thu Jul 31 19:37:59 2014 +0200

    Remove difference between fast and slow blinking
    
    One blinking mode is good enough, and two is too much. The best aproach
    is emulate the fast blinking with the slow blinking, that it is more
    used.
    It is removed the flag ATTR_FASTBLINK because it has not a different
    meaning of ATTR_BLINK, so it is not needed.
    
    Signed-off-by: Roberto E. Vargas Caballero <k0ga@shike2.com>

commit b4dfa18124451f9ee29a0719ef36ffd58fae4477
Author: Michael Forney <mforney@mforney.org>
Date:   Sat Jul 26 00:48:15 2014 -0700

    Fix disabling of bold and fastblink
    
    According to ECMA-48¹ 8.3.117, an attribute value of 21 is "doubly
    underlined", while 22 is "normal colour or normal intensity (neither
    bold nor faint)".
    
    Additionally, 25 is "steady (not blinking)", which likely means neither
    slow blink nor fast blink.
    
    ¹: http://www.ecma-international.org/publications/files/ECMA-ST/Ecma-048.pdf
    
    Signed-off-by: Roberto E. Vargas Caballero <k0ga@shike2.com>

commit e8f3513bf4d953176ae932c5d7eb5c374b05a2a0
Author: Wolfgang Corcoran-Mathe <first.lord.of.teal@gmail.com>
Date:   Fri Jul 25 13:32:29 2014 -0400

    Add info about Backspace and Delete to the FAQ
    
    Here is a modest attempt at cleaning it up a little bit. I changed a
    few phrases that seemed awkward, but I think the content is the same.
    
    --
    Wolfgang Corcoran-Mathe
    
    Signed-off-by: Roberto E. Vargas Caballero <k0ga@shike2.com>

commit f210ea26c444607980d5de17ed7d4e62bb813631
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Thu Jul 24 19:56:58 2014 +0200

    Add info about Backspace and Delete to the FAQ

commit 8306568bd0b9d082c58ad897b4562ffe6822e585
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Sun Jul 20 10:31:16 2014 +0200

    Add information about librt and OpenBSD to the FAQ

commit 844cd7ce17aaad93cfc2ffba6b7511bac855786c
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Sun Jul 20 10:31:16 2014 +0200

    Add information about librt and OpenBSD to the FAQ

commit 8c5ba1cfb09edc12d4992df4667c6ea2a476c82f
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Sun Jul 20 10:31:16 2014 +0200

    Add information about librt and OpenBSD to the FAQ

commit 3949aa7c5db6db76e545f6201b1c49f1b91fb245
Author: Wolfgang Corcoran-Mathe <first.lord.of.teal@gmail.com>
Date:   Sun Jul 20 11:05:39 2014 -0400

    Very minor grammar fixes in FAQ
    
    Self-explanatory.
    
    Signed-off-by: Roberto E. Vargas Caballero <k0ga@shike2.com>

commit 84ceefe0890ee235dd736543fe30479393562fb6
Author: Weng Xuetian <wengxt@gmail.com>
Date:   Wed Jul 16 18:36:46 2014 -0400

    Fix st with input method.
    
    XFilterEvent need to be called against every event, otherwise it would
    missing some message in the xim protocol and misbehave on some im server.
    
    Signed-off-by: Roberto E. Vargas Caballero <k0ga@shike2.com>

commit b5d0a13c10ab6ba6121c5fa67b9f20c8d41de349
Author: Eric Pruitt <eric.pruitt@gmail.com>
Date:   Mon Jul 14 09:05:07 2014 -0500

    Changed inconsistent indent
    
    - A line was indented using spaces despite the rest of the code using
      tabs.
    
    Signed-off-by: Roberto E. Vargas Caballero <k0ga@shike2.com>

commit 984c12d2a67fd19ee69b35152d93de8cb67595e8
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Fri Jun 20 09:51:18 2014 +0200

    Add 8 bit version of DCS, APC, PM, OSC
    
    DCS, APC, PM, OSC version for 7 bits environments already was implemented
    in st.  This patch adds the 8 bit version of it.

commit da78629cf5fa234204f002ff2c2b597a2bf7e76f
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Fri Jun 20 09:51:18 2014 +0200

    Add 8 bit version of HTS
    
    HTS version for 7 bits environments already was implemented in st.
    This patch adds the 8 bit version of it.

commit f5356d018505963a72d1a5bb505c69b2cf32792b
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Fri Jun 20 09:51:18 2014 +0200

    Add 8 bit version of NEL
    
    NEL version for 7 bits environments already was implemented in st.
    This patch adds the 8 bit version of it.

commit bcbaf5d9beb72f29d228d103634d648ca28fb48d
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Fri Jun 20 09:51:18 2014 +0200

    Add 8 bit version of DECID
    
    DECID version for 7 bits environments already was implemented in st.
    This patch adds the 8 bit version of it.

commit f796533b1bab9aa8ea4e70b79d305c9aea47fe6a
Author: Anders Eurenius <aes@spotify.com>
Date:   Sun Jun 22 00:10:59 2014 +0200

    Render faint attribute
    
    Faint text is implemented by allocating a new color at one-half
    intensity of each of the r, g, b components, or if the text bold at the
    same time, it is not made lighter.
    
    Signed-off-by: Roberto E. Vargas Caballero <k0ga@shike2.com>
    Signed-off-by: Christoph Lohmann <20h@r-36.net>

commit 955923b38b1f08f6cb25a706cea2af5966339187
Author: Ivan Delalande <colona@ycc.fr>
Date:   Fri Jun 27 09:15:56 2014 +0200

    Remove all strcmp and strlen calls on Glyph.c[]
    
    There were a few occurrences of strcmp and strlen being called on Glyph.c[],
    which is not always null-terminated (this actually depends on the last values in
    the buffer s in ttyread()). This patch replace all the calls to strcmp with a
    test on c[0] directly or a call to tlinelen, and the one to strlen with utf8len.
    I also took the opportunity to refactor getsel and tdumpline.
    
    Signed-off-by: Roberto E. Vargas Caballero <k0ga@shike2.com>

commit 0015e198bfceae50a55403ad1339345340f4dcc0
Author: Christoph Lohmann <20h@r-36.net>
Date:   Mon Jun 30 17:33:43 2014 +0200

    Making surf compile again with rt.
    
    The clock_gettime patch needs librt to be linked to surf.
    
    Thanks _odie for the hint.

commit 1fc4afd1e6609732178369c7f17c917204aad4cc
Author: Anders Eurenius <aes@spotify.com>
Date:   Sat Jun 21 20:32:34 2014 +0200

    Render struck-out attribute
    
    Implement crossed-out text with an XftDrawRect call, similar to how
    underline is implemented. The line is drawn at 2/3 of the font ascent,
    which seems to work nicely in practice.
    
    Signed-off-by: Roberto E. Vargas Caballero <k0ga@shike2.com>

commit 21bd4f4f9dce4dd19f218965e5a223c93a5a0fec
Author: Anders Eurenius <aes@spotify.com>
Date:   Sat Jun 21 20:30:22 2014 +0200

    Render invisible attribute
    
    Implement invisible mode by setting the foreground color to be the same
    as the background color. Not rendering anything would also be an
    alternative, but this seems less likely to cause surprises in
    conjunction with any hacks.
    
    Signed-off-by: Roberto E. Vargas Caballero <k0ga@shike2.com>

commit 50e6355e0d6c9843b51ac4711980401205ce06c1
Author: Anders Eurenius <aes@spotify.com>
Date:   Sat Jun 21 20:29:36 2014 +0200

    Reorder and extend glyph attributes
    
    Faint, invisible, struck and fast blink are added as glyph attributes.
    Since there's an edit here, let's take the opportunity to reorder them
    so that they correspond to the two's power of the corresponding escape
    code. (just for neatness, let's hope that property never gets used for
    anything.)
    
    Signed-off-by: Roberto E. Vargas Caballero <k0ga@shike2.com>

commit 77569526c0166e6364bb635fceb8eeabd58ce683
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Thu Jun 26 12:37:06 2014 +0200

    Remove CEIL macro
    
    This macro was not correct in some cases, and it was used only in
    one place, where we did'nt get any benefit in performance of in size,
    so the macro is removed and ceilf is used instead of it. The only
    function needed from math.h is ceilf, so this patch defines the
    prototype of it instead of including math.h.

commit 19d095717f656d844cd9d696d9c921a0821a5ea7
Author: Ivan Delalande <colona@ycc.fr>
Date:   Thu Jun 26 04:30:43 2014 +0200

    Fixed wrong nanosecond factor 10E6.
    
    Commit 5edeec1 introduced a wrong factor for nanosecond computation, the correct
    value is 1E6. Time and timeout values are 10 times less than they should be and
    this cause high CPU usage.
    
    Reported by pyroh on IRC. Thanks!
    
    Signed-off-by: Roberto E. Vargas Caballero <k0ga@shike2.com>

commit 5edeec1b20fcb5900d4f1408594d1e76b6c544f0
Author: FRIGN <dev@frign.de>
Date:   Mon Jun 23 16:51:51 2014 +0200

    Use monotonic clock to prevent timing issues
    
    This patch replaces the gettimeofday()/timeval-system with
    uses of clock_gettime() with a monolithic clock and timespec-structs.
    gettimeofday() is not accurate and prone to jumps and POSIX.1-2008
    marks it as obsolete. Read more here [0].
    
    The patch should speak for itself and decreases the binary
    size for me by almost 200K(!).
    
    [0]: http://blog.habets.pp.se/2010/09/gettimeofday-should-never-be-used-to-measure-time
    
    Signed-off-by: Roberto E. Vargas Caballero <k0ga@shike2.com>

commit 738f555f66e2423678d7f81344131d2e01f7c2e9
Author: Eric Pruitt <eric.pruitt@gmail.com>
Date:   Wed Jun 18 08:39:57 2014 -0500

    Fix typo in config.def.h
    
    Signed-off-by: Roberto E. Vargas Caballero <k0ga@shike2.com>

commit 58eaa998b37bc44acbf4356a3bc4116acf570893
Author: Troy Sankey <sankeytms@gmail.com>
Date:   Wed Jun 18 10:41:26 2014 -0700

    update size hints on zoom
    
    On font zooming (i.e. xzoom()), window size hints are not updated.  This
    patch does that.
    
    Signed-off-by: Roberto E. Vargas Caballero <k0ga@shike2.com>

commit c2fd2754ebea6f802e4c71219af269c58b78262e
Author: Silvan Jegen <s.jegen@gmail.com>
Date:   Fri Jun 6 22:09:22 2014 +0200

    Refactor the innermost loop of the xdraws function
    
    Signed-off-by: Silvan Jegen <s.jegen@gmail.com>
    Signed-off-by: Christoph Lohmann <20h@r-36.net>

commit 27b28f1dc264e9947ea22bd64fd8f00ac98442f5
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Mon Jun 9 17:19:15 2014 +0200

    FAQ: update typo and escape code for smkx
    
    Signed-off-by: Roberto E. Vargas Caballero <k0ga@shike2.com>

commit 587b4435924bab598a904531dc8d01656d1e519a
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Jun 7 13:49:04 2014 +0200

    Style police.

commit 93661042a2a0cf6f3655360f5c52215c684a4211
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Sat Jun 7 13:23:45 2014 +0200

    Simplify tdeftrans

commit 18a05fdf4326ac1c7165de8cad0895b5c44fac83
Author: FRIGN <dev@frign.de>
Date:   Fri Jun 6 14:08:51 2014 +0200

    Remove unnecessary typedef
    
    This should also fix compiling-errors on OpenBSD,
    as reported by Nils R. Thanks!
    
    Signed-off-by: Roberto E. Vargas Caballero <k0ga@shike2.com>

commit 5159d55c631cd1179bd2f872859d4540668745b9
Author: Colona <colona@ycc.fr>
Date:   Thu Jun 5 06:32:01 2014 +0200

    Refactor selsnap SNAP_WORD.
    
    Refactor the SNAP_WORD part in selsnap, and fix a bug that caused the word
    delimiters to be ignored if it was at the very beginning or end of a wrapped
    line.
    
    Signed-off-by: Roberto E. Vargas Caballero <k0ga@shike2.com>

commit 6fd887077e29efd789499e06193314d7abdcac38
Author: Colona <colona@ycc.fr>
Date:   Tue Jun 3 21:47:55 2014 -0700

    Fix rectangular selection.
    
    selsort computes the wrong normalized coordinates when rectangular
    selection is enabled, causing rectangular selection to only work
    when going toward either the top left corner, or the bottom right
    one.
    
    Signed-off-by: Roberto E. Vargas Caballero <k0ga@shike2.com>

commit bb6dc332067fddcdcb0940ebc9b5f41c61429c46
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Tue Jun 3 17:55:53 2014 +0200

    tiny cleanup
    
    Signed-off-by: Roberto E. Vargas Caballero <k0ga@shike2.com>

commit 2323e962e6bcddba42fd8be977088fb63ed8844c
Author: Colona <colona@ycc.fr>
Date:   Tue Jun 3 04:34:58 2014 +0200

    Make selection consistent over line breaks.
    
    Currently, selection is expanded to the end of the line over line breaks only in
    regular selection mode, when the line in not empty and when going down and/or
    right. This covers all the cases including word selection mode, with the
    exception of rectangular selection because it would make this mode too rigid.
    This adjustment is made in selsort so I renamed it to selnormalize to better
    reflect what it does now.
    
    Signed-off-by: Roberto E. Vargas Caballero <k0ga@shike2.com>

commit c6fcb78b3a9a73b691875048848430c18870a0fc
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sun Jun 1 17:08:16 2014 +0200

    Fixing color and refactor xsetcolorname.
    
    By  the recommendation of FRIGN I refactored xsetcolorname to remove the
    unnecessary r, g, b variables when allocating a new  color.  Colors  are
    now freed and set to the new color. A die() should not happen here. Oth‐
    erwise it is easy for applications to kill st. St should be resilent  to
    malicious input.
    
    Second  this  patch  standardises  the  naming  of  »color«. There is no
    »colour« here. Maybe in some parts of the world.

commit 8b4cfcea73a37ab6d67c06c69e9af3de304185e3
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sun Jun 1 16:52:19 2014 +0200

    Revert "Refactor xsetcolorname()"
    
    This reverts commit a32c5f5726f514b49bd396f27aab0e78c40126d3.

commit a32c5f5726f514b49bd396f27aab0e78c40126d3
Author: FRIGN <dev@frign.de>
Date:   Sun May 25 12:13:22 2014 +0200

    Refactor xsetcolorname()
    
    I mainly improved the slightly off algorithm used to load colours in the 256-colour-space and
    removed unnecessary local values (r,g,b,colour).
    "colour" is not necessary as a punchbag for XftColorAlloc[Value,Name], as they don't mess with
    the result-adress until they are absolutely sure everything worked out[0].
    
    Being at it, I changed the error-returns for AllocValue to dies (just like in xloadcols()), as
    a failure is most likely an OOM-situation you better catch early.
    In case of an invalid name everything stays the same.
    
    [0]: http://www.opensource.apple.com/source/X11libs/X11libs-40/libXft/libXft-2.1.13/src/xftcolor.c
    
    Signed-off-by: Christoph Lohmann <20h@r-36.net>

commit ba36d1394b3add5b9d4c174f1443cc312bcc7e09
Author: Balazs Kezes <rlblaster@gmail.com>
Date:   Sat May 31 22:24:58 2014 +0100

    Don't report release events for mouse wheel
    
    Signed-off-by: Christoph Lohmann <20h@r-36.net>

commit ede83bd08b922f2f53264876f6500b564d3c5ef0
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sun Jun 1 15:54:28 2014 +0200

    Fixing italic bold.
    
    Thanks Felipe Spychalski <spychalski@gmail.com> for the patch!

commit 2411308bd24c4db97a3bb06d38f183a679aec1ea
Author: Alexander <alex0player@gmail.com>
Date:   Mon May 26 09:23:56 2014 +0400

    Fixed copying empty lines inside selection.
    
    The code was assuming that empty lines have implicit wrap-around attribute.
    
    Signed-off-by: Roberto E. Vargas Caballero <k0ga@shike2.com>

commit d03aa8d20bcc8a94a7737331a9ec0bf11df3e572
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat May 24 21:27:54 2014 +0200

    Fix some more LICENSE changes.

commit 80d80512690c0ecb2627b31e1e0296256b27c896
Author: FRIGN <dev@frign.de>
Date:   Sat May 24 21:07:53 2014 +0200

    Add FRIGN to License, remove trailing whitespace
    
    Signed-off-by: Christoph Lohmann <20h@r-36.net>

commit 488977c8efd0b3ad5bcc7a76f35e737f56381f45
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat May 24 13:52:24 2014 +0200

    Brightening is again on the TODO list.

commit f4ebb3180f9f03bc35034348a5aff8745eac9ebf
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat May 24 13:48:44 2014 +0200

    Fixing trailing whitespaces.

commit 3544e354b2dcdfcced1a2f4aeedb4d479abd543c
Author: FRIGN <dev@frign.de>
Date:   Thu May 22 15:00:33 2014 +0200

    Fix colour-model and simplify xloadcols()
    
    Signed-off-by: Christoph Lohmann <20h@r-36.net>

commit cf890e5bf06a65a35fe195aa1ef8ae3e1eb55f51
Author: Hiltjo Posthuma <hiltjo@codemadness.org>
Date:   Mon May 12 14:39:37 2014 +0200

    Allow mouse selection override using ShiftMask
    
    Similar to xterm or urxvt holding shift before selecting text with the mouse
    allows to override copying text. For example in tmux with "mode-mouse on" or
    vim (compiled with --with-x), mc, htop, etc.
    
    forceselmod in config.h sets the modifier to use this mode, by default
    ShiftMask.
    
    Signed-off-by: Hiltjo Posthuma <hiltjo@codemadness.org>

commit bdb850a16a6d7a2d12b2bd5500a3b7d70290a74a
Author: Christoph Lohmann <20h@r-36.net>
Date:   Fri May 9 17:12:58 2014 +0200

    Redraw needs all dirty lines to have flash etc. work.

commit e31829f659a818e438bf2fe45708abb2983f8765
Author: Colona <colona@ycc.fr>
Date:   Fri May 9 10:23:53 2014 +0200

    End a sequence only on CAN, SUB, \a and C1s.

commit 5e917ab2874de556de12ce43e9a97300c9c722a2
Author: Colona <colona@ycc.fr>
Date:   Wed May 7 10:05:27 2014 +0200

    Also clears ESC_START on interrupt characters during sequences.
    
    Otherwise, the rest of the input is interpreted as a new escape
    sequence.
    For the ESC character, ESC_START is re-set in tcontrolcode.

commit 99fb365aa30e6d9f8fa035f4d2adbc3145fafb00
Author: noname <noname@inventati.org>
Date:   Fri Apr 25 18:26:54 2014 +0400

    Consistent FALLTHROUGH comments.

commit 870f961c49d3f9dfea8d78666e73fcdd0f90cc57
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Tue Apr 29 09:58:55 2014 +0200

    Fix displaying control code
    
    Control code are never displayed. It is not important if graphic
    charset is displayed or not.

commit 1629363f2d009a0c0d61209e4126ff09fa0e11a4
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Tue Apr 29 08:58:10 2014 +0200

    Remove ATTR_GFX and tselcs
    
    ATTR_GFX was used long time ago to detect when terminal was in
    graphic mode. Today graphic mode is implemented using a charset
    pointer, so ATTR_GFX is not needed anymore because graphic
    condition can be detected directly checking if current charset
    is GRAPHICS C0.

commit 6b315558f8095b91988d5b305ed06e082da48889
Author: noname <noname@inventati.org>
Date:   Tue Apr 29 02:35:22 2014 +0400

    Do not save cursor in tresize.
    
    This patch fixes the bug introduced in
    8f11e1cd034ff28ca47bb4955505db7fa8016ba8
    
    To reproduce the bug:
    1. Save cursor: printf '\e[s'
    2. Load cursor: printf '\e[u'
    3. Resize st window.
    4. Load cursor again: printf '\e[u'

commit 5f91983541014d34274087dbf723b48551f90fc0
Author: noname <noname@inventati.org>
Date:   Sun Apr 27 15:16:41 2014 +0400

    Simplify selected().

commit 9e3e8ce4661d31629f9d4862467b2fb21c628e38
Author: noname <noname@inventati.org>
Date:   Sun Apr 27 15:39:53 2014 +0400

    Do not export chscale and cwscale.

commit 0e439e5624113233525266c2a104792f2c33b7e3
Author: noname <noname@inventati.org>
Date:   Mon Apr 28 02:41:17 2014 +0400

    Simplify xunloadfonts.

commit 74962bf56636e608f0ee35f2076bc6b48923119d
Author: noname <noname@inventati.org>
Date:   Sun Apr 27 15:40:23 2014 +0400

    Remove one indentation level in getsel().

commit 6681af165b06c32cf65bf970a295600d46cb7025
Author: noname <noname@inventati.org>
Date:   Sun Apr 27 15:40:01 2014 +0400

    Remove unused dump() function.

commit 1ae2745fd160bbc25bab56be31d04a9d7f8ef4d4
Author: noname <noname@inventati.org>
Date:   Sun Apr 27 15:39:47 2014 +0400

    Add missing function prototypes.

commit a48f2be7f537cb1655c6b550d9346a17459a94bd
Author: noname <noname@inventati.org>
Date:   Sun Apr 27 15:39:39 2014 +0400

    Use MODBIT in xseturgency.

commit 17fa1493ee0d8c53c63b3c8d1325ee38fd3192e1
Author: noname <noname@inventati.org>
Date:   Sun Apr 27 15:39:29 2014 +0400

    Compute ena_sel as one expression.

commit a8a9e66a7d481c66bd9680ff0670c322bedd7ca7
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Sun Apr 27 10:25:15 2014 +0200

    Simplify expressions in tputc()

commit 17290f493b3701f57f1e8a1f2d26fc12ab968928
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Sat Apr 26 09:30:53 2014 +0200

    Fix misplaced break
    
    This misplaced break was causing an incorrect fall through
    from DSR to DECSTBM.

commit 43d74ef362b7dc5da3232cdc9412981ea6386df6
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Sat Apr 26 09:24:04 2014 +0200

    Create a function for DEC test
    
    Almost of the sequences execute their action in a separate function,
    which is good because helps to read the full set of sequences
    faster.

commit 3764f38fc805a8846bd18f1d555a10227fd14e29
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Mon Apr 28 18:32:09 2014 +0200

    Fix tputc control code handling
    
    The patch 53105cf modified how control codes were detected, because
    it tried to handle also C1 control codes (0x80-0x9f), that have
    upper bit to 1, so they are multi byte character in utf8.
    Code was checking the value of width in order to known that after
    decoding the unicode point had a width of 1 byte, but it as incorrect
    because this width is the columnb width.

commit 53105cf74fde46229912275c073f8c0f219b05bb
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Sat Apr 26 01:45:10 2014 +0200

    Remove repeated initialisation of term.esc
    
    Once a sequence is completed term.esc must return to 0, so
    instead of repeating this expression in all the cases is
    better put it at the end of the block.

commit aa35bbd7a16c6c210a7574a8c45bbe939d5b2922
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Sat Apr 26 01:34:46 2014 +0200

    Cancel DCS with SUB, CAN, ESC or any CC1 code
    
    From http://www.vt100.net/docs/vt510-rm/chapter4:
    
            *The VT510 ignores all following characters until it receives a
             SUB, ST, or any other C1 control character.
    
    So OSC, PM and APC sequence ends with a SUB (it cancels the sequence
    and show a question mark as error), ST or any another C1 (8 bits)
    code, or their C0 (7 bits) equivalent sequences (at this moment we
    do not handle C1 codes, but we should). But it is also said that:
    
            Cancel  CAN
            1/8     Immediately cancels an escape sequence, control sequence,
                    or device control string in progress. In this case, the
                    VT510 does not display any error character.
    
            Escape  ESC
            1/11    Introduces an escape sequence. ESC also cancels any escape
                    sequence, control sequence, or device control string in
                    progress.

commit 704d12442e85ded011f71c95e90534ebacc81692
Author: Markus Teich <markus.teich@stusta.mhn.de>
Date:   Sat Apr 26 23:50:37 2014 +0200

    add break;s for last cases in switch statements

commit 02d2df5790d186f16e0e22becd8107a85f328c2f
Author: noname <noname@inventati.org>
Date:   Sat Apr 26 00:12:41 2014 +0200

    Do not eat ESC character if control string is not properly terminated.
    
    Currently tputc handles the case of too long control string waiting for
    the end of control string.
    
    Another case is when there is ESC character is encountered but is not
    followed by '\\'.  In this case st stops processing control string,
    but ESC character is ignored.
    
    After this patch st processes ESC characters in control strings properly.
    
    Test case:
    printf '\e]0;abc\e[1mBOLD\e[0m'
    
    Also ^[\ is actually processed in the code that handles ST.
    According to ECMA-048 ST stands for STRING TERMINATOR and is used to
    close control strings.

commit c4b79b055df9ef0126f05dd6dbd2bbf935dcb980
Author: noname <noname@inventati.org>
Date:   Fri Apr 25 18:28:00 2014 +0400

    Fix for multibyte characters in techo.
    
    Works for both signed and unsigned char.

commit 7f1e02e4dbb6e6f033797a09a7deea4fe29f2ca6
Author: noname <noname@inventati.org>
Date:   Fri Apr 25 18:27:48 2014 +0400

    s/DSC/DCS/ DCS stands for DEVICE CONTROL STRING

commit 84f6dbffa5a26e1a2f94f844844d76f80dd6c5a0
Author: noname <noname@inventati.org>
Date:   Fri Apr 25 18:27:26 2014 +0400

    Use xwrite instead of write.

commit 2d67f99d286b7c00b298d0f0908035ca49cd4909
Author: noname <noname@inventati.org>
Date:   Fri Apr 25 18:27:15 2014 +0400

    Remove unnecessary break

commit 4a8574b439e2118bd4cb40374185fba861903620
Author: noname <noname@inventati.org>
Date:   Fri Apr 25 18:26:43 2014 +0400

    Comment fix.

commit 8f11e1cd034ff28ca47bb4955505db7fa8016ba8
Author: Colona <colona@ycc.fr>
Date:   Thu Apr 24 20:35:41 2014 +0200

    On terminal resize, clear the alt screen with its own cursor.
    
    Currently the alternate screen get messed up on resize if it has
    different colors or mode.

commit 844c503c800e5e1db1e409f5db729431ee2e5c00
Author: noname <noname@inventati.org>
Date:   Wed Apr 23 23:12:45 2014 +0400

    Optimize tputtab.
    
    Before this patch executing
            printf '\e[10000000000I'
    or
            printf '\e[10000000000Z'
    resulted in long delay.

commit 1b0b9759dca9739da04f5c8a206b2f8ee5ed8b25
Author: noname <noname@inventati.org>
Date:   Wed Apr 23 23:12:36 2014 +0400

    Use != instead of ^ for logical values.
    
    sel.alt is only changed by
            sel.alt = IS_SET(MODE_ALTSCREEN);

commit 99d2d6007ace1d5558ee349224af275722fcc701
Author: noname <noname@inventati.org>
Date:   Wed Apr 23 23:12:29 2014 +0400

    Use BETWEEN macro in xsetcolorname and fix style.

commit fe31a3f6344b0a1dbe72540aad63812f1edb6c12
Author: Christoph Lohmann <20h@r-36.net>
Date:   Fri Apr 25 22:34:24 2014 +0200

    Conformity in the -g geometry handling.
    
    Thanks to Yuri Karaban for suggesting this!
    
    These changes make -g correspond to <cols>x<rows> and honor it so non-tiling
    window managers can work with the size hints afterwards. It also adds a -i
    flag to force the window size. This is needed so -g keeps being useful in dwm.

commit 6b7f63bac597ca03e18fe63ad522b4d1bded08d1
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Fri Apr 25 17:24:12 2014 +0200

    Simplify a bit more tdeletechar and tinsertblank
    
    The large and repeated expression used in memmove to indirect
    the line can be simplified using a pointer, that makes more
    clear where begins and where ends the movement.

commit 80b32af794b659cb15745cfb2a19fce0829c42c7
Author: noname <noname@inventati.org>
Date:   Wed Apr 23 02:08:13 2014 +0400

    Simplify tdeletechar and tinsertblank and fix memory corruption.
    
    Current CSI parsing code uses strtol to parse arguments and allows them
    to be negative. Negative argument is not properly handled in tdeletechar
    and tinsertblank and results in memory corruption in memmove.
    
    Reproduce with printf '\e[-500@'
    
    Patch also removes special handling for corner case and simplifies
    the code.
    
    Removed
            term.dirty[term.c.y] = 1
    because tclearregion sets dirty flag.

commit 16ac85bf5422a7e925743f6134572d3ac1a25188
Author: noname <noname@inventati.org>
Date:   Sun Apr 20 17:26:39 2014 +0400

    Style fixes in tscrollup.

commit fe527aa508851d83f166b8f50ae4c2ed5f1e4ec8
Author: noname <noname@inventati.org>
Date:   Sun Apr 20 17:26:50 2014 +0400

    Do not set dirty flag twice in tscrollup and tscrolldown.

commit 3afdb4ff04b45a5e4209a56d5073341c9d506b38
Author: noname <noname@inventati.org>
Date:   Sun Apr 20 17:26:13 2014 +0400

    Use tsetdirt in tscrollup and tscrolldown.
    
    tscrollup and tscrolldown do not use tsetdirt, but their code is
    equivalent to
    
            tsetdirt(orig, term.bot-n);
            tsetdirt(orig+n, term.bot);
    
    tclearregion also marks cleared lines as dirty.
    In tscrolldown it sets lines from term.bot-n+1 to term.bot dirty, and in
    tscrollup it sets lines from orig to orig+n-1 dirty.
    
    In both functions all lines from orig to term.bot are effectively set
    dirty, but in tscrolldown lines from orig+n to term.bot are set dirty
    twice, and in tscrollup lines from orig to term.bot-n are set dirty
    twice.
    
    These patches make it clear which lines are set dirty and sets them
    dirty once in each funciton.

commit f9dc374ea01c2921ec3bd1214f292a7036d069ae
Author: noname <noname@inventati.org>
Date:   Wed Apr 23 00:26:07 2014 +0400

    Fix techo handling of control and multibyte characters.
    
    techo compares signed char to '\x20'. Any character with code less then
    '\x20' is treated as control character.  This way characters with MSB
    set to 1 are considered control characters too.
    
    Also this patch makes techo display DEL character as ^?.
    
    To reprocuce the bug, enable echo mode using printf '\e[12l',
    then type DEL character or any non-ASCII character.

commit fa19f241a34deddf6e089ab462cbd9cb02f61b3d
Author: noname <noname@inventati.org>
Date:   Tue Apr 22 21:59:48 2014 +0400

    Make xrealloc and xstrdup style consistent.

commit df1810dd8fcb7a14f4cd2ff2ec3ce8780591f87f
Author: noname <noname@inventati.org>
Date:   Tue Apr 22 21:59:39 2014 +0400

    Use BETWEEN in tsetchar.

commit ed855ea432156cea5ca3c6c942392f97d4c3ab1d
Author: noname <noname@inventati.org>
Date:   Tue Apr 22 21:59:32 2014 +0400

    Use uint and uchar instead of unsigned int and unsigned char.

commit 68d97457ecf044bda62a37dd6158bbba4e28d7fe
Author: noname <noname@inventati.org>
Date:   Tue Apr 22 21:59:21 2014 +0400

    Remove argument names from function prototypes.

commit 49672dac7b40d27e140f5b6d6b3829c9c5f728ba
Author: noname <noname@inventati.org>
Date:   Tue Apr 22 21:59:14 2014 +0400

    Style fix in tdumpsel.

commit f21e47f44a11b9a24a5d5081fea46f5b5f02eadf
Author: noname <noname@inventati.org>
Date:   Tue Apr 22 21:59:01 2014 +0400

    Use BETWEEN in tinsertblankline and tdeleteline.

commit 87abc7cd596ca34a2e664f1c762f8b69b82eba40
Author: Christoph Lohmann <20h@r-36.net>
Date:   Tue Apr 22 19:22:58 2014 +0200

    It's 2014 now.

commit 138887033193389854a2cb748b8940793a7bfb6f
Author: noname@inventati.org <noname@inventati.org>
Date:   Sun Apr 20 13:08:09 2014 +0400

    move MODBIT to Macros section
    
    Patch moves MODBIT to macros section and uses it in tselcs.

commit 6b56cbf9cc597b529f244ee8fcb1cbbcc338c7b7
Author: noname@inventati.org <noname@inventati.org>
Date:   Sun Apr 20 15:41:40 2014 +0400

    misplaced parenthesis in LEN macro

commit 3269bf213d8fdbfb78e9eb1cc9eb677114508e57
Author: Markus Teich <markus.teich@stusta.mhn.de>
Date:   Sun Apr 20 13:15:40 2014 +0200

    remove confusing SERRNO macro
    
    I found the SERRNO Macro slightly confusing, since you have to look
    it up, if you don't know it already. A web search showed it does
    not seem to be any kind of standard. Also there was no reason in
    the commit log when it was introduced in 2009. As you can see it
    also leads to new patches, which don't use this macro (probably the
    author did not know about it).

commit 4ad2fc7f18c8a58d9f88d9a91fb4972849cfd964
Author: noname@inventati.org <noname@inventati.org>
Date:   Sun Apr 13 20:21:32 2014 +0400

    Simplify techo
    
    Remove special case for \e because it is handled well by "control code"
    case.

commit dc74c4f729a4350267f269c767aa6e377d8d4fbc
Author: noname@inventati.org <noname@inventati.org>
Date:   Sat Apr 5 20:54:01 2014 +0400

    typedefs instead of #defines
    
    Replaced #defines with typedefs where possible, patch attached.

commit b8d6171cb00c28e4c90e58e101554097003b59d3
Author: q@c9x.me <q@c9x.me>
Date:   Wed Apr 9 20:37:23 2014 +0200

    fix cursor handling when alt screen is disabled
    
    I don't like this alt screen thing, but when
    allowaltscreen == 0, the cursor is still saved
    and restored after calling 'less' (or 'man').
    
    This patch makes allowaltscreen == 0 usable.

commit ebb6e03201ce0e5a00be7cff2e365ad3d6cb7195
Merge: 3cb8084 f27b44b
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Tue Apr 15 08:11:47 2014 +0200

    Merge remote-tracking branch 'origin/master' into omaster

commit f27b44b7c271bda4ad3a0c4043bb709e0a4e4fbb
Author: Christoph Lohmann <20h@r-36.net>
Date:   Fri Apr 11 18:11:25 2014 +0200

    Removing two unnecessary gettimeofday().

commit 3cb80840dbf9add2b5f9c26da9650da39e34906d
Author: Toaster Toaster <toaster23456@gmail.com>
Date:   Mon Apr 7 10:53:59 2014 -0700

    Increment XSync consistency
    
    This patch cleans up a style inconsistency.

commit c46d929fe18e4a3c9c41101eafa7a9668c8c8830
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Fri Apr 11 15:08:37 2014 +0200

    Fix Backspace and Delete characters
    
    Backspace key must generate the backspace character (\010) and
    Delete key must generate the delete character (\0177). In
    some systems the kernel configuration for erasing previous character
    is \0177, so some programs (for example cat, ed, mail, ...), can not
    understand the correct meaning of backspace. In this cases it is only
    needed this command:
    
            stty erase 

commit 0baf2d8be57d93a86973c8363df4ea3f3e641925
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Apr 5 20:40:11 2014 +0200

    0.5 release.

commit 62f9142478d58185fee74f41055978f708bffa46
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Apr 5 20:39:46 2014 +0200

    Updating the TODO in preparating for 0.5.

commit a495fce128a887275d455c09c37b3882e909f962
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Apr 5 20:34:57 2014 +0200

    There is no need for a full dirt redraw.

commit 6f4cfa5136d354f3901871b71e460ba9f0f182a3
Author: Christoph Lohmann <20h@r-36.net>
Date:   Wed Apr 2 09:26:28 2014 +0200

    Fixing a compiler warning with the assignment.

commit 672e4e4b03d8987103020d399b2c05c95a9ea2f8
Author: Rafa Garcia Gallego <rafael.garcia.gallego@gmail.com>
Date:   Wed Mar 26 23:58:27 2014 +0100

    Fix segfault when pressing PrintScr without a selection

commit 45b808b88ee63f21a188800ba3473a24a3c4b987
Author: Damian Okrasa <dokrasa@gmail.com>
Date:   Tue Mar 25 20:20:26 2014 +0100

    new utf decoder
    
    This patch replaces current utf decoder with a new one, which is ~50
    lines shorter and should be easier to understand. Parsing 5 and 6
    sequences, if necessary, requires trivial modification of UTF_SIZ
    constant and utfbyte, utfmask, utfmin, utfmax arrays.

commit 71328cbcdc88f4fdfbb62d8c0324938e245c8971
Merge: 85f8a41 1584956
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Mon Mar 10 15:16:26 2014 +0100

    Merge branch 'master' of ssh://suckless.org/gitrepos/st

commit 85f8a414be21ed4d7df153763a1cf679814c72cd
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Sat Feb 1 11:11:11 2014 +0100

    Add terminfo entries for printer
    
    These capabilities inform to programs how print in local printer
    of the terminal.

commit 78f8843bc7d6dc731f23d5ff3a8536fdcc5e4be6
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Sat Feb 1 13:41:58 2014 +0100

    Add sequence for printing the current selection
    
    This is very usefull in order to can select what is sent
    to the plumber.

commit 96c230e476a4fb446a8fa8d651c88fda32cd5427
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Fri Jan 31 23:05:42 2014 +0100

    Add key definition for printer sequences
    
    These new combinations generate the same behaviour (basically) of
    vt102. It is a good way of communicating st with other programs.
    
    [0] http://www.vt100.net/docs/vt102-ug/chapter2.html

commit 6166a1afc8c7875ce9ba62e5001040014269a26d
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Fri Jan 31 22:25:51 2014 +0100

    Add MC for the full screen
    
    This sequence is very useful because allows comunicate the content
    of the terminal to another program.

commit cf332a325dafe7e9ed6d87df9dcec29149c5042c
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Fri Jan 31 21:53:53 2014 +0100

    Add MC for a single line
    
    This sequence print the current line. It is different to the
    'printer on' sequence, where all the characters that arrive to the
    terminal are printer. Here only the ascii characters are printed.

commit 1584956a60f7739e46c5a0cd0e0e8295aa26071c
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Mar 1 11:04:03 2014 +0100

    Style cleanup.
    
    Add some note about the main reason why st is still that big.

commit d2ec39f0ef4b9d7f291aeba548a56144fce8a42f
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Mar 1 09:22:57 2014 +0100

    Style matters.

commit 1f0d981bd7a1450ddfae3591c6e457253b3a6842
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Fri Jan 31 20:57:09 2014 +0100

    Add MC sequence
    
    This sequence control when the printer is enabled or disabled. This
    sequence control the behaviour of the -o option.

commit cdb3b1892af40110660da8c3f6fc06b1b054fd12
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Sat Feb 1 11:12:47 2014 +0100

    Add xstrdup function
    
    Since we are using xmalloc, xrealloc ..., then it is not logical
    call directly to strdup.
    
    Signed-off-by: Roberto E. Vargas Caballero <k0ga@shike2.com>

commit 315b7ee9ce13603339104cab0402d7d6c10e92b8
Merge: 6521b5d c2026a4
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Tue Feb 4 11:46:45 2014 +0100

    Merge remote-tracking branch 'origin/master'

commit c2026a495097a7e3bcfe4b58e1b9e393433cf150
Author: Christoph Lohmann <20h@r-36.net>
Date:   Mon Feb 3 20:54:25 2014 +0100

    Removing the w3img support.
    
    The patch to add w3img support destroys our way to handle fps and so stop
    wasting resources on fast scrolling. Due to w3img being a hack to display
    images in an ugly way, is there no need to support this. Use some real way to
    display images.

commit 6521b5dc32d9bdc4d8826324cb7b2877910cc633
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Fri Jan 31 17:30:00 2014 +0100

    Remove non defined behaviour in selcopy
    
    It is not defined when lateral effects of expressions are
    calculated, so an expression as:
    
            --last >= gp && !(selected(last - gp, y)
    
    is non portable.

commit a8d5870073af14aa08032ab8520c5fe17bb8a1e8
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Fri Jan 31 17:04:18 2014 +0100

    Remove duplicated code in strhandle
    
    The error condition was duplicated in two different switches.
    This new version centralized the error handling in only one place.

commit 21d905c076735783b41eec55f31d933129fd9f22
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Fri Jan 31 16:54:58 2014 +0100

    Make Shift+Home equal to CLS in ascii mode

commit 9523233e257f72d07abdf3b07e5fd9ce0c7f31d0
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Fri Jan 31 14:18:25 2014 +0100

    Make CONTROL + DELETE delete a line
    
    If CONTROL + INSERT inserts a line then it seems natural CONTROL + DELETE
    removes a line.

commit d2173cd7162f89df4acaf9da8a30b5e5c0f2b9ab
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Fri Jan 31 12:23:53 2014 +0100

    Fix SHIFT+DEL definition
    
    The AppMode and AsciiMode were inverted in the definition of this
    combination.
    
    Signed-off-by: Christoph Lohmann <20h@r-36.net>

commit 95591001306dc5c6b57f46155bd3e2b919114ea6
Author: Eric Pruitt <eric.pruitt@gmail.com>
Date:   Sun Jan 19 10:48:35 2014 -0600

    Use character scaling in XCopyArea

commit c0a56ef4be2a0f84360f41b2d45964e7ef297746
Author: Amadeusz Sławiński <amade@asmblr.net>
Date:   Sat Jan 11 12:54:36 2014 +0100

    Make w3mimgdisplay work with st
    
    Before this patch draw() calls drawregion which calls xdraws and then
    updates whole window in one call thus overdrawing anything drawn by
    w3mimgdisplay. After moving XCopyArea to xdraws it only updates the
    regions which are being updated by XftDraw* functions. It may do a few
    more calls to XCopyArea with this patch.
    
    Signed-off-by: Amadeusz Sławiński <amade@asmblr.net>

commit 9df9a4723dedf4f5e12c954376c4931a6976b918
Author: Amadeusz Sławiński <amade@asmblr.net>
Date:   Fri Jan 3 15:24:24 2014 +0100

    Fix truecolor escapes, when both bg and fg are set
    
    for example
    echo -e "\e[48;2;255;0;0m\e[38;2;0;0;255m test "
    should render on red bg with blue fg
    
    also now elinks works correctly when using 'truecolor' option
    in preferences
    
    Signed-off-by: Amadeusz Sławiński <amade@asmblr.net>

commit e8dba89164fe70647a413b8568b545ff2d887a78
Author: Eon S. Jeon <esjeon@hyunmu.am>
Date:   Tue Dec 17 15:14:19 2013 -0500

    query pixel size from matched font
    
    Sorry for another duplicated mail. I found the patch is malformed
    significantly. I've been away from my laptop for a while, so I'm quite
    unfamiliar with the settings on this system...

commit 33da67dac035b0d592f984bce90aec8d815b38a8
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Wed Dec 18 08:29:28 2013 +0100

    Update arg.h from sbase
    
    sbase did some interesting modifications to arg.h (basically it
    was fixed an incorrect use of the _ namespace), and this commit
    take this last version for st.

commit d60ee7337b5f378d8858ef3774c5552d2c8e54fa
Author: Eon S. Jeon <esjeon@hyunmu.am>
Date:   Tue Dec 17 12:45:38 2013 -0500

    Prevent resizing stdin
    
    This fixes a bug that the parent tty gets resized whenever you launch
    st through command line.
    
    The problem was that ioctl was resizing cmdfd before it gets
    initialized in ttynew. Since cmdfd is a global variable, its initial
    value is 0, and consequently stdin was being resized.

commit ef1dc9fc4bdfcd944b054c329bb5d51b8c52eb5c
Author: Mark Edgar <medgar123@gmail.com>
Date:   Sun Oct 20 19:16:33 2013 +0200

    Replace alignment tabs with spaces.

commit 6162d631517c892ec76663f6ac2b8e4d109fe2d4
Author: Mark Edgar <medgar123@gmail.com>
Date:   Sun Oct 20 18:18:00 2013 +0200

    Fix comments in config.def.h to match field names.

commit fb8e3f67f7ca86e8118c731ed510345112a6d9d8
Author: Mark Edgar <medgar123@gmail.com>
Date:   Sun Dec 15 16:45:51 2013 +0100

    Fix definition of F28 key.
    
    Shitf modifier adds 12 to the function number of the function keys,
    while Control adds 24, so Control + F4 generates F28

commit 39f28b18b76b9dc8353ae399cb8a99f13f9de2c2
Author: Eric Pruitt <eric.pruitt@gmail.com>
Date:   Wed Dec 11 07:10:08 2013 -0600

    Set _NET_WM_PID attribute

commit 2738592de6d1b53e1f5aa896c8fd3bb5a4204749
Author: Eric Pruitt <eric.pruitt@gmail.com>
Date:   Fri Dec 6 09:22:37 2013 -0600

    Fix rmul definition
    
    rmul means "exit underline mode", so a full reset of all
    the attributes is not the correct way of exiting from
    underline mode, because it is going to modify also another
    attributes not related.

commit 08a3eea571f8e81b6820c18d30f9264b6ee6e08b
Author: René Rietz <rrietz@informatik.tu-cottbus.de>
Date:   Mon Nov 25 16:06:22 2013 +0100

    Add stdint include
    
    Since st is using now int32_t and uint32_t the inclusion of
    stdint or inttype is mandatory, because in other case the
    definition of these new types will not be known by the
    compiler.

commit 53474391bcf2122921d27356a70e6da3c78d058e
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Mon Nov 25 14:09:53 2013 +0100

    Fix stupid bug in tdefcolor returning -1 in unsigned function
    
    k0ga misktook applying patch of others. Sorry guys!!!!

commit 1fe0a5f39a8755da4cd16e92f2ea00676d9ee3ca
Author: Johannes Hofmann <johannes.hofmann@gmx.de>
Date:   Sun Nov 24 10:20:45 2013 +0100

    Use int instead of long for color
    
    This patch replaces long by int32_t. It saves
    some memory on 64bit systems.

commit 4435e0ee6791136e641d58ce6cf00f8665fe3065
Author: Carlos J. Torres <vlaadbrain@gmail.com>
Date:   Fri Nov 22 10:45:48 2013 -0500

    add _NET_WM_NAME

commit 7263820759aa914b27ab3097613bdf22432ed736
Author: Mark Edgar <medgar123@gmail.com>
Date:   Sat Oct 19 15:13:13 2013 +0200

    Simplify logic in kmap().

commit 1fa27b93f9a78ee78a35a5449bb8c4d0c3ef0f1b
Author: Mark Edgar <medgar123@gmail.com>
Date:   Sat Oct 19 14:56:40 2013 +0200

    Simplify logic in match().

commit 3d3c37bc70042cd2f4bbc8f6ea5fceb2311f0a32
Merge: 297c886 489982d
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Mon Oct 28 19:18:24 2013 +0100

    Merge remote-tracking branch 'origin/master' into omaster

commit 489982d4b8442af25a380f8c22be542055cda81f
Author: Rob Pilling <rob@egbert>
Date:   Wed Jun 19 21:24:01 2013 +0100

    Fixed lock up when system time jumps backwards
    
    Signed-off-by: Christoph Lohmann <20h@r-36.net>

commit 297c886b72f4e9093973aaa14b66d392f6196634
Author: Mark Edgar <medgar123@gmail.com>
Date:   Sun Sep 22 00:07:49 2013 +0200

    Ignore numlock (Mod2Mask) for button events too.
    
    Conflicts:
            config.def.h
            st.c

commit 0f6942cdf6f8220f1ecd06e4b398e95c43833d44
Author: Mark Edgar <medgar123@gmail.com>
Date:   Sun Oct 6 12:19:12 2013 +0200

    Avoid buffer overrun in bpress()
    
    Use correct type for Mousekey.b (XButtonEvent.button).

commit 8e577322a3a55abf2f8226218ec87a7eec7fc3b1
Author: Mark Edgar <medgar123@gmail.com>
Date:   Sat Oct 5 11:49:35 2013 +0200

    New ttysend() function calls ttywrite() and techo(). Honor MODE_ECHO when pasting in selnotify().

commit 939e149544e4da958c333f3b6d00991d459c2e34
Author: Mark Edgar <medgar123@gmail.com>
Date:   Sat Oct 5 11:45:44 2013 +0200

    Avoid buffer overrun in kpress() and remove limit on shortcut strings.

commit 02ae3ce6fdc178ca6eb9b10b6447bb56a6513a27
Author: Mark Edgar <medgar123@gmail.com>
Date:   Sat Oct 5 11:45:17 2013 +0200

    Simplify Mod1 logic in kpress(), eliminating locals and a memcpy.

commit 7a4eefe87cb7661c8a77286d05b6c3afb467f806
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Tue Oct 1 21:23:11 2013 +0200

    Add support for multiple charset definitions
    
    vt100 has support for two defined charset, G0 and G1. Each charset
    can be defined, but in each moment is selected only one of both
    charset. This is usually used selecting a national charset in G0
    and graphic charset in G1, so you can switch between graphic
    charset and text charset without losing the national charset
    already defined.
    
    st hasn't support for national charsets, because it is an utf8
    based terminal emulator, but it has support for graphic
    charset because it is heavily used, but it only supports G0,
    without understanding G1 selection sequences, which causes some
    programs in some moments can print some garbage in the screen.
    
    This patch adds a fake support for multiple charset definitions,
    where we only support graphic charset and us-ascii charset, but
    we allow more of one charset definition.
    
    This patch allow define G0 until G3 charsets, but only accepts
    select G0 or G1, and it accepts some national charset definitions
    but all of them are mapped to us-ascii.

commit c5c2365ab7c7ac2671b6e7d31cc9b0d41636393c
Author: Christoph Lohmann <20h@r-36.net>
Date:   Wed Oct 2 21:06:50 2013 +0200

    People, learn to keep to styles. Thanks.

commit 62ab938965f2673e029ae2e2a4244788e673bd70
Author: Mihail Zenkov <mihail.zenkov@gmail.com>
Date:   Tue Oct 1 20:02:24 2013 +0200

    Fix save/restore cursor
    
    st was assuming that save/restore cursor position was independent
    of the screen that was shown in each moment, but it is not true,
    because each screen has a different save/restore buffer. This
    patch fixes it.

commit 2b1bc8087f232a7b0ba4c7233e76be7abae25a88
Author: Mihail Zenkov <mihail.zenkov@gmail.com>
Date:   Tue Oct 1 20:01:15 2013 +0200

    Add DSR cursor position sequence

commit eeae9b0ceef9e2fec4cb4f1132748c302e5ac702
Author: Maurice Quennet <mjq@gmx.net>
Date:   Sat Sep 21 23:33:56 2013 +0200

    Fix core in multi-line selection on OpenBSD
    
    OpenBSD 5.3 amd64 release version with the most current st
    version from git, crash and dump core when selecting multiple
    lines whith the cursor.  This happens, because on line 964
    of st.c (gp-1)->mode is accessed, although gp is still
    pointing at the beginning of the array term.line[y] (see
    line 939 for initialization of gp).

commit 8ac0a5f872b0024bab161fa020126013724758ba
Author: Egmont Koblinger <egmont@gmail.com>
Date:   Mon Sep 23 09:22:47 2013 +0200

    Add bracketed paste mode
    
    This patch enables bracketed paste mode (
    http://invisible-island.net/xterm/ctlseqs/ctlseqs.html#Bracketed%20Paste%20Mode
    ).
    
    It's mainly useful for text editors to disable line wrapping and auto
    indentation when text is being pasted, rather than typed from keyboard.
    
    On the emulator side, it is supported by at least xterm, urxvt,
    gnome-terminal, putty, iterm2; and I have a patch for konsole.
    
    On the application side, vim can be configured easily to handle this, and
    I have pending patches for mcedit and joe. Probably many others also
    support it.

commit eae31a532e1c3249abe3fe0dbce286cac263832f
Author: Michael Forney <mforney@mforney.org>
Date:   Thu Jul 25 16:19:19 2013 -0700

    Fix some bugs in mouse tracking logic
    
    * Button number in X10 mode:
    
      I believe the button - 1 came from "C b is button - 1" from [0].
      However, above this section, it states
    
        "Normally, parameters (such as pointer poisition and button number)
         for all mouse tracking escape sequences generated by xterm encode
         numeric parameters in a single character as value+32. For example, !
         specifies the value 1."
    
      Also, from the description of SGR,
    
        "The encoded button value in this case does not add 32 since that
         was useful only in the X10 scheme for ensuring that the byte
         containing the button value is a printable code."
    
      This suggests that we should still add 32 to the button value when in
      MODE_MOUSEX10.
    
    * No button release reporting in X10 mode:
    
        "X10 compatibility mode sends an escape sequence only on button press,
         encoding the location and the mouse button pressed."
    
    * Fix MODE_MOUSEMOTION:
    
      Currently, motion reporting is skipped when oldbutton == 3
      (corresponding to no button being pressed). However, oldbutton is
      only set on a button press, which will never be 3.
    
    [0]: http://invisible-island.net/xterm/ctlseqs/ctlseqs.html

commit cc2ea3147accc342f4d411b42c8cae5b883b1224
Author: Christoph Lohmann <20h@r-36.net>
Date:   Thu Sep 12 20:52:10 2013 +0200

    Default volume of the bell is 0.

commit bef599bb279e6c9b08853ceebefade066e362c48
Author: Roberto E. Vargas Caballero <rvargas@bsccs347.bsc.es>
Date:   Thu Sep 12 20:41:34 2013 +0200

    Add audible bell
    
    \a is the character for bell, and st is only marking the window as urgent
    if it is not active. This patch adds an audible bell which can be disable
    with bellvolume variable.
    
    Signed-off-by: Christoph Lohmann <20h@r-36.net>

commit 210dda9570095443bac887c2bfcd75f2bcc23780
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Sep 7 12:41:36 2013 +0200

    Wide character support.
    
    Thanks "Eon S. Jeon" <esjeon@hyunmu.am>!

commit a4358a1fbd1c71269129404c9af4f539b2d7627c
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Sep 7 12:29:44 2013 +0200

    Adding some contributors. Thanks to you all!

commit 4245ba0d12a330b3e54c6498e88024d90956ae34
Author: Mark Edgar <medgar123@gmail.com>
Date:   Mon Aug 26 00:10:47 2013 +0200

    Correctly initialize altscreen when defaultbg is not 0.
    
    The alternate screen is not properly initialized when st starts. To see
    this, set defaultbg in config.h to anything other than 0 (for example, swap
    defaultfg and defaultbg), and run:
    
    ./st -e sh -c 'tput smcup; read'
    
    You should see that the top-left 80x24 rectangle is black (or whatever
    colorname[0] is), while the rest of the screen (if any) has the desired
    colorname[defaultbg] color.
    
    The attached patch fixes this by initializing term.c.attr in tnew() before
    calling tresize(). It also removes the unnecessary xcalloc() calls, which
    misled me on this bug hunt since it is really tclearregion() which
    initializes term.lines and term.alt in tresize().

commit f3d438b1015a031bc543bb2d65c81cc2329787d4
Author: Eon S. Jeon <esjeon@hyunmu.am>
Date:   Sun Aug 11 06:42:30 2013 -0400

    Regarding commit 7e3cff3
    
    Hello.
    
    I reviewed and tested commit 7e3cff3, and made a patch that fixes some
    problems in it.
    
    1. There's a semicolon after an if statement, which is obviously a
    typo.
    
    2. The current way of calculating text position in "xdraws" yields
    inconsistent results in some cases. This is due to the use of
    "font->width", which varies. Instead, "xw.cw" has to be used as the
    character width.
    
    Sincerely,
    Eon

commit 587bc939f63b49c6155c4f1fdf97e73380207446
Author: Christoph Lohmann <20h@r-36.net>
Date:   Thu Aug 22 19:32:49 2013 +0200

    Tmux is using C-b by default.
    
    Thanks for noticing Fidel Barrera Cruz!

commit 8d21ced08527e79489f37b7a4ad19355bca2207c
Author: Christoph Lohmann <20h@r-36.net>
Date:   Tue Aug 20 18:18:48 2013 +0200

    Correcting the bitmask value check.

commit 457969381869f9f3ecbb462bf40f053f2a748a02
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Mon Aug 12 15:25:18 2013 +0200

    Add terminfo definitions for terminals with meta key
    
    Some programs don't check the value of km and use smm and rmm
    capabilites, and they cause the terminal change to meta enabled
    mode even in cases where is not desirable.
    
    Allmost all people is using the terminal waiting that meta sends
    escape, so rmm and smm are not needed. If someone needs meta
    sets 8 bit he can use the correct terminfo definition in TERM.

commit 347a45c35299c94e97c976b6e1df383dc2b8fbda
Author: Eon S. Jeon <esjeon@lavabit.com>
Date:   Mon Aug 5 16:37:59 2013 -0400

    Fix signess of tdefcolor
    
    tdefcolor() returns -1 on error, while its return type is
    unsigned long. At the same time, line 1724 and 1731 are checking the
    positivity of its unsigned return value.

commit 22eeda56b7c1532773343811dee1f76c0999d01c
Author: Alexander Sedov <alex0player@gmail.com>
Date:   Mon Jul 29 11:50:44 2013 +0400

    Fixed memory leak in xsettitle().

commit 86c03ddc82d2f9f84f22f79741e13ade0e0b8cd1
Author: Michael Forney <mforney@mforney.org>
Date:   Thu Jul 25 16:24:16 2013 -0700

    Fix blink mode check
    
    ATTR_BLINK is an attribute for a Glyph and will not be set in term.mode.

commit 7e3cff33ffbd69a112fa4071a9f0ed2dc93bfc57
Author: Eric Pruitt <eric.pruitt@gmail.com>
Date:   Mon Aug 5 11:33:37 2013 +0200

    Use character size scaling factors
    
    The bounding boxes for characters can be scaled using "cwscale" and "chscale"
    to scale the width and height respectively.

commit aaee0e8b28a353c215b6d1c8fc06d20038d7b426
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Sat Jul 20 21:52:40 2013 +0200

    Reload colors in reset
    
    Colors definition can be changed using a OSC sequence, so
    we have to reload them if we want be sure all the colors
    are the correct.
    
    Could be desirable free the colors allocated due to rgb
    colors and inverse colors (XftColorAllocValues in xdraws),
    but it is impossible due we use the same structure for all
    of them.

commit 8dde8cde41caa311718d2b990ea3356272ee25ee
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Fri Jul 19 20:34:36 2013 +0200

    Add RGB color definition
    
    This patch uses the bit 24 in the color descriptor as an indicator
    of RGB color, so we can take the values and generating the XftColour
    directly in xdraws.

commit 33ad83d49213749f4fcec850327f57a33ca8b921
Author: Eon S. Jeon <esjeon@lavabit.com>
Date:   Fri Jul 19 01:07:02 2013 -0400

    Improved font caching
    
    I made a patch that improves the performance of font caching mechanism.
    This is based on a funny behaviour of FontConfig: it was handling
    FcCharSet in a somewhat unexpected way.
    
    So, we are currently adding "a character" to a new FcCharSet, and then
    add it to a FcPattern. However, if we toss the FcPattern to FontConfig,
    it loads the entire language(charset) that contains the character we
    gave. That is, we don't always have to load a new font for each unknown
    character. Instead, we can reused cached fonts, and this significantly
    reduces the number of calls to extremely slow FontConfig matching
    functions.
    
    One more thing. I found that, in libXft, there's a function called
    XftCharExists. XftCharIndex internally calls this function, and
    does more stuffs if the character does exist. Since the returned index
    is never used in st, we should call XftCharExists instead of
    XftCharIndex. Please note that I already made this change in the patch.

commit 40e4d76d227d9c517054036f546acd49431bca42
Author: Markus Teich <markus.teich@stusta.mhn.de>
Date:   Sat Jun 22 23:07:00 2013 +0200

    fix: whitespace

commit fbc589d50603e8b0de9239e4800e227ab5d0ea69
Author: Alexander Sedov <alex0player@gmail.com>
Date:   Sun Jun 23 21:05:29 2013 +0400

    Remove long text being cropped/wrapped to standard 80x24 on launch.
    
    To be more specific, now tty creation is delayed until X window is
    actually mapped; last ConfigureNotify before mapping determines
    initial tty size.
    Please report problems if there are any.

commit 6fc471ccc660b305cf836dcb8d57cdbffb4ed017
Author: Markus Teich <markus.teich@stusta.mhn.de>
Date:   Sat Jun 22 23:06:49 2013 +0200

    fix: consistent usage of bitmask operations on unicode functions

commit 8b602a37a65a3c001bd9334d8b1cfc17fc5dd45c
Author: Markus Teich <markus.teich@stusta.mhn.de>
Date:   Sat Jun 22 23:05:03 2013 +0200

    fix: do not need an extra variable for a single read

commit 6e1c7c8afce3a0e6f896231a3155a27543d261e5
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Sun Jun 23 10:33:53 2013 +0200

    Fix match function bugs
    
    There were two problems with match denfinition.
    
    1) There was a forward declaration in the form:
    
            static inline bool match(uint, uint);
    
    but later the function was defined as:
    
            inline bool
            match(uint mask, uint state) {
    
    This causes that there were two different functions in the code, one local
    and inline, and other inline but extern. All was working without problems
    due to we were using -Os, and the compiler was using the extern definition
    and it was no expanding the static declaration. If you removed the -Os flag,
    then you got linker errors due it was no able to find the static definition
    of the static declaration.
    
    2) The mask checking was incorrect because we were doing the test:
    
            (state & mask) != state
    
    and this test only was saying that at least all the enabled bits of state
    were enabled also in mask, but no all the possible bits in mask. This was
    the origin of the bug reported by Xavier Cartron, where he said it was
    possible activated some shortcuts with some of the modifiers defined in the
    config.h file.

commit 90c6f055b637a58da0381a21b4a290ce26f56d8f
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Sun Jun 23 12:13:26 2013 +0200

    Remove unneded call to draw
    
    draw is the function which update the Xwindow with the information st has,
    and it is designed in a way that it must be called once in the main loop
    (run function), and calling it in other places it is a waste of time.

commit ebbac77d7416d365a2a33f159780ef0f06cc3351
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Sun Jun 23 12:09:19 2013 +0200

    Fix selection clearing
    
    The way st knows if there is a selection activated is checking if sel.ob.x
    is equal to -1. In some parts of the code the way of disabling the selection
    was only setting it to -1, but after it you can't be sure if the selection
    is clearing from the terminal representation, because it is necessary mark
    all the lines affected by the selection as dirty. Already there is a functon
    which perform this task, selclear.

commit 7af030c999ba87cad2f3155bb9f58bf2854ad2bb
Author: Markus Teich <teichm@fs.tum.de>
Date:   Sat Jun 22 16:22:41 2013 +0200

    fix PageUp Modifier Mask in config.def.h
    
    Signed-off-by: Christoph Lohmann <20h@r-36.net>

commit 5d3318c0c734a1d65e78ed4ce103b4517be8ec3b
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sun Jun 9 15:52:35 2013 +0200

    Fixing title setting with the title argument.

commit 369734c80c6e5049d704a00f436c59ecf4dafae8
Author: Christoph Lohmann <20h@r-36.net>
Date:   Thu Jun 6 19:09:18 2013 +0200

    Adding xterm behaviour to setting the title.
    
    Thanks Airwave!

commit 2cf4f366d615a4e5ed199f90e6cdb7741606a38e
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Jun 1 14:39:13 2013 +0200

    Bumping up the xfps so mouse motion won't reap the CPU.

commit 7530694987596642b0b83db1c4a61f2794c20397
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Jun 1 14:37:30 2013 +0200

    Adding true mouse motion support.

commit d743b93fdaee4900052a94b37c24073008888002
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Jun 1 13:17:20 2013 +0200

    This is a shorter bit handling in MODE_MOUSE.

commit 317b7859210c187f898ddbc8ec0cc50885f340bc
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Jun 1 13:13:01 2013 +0200

    Add some comments about the other mouse reporting modes.

commit 405fd89ac1d333be79325417c973a07ccad67453
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Jun 1 13:06:53 2013 +0200

    Implementing mouse focus and all events.

commit 8315dc417982936186837edfac24420d0d0e516e
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Jun 1 12:23:55 2013 +0200

    Fixing bad highlighting on first SNAP_WORD multiline select.

commit b5144100a59956b5bf69614a077bd4d252d7dc6c
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sun May 26 16:10:22 2013 +0200

    Fixing the selection in a single line again.
    
    Thanks p37sitdu@lavabit.com!

commit 8f1bef05025c0052603f7ca30552a43395b4c13f
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sun May 26 13:07:26 2013 +0200

    Fixing the selection scrolling and the selection naming.
    
    Thanks p37sitdu@lavabit.com!

commit 8f47c4a4dea7272d72833d2ae26eacc3896d8f5c
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat May 11 21:59:55 2013 +0200

    Lazy font unloading too.

commit 62502a88e94dd908fdd4418899afdd09a4de3bea
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat May 11 08:54:26 2013 +0200

    Lazy fontset loading.
    
    Thanks Johannes Hofmann <Johannes.Hofmann@gmx.de>!

commit 678eff6e1882a888deda5e4e429df42c39b604fe
Author: Christoph Lohmann <20h@r-36.net>
Date:   Mon May 6 19:50:14 2013 +0200

    Removing an old select() regression.

commit 8e968739c3cfc4e9f7088a9ea360bc4f37e9ad9f
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat May 4 19:04:20 2013 +0200

    Allow more complex delimiters for word selections.
    
    Thanks Alexander Rezinsky <alexrez@gmail.com>!

commit 0c2b513d01697aea20bb4a2a144b55e72c625e86
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat May 4 19:00:32 2013 +0200

    Expand the last line with '\n' in case of overselection.
    
    Thanks Alexander Rezinsky <alexrez@gmail.com>!

commit 634c247fa76a5f649cdcc51109970e46ddaf5c32
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat May 4 08:05:11 2013 +0200

    Select to the end of row if end of line is reached.
    
    Thanks Alexander Rezinsky <alexrez@gmail.com>!

commit 5938fa9d32379815757a83076069584f29a8d276
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat May 4 08:01:17 2013 +0200

    Better comments for the snapping code.

commit 8618386de947a1e2d0b449d6f60fde478e931ecb
Author: Christoph Lohmann <20h@r-36.net>
Date:   Wed May 1 13:14:46 2013 +0200

    More stable blinking.

commit e1458ef467f1164fa3ca51e64e3c768c8c69b346
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sun Apr 28 21:32:42 2013 +0200

    Explaining blinking for the dummies.

commit 911ba5674bc4eb53a2ed548856a50032c39ca7f2
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sun Apr 28 18:14:15 2013 +0200

    Selection snapping is now considering wrapping.
    
    Thanks Alexander Rezinsky <alexrez@gmail.com> for mentioning this!

commit a53017c8b47f511cf0462ac910cf9223a31ceb2f
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sun Apr 28 17:42:30 2013 +0200

    Add a possibility to modify the string sent by mouse buttons.
    
    Thanks Alexander Rezinsky <alexrez@gmail.com> for the suggestion!

commit a77b01176a34de741485024e5e36002cff3c1124
Author: Christoph Lohmann <20h@r-36.net>
Date:   Fri Apr 26 18:55:40 2013 +0200

    Be more efficient in blinking.

commit 1e09726518b84091e80dfaf96632c122f6f446a6
Author: Christoph Lohmann <20h@r-36.net>
Date:   Fri Apr 26 18:41:54 2013 +0200

    Enable blinking in st.

commit 1b2751f5c24ca06afbb68e41e73fc9fce6c6b521
Author: Christoph Lohmann <20h@r-36.net>
Date:   Thu Apr 25 06:28:11 2013 +0200

    Fixing the selection handling to allow one char selection.
    
    Thanks Alexander Sedov <alex0player@gmail.com> for suggesting the fix!

commit 0851f2be2ab48ee3a67ef2287c09bd67622dcd8e
Author: Christoph Lohmann <20h@r-36.net>
Date:   Wed Apr 24 21:30:59 2013 +0200

    Fixing the selection issue in altscreens.

commit 011c0f9e5bb87838afa90f2a33ba68920681e3ce
Author: Alexander Sedov <alex0player@gmail.com>
Date:   Wed Apr 24 02:34:59 2013 +0400

    Removed redundant check in draw code.
    
    We're now clearing empty areas with spaces, so there is no point to check
    if character contains non-empty string.
    
    Signed-off-by: Christoph Lohmann <20h@r-36.net>

commit 048c54fd5b275ac54d7819020485b77e99fcc469
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Tue Apr 23 20:34:52 2013 +0200

    Fix selecting clearing and BCE
    
    The commit b78c5085f72 changed the st behaviour enabling BCE capability,
    that means erase regions using background color. Problem comes when you
    clear a region with a selection, because in this case the real mode of the
    Glyph is not the value of term.line[y][x], due in drawregion we had enabled
    the ATTR_REVERSE bit.
    
    Signed-off-by: Christoph Lohmann <20h@r-36.net>

commit 6b03bb769a105f797bce40aa0258cf035266e7bf
Author: Christoph Lohmann <20h@r-36.net>
Date:   Tue Apr 23 19:37:28 2013 +0200

    Now clipping is more clear.

commit db6f796ecfafcee879613b60a772be3e5d9e355e
Author: Christoph Lohmann <20h@r-36.net>
Date:   Tue Apr 23 19:17:50 2013 +0200

    Removing the overdrawing of some fonts.

commit 7ea68632081e5adc2f0d2681ac89ed5decfac7b9
Author: Christoph Lohmann <20h@r-36.net>
Date:   Tue Apr 23 15:38:48 2013 +0200

    Yes, rs2 != is2.

commit 8037dac847b1006f1ba94a9aa2c7ef3ba72690e5
Author: Christoph Lohmann <20h@r-36.net>
Date:   Tue Apr 23 15:33:21 2013 +0200

    There is no 8bit by default and reset 8bit too.

commit 2bd6afd1c9eb341d9e2c5d89bc16bb7758691e1f
Author: Christoph Lohmann <20h@r-36.net>
Date:   Tue Apr 23 15:22:14 2013 +0200

    Implementing 8 bit mode for meta.

commit b596d6ba3c50bc379adc298a4e2ba7c122b116ab
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sun Apr 21 13:01:16 2013 +0200

    Adding wrap handling in selection.

commit 872a7f18eaffd96eefb31e3dcb45fd86bc67029b
Author: Alexander Sedov <alex0player@gmail.com>
Date:   Mon Apr 15 10:28:31 2013 +0400

    Added support for double/triple click+dragging.
    
    Now double-click+dragging automatically snaps both ends to word boundaries
    (unless on series of spaces), and triple-click selects whole lines.
    As a side effect, snapping now occurs on button press, not button release
    like it previously was, but I hope that won't be inconvenient for anyone.
    
    Signed-off-by: Christoph Lohmann <20h@r-36.net>

commit 3c546ae73924804ddc6d29dc3ab2f12a93287009
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Apr 20 15:29:39 2013 +0200

    0.4.1 release.

commit 645c1b0afccf14a5bcdf754475516554437599ca
Author: Christoph Lohmann <20h@r-36.net>
Date:   Fri Apr 19 21:11:29 2013 +0200

    Making st compile on OpenBSD again.

commit e5ff746430725b05e223c454febbde949df2fde2
Author: Alexander Sedov <alex0player@gmail.com>
Date:   Thu Apr 18 12:47:23 2013 +0400

    Selection now handles empty lines less counter-intuitively.
    
    Now, when you are selecting a region, you will get all empty lines that happen
    to be in it, including trailing ones. Last line terminator is omitted as it previously
    was, though.
    
    Signed-off-by: Christoph Lohmann <20h@r-36.net>

commit da182612b7c7a6be67b2c7be0c0d85562220f1e4
Author: Christoph Lohmann <20h@r-36.net>
Date:   Thu Apr 18 06:51:18 2013 +0200

    Removing trailing whitespace.

commit b7e6a5c825a8d786a0cc4dbacc82df1c90ad7020
Author: Alexander Sedov <alex0player@gmail.com>
Date:   Mon Apr 15 17:13:19 2013 +0400

    Got rid of redundant Glyph state.
    
    Now, newly allocated Glyphs are set to spaces and current cursor colors
    with tclearregion() routine.
    
    Signed-off-by: Christoph Lohmann <20h@r-36.net>

commit 3ae02990648447ec3252b42f5b64e18818c19fd8
Author: Christoph Lohmann <20h@r-36.net>
Date:   Thu Apr 18 06:41:54 2013 +0200

    Removing unneeded comments.

commit fed9968ba5d3c6874f73517b261968746d36801e
Author: Alexander Sedov <alex0player@gmail.com>
Date:   Mon Apr 15 00:12:10 2013 +0400

    Got rid of code duplication in tnew() and tresize().
    
    Signed-off-by: Christoph Lohmann <20h@r-36.net>

commit 0ca0dd8b11ec0febc547e485395b7c9ec01e2866
Author: Alexander Sedov <alex0player@gmail.com>
Date:   Sun Apr 14 23:17:44 2013 +0400

    Strip trailing spaces from lines when copying selection.
    
    Signed-off-by: Christoph Lohmann <20h@r-36.net>

commit c371fe58a36abbfbf684e62d6b4026173dbc79be
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sun Apr 14 18:30:10 2013 +0200

    Enable BCE everywhere.

commit 44db38a5f8560564851683f80e1a649836e5885c
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Apr 13 15:24:26 2013 +0200

    Fix the geometry handling.

commit 4de64fa4d24fe0164bc59dd853982a43a9c19e56
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Apr 13 12:26:17 2013 +0200

    \033 should be used in printf in the FAQ.
    
    Never apply patches of Apple users without shouting at them. The basic rule of
    nature is that when you apply Appl users patches without shouting at them that
    something will go horribly wrong.

commit de4cd2f6afdf450aaa97abb328f4c4849602c7db
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Apr 13 09:49:11 2013 +0200

    Resize now uses xclear().

commit 1e7816c2023f48728e15cc4128ad8be163986902
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Apr 13 09:44:00 2013 +0200

    Drawing a more visible rectangle as cursor on unfocus.
    
    To have a more visible cursor on unfocused windows this patch makes st draw a
    rectangle around the terminal cell.
    
    Thanks Mark Hills <mark@xwax.org> for the suggestion!

commit 5dc48af29e9972527767977be3bbc9c072cf1c13
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Apr 13 08:51:30 2013 +0200

    Patching while not really woken up.

commit 5984657c001fe5b4690cef5ddffe11acbf7da7f2
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Apr 13 08:50:38 2013 +0200

    Minor naming issue fixed.

commit 4018b2c5075c1cab603ca137ef5f6d68b9cee483
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Apr 13 08:48:17 2013 +0200

    Making the copy and pasting consistent.
    
    The copying and pasting in the terminald and GUI world is flawed. Due to the
    discussion on the mailinglist it seems that sending '\n' is what GUIs expect
    and '\r' what terminal applications want. St now implements that behaviour.

commit ddd429ea2478beeb7d17d9b548abd9173049dcc6
Author: Kai Hendry <hendry@webconverger.com>
Date:   Tue Apr 9 22:13:54 2013 +0100

    Convert FAQ into Markdown, to make it easier to integrate it into http://st.suckless.org/
    
    Signed-off-by: Christoph Lohmann <20h@r-36.net>

commit 684cf55a0d21da19a6e9e4a490a7c4dd3334638d
Author: Christoph Lohmann <20h@r-36.net>
Date:   Wed Apr 10 17:48:32 2013 +0200

    Make st work with a plain -e command.

commit b1813b14d956978ae8af37166b3cccc3a7b4b720
Author: Christoph Lohmann <20h@r-36.net>
Date:   Wed Apr 3 21:00:38 2013 +0200

    Adopting arg.h with more flexible cmd handling.

commit 580c8bbd4691218849c9a809acaa4c95f65cb846
Author: Christoph Lohmann <20h@r-36.net>
Date:   Wed Apr 3 20:42:27 2013 +0200

    Add an option to disable alternative screens.

commit 502911e55442a89602bd5681763f68250bff330b
Author: Christoph Lohmann <20h@r-36.net>
Date:   Fri Mar 29 19:44:37 2013 +0100

    Updating the TODO file for after 0.4.

commit a3a5b8e15e2b32337959cb87f821b053cc08c3ac
Author: Christoph Lohmann <20h@r-36.net>
Date:   Fri Mar 29 19:13:26 2013 +0100

    Releasing 0.4.

commit 7e7760c2ed1a6fc9d500da51bd8dc499fb36e1b0
Author: Christoph Lohmann <20h@r-36.net>
Date:   Fri Mar 29 19:01:24 2013 +0100

    Add the possibility to have default highlight colors.
    
    Thanks to stargrave@stargrave.org for the suggestion!

commit adde5c6d9dec3a0ab4d78b9d6e70b970ffb33a05
Author: Christoph Lohmann <20h@r-36.net>
Date:   Fri Mar 29 18:45:09 2013 +0100

    Adding PgUp + Ctrl.
    
    Thanks stargrave@stargrave.org!

commit f876810626773828747f48675a6d1f33dc163662
Author: Christoph Lohmann <20h@r-36.net>
Date:   Fri Mar 29 18:43:32 2013 +0100

    Adding PgUp and PgDown + Ctrl to config.def.h
    
    Thanks stargrave@stargrave.org!

commit a1e3b94b374c269f9d379f40b67b8519a485b8a6
Author: Christoph Lohmann <20h@r-36.net>
Date:   Fri Mar 29 18:39:01 2013 +0100

    Removing an undefined case. just do regular selections.

commit 4b17dddb104bd2ac87dd6e334aafd325197c1407
Author: Christoph Lohmann <20h@r-36.net>
Date:   Wed Mar 20 21:19:28 2013 +0100

    Making rectangular selection work again.
    
    People sending me patches against strange revisions and basing on their own
    revisions make me having to reapply them. Then such errors appear.
    
    Thanks Alexander Sedov <alex0player@gmail.com> for noticing this.

commit 55adf0aad1d5acf0b9a00e2a9f834cef8b61b3b3
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sun Mar 10 21:16:51 2013 +0100

    Pange seems to use ascent + descent instead of height.
    
    Thanks Bobby Powers <bobbypowers@gmail.com> for noticing this!

commit 82494f248d778e1195a9eabfac916ce08c52b6da
Author: Christoph Lohmann <20h@r-36.net>
Date:   Tue Mar 5 22:12:11 2013 +0100

    Making st compile on OS X.

commit c6b89f23e7546c30dea42a3c49f99682c5818190
Author: Christoph Lohmann <20h@r-36.net>
Date:   Tue Feb 26 21:43:40 2013 +0100

    Using strsep and fixing null termination in csiparse.
    
    Thanks for the hint from Alexander Sedov <alex0player@gmail.com>!

commit 1c1621da699adae49a4344b145f856dacb57270c
Author: Christoph Lohmann <20h@r-36.net>
Date:   Tue Feb 26 19:08:51 2013 +0100

    Changing the way how paste is handled, just for the nano people.

commit 1aa26b4ecd68e6071d36e9103aa9c21711bbf6ea
Author: Christoph Lohmann <20h@r-36.net>
Date:   Tue Feb 26 19:07:23 2013 +0100

    Fixing a bug while parsing empty arguments in csiparse.

commit 7d32471efffa825f52d24930b5ee617105f9c83e
Author: Christoph Lohmann <20h@r-36.net>
Date:   Tue Feb 26 18:19:44 2013 +0100

    Fixing bugs in the strtol and strtok_r replacements.
    
    Thanks "Roberto E. Vargas Caballero" <k0ga@shike2.com> for the comments!

commit 7cb0d95509d1b2837e4fa7d131f497800b20d22c
Author: Christoph Lohmann <20h@r-36.net>
Date:   Mon Feb 25 13:36:40 2013 +0100

    Using strtok_r for the string parsing.

commit 37863356b00cd41c24e10243121649473b98824f
Author: Christoph Lohmann <20h@r-36.net>
Date:   Mon Feb 25 13:23:56 2013 +0100

    Using strtol with overflow checking.

commit be7c6d7fb09ff50127332060d771b94a3bc8e44c
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Feb 23 21:50:13 2013 +0100

    Add insert for the primary clipboard to MOD + Shift + Ins.
    
    Thanks Mantas Mikulėnas <grawity@gmail.com> for the patch!

commit e40d8da194cb02b400b09d2c8642f701c5c16821
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Feb 23 21:44:06 2013 +0100

    Removing dbe and introducing umlauts to titles.
    
    Thanks Alexander Sedov <alex0player@gmail.com> for the title patch!

commit efaf1c2a94ed9193c04c3a67f374d31f988b0e9a
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Feb 23 21:20:21 2013 +0100

    Add umlaut support for title change.
    
    Thanks Alexander Sedov <alex0player@gmail.com>!

commit 1b6c6535c10172facb350f4b8fef442f7f8ddc5a
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Feb 23 21:17:25 2013 +0100

    Replace parse_int with atoi().

commit 800800a3bba020f1e71e821b31c1ad037aab64ee
Author: Alexander Sedov <alex0player@gmail.com>
Date:   Tue Feb 19 21:39:13 2013 +0400

    Added basic xterm-ish palette swap support.
    
    Signed-off-by: Christoph Lohmann <20h@r-36.net>

commit 3865e9eaaf4e1c7820b1f41ce9d0b1d7b109fb26
Author: Christoph Lohmann <20h@r-36.net>
Date:   Tue Feb 19 19:08:41 2013 +0100

    Implement rectangular mouse selection.
    
    Thanks Alexander Sedov <alex0player@gmail.com>!

commit e5295629cdffb711001f3fdffbb9aa4ef772add0
Author: joe9 <joe9mail@gmail.com>
Date:   Mon Feb 18 12:31:29 2013 -0500

    ensure that the italic font has the same weight as the normal font
    
    The specified font[] pattern need not have a medium weight. It could be
    specified as a number too or have a different weight other than medium.
    
    Signed-off-by: Christoph Lohmann <20h@r-36.net>

commit 0e738c3d7291675472380a25b74f0358306541e5
Author: Christoph Lohmann <20h@r-36.net>
Date:   Tue Feb 19 16:04:54 2013 +0100

    Style inquisition.

commit 7f297e297ccec99a66b7af46e2b1725545ba3746
Author: Christoph Lohmann <20h@r-36.net>
Date:   Tue Feb 19 15:51:25 2013 +0100

    Fixing the reverse mode of st colors.
    
    Thanks Alexander Sedov <alex0player@gmail.com> for finding this!

commit f4a6c20f464df79a9b15b4a2a11daaa7a06c60a0
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Feb 16 13:57:12 2013 +0100

    Adding a way to ignore bits in the state.

commit e0ec2cf984ff8006b99cf4ca8590ceec7113daac
Author: Christoph Lohmann <20h@r-36.net>
Date:   Fri Feb 15 19:36:20 2013 +0100

    Style inquisition.

commit a92a678e252aeeb54537dfa7e3f106eac88f8d77
Author: Christoph Lohmann <20h@r-36.net>
Date:   Fri Feb 15 19:34:53 2013 +0100

    The refresh rate for the action needs to be high too.

commit de7e0e9c8d978f581328962b39e94b59e86f077e
Author: Christoph Lohmann <20h@r-36.net>
Date:   Fri Feb 15 19:32:37 2013 +0100

    Changing the fps to something reasonable high.

commit 086cd61511aa5ca4cbef0048137bb9ae0467d283
Author: Christoph Lohmann <20h@r-36.net>
Date:   Fri Feb 15 19:30:43 2013 +0100

    Doing it like the new run() was proposed.

commit 95033753be32e93915ddce14ea41b8765b665771
Author: Christoph Lohmann <20h@r-36.net>
Date:   Fri Feb 15 19:10:22 2013 +0100

    Adding a more efficient drawing code.
    
    Thanks Mihail Zenkov <mihail.zenkov@gmail.com> for giving the hint!

commit b7261c84aa3af984d5a7e5f5239c4173255a215d
Author: Christoph Lohmann <20h@r-36.net>
Date:   Fri Feb 15 17:45:38 2013 +0100

    Tmux wants this to be mutually exclusive.
    
    Thanks Egmont Koblinger <egmont@gmail.com> for noticing this!

commit 05a1ff03e95877a3b4c0ffee3164db65bb36d3ed
Author: Christoph Lohmann <20h@r-36.net>
Date:   Wed Feb 13 21:35:27 2013 +0100

    Adding mor explict font patterns.

commit eeffbe11ab8b3ea94eefcf178003e36d389f8776
Author: Christoph Lohmann <20h@r-36.net>
Date:   Mon Feb 11 22:20:16 2013 +0100

    Making st not activate the cursor in case of Mod + k in dwm.
    
    Thanks Jens Nyberg <jens.nyberg@gmail.com>!

commit 8a9475a0dd9b8751b9b0ed4c7da4db09232e318e
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sun Feb 10 16:36:03 2013 +0100

    Setting the surrounding border to defaultbg.
    
    Thanks Stephen Caraher <moskvax@gmail.com>!

commit ce3efa9e9b50b0d86ef2d030657dfc69034d6ef7
Author: Christoph Lohmann <20h@r-36.net>
Date:   Fri Feb 8 20:24:26 2013 +0100

    Removing some debug messages.

commit efd04ccad6d3c4e981b3efdb0423d8f5ca40f984
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sun Jan 27 17:48:01 2013 +0100

    Fixing the menus in mc.

commit 26c101b70671d1adbdd4e31af70502605fe3ebbf
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sun Jan 27 13:26:06 2013 +0100

    Fixing the black remaining lines in mc and dialog.
    
    This also applies some style fixes and handles some old blink codes.

commit 384fabdb5b2ac6c700a974a7fac539c8c14107f6
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Jan 26 15:13:56 2013 +0100

    Adding extended mouse reporting in st.
    
    Thanks Egmont Koblinger <egmont@gmail.com>!

commit deb720af7fe480b03c881818e79164817ce6f85f
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sun Jan 20 17:13:48 2013 +0100

    Removing the debug messages again.

commit 57f39defaf3f84b5d9efb3e7a8494cc7ff09e7af
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sun Jan 20 17:12:41 2013 +0100

    Fixing the clipboard copying to st itself.

commit 3036051fb18addd8ac15eac9e0ef3ee6aeb8bbc6
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sun Jan 20 15:12:45 2013 +0100

    St is in 2013 now.

commit d8f3809345d62477c204e03071db61fe8443fd5f
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sun Jan 20 14:55:08 2013 +0100

    Removing BCE from the TODO list.

commit b78c5085f72d66de26468e2c07fb3c72d0afe63b
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sun Jan 20 14:54:35 2013 +0100

    Implementing Back Color Erase (BCE).

commit b4b513c791e01e46399b460789b830ddfc7cb425
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Jan 19 18:38:28 2013 +0100

    Make line drawing work again.

commit 15c2bff9faa87644abf96c19b17133d03d40b974
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Jan 19 15:49:34 2013 +0100

    Yes, xft should be on the buffer. Thanks Mihail Zenkov.

commit c7b033b8f0a31ec08d3d9dafa390b24c6e232e09
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Jan 19 15:00:16 2013 +0100

    Trying out the double buffering without dbe.

commit 0e232a41150d67539df05e60c7e829f0bfb431d0
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Jan 19 09:13:52 2013 +0100

    Dbe is not required anymore.

commit 3ce96aea8af566c88ed1e076d270b4d1abcf6e96
Author: Christoph Lohmann <20h@r-36.net>
Date:   Fri Jan 18 19:22:11 2013 +0100

    Adding the FAQ entry for zsh.
    
    Thanks Roberto E. Vargas Caballero! You were committing this patch against the
    wrong version of the FAQ, so I had to rewrite it.

commit ed90afb743911b7b95dc2bf36b65076532779269
Author: Christoph Lohmann <20h@r-36.net>
Date:   Fri Jan 18 19:11:25 2013 +0100

    The title can now be set with UTF-8 characters.
    
    Thanks Mihail Zenkov <mihail.zenkov@gmail.com>!

commit c9bd58e4dd04e61aa3613eab57ba6fb716a41146
Author: Christoph Lohmann <20h@r-36.net>
Date:   Wed Jan 16 18:53:32 2013 +0100

    Adding a nasty resize bug. Maybe it can be fixed.

commit f25c75d72a07edaec7750cfe5ca251ca395b65e5
Author: Christoph Lohmann <20h@r-36.net>
Date:   Wed Jan 9 17:36:59 2013 +0100

    Removing the .hgtags file. Thanks ilf.

commit 1827e0643fc95b44d12eaf951be5994637d1b30d
Author: Christoph Lohmann <20h@r-36.net>
Date:   Tue Jan 8 20:36:49 2013 +0100

    Standout mode has changed. Thanks p37sitdu@lavabit.com!

commit b3326ab63be167ddd883dbf7be33603f38bbd31d
Author: Christoph Lohmann <20h@r-36.net>
Date:   Tue Jan 8 20:09:33 2013 +0100

    A different double buffering strategy so the background is default set.

commit f741df9cda4d4aa597cf9eff4ac62a610daf44f2
Author: Christoph Lohmann <20h@r-36.net>
Date:   Tue Jan 8 19:46:28 2013 +0100

    Standout is now reverse. This makes bsd-games work in st.

commit 73879c172943928542225cdc975b3b7e2449ddc0
Author: Christoph Lohmann <20h@r-36.net>
Date:   Mon Jan 7 19:53:41 2013 +0100

    Adding an FAQ entry for the keypad handling.
    
    Thanks "Roberto E. Vargas Caballero" <k0ga@shike2.com>!

commit 5facd29f75401891fbac9c83d64c684bdb8f7c39
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sun Jan 6 09:52:03 2013 +0100

    Synchronizing the FAQ of the website and the repository.

commit b233007e0fddbb5ad8da3e436533254d099c8861
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Jan 5 20:56:58 2013 +0100

    Damn, my fault. The cache should have at least some entries.

commit c772a6e5719aa24d10d664262383b76a36e3458b
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Jan 5 20:30:25 2013 +0100

    Applying the changes to the docs; by Peter Hartman.

commit 4682cc9596a5c82325882bdf1313728de95467d2
Author: Christoph Lohmann <20h@r-36.net>
Date:   Fri Jan 4 20:52:22 2013 +0100

    Making the fontconfig and freetype paths portable in config.mk.

commit 4e14a4a97f7f7ef134fdc25d2fa34c8db7bb6e6c
Author: Christoph Lohmann <20h@r-36.net>
Date:   Tue Jan 1 13:15:43 2013 +0100

    A fix for the XopenIM() errors.

commit c99db5b0170555c5bb0359ac8a8229cdada64b30
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sun Dec 30 17:35:41 2012 +0100

    Increasing font cache for speeding up UTF8 demos.

commit 44e1b79abfe81d5d9d1b4845a68533e84b37e2f0
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sun Dec 30 17:35:15 2012 +0100

    Removing the warning about extents.

commit 08e06ef079e5190c7f219c7e50044745c57cea86
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Dec 29 16:24:33 2012 +0100

    Fixing the font unloading in case of zoom.

commit addc84834506e24387c1fb70b5d33b3f2ba55b66
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Dec 29 15:03:03 2012 +0100

    Speeding up the drawing, then all characters are known.

commit 9c44229c626ea7351a7809540435f40cffb624bc
Author: Christoph Lohmann <20h@r-36.net>
Date:   Fri Dec 28 23:52:04 2012 +0100

    Adding fallback support to st.

commit 082bab29f3551e5cee332832ff767c3fb65a5cbc
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Dec 22 19:50:02 2012 +0100

    Fixing a compile error.

commit ac4c6da4ef9b05e2886c26272745effc4f975042
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Dec 22 13:39:27 2012 +0100

    Fixing a off-by-one error in the penultimate row drawing.

commit 4d37763ee767d0c8bd8425744c3375817967dda3
Author: Christoph Lohmann <20h@r-36.net>
Date:   Tue Dec 18 13:00:00 2012 +0100

    Fixing a precedence problem. Thanks tridactyla!

commit fc2b3669682eaf571fc96762bd3c8e48bccac989
Author: Christoph Lohmann <20h@r-36.net>
Date:   Thu Dec 13 20:57:15 2012 +0100

    Checking for the lower X11 special keys too. Thanks Benjamin R. Haskell!

commit 3c6ec1995d8ec4d8d5da7ca81d15adfdb08086aa
Author: Christoph Lohmann <20h@r-36.net>
Date:   Tue Dec 11 08:32:08 2012 +0100

    Adding error checks for XCreateIC and XOpenIM.

commit 2696f8187509eb94644bbac5b05348e37c391bea
Author: Christoph Lohmann <20h@r-36.net>
Date:   Mon Dec 10 23:02:58 2012 +0100

    Be careful about mar77i's patches.

commit 78215c8ee0f4cb62655730260520f185ce97c620
Author: Christoph Lohmann <20h@r-36.net>
Date:   Mon Dec 10 20:45:46 2012 +0100

    Fixing the nasty selection bug. Thanks p37sitdu@lavabit.com!

commit fe3fb82d29bd4c3b2194aa7b66733de4c8cd2161
Author: Christoph Lohmann <20h@r-36.net>
Date:   Mon Dec 10 15:02:32 2012 +0100

    Applying the patch of mar771 right.

commit fdce8bba1a87fe1639aa9e7537ed93cf29138761
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sun Dec 9 21:39:02 2012 +0100

    Applying the change of the Del key assingment. Thanks Martti Kühne!

commit d5994b43ca78196b81ea276d7acb5ef2d4a671f7
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Sun Nov 25 22:13:29 2012 +0100

    Add support for End key
    
        - Shift + End : Delete until end of line.
        - Control + End : Delete until end of screen.
    
    When  the End  key is  pressed  without any  modifier is  not generated  the
    correct sequence for it  (going to the end of the  screen), because the size
    of the  terminal is not known,  so it is  not possible write a  sequence for
    this purpouse.
    ---
     config.def.h |   10 ++++++++--
     st.info      |    2 ++
     2 files changed, 10 insertions(+), 2 deletions(-)

commit 7c34ff1703381c4d0c2ea602ddd607597bd32ad5
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Sun Nov 25 22:13:24 2012 +0100

    Add support for Supr key
    
        Del : Delete character under cursor.
        Shift + Del : Delete the line under cursor.
        Ctrl + Del: Delete the full screen.
    ---
     config.def.h |   16 ++++++++++++----
     st.info      |    2 ++
     2 files changed, 14 insertions(+), 4 deletions(-)

commit 3c99be68e8d3c4d67b2db54b8650bf55d769b98e
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Sun Nov 25 22:13:19 2012 +0100

    Add support for insert key
    
    Insert key stands for a key which allows enter or leaves insert mode, so let
    it generates the correct sequence to change between these modes:
    
       - Insert: Enter in insert mode.
       - Shift + Insert: Leave insert mode (replace mode).
       - Control + Insert: Insert a blank line.
    
    Like Shift + Insert also paste text, if a user want this feature be full
    functional he has to modify such shortcut.
    ---
     config.def.h |   16 ++++++++++++----
     st.info      |    3 +++
     2 files changed, 15 insertions(+), 4 deletions(-)

commit e7904128c61f96b2adbed6e946964053c70e3d4e
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Sun Nov 25 22:13:13 2012 +0100

    Fix value of ka1 terminfo capability
    
    ka1 stands for upper left of keypad, so the correct value is the one
    generated by Home in application keypad mode.
    ---
     st.info |    2 +-
     1 file changed, 1 insertion(+), 1 deletion(-)

commit 61b20f4bc1eae90fd9d5f3582252d6181ee21b4f
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sun Nov 25 15:59:16 2012 +0100

    Add a notice in the config.def.h file how to obtain the syntax for
    
    xft/fontcache.

commit 373a8f56286d72ae10c9d3a2a7326e2515d141d9
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sun Nov 25 09:23:34 2012 +0100

    The style inquisition was here.

commit 172f65436ce14a52842d67b862fdc45f8ff3ada3
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Sun Nov 25 09:23:02 2012 +0100

    Add key for toogling numlock handling
    
    Keypad will generate keycodes when keypad application mode is enabled. It
    can cause problems with some programs like vi, which operates in such
    mode.
    
    This patch change by default don't generate the keycodes never, but this
    behaviour can be changed using the combination Alt + NumLock.
    ---
     config.def.h |   34 ++++++++++++++++++----------------
     st.c         |   17 +++++++++++++++--
     2 files changed, 33 insertions(+), 18 deletions(-)

commit b26df1d0d3f7791504150820e7c105b20c6b1c3b
Author: Christoph Lohmann <20h@r-36.net>
Date:   Wed Nov 21 20:38:15 2012 +0100

    Fixing the calculation of the base tty pixel size.

commit cf04354e06aa0ee54b0f8e9b9491dd0e39d8c4ea
Author: Christoph Lohmann <20h@r-36.net>
Date:   Mon Nov 19 17:22:32 2012 +0100

    Restoring the Alt + Backspace functionality. Thanks Brandon Invergo!

commit 55087ec2c7e78e4349259c4547aa58fa705fa915
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Fri Nov 16 11:32:17 2012 +0100

    Add application cursor sequences for Home
    
    The commit 'Fixing some key issues with mc' fix the problem where mc didn't
    recognize home key because the generated code and the terminfo entry were
    different (terminfo khome = \E[1~ but generates \033[H).
    
    Home key in ansi mode should generate the sequence CUP (\033[H) to 0,0 (home
    position), but it is also interesting generate a application code which
    identifies the key. Real vt520 only generates the ansi sequence CUP, linux
    console generates only the application code \033[1~, xterm generates CUP in
    ansi mode and \033OH in cursor application mode, rxvt only generates the
    application code \033[7~.
    
    This patch sets CUP in ansi mode and \033[1~ in cursor application mode, so
    it can be used in both modes and the application mode value is similar to
    near values (insert = \033[2~, Prior = \033[5~, Next = \033[6~, End =
    \033[4~, Supr = \033[3).
    ---
     config.def.h |    7 ++++---
     1 file changed, 4 insertions(+), 3 deletions(-)

commit 1cbe56026b1003d96d81c17e43ff21d1b0064b21
Author: Christoph Lohmann <20h@r-36.net>
Date:   Fri Nov 16 05:43:00 2012 +0100

    Fixing some key issues with mc. Thanks nsz!

commit 440a19a662cec7aaec07cec47e7743f22f0e5f26
Author: Christoph Lohmann <20h@r-36.net>
Date:   Thu Nov 15 21:42:58 2012 +0100

    Getbuttoninfo is always used the same and just a helper function. Shrinking it
    
    a bit. Thanks nsz!

commit 6312f76ca47f94119a7740dd36f7dd6ce037e907
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Thu Nov 15 20:57:37 2012 +0100

    Fix speech error in comment
    
    ---
     st.c |    2 +-
     1 file changed, 1 insertion(+), 1 deletion(-)

commit 0df350cd0b64f83fbc2324bb2a1bc04b51e657e0
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Thu Nov 15 20:57:33 2012 +0100

    Remove unused fields in cursor_movement
    
    ---
     st.c |    4 ----
     1 file changed, 4 deletions(-)

commit 1cea02be8d331597b3cfccf1d23eb22e57433c85
Author: Christoph Lohmann <20h@r-36.net>
Date:   Thu Nov 15 20:25:16 2012 +0100

    Removing my debug fprintf().

commit 2b6521f5d23da404a597d675d12d4c0cf89657de
Author: Christoph Lohmann <20h@r-36.net>
Date:   Thu Nov 15 20:19:35 2012 +0100

    Optimizing the key lookup to the X11 function key. It is still possible to
    
    remap other keys.

commit 927d8fb45971ddf0eac115ad04161aba6bbd8bc7
Author: Christoph Lohmann <20h@r-36.net>
Date:   Thu Nov 15 20:03:18 2012 +0100

    Making all function keys accessible.

commit a29ab30f256439dd701a475bb0c51eb2d02cafa9
Author: Christoph Lohmann <20h@r-36.net>
Date:   Thu Nov 15 20:00:46 2012 +0100

    Adding support for XK_F35.

commit 90e1427632d6c5852d10c8d2bafa787012903eb9
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Thu Nov 15 19:01:16 2012 +0100

    Fix Shift + Insert shortcut
    
    This patch apply the same code for shortcuts that it is used now for defined
    keys. So it is possible use now XK_NO_MOD and XK_ANY_MOD for defining shortcuts.
    ---
     st.c |   35 ++++++++++++++++++++---------------
     1 file changed, 20 insertions(+), 15 deletions(-)

commit cc86d148cb4092a57af2b58eeae96bbd721de803
Author: Christoph Lohmann <20h@r-36.net>
Date:   Thu Nov 15 16:36:48 2012 +0100

    Changing the TODO to the current state.

commit d5640c772998de7bccd76c3f8e934fa685cb2bb4
Author: Christoph Lohmann <20h@r-36.net>
Date:   Thu Nov 15 16:26:50 2012 +0100

    Fixing the return and keypad enter sent characters. Terminals produce \r. And
    
    some minor style changes.

commit 801ea034b652025dc22d26f6e1b802de932346da
Author: Christoph Lohmann <20h@r-36.net>
Date:   Thu Nov 15 16:21:23 2012 +0100

    Import the patch of Eckehard Berns to add insert mode. Thanks!

commit e87d21bb3d6b48f68340c193dff8b6021f00be10
Author: Christoph Lohmann <20h@r-36.net>
Date:   Thu Nov 15 15:57:01 2012 +0100

    The crlf mode was reversed.

commit e7bb14e03e383daf2505ca304adca78b57884513
Author: Christoph Lohmann <20h@r-36.net>
Date:   Thu Nov 15 15:54:34 2012 +0100

    Fixing Return in non-crlf mode.

commit 4389f2eb1b27f7a210e1f631e703c48a8ca8d50b
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Thu Nov 15 15:36:20 2012 +0100

    Use XK_ANY_MOD instead of XK_NO_MOD in key definition
    
    Usually terminal emulators don't generate any sequence for a combination
    they don't have registered, for example Shift + Next, but st behavior
    previous to the keyboard patch generates the sequence without the modifier,
    in this example Next. This patch uses the XK_ANY_MOD in order to get this
    same behaviour.
    ---
     config.def.h |  114 ++++++++++++++++++++++++++++++----------------------------
     1 file changed, 59 insertions(+), 55 deletions(-)

commit 88bb76c1bccbc8bb68b6776062cd2ef28bda8561
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Thu Nov 15 15:36:13 2012 +0100

    Fix XK_NO_MOD and XK_ANY_MOD behavior
    
    XK_NO_MOD match a key without modifiers and XK_ANY_MOD match a key does not
    matter what modifiers are pressed to. Like they are mask the best value for
    XK_ANY_MOD is all the bits to 1, so the and with any state will be equal to
    the state. This also imply that is necessary check the case for XK_NO_MOD
    (no modifiers at all) with some modifier in state, and the inverse
    (some mask different to XK_ANY_MOD or XK_NO_MOD and no modifiers in state).
    ---
     st.c |   12 +++++++-----
     1 file changed, 7 insertions(+), 5 deletions(-)

commit 16ccf344deccbae53865b6efbe9dc23ebdceccb7
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Wed Nov 14 11:14:29 2012 +0100

    Fix tab key
    
    When Shift + Tab is pressed X server send the event XK_ISO_Left_Tab with
    ShiftMask, so this is the entry we need in config.def.h
    
    This patch also revert the previous patch for this issue because it breaks
    the keyboard.
    ---
     config.def.h |    2 +-
     st.c         |    2 +-
     2 files changed, 2 insertions(+), 2 deletions(-)

commit 461aac159cf3dbb8514e645df6387e03e7c26084
Author: Christoph Lohmann <20h@r-36.net>
Date:   Wed Nov 14 06:37:24 2012 +0100

    Fixing the tab key, when no mask is wanted.

commit 7474a2fc3785eb1aad00f8cf2b50711bbe1fff0b
Author: Christoph Lohmann <20h@r-36.net>
Date:   Tue Nov 13 20:13:39 2012 +0100

    The style inquisition was here again.

commit 620e3bb39ebe617b69b5cb1323b4f47c2f699527
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Tue Nov 13 20:05:02 2012 +0100

    Add missed key definitions
    
    This patch adds the keys for the keypad (in both modes, application mode or
    ansi mode) and function keys. It uses the same convention than xterm and
    instead of using the XK_Fxx values it generates them using F1-F12 and
    modifiers. For example:
    
       F1 -> ^[OP
       F1 + Shift = F13 -> ^[[1;2P
       F1 + Control = F25 -> ^[[1;5P
       F1 + Mod2 = F37 -> ^[[1;6P
       F1 + Mod1 = F49 -> ^[[1;3P
       F1 + Mod3 = F61 -> ^[[1;4P
    
    It is also important notice than the terminfo capability kIC (shifted insert
    key) only can be generated using the keypad keyboard, because the shorcut
    for selection paste is using the same combination.
    
    After this path the number of elements in the Key array becomes high, and
    maybe a sequencial search is not enough efficient now.
    ---
     TODO         |    6 +---
     config.def.h |  102 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++-
     st.info      |   70 ++++++++++++++++++++++++++++++++++++++--
     3 files changed, 169 insertions(+), 9 deletions(-)

commit 44597b359e030d86e16ab9b6510f54366d57e5ac
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Tue Nov 13 20:04:54 2012 +0100

    Add control and meta combinations for arrow keys
    
    Since there isn't any terminfo capability for control and meta modifiers for
    arrows keys it is necessary use the same that almost terminal emulators use,
    because there are a lot of programs which have these codes hardcoded.
    
    This cause also that shift combinations are also changed, but in this case
    this is not a problem since there are terminfo capabilities for them. After
    this patch shift-up and shift-down continue not working in emacs with
    TERM=st, but they work with TERM=xterm, so it is possible some other changes
    are necessary in the terminfo entry.
    ---
     config.def.h |   16 ++++++++++++----
     st.info      |    8 ++++----
     2 files changed, 16 insertions(+), 8 deletions(-)

commit 3b16695f4e8a29f47ad273912065dfba53544a29
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Tue Nov 13 20:04:50 2012 +0100

    Fix arrow keys terminfo capabilities
    
    Usually the arrow keys generate the ANSI sequence which terminal will
    understand like a movement, so it is not necessary any dealing for them, the
    program can not know if the sequence is generate for a echo key or directly
    from the program. If you need really know if the key was pressed then you
    need activate the keypad mode where the keys will generate a special code
    for each keypad key.
    
    The terminfo capabilities kcub1, kcud1, kcuf1 and kcuu1 are used for this
    keypad code, not for the sequence generate in the ansi mode.
    ---
     st.info |    8 ++++----
     1 file changed, 4 insertions(+), 4 deletions(-)

commit ea782bfc5d34d712bc9391e498935d2d27f3116c
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Tue Nov 13 20:04:45 2012 +0100

    Remove hardcoded keys form kpress
    
    Some keys were in the Key array while others were hardcoded in
    kpress().This cause some problems with some keys which can generate more of
    one string based in the configuration of the terminal.
    ---
     config.def.h |   70 ++++++++++++++++++++++++++++++++++++++++-----------------
     st.c         |   71 +++++++++++++++++++++++++---------------------------------
     2 files changed, 79 insertions(+), 62 deletions(-)

commit 93f31166bfff317e050dde1723cfa8302c6f85d3
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Tue Nov 13 20:04:39 2012 +0100

    Move Shift + Insert to shortcut
    
    Shift + Insert is used like a hot key for paste the selection, so it is more
    logical move it to shortcut array instead of having special code for it.
    ---
     config.def.h |    1 +
     st.c         |   13 +++----------
     2 files changed, 4 insertions(+), 10 deletions(-)

commit 69ee3ba3a771ca60bc8738174c79fc851818a36b
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Tue Nov 13 20:04:34 2012 +0100

    Fix keypad mode and cursor mode
    
    Keypad mode is used for detecting when keys in the auxiliary keypad are
    pressed, while cursor mode is used for detecting when a cursor is pressed,
    but they are different modes.
    
    St was mixing both modes and DECPAM and DECPNM modified the cursor mode, and
    this was incorrect.
    ---
     st.c    |    5 +++--
     st.info |    4 ++--
     2 files changed, 5 insertions(+), 4 deletions(-)

commit 73177ba366e5363b8a6695882b52617a8909a925
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Tue Nov 13 20:04:26 2012 +0100

    Add SRM sequence
    
    This sequence enable/disable the local echo.
    ---
     st.c |   76 ++++++++++++++++++++++++++++++++++++++++++++++++------------------
     1 file changed, 56 insertions(+), 20 deletions(-)

commit ace789a79fc44c1c3b629f5c0fb477c651d84a48
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sun Nov 11 19:46:34 2012 +0100

    Gc is not used anymore.

commit c4a9ccec19b14a6bdc980d149e2c27c30f250945
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sun Nov 11 19:38:41 2012 +0100

    Removing some xft naming cruft.

commit 5d5a7c627a3709c3758c516de87609bb6b518e13
Author: Christoph Lohmann <20h@r-36.net>
Date:   Thu Nov 8 17:22:48 2012 +0100

    Moving the alt declaration to the beginning of the function.

commit 866590521609ba35606e53990e381bdc2adf742f
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Thu Nov 8 17:22:04 2012 +0100

    Move unsupported sequences to ignored.
    
    These sequences will be never implemented and in this moment they are
    generating a lot of noise.
    ---
     st.c |   14 +++++++-------
     1 file changed, 7 insertions(+), 7 deletions(-)

commit 27468403cc436cf8197c886158e6e61f24ae5b8d
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Thu Nov 8 17:21:41 2012 +0100

    Ignore DECARM sequence
    
    DECARM modify the auto repeat settings in the keyboard, and since we can not
    modify this setting in the Xserver the best solution is only ignore it.
    ---
     st.c |    3 +--
     1 file changed, 1 insertion(+), 2 deletions(-)

commit d5b80e05e8df29b989c072b6529745576056d0bc
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Thu Nov 8 17:21:24 2012 +0100

    Fix VPR sequence
    
    VPR stands for Move cursor down a number of rows, and the code was moving
    the cursor up instead of moving it down.
    ---
     st.c |    4 ++--
     1 file changed, 2 insertions(+), 2 deletions(-)

commit 5260a9ea2249b9159c188a6e27a39a38d131e411
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Thu Nov 8 17:21:10 2012 +0100

    Add DECOM sequence
    
    DECOM sequence allows to the user defines a new home position. The home
    position is used as base for all the movement commands except HVP and
    VPA. It is important notice than DECSLM moves cursor to absolute position
    0,0.
    ---
     st.c |   33 ++++++++++++++++++++++++++-------
     1 file changed, 26 insertions(+), 7 deletions(-)

commit ee3e0a9fd032bb35eea5c46fc0a9efcd6a80579a
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Thu Nov 8 17:20:15 2012 +0100

    Save cursor position in terminal reset
    
    After terminal reset saved terminal position is reset to 0, allowing know
    where cursor will go in next restore cursor operation.
    ---
     st.c |    2 ++
     1 file changed, 2 insertions(+)

commit ba9d0365ac7e138b643d7179457f8465a1dc1191
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Thu Nov 8 17:17:26 2012 +0100

    Clarify some or exclusive expressions
    
    Since relational expresions are always evaluated to 0 or 1, we can use
    bitwise xor operator instead of using more complex boolean expressions.
    ---
     st.c |   14 +++++++-------
     1 file changed, 7 insertions(+), 7 deletions(-)

commit 950ff21e17af487b205ea0b666be015790114fa7
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Thu Nov 8 17:15:26 2012 +0100

    Fix bug restoring cursor position
    
    Sequences like DECSC, DECRC, ESC [?1047l or ESC [?1047h save and restore
    cursor attributes, than taken from vt100 manual are:
    
           Save Cursor (DECSC) ESC   7
           ===========================
           Saves the following in terminal memory.
    
          - cursor position
          - graphic rendition
          - character set shift state
          - state of wrap flag
          - state of origin mode
    
          Restore Cursor (DECRC) ESC 8
          ===========================
          Restores the states described for (DECSC) above. If none of these
          characteristics were saved, the cursor moves to home position; origin
          mode is reset; no character attributes are assigned; and the default
          character set mapping is established.
    
    This implies that hide attribute of the cursor should not be saved/restored
    in these sequences. The best way to fix this problem is moving hide
    attribute into the terminal mode, instead of having it in the cursor state.
    ---
     st.c |   12 ++++++------
     1 file changed, 6 insertions(+), 6 deletions(-)

commit 5d39afc9023bc9a692ba6faf590abf9397a890ae
Author: Christoph Lohmann <20h@r-36.net>
Date:   Tue Nov 6 23:44:37 2012 +0100

    Adding scrollwheel support. Thanks Brandon Invergo!

commit 9df1e56142527de1b8917434093d25212dd9da1e
Author: Christoph Lohmann <20h@r-36.net>
Date:   Mon Nov 5 04:02:20 2012 +0100

    Changing the license to MIT/X.

commit 0fbe1559c8a62a87ea3af19366220bd790179f4c
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sun Nov 4 00:04:56 2012 +0100

    Fixing meta+return. Thanks Szabolcs Nagy!

commit 86261187ab92a037a44af72847f6ed304ea58e64
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Nov 3 14:05:45 2012 +0100

    Removing the debugging for the last fix too.

commit 9888c5064badc60cd5e894f60451c2be762a481c
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Nov 3 14:05:15 2012 +0100

    Fixing a resize bug, if a smaller amount than the lineheight is resized.
    
    Thanks c00kiemon5ter!

commit f8db65439a705f5e94c7a130ac44689e050e5654
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Nov 3 13:43:20 2012 +0100

    Fixing bold fonts in reverse mode.

commit 76a8e5f72b542f230d7248c09efe202a12bc3771
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Nov 3 08:35:32 2012 +0100

    Now italic and bold works.

commit abe85c0e997ed1882c69bde511f7e2746f68d9ab
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Nov 3 03:24:22 2012 +0100

    Fixing an out-of-bound bug in the selection code. Thanks Szabolczs Nagy!

commit 091ae143ce09e930fd61dae15f8d613c7eab5a61
Author: Christoph Lohmann <20h@r-36.net>
Date:   Fri Nov 2 23:19:56 2012 +0100

    Fixing the italic-bold font check. Thanks nsz.

commit cd90969cab2d980977a76b79f936929834f2bdba
Author: Christoph Lohmann <20h@r-36.net>
Date:   Fri Nov 2 20:08:51 2012 +0100

    Added tag 0.3 for changeset 9d54ce4daf34

commit b0ed3e289730e42195f3388ffcc437e6cb3b8377
Author: Christoph Lohmann <20h@r-36.net>
Date:   Fri Nov 2 20:08:27 2012 +0100

    0.3 release.

commit c631e9bb917ec268463b3f1f331b286c43a6bd0b
Author: Christoph Lohmann <20h@r-36.net>
Date:   Fri Nov 2 20:07:11 2012 +0100

    Make it possible to use the corefont font description too. It is not very
    
    useful, but easy to implement.

commit 393825f9f8a23dfcdfda5220aa8029e9356fa15b
Author: Christoph Lohmann <20h@r-36.net>
Date:   Fri Nov 2 19:56:02 2012 +0100

    Moving to the dwm config.h variable usage.

commit e5d7c5a69e17d858984fe2c28b7d026672f42177
Author: Christoph Lohmann <20h@r-36.net>
Date:   Wed Oct 31 20:36:32 2012 +0100

    Adding a FAQ to reference utmp(1).

commit 784765ca35389a9579976d3e5ec9dc73de4bf4d9
Author: Christoph Lohmann <20h@r-36.net>
Date:   Wed Oct 31 20:35:07 2012 +0100

    Cleaning up the TODO file.

commit 1d378227c0349d83c540771815250c4506d578f3
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sun Oct 28 14:13:39 2012 +0100

    Removing the now senseless comment in config.def.h. Thanks to bnwe!

commit c5dd7fb377d4bfe9988ef150a55b4a3756d09524
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sun Oct 28 13:37:11 2012 +0100

    Applying the patch of the little girl <yui@blekksprut.net> to make cjk input
    
    possible. Thanks!

commit b56a0da283bd09d5084f472353c1a0b1b084613e
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sun Oct 28 13:35:00 2012 +0100

    Applying the tab expansion patch from koga.

commit 71b09ec4f172da9a89be2add54b5b94da8af3bea
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sun Oct 28 13:25:53 2012 +0100

    Adding a more flexible fontstring handling, shortcuts and a zoom function.

commit 6d4e525ed95fbddc38be441394a02dc9233b157d
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sun Oct 28 06:54:08 2012 +0100

    Applying the patch of Roberto Caballero to set WINDOWID and all the pwuid()
    
    variables. Thanks! xinit() and ttynew() had to be switched in their
    call-appearance. Otherwise xw.win is not set.

commit 35421371ca150b6bd0fd1330e7b30a99029dbce1
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sun Oct 28 06:32:54 2012 +0100

    Applying the patch of Rafa Garcia Gallega <rafael.garcia.gallego@gmail.com> to
    
    not emulate the vt100 behaviour of selecting all whitespaces. Thanks!

commit ee3fbeb6c8c354cf4db226a5b1583c531ea37af4
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Sun Oct 28 06:27:42 2012 +0100

    Add error control to iofile
    
    write can write less bytes than we request, so it is necessary check the
    return value, in case of error print a message and don't continnue writing
    in the file.
    ---
     st.c |   39 ++++++++++++++++++++++++++++++---------
     1 file changed, 30 insertions(+), 9 deletions(-)

commit 2e38ab7afdc56e3853751918f1b7705362bea01c
Author: Christoph Lohmann <20h@r-36.net>
Date:   Tue Oct 9 19:40:37 2012 +0200

    Well, I was confused. Damn state exams. Instead of discussing this shit I
    
    should really learn opthalmology instead. :O

commit eb6713acf1928ec94364627ed583252370051705
Author: Christoph Lohmann <20h@r-36.net>
Date:   Tue Oct 9 19:33:26 2012 +0200

    If there is really someone without SHELL set, help him/her.

commit 9e813947cf4631c0ca8e5f73ebfb269ef2f8252b
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Sun Oct 7 11:06:17 2012 +0200

    Add DEC alignment test
    
    This sequence was used by DEC personal in to for verifying the screen adjust
    of terminals. It is the unique test sequence implemented by all the
    emulators, and I think it is because they want be conforms with vttest which
    uses this sequence in some tests.
    ---
     st.c |   31 +++++++++++++++++++++++--------
     1 file changed, 23 insertions(+), 8 deletions(-)

commit b7a7f171effb301ce8dbce07c1c77a6b06ef980f
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Sun Oct 7 11:06:08 2012 +0200

    Avoid initialization of vt100_0 in each call to tsetchar
    
    If vt100_0 is a automatic variable then it is initializated in each call to
    tsetchar, but if the variable is static it is initializated only in compile
    time.
    ---
     st.c |    2 +-
     1 file changed, 1 insertion(+), 1 deletion(-)

commit 25f47cb83a71f7d2872a197209cc2d8cd1c955ec
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Sun Oct 7 11:06:00 2012 +0200

    Fix Identification sequences
    
    Do not send NUL character in the identification (use (sizeof(VT102ID) - 1),
    and finish  the sequence once you execute it.
    ---
     st.c |    5 +++--
     1 file changed, 3 insertions(+), 2 deletions(-)

commit ffeeb678c5c6c6b895ad494b5b62195dd9893f65
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Sat Oct 6 21:19:56 2012 +0200

    Add DA and DECID sequences
    
    These sequences are used by the host in order to can detect which kind of
    terminal is connected. St will answer like a vt102 terminal with this patch.
    ---
     st.c |    9 +++++++++
     1 file changed, 9 insertions(+)

commit bffa6e5cc612dcead2d6ff3803ec72cb69c151bd
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Oct 6 21:02:25 2012 +0200

    Fixing a typo.

commit b16b5d77d31c4c6b2577ab0986e85b43baaf834a
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Oct 6 20:52:22 2012 +0200

    Fixing a off-by-one error in the new border clearing code.

commit 2bd0c23fa7bb42724c75416342d36e00c435f404
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Sat Oct 6 19:15:30 2012 +0200

    Print control codes only in graphic mode
    
    Non handled codes must be ignored, except in graphic mode. Also STR
    sequences have higher priority than control codes, so they must be handled
    before of them.
    ---
     st.c |  160 ++++++++++++++++++++++++++++++++++++------------------------------
     1 file changed, 87 insertions(+), 73 deletions(-)

commit 034dc71fb8227e8963f22b123f30962ec0b6bca7
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Sat Oct 6 19:13:36 2012 +0200

    Add SI and SO control codes
    
    SI and SO allows change the G0 and G1 selection. This implementation is not
    full vt100 compatible, but it is complatible with linux virtual terminal
    implementation. For full vt100 compatibility we need remake a lot of stuff
    relate to the different charmaps.
    ---
     st.c |    7 +++++--
     1 file changed, 5 insertions(+), 2 deletions(-)

commit fbfa1f83eb501e885d1077e95739a7d7cab2397f
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Sat Oct 6 19:13:08 2012 +0200

    Add SUB and CAN control codes
    
    These control codes reset any escape sequence already initialised.
    ---
     st.c |    7 +++++--
     1 file changed, 5 insertions(+), 2 deletions(-)

commit ac8f05c45a65788523af7223b1a94e8baf890b6e
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Sat Oct 6 19:12:46 2012 +0200

    Add documentation to control codes
    
    Add the documentation from the vt100 manual programmer:
    
    Control         Octal      Action Taken
    Character       Code
    -------------------------------------------
    NUL             000     Ignored on input (not stored in input buffer;
                            see full duplex protocol).
    ENQ             005     Transmit answerback message.
    BEL             007     Sound bell tone from keyboard.
    BS              010     Move the cursor to the left one character position,
                            unless it is at the left margin,
                            in which case no action occurs.
    HT              011     Move the cursor to the next tab stop,
                            or to the right margin if no further tab stops
                            are present on the line.
    LF              012     This code causes a line feed or
                            a new line operation. (See new line mode).
    VT              013     Interpreted as LF.
    FF              014     Interpreted as LF.
    CR              015     Move cursor to the left margin on the current line.
    SO              016     Invoke G1 character set, as designated by SCS
                            control sequence.
    SI              017     Select G0 character set, as selected by ESC ( sequence.
    XON             021     Causes terminal to resume transmission.
    XOFF            023     Causes terminal to stop transmitted all codes
                            except XOFF and XON.
    CAN             030     If sent during a control sequence, the sequence is
                            immediately terminated and not executed. It also causes
                            the error character to be displayed.
    SUB             032     Interpreted as CAN.
    ESC             033     Invokes a control sequence.
    DEL             177     Ignored on input (not stored in input buffer).
    --------------------------------------------
    ---
     st.c |   28 +++++++++++++++++++---------
     1 file changed, 19 insertions(+), 9 deletions(-)

commit 02f3b37a2d354c74169f5ed038bb1cb6225d691a
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Oct 6 13:45:14 2012 +0200

    Forgot to remove the xclearborders() definition from the last commit.

commit 0cc7ee5e737c9df5a41a4bca708e583117830085
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Oct 6 13:43:01 2012 +0200

    Removing the xclearborders() hack. St now cleans up the parts of the border,
    
    if something needs to be drawn close to it.

commit 4eddf19fdc2f3845c927291b99d3faefe73f98f3
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Oct 6 09:58:45 2012 +0200

    The style inquisition was here. Yes, making it a unified style. The last
    
    infidels will be squashed too!

commit 7efa4514d104d51793c4dd01ddedd4976080be07
Author: Christoph Lohmann <20h@r-36.net>
Date:   Fri Oct 5 22:59:08 2012 +0200

    Adding the patch of David Dufberg Töttrup to implement WM_DELETE_WINDOW. Thank you!

commit bf6cf05ba5211b35d7b10169624679428c5f4974
Author: Christoph Lohmann <20h@r-36.net>
Date:   Fri Oct 5 22:51:08 2012 +0200

    Fixing the brightening on bold. For the 256 colors and greyscale I assumed a
    
    reasonable solution.

commit 5caa46cf575a48e6421aaf8757e066f6d32263d9
Author: Christoph Lohmann <20h@r-36.net>
Date:   Fri Oct 5 11:07:55 2012 +0200

    Turning on antialias by default really makes it more unreadable. Maybe if once
    
    the majority has bigger screens, this can be turned on by default again.
    Thanks pancake, for the hint.

commit 0b489c4a6a3da54fd6ce99e19520262a0e6a3cd1
Author: Christoph Lohmann <20h@r-36.net>
Date:   Fri Oct 5 09:38:10 2012 +0200

    When the drawing behaviour was changed underline was not corrected.
    
    Thanks to Peter A. Shevtsov!

commit 2752018e27420947a034d50f1ce165bbb76ae1a8
Author: Christoph Lohmann <20h@r-36.net>
Date:   Thu Oct 4 22:59:45 2012 +0200

    This adds the fontcache dependency to try something out. Additionally the
    
    invert mode now works as expected. In the config.def.h autohint is set to
    false, so the fonts are drawn correctly, without any overlapping.

commit 0d88f1ef75c2fe9403a72c80d6fa8ed199ec474f
Author: Christoph Lohmann <20h@r-36.net>
Date:   Tue Oct 2 12:48:55 2012 +0200

    Thanks to c00kiemon5ter. Not changing bold to bright colors seems to be the
    
    right choice.

commit af9e248f976e8396c5aa7fd021ff95ccab78cb72
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sun Sep 30 20:23:45 2012 +0200

    Removing the now obsolete definitions from the config.def.h file.

commit 5dfd5df4fe566beb17069e6390236854f6ace58f
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sun Sep 30 20:23:10 2012 +0200

    This changes -f to be the parameter for the font. Now -f is -o.
    
    The parameters were reordered according to the alphabet too.

commit 9cae1eb0ded2e1ca604753893e2307531ef73afc
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sun Sep 30 20:10:58 2012 +0200

    Remove the cruft of the user to have to define the different font styles.

commit ed5b8700a6e6c14b814dcc2e54a90eb1868070b5
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Sep 29 11:23:34 2012 +0200

    We need all the colors to be available, so die() on some not available.
    
    This is a new opportunity to see if X11 somewhen handled colors in a strange
    way.

commit d7b1e31eec9a87c666334006de25a7f8102c55a9
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sat Sep 29 11:17:16 2012 +0200

    All xcolors are not Xft colors and the clearing of the borders has been
    
    optimized. There is a speedup when resizing windows.

commit 29b209f5f55c80e457a5a913a463bd24f8e307e9
Author: Christoph Lohmann <20h@r-36.net>
Date:   Thu Sep 27 19:28:44 2012 +0200

    Vt escape sequences allow escape sequences in escape sequences and escape
    
    sequences, so we have to support escape sequences in escape sequences that
    escape sequences in escape sequences – setting a title won't notify you
    anymore.

commit 3af49e34f666554fcd52a52a7ca15f3e7eafa197
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Wed Sep 26 20:55:18 2012 +0200

    Allow control characters inside escape sequences
    
    Taken from vt100 manual programmer:
    
            Control characters (codes \0 to \37 inclusive) are specifically
            excluded from the control sequence syntax, but may be embedded
            within a control sequence. Embedded control characters are executed
            as soon as they are encountered by the VT100. The processing of the
            control sequence then continues with the next character received.
    ---
     st.c |   68 +++++++++++++++++++++++++++++++++---------------------------------
     1 file changed, 34 insertions(+), 34 deletions(-)

commit a7d7e29300acade90f2025f0b85fa5eae06edb24
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Wed Sep 26 20:53:46 2012 +0200

    Ignore all control characters not handled
    
    Taken from vt100 programmer manual:
    
            Control characters have values of \000 - \037, and \177. The control
            characters recognized by the VT100 are shown in Table 3-10. All
            other control codes cause no action to be taken.
    
    We have to take attention when we are using alternate charset, because in
    this cases they are not used as control characters.
    ---
     st.c |   20 ++++++++++----------
     1 file changed, 10 insertions(+), 10 deletions(-)

commit 375b6e5b175ce0a01d47288e94e9c4a8acc3939a
Author: Christoph Lohmann <20h@r-36.net>
Date:   Wed Sep 26 20:21:59 2012 +0200

    Switching to Liberation Mono as default solely because of line drawing. A next
    
    patch to fix the font symbols in all fonts should make it easier to choose a
    better font.

commit 3a095984b053ebb159956368eb3258f51f50e352
Author: Christoph Lohmann <20h@r-36.net>
Date:   Wed Sep 26 20:21:08 2012 +0200

    Implementing line drawing right.

commit c3b0e2202b908834d3c08e3eaf70e0ac282cf319
Author: Christoph Lohmann <20h@r-36.net>
Date:   Tue Sep 25 21:39:25 2012 +0200

    A reset should reset the line drawing too.

commit 980c5956ed4eb0c1e748f1e5c550fabdaaf4ef14
Author: Christoph Lohmann <20h@r-36.net>
Date:   Tue Sep 25 21:17:43 2012 +0200

    Enabling enacs and adding compatibility to xterm and urxvt for alternative
    
    charsets.

commit eb360e5fd151107ca8088a9c1aad33aa373c4fb0
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Tue Sep 25 21:04:35 2012 +0200

    Fix bug in tputc writing to io file
    
    If -f options is enabled then tputc() writes all the data to a file. Actual
    code assumes that all the strings in 'c' parameters have always 1 byte
    length, but this is not always true, because due to utf-8 encoding some
    characters can have a diferent length. So it is necessary pass string length
    to tputc in order it can call to write() correctly.
    ---
     st.c |    8 ++++----
     1 file changed, 4 insertions(+), 4 deletions(-)

commit 246d704ba0c1d83b3eed2388483300687276b797
Author: Christoph Lohmann <20h@r-36.net>
Date:   Mon Sep 24 14:01:59 2012 +0200

    Changing the default font to DejaVu Sans Mono, which is more appealing and
    
    activating antialiasing.

commit 055a4f6d2cc727cc58509a39e130bdd8dbfa452b
Author: Christoph Lohmann <20h@r-36.net>
Date:   Mon Sep 24 11:04:26 2012 +0200

    The xinit() call needs to be behind all the tty init, otherwise all the
    
    allocated structures are wrong. The xclear() is now done on purpose. Please
    keep X11 calls out of the way of pure tty-related calls.

commit e9c677816c0161a6702dabb244bd2fd918dcb0af
Author: Christoph Lohmann <20h@r-36.net>
Date:   Mon Sep 24 10:31:35 2012 +0200

    Adding a TODO for xft fallback.

commit 74d6abfee5a1455c7c126d6b78760efd65d9d7c3
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Mon Sep 24 10:29:37 2012 +0200

    Add some documentetion to tsetmode
    
    The names of the terminal modes supported by vt102 are (taken from the VT220
    programmer reference manual):
    
    Table 4-7 ANSI-Standardized Modes
    Name  Mnemonic              Parameter (Ps)
    Error (ignored)             -         0 (3/0)
    Keyboard action             KAM       2 (3/2)
    Insert/replace              IRM       4 (3/4)
    Send/receive                SRM       12 (3/1 3/2)
    Line feed/new line          LNM       20 (3/2 3/0)
    
    Table 4-8 ANSI-Compatible DEC Private Modes
    Name  Mnemonic            Parameter (Ps)
    Error (ignored)           -         0 (3/0)
    Cursor key                DECCKM    1 (3/1)
    ANSI/VT52                 DECANM    2 (3/2)
    Column                    DECCOLM   3 (3/3)
    Scroll                    DECSCLM   4 (3/4)
    Screen                    DECSCNM   5 (3/5)
    Origin                    DECOM     6 (3/6)
    Auto wrap                 DECAWM    7 (3/7)
    Auto repeat               DECARM    8 (3/8)
    Printer form feed         DECPFF    18 (3/1 3/8)
    Printer extent            DECPEX    19 (3/1 3/9)
    Text cursor enable        DECTCEM   25 (3/2 3/5)
    National replacement character sets DECNRCM 42 (3/4 3/2)
    
    This patch adds a comment for each one of these sequences.
    ---
     st.c |   26 +++++++++++++++++++++-----
     1 file changed, 21 insertions(+), 5 deletions(-)

commit c3b6345595c6b5ec5925544a2f462458f16cbf6a
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Mon Sep 24 10:28:35 2012 +0200

    Fix LNM sequence
    
    LNM sequence is a standard ANSI mode, not a DEC private mode.
    ---
     st.c |    6 +++---
     1 file changed, 3 insertions(+), 3 deletions(-)

commit 2f215654a4b27eb573fb6551d28bdf760e95ef58
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Mon Sep 24 10:28:05 2012 +0200

    Add KAM sequence
    
    This sequence lock/unlock the keyboard ignoring all the key pressing events
    from X server.
    ---
     st.c |    8 +++++++-
     1 file changed, 7 insertions(+), 1 deletion(-)

commit 11bec67875936ffd954c7c28faf98b3cc25cb47f
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Mon Sep 24 10:27:22 2012 +0200

    Remove unused parameters in ttyresize
    
    ---
     st.c |    6 +++---
     1 file changed, 3 insertions(+), 3 deletions(-)

commit b6cfff16254bb9014f27ff4c5c9e49953ee91735
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Mon Sep 24 10:26:50 2012 +0200

    Clear X window in tsetreset()
    
    tsetreset() is called when it is necessary a full initialization of the
    terminal, so it also should clean the full X window and not only the
    terminal content. It is necessary change the order of the
    initialization in main(), and put xinit before of tnew(), because tnew()
    calls to tsetreset(), and  this can cause a call to xreset() with
    incorrect values.
    ---
     st.c |    3 ++-
     1 file changed, 2 insertions(+), 1 deletion(-)

commit 21a0c4a2e08ede1d04c472497db7d9aef644d00c
Merge: 2b3c121 816a70c
Author: Christoph Lohmann <20h@r-36.net>
Date:   Mon Sep 24 10:24:36 2012 +0200

    Merging xft and current st heads.

commit 2b3c1219c863d9faa30ae58e5bf56d58ada0247d
Author: Christoph Lohmann <20h@r-36.net>
Date:   Mon Sep 24 10:20:45 2012 +0200

    Initial Xft support for st. More to follow.

commit 816a70c01ba6bf5e5d2d5e91830f75ef8e4b595d
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Wed Sep 19 16:03:16 2012 +0200

    use typedef'd unsigned type and regular bool type.

commit 1ba5f4172f0bf8b5001ffcfc69118b62bf0fb78a
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Tue Sep 18 19:13:19 2012 +0200

    config.def.h: typo in comment.

commit 50a619cee3093ad00a5672075b1f8914467d37e0
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Tue Sep 18 19:08:03 2012 +0200

    LEGACY: typo.

commit 0eaed8f085d9b0c4763ca3a42338f40e2401e335
Author: Christoph Lohmann <20h@r-36.net>
Date:   Mon Sep 17 23:14:40 2012 +0200

    Redrawing is fixed.

commit e4bf2679c1bbbd4d4a8bfdf9c1a143b59ce5888c
Author: Christoph Lohmann <20h@r-36.net>
Date:   Mon Sep 17 22:44:27 2012 +0200

    Fixing the redrawing patch of k0ga, so it's using xclear() in redraw() too.

commit 4876d6e05b6c1b17b0c366f15ae72ae48f045068
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Mon Sep 17 22:13:17 2012 +0200

    Clean windows display after resizing
    
    Some times the size after a resizing is not an exact multiply of a number of
    characters, so redrawn the screen using the lines and columns of the neww
    size can cause that some old graphics keep in the screen. Solution is clean
    all the windows with the background color.
    ---
     st.c |    3 +++
     1 file changed, 3 insertions(+)

commit 88a8f85a8a6de56d23510cf6e7810d90478085a5
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Mon Sep 17 22:13:09 2012 +0200

    Copy non set positions as spaces
    
    st selection don't insert in the selection position whose value is not
    set. This is correct for the positions in the end of the line, but cause
    some problems in the beginning. For example echo -e 'a\tb' will print in the
    screen:
    
    a       b
    
    but after selecting and copying in some place you get:
    
    ab
    
    because positions from 1 to 7 don't have any value. This patch deals all
    positions without value as blank (even at the end of the line).
    ---
     st.c |   17 ++++++++++-------
     1 file changed, 10 insertions(+), 7 deletions(-)

commit 111199cf226b33f12e6ee3e66e50fbe5c3566e33
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Mon Sep 17 22:11:28 2012 +0200

    Add newline in error messages
    
    ---
     st.c |    4 ++--
     1 file changed, 2 insertions(+), 2 deletions(-)

commit e3671006dba1c21316c570e11d6688f5513fb44e
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Mon Sep 17 22:11:20 2012 +0200

    Add xcalloc wrapper
    
    malloc and realloc are called through xmalloc and xrealloc, so calloc should
    be called through xcalloc.
    ---
     st.c |   13 +++++++++++--
     1 file changed, 11 insertions(+), 2 deletions(-)

commit 426887ccec8577ee33d1fb44f258d6a70a2eddf1
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sun Sep 16 20:43:51 2012 +0200

    Applying a shortening proposal for the run loop of k0ga.

commit 58a57a23051deba7c77901c9971d839a0db05db0
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Sun Sep 16 14:02:35 2012 +0200

    Remove call to draw in resize
    
    In previous commits draw was removed from all the X events, but I forgot do
    it in resize.
    ---
     st.c |    3 +--
     1 file changed, 1 insertion(+), 2 deletions(-)

commit 2257932261375d663aa5b99ce4592499470ab06a
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sun Sep 16 13:59:10 2012 +0200

    Adding some more fields to the manpage, like authors, license etc.

commit b93741e34df3ebe05f7ccc14f1fd4b0da01bf1fa
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sun Sep 16 13:50:07 2012 +0200

    Remove some solved issues and add some new.

commit 9fbafe55c996324a73a0be3af80edcd39e5a393b
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sun Sep 16 13:22:23 2012 +0200

    Preliminary solution to the stuttering problem.

commit d81250e5f96e96dd430a3fc61b5b47ffc04f98d8
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Sun Sep 16 10:49:12 2012 +0200

    Fix selection bug
    
    After the commit named "Remove timeout in the main loop", selection is not
    working in the proper way. After selecting something, press mouse button in
    a line outside of selection causes an incorrect highlight. This patch fix
    the problem forcing a draw after the press event, but this is only a fast
    hack. Real solution means rewriting selection code.
    ---
     st.c |    5 ++++-
     1 file changed, 4 insertions(+), 1 deletion(-)

commit c5a9b799d44be9c0fa4264dc34d9dd61321be795
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Sun Sep 16 10:48:38 2012 +0200

    Render only once in each main loop iteration
    
    draw() runs over all lines of the screen and renders only the dirty lines,
    this avoids render lines which are not modified since last draw() call. In
    this moment the main loop is something like:
    
         - Wait something to read from file descriptors
         - Read from pseudo tty
         - Call draw() for rending
         - Read X events
    
    This cause the problem that all the X events that have to update the screen
    have to call draw() (because draw() is called before of X events handling),
    so you can have multiples renderings in only one iteration, that will waste
    a lot of resources.
    
    This patch change the main loop to:
    
         - Wait something to read from file descriptors
         - Read from pseudo tty
         - Read X events
         - Call draw() for rending
    
    So X events don't have to worry about rendering, because draw() is called
    after them.
    
    The only place where draw is called outside of the main loop is in redraw(),
    but it is necessary for getting a good tput flash.
    ---
     st.c |   29 ++++++-----------------------
     1 file changed, 6 insertions(+), 23 deletions(-)

commit 85849ce72aa4e9cee307a031b97777e9eba2d453
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Sun Sep 16 10:47:21 2012 +0200

    Remove timeout in the main loop
    
    The main loop waits until there is some data to read in file descriptors of
    the X server or the pseudo tty. But it uses a timeout in select(), which
    causes that st awake each 20 ms, even it doesn't have something to do. This
    patch removes this problem removing the timeout, which is not needed.
    ---
     TODO |    1 -
     st.c |   27 +++------------------------
     2 files changed, 3 insertions(+), 25 deletions(-)

commit 15cc8754c2e272ebac6e86845859816e881da000
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Sun Sep 16 10:46:08 2012 +0200

    Call XSync in redraw
    
    It is necessary call to XSync if you want a good tput flash, because in
    other way you can not be sure that white screen will be shown.
    ---
     st.c |    1 +
     1 file changed, 1 insertion(+)

commit ba1e9daeef0d7e6e52a9889d8f7eb61d74480cf0
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Sun Sep 16 10:45:36 2012 +0200

    Call XdbeQueryExtension before of calling any Xdbe function
    
    XdbeQueryExtension() tells to the caller if the Xdbe extension is present in
    the X server, so it should be called for sanity. But like is said in
    XdbeQueryExtension(3):
    
            No other Xdbe functions may be called before this function.  If a
            client violates this rule, the effects of all subsequent Xdbe calls
            that it makes are undefined.
    
    it is mandatory call this function.
    ---
     st.c |    5 +++--
     1 file changed, 3 insertions(+), 2 deletions(-)

commit a62789788c87425fd90209bad15b324f8dee84da
Author: Christoph Lohmann <20h@r-36.net>
Date:   Fri Sep 14 19:46:07 2012 +0200

    Implementing italic-bold. This will require an increase of the avgWdth.

commit b1563526561a913dc2a69ee78eb5aaa09cc98978
Author: Christoph Lohmann <20h@r-36.net>
Date:   Thu Sep 13 23:21:40 2012 +0200

    Ignore NUL character as a padding character. Telnet may use this. Patch of
    
    Roberto Vargas.

commit 776a022e39a3c8f7c81b35d6b4307ffaa0ae3df8
Author: Christoph Lohmann <20h@r-36.net>
Date:   Thu Sep 13 23:19:57 2012 +0200

    Importing the patch of Roberto Vargas to inherit signal handlers.

commit fe2ba95b3d81127b98a5dc6fa0341a90beabd1a0
Author: Christoph Lohmann <20h@r-36.net>
Date:   Thu Sep 13 07:16:38 2012 +0200

    Reset window title on terminal reset too.

commit 977c5d908903c4c300b02811382a9ab53ec73803
Author: Christoph Lohmann <20h@r-36.net>
Date:   Thu Sep 13 07:04:59 2012 +0200

    Adding a statemant on legacy support.

commit d018c9c8efc3e1781d84d7b7d24e9531bb841b34
Author: Christoph Lohmann <20h@r-36.net>
Date:   Thu Sep 13 07:04:34 2012 +0200

    Adding another bold off sequence.

commit 720cb816dcff55f8b75bdc2a8ffa265f460f5d55
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Wed Sep 12 21:51:55 2012 +0200

    Remove buffering to fileio instead of calling fflush
    
    By default text files are line buffered, and this means that -f option will
    not write the line until a \n is printed. This is not very useful for
    debugging, so a call to fflush was added. This patch substitute this call
    (which will be done by each character painted) by the full remove of the
    buffering in the file.
    ---
     st.c |   12 +++++-------
     1 file changed, 5 insertions(+), 7 deletions(-)

commit b9d5fec4f277b688b3bb4741134abf152e801e90
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Wed Sep 12 21:25:35 2012 +0200

    Add xmalloc and xrealloc wrappers
    
    If malloc  or realloc fail they return NULL. Theorically this condition
    should be tested in the code, but it's a strange condition today (basically
    if this is hapenning thenyou have a big problem), and even Linux never returns
    NULL in the default configuration (only if the process don't have room in
    the space address, something a bit impossible in the case of st). But stis
    enough small for being executed in low resources computers where this can be
    a real problem. So the easy way is creating a wrappers function for them and
    call to die in case of error.
    ---
     st.c |   44 +++++++++++++++++++++++++++++++-------------
     1 file changed, 31 insertions(+), 13 deletions(-)

commit 8f1144edee8f4c9ac54faae2ad522544e9e217fa
Author: Christoph Lohmann <20h@r-36.net>
Date:   Wed Sep 12 13:20:10 2012 +0200

    Make nyancat(1) work. Important release feature!

commit 121d9109e8202aaa8df836f2d23922008bdf2c72
Author: Christoph Lohmann <20h@r-36.net>
Date:   Wed Sep 12 13:08:26 2012 +0200

    Add preliminary blink stubs. Real implementation is still missing.

commit c092bce366ce7469e92f59c889b31fa9037976b2
Author: Christoph Lohmann <20h@r-36.net>
Date:   Wed Sep 12 13:00:39 2012 +0200

    Add another obscure way to set a window title.

commit af29fb2a5015918a8bb32075ab82b4e59d85910a
Author: Christoph Lohmann <20h@r-36.net>
Date:   Mon Sep 10 13:39:41 2012 +0200

    Fixing the too small window in non-tiling window managers.

commit 122ed577027ccbb85b2fe6a0f9449035fe074a9e
Author: Christoph Lohmann <20h@r-36.net>
Date:   Thu Sep 6 08:02:56 2012 +0200

    Making the selection work again.

commit a1cd28f8099eac3938461f9e63ff6b74d4d824ef
Author: Christoph Lohmann <20h@r-36.net>
Date:   Thu Sep 6 00:00:50 2012 +0200

    Allow simpler stdout -f handling.

commit f2da43a0b66f76532ebef5ed2b2c9135aca771a5
Author: Christoph Lohmann <20h@r-36.net>
Date:   Wed Sep 5 23:38:57 2012 +0200

    Adding instantenous debug output and fixing italic with a reset.

commit 86cf8e3073aa5c51f7ea8ea9a9ca5f13dde829c3
Author: Christoph Lohmann <20h@r-36.net>
Date:   Wed Sep 5 23:06:59 2012 +0200

    Adding the removal of the timeouts to the TODO.

commit 4a4ae19158a6d18d63b8e9fce92e6e5e45543746
Author: Christoph Lohmann <20h@r-36.net>
Date:   Wed Sep 5 22:39:09 2012 +0200

    Removing masks for unhandled enter and leaving events.

commit dd0b7a077f5184c0eac99955aeb91f3c6a0d9c11
Author: Christoph Lohmann <20h@r-36.net>
Date:   Wed Sep 5 22:17:42 2012 +0200

    If the selection is cleared, draw() and do it on button press too.

commit f471a32d29ad9e5e06cf5e5d5efc8422483f535e
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Wed Sep 5 21:55:45 2012 +0200

    Unhighlight selection when selection is owner by other window
    
    st marks the active selection using reverse colors in the box selection, but
    once that another window becomes owner of the selection, it is very
    confusing that st keeps highlight the old selection. Usually terminal
    emulators remove the highlight when it is not valid anymore.
    
    X sends a SelectionClear event in this situation, so we only have to add a
    callback which unhighlight the selectin box.
    ---
     st.c |    9 +++++++++
     1 file changed, 9 insertions(+)

commit 017af76f5c89fa1acf9b54ceaad2101dcfd880a0
Author: Christoph Lohmann <20h@r-36.net>
Date:   Wed Sep 5 21:54:52 2012 +0200

    Forcing the parameter limit to xcopy() and selpaste(). Thanks to Rob Pilling.

commit 42505c5215c84db192287337922581ba43dec89d
Author: Christoph Lohmann <20h@r-36.net>
Date:   Wed Sep 5 21:52:01 2012 +0200

    Removing unneeded arguments to copy(). Thanks to Andrew Hills.

commit 462a966ee2c0f49f432bedaf8e6ebdff995262a9
Author: Christoph Lohmann <20h@r-36.net>
Date:   Wed Sep 5 21:48:26 2012 +0200

    Implement italic font support.

commit 56c551e4f4b5678ba770106bf8a679c044bcf57e
Author: Christoph Lohmann <20h@r-36.net>
Date:   Wed Sep 5 01:32:42 2012 +0200

    Add to TODO to make function keys work.

commit a61b9ea82ef65cd00f1d4908113fb9e3f7c7cc66
Author: Christoph Lohmann <20h@r-36.net>
Date:   Wed Sep 5 01:25:37 2012 +0200

    Enable keypad set and unset commands.

commit da4a77edbebbb75fcb549c5ecac326d5e59aeef5
Author: Christoph Lohmann <20h@r-36.net>
Date:   Wed Sep 5 00:58:17 2012 +0200

    Disable BCE again.

commit 98dc91eb82843da4683a16a98050a23746e2fa68
Author: Christoph Lohmann <20h@r-36.net>
Date:   Wed Sep 5 00:09:13 2012 +0200

    Removing the resize issue from the TODO file.

commit 67c1a23053666dbac6b1ff9b17698f59b6b27887
Author: Christoph Lohmann <20h@r-36.net>
Date:   Wed Sep 5 00:08:13 2012 +0200

    Fixing the resizing behaviour.

commit e09709d92d89c8593f7390f12dc22fdc563eb57f
Author: Christoph Lohmann <20h@r-36.net>
Date:   Tue Sep 4 22:51:29 2012 +0200

    Forgot one line. It's late.

commit b1d383a0a344e35dad1064e129f70d52bddfd7b2
Author: Christoph Lohmann <20h@r-36.net>
Date:   Tue Sep 4 22:44:33 2012 +0200

    Cleaning up the fixed window size and the resizing of clients.

commit e02d72441ab6c1fba649ca65824b2d5dbb9db0f4
Author: Christoph Lohmann <20h@r-36.net>
Date:   Tue Sep 4 22:06:54 2012 +0200

    Another thing for TODO – resize.

commit 052a617828e446c8ee17dfefceba447fcf1f50e2
Author: Christoph Lohmann <20h@r-36.net>
Date:   Tue Sep 4 22:05:24 2012 +0200

    Updating the TODO and enabling BCE.

commit 6e88c7f60206275a5378521ef5d3dd96b0b09f36
Author: Christoph Lohmann <20h@r-36.net>
Date:   Tue Sep 4 21:56:55 2012 +0200

    CUP == HVP; CHA == HPA;

commit 59fe59d3d1f922ec3a99c758e54ab88cfdf939be
Author: Christoph Lohmann <20h@r-36.net>
Date:   Tue Sep 4 20:34:43 2012 +0200

    Unifying the old style.

commit 98b6f84bfcb63cff54f8aee87191432fa769346c
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Tue Sep 4 20:33:01 2012 +0200

    Check alternative screen before drawing box selection
    
    Some programs use the alternative screen (vi, less, ...), whose
    content is different of the main screen. If you select text in one of
    the screen, you don't wait the box selection is painted in the other
    screen, so it is necessary check if the selection was done in the same
    screen we are going to paint. Before to this commit, you could do
    something like:
    
            $ LESS="" ls | less
            (select some code)
            q
    
    and selection box remains drawing in the main screen, but the content
    of selection keeps text of the alternate screen.
    ---
     st.c |    7 ++++++-
     1 file changed, 6 insertions(+), 1 deletion(-)

commit 66669a558560c0ba3b5da4cd2009de81d68a2263
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Tue Sep 4 20:31:21 2012 +0200

    Add newline to stderr message
    
    ---
     st.c |    2 +-
     1 file changed, 1 insertion(+), 1 deletion(-)

commit 1d6702024b8930587f719288b86ba5b931ad557c
Author: Christoph Lohmann <20h@r-36.net>
Date:   Mon Sep 3 23:09:34 2012 +0200

    Fixing the border pixel when there is a negative position.

commit 579f12d47b38e23abb1073b8e70d67c0c203c42c
Author: Christoph Lohmann <20h@r-36.net>
Date:   Mon Sep 3 23:02:29 2012 +0200

    Add -g geometry to st and the manpage.

commit 466decd53552059bfba9551a924354ae989cb46a
Author: Christoph Lohmann <20h@r-36.net>
Date:   Mon Sep 3 21:54:40 2012 +0200

    Fixing a type in in2 in the st.info.

commit 930b2c4a7f222e15e6493d5bbb8fd90e681d2626
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Mon Sep 3 21:52:34 2012 +0200

    Force redisplay of all lines in DECSCNM
    
    When it is called DECSCNM all lines become dirty, because it is necessary
    redraw all lines for getting the new colors. It is easy see the problem
    running 'echo ^[[?5h'.
    
    In order to get a correct flash when running tput flash is necessary wait
    after DECSCNM, until the changes are displayed, because in other case the
    switch between reverse on/reverse off will be too much fast and nothing will
    happen.
    ---
     st.c |   12 +++++++++++-
     1 file changed, 11 insertions(+), 1 deletion(-)

commit a984ffc4cb755c6dcdbc153b2591dca0ae6a8ead
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Mon Sep 3 21:52:21 2012 +0200

    Add write I/O to file
    
    This is a theorical feature listed in http://st.suckless.org/goals. All the
    input/output of the terminal will be written to a file, which can be very
    useful for debugging, and also allow interconnect st to other process
    through named pipes.
    ---
     st.1 |    6 ++++++
     st.c |   14 +++++++++++++-
     2 files changed, 19 insertions(+), 1 deletion(-)

commit cfefa054e80afa22d6948bf997a6818e778801f6
Author: Christoph Lohmann <20h@r-36.net>
Date:   Mon Sep 3 21:50:22 2012 +0200

    Patch from Roberto Vargas. »Add initialization strings in terminfo«
    
    
    Taken from the description:
    
    When tput init is executed the list of task performed are (taken from
    terminfo(5)):
    
                  run the program
                         iprog
    
                  output is1 is2
    
                  set the margins using
                         mgc, smgl and smgr
    
                  set tabs using
                         tbc and hts
    
                  print the file
                         if
    
                  and finally
                         output is3.
    
    When reset is executed, a more stronger initialization process is performed,
    so the terminal can return from an unknown state. rs1, rs2 and rs3 are used
    in this case instead of
    using is1, is2 and is3.
    
    This patch makes is2 = rs2, resets insert mode and set normal keypad
    mode. For rs1 it performs a full initilization using ^[c.

commit b11d85c9bef5a49c071553410c3f73c3181c6ece
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sun Sep 2 19:53:50 2012 +0200

    Add standout mode.

commit 7f17a70834961cd1ff748b2621c6fc87c069be22
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sun Sep 2 19:43:29 2012 +0200

    Cleaning up lonely tabs.

commit 588ba51a539d18de5f9497a38ab7875e7b3e1429
Author: Christoph Lohmann <20h@r-36.net>
Date:   Sun Sep 2 19:42:00 2012 +0200

    Make it more obvious where the wrong attribute is used.

commit c79df9f78d0defed1c7420201416c10768c46076
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Sun Sep 2 19:09:35 2012 +0200

    Enable multiple arguments in SM and RM
    
    SM and RM can receive multiple parameters, but the code only was accepting
    only one. This patch join the code of set and reset modes (SM and RM) in a
    common function and uses a loop which deals with all the arguments of the
    sequence. This patch improves xterm and vt100 compability.
    ---
     st.c |  180 ++++++++++++++++++++++++++++--------------------------------------
     1 file changed, 76 insertions(+), 104 deletions(-)

commit 4cdcc395397f7b7db48265f5ce0949effaf99c1f
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Sun Sep 2 19:08:52 2012 +0200

    Add vpa terminfo capability
    
    ---
     st.info |    2 ++
     1 file changed, 2 insertions(+)

commit 81c678e53e21d496a18a1cde539101da77237e24
Author: Christoph Lohmann <20h@r-36.net>
Date:   Thu Aug 30 21:19:53 2012 +0200

    Silencing the compiler but keeping strparse.
    
    This will really be needed when there is a full 256 color support.

commit c58950f2efd8f203e72add7b22e7f5b973c09a7d
Author: Christoph Lohmann <20h@r-36.net>
Date:   Thu Aug 30 21:17:54 2012 +0200

    Applying the CBT patch of Roberto Vargas. Thanks.

commit 91fa81dbac4f09de234921cdf5afacb8c8295919
Author: Christoph Lohmann <20h@r-36.net>
Date:   Thu Aug 30 07:38:47 2012 +0200

    Never trust terminfo fata morganas. And adding other xterm compatibility.

commit 6696ef8563a58ee07e4de5b3a74b52b91934f6a9
Author: Christoph Lohmann <20h@r-36.net>
Date:   Wed Aug 29 23:14:20 2012 +0200

    Add OSC, DSC, PM, APC and settitle.

commit ff040e9894f62fe28bf100488211d0a407740668
Author: Christoph Lohmann <20h@r-36.net>
Date:   Wed Aug 29 21:13:47 2012 +0200

    Adding setb and setf and a comment about terminfo installation.

commit aaef13aaaaddbbf1e793b9df0e9cfc4d6d28d1b9
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Wed Aug 29 20:05:25 2012 +0200

    Add CHT sequence
    
    This sequence performs "Cursor Forward Tabulation <n> tab stops", which
    although is not present in vt100 or vt102, xterm accepts it.
    ---
     st.c |    5 +++++
     1 file changed, 5 insertions(+)

commit 12de47a93393e098d5d48333290a5710a543c3d6
Author: Christoph Lohmann <20h@r-36.net>
Date:   Wed Aug 29 20:01:34 2012 +0200

    Applying the patches of k0ga and changing the LICENSE file in the appropriate
    
    way.

commit c084c06b402de4fe995734a2c89cae26ff7c9064
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Wed Aug 29 19:59:47 2012 +0200

    Add TBC sequence
    
    This sequence clears tab stops in the terminal. If the argument is not present
    or is zero, then removes the tab stop of the current horizontal position. If
    the argument is 3 then removes all the tab stops of the terminal. It was
    necessary modify the terminfo entry tbc, because it has \E[2g instead of the
    correct \E[3g.
    
    Signed-off-by: Roberto E. Vargas Caballero <k0ga@shike2.com>
    ---
     st.c    |   12 ++++++++++++
     st.info |    2 +-
     2 files changed, 13 insertions(+), 1 deletion(-)

commit 93901ca4fee8a1ab71cb8b918f3d65404460f9ce
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Wed Aug 29 19:59:43 2012 +0200

    Add HTS sequence
    
    This sequence adds a new tab stop in the current horizontal position. This
    means that tputtab must be look for the next tab stop in the tabs array
    instead of using a hard coded value offset. Also, CHT sequence XXX message
    is removed because it is not a vt10x sequence (as far as I know it is a
    vt50x sequence), and it is not implemented by linux virtual terminal neither
    by xterm.
    
    Signed-off-by: Roberto E. Vargas Caballero <k0ga@shike2.com>
    ---
     st.c |   12 +++++++++---
     1 file changed, 9 insertions(+), 3 deletions(-)

commit ee7fd748ac7bfabda2ac37251d230b45adb3e138
Author: Roberto E. Vargas Caballero <k0ga@shike2.com>
Date:   Wed Aug 29 19:59:37 2012 +0200

    Add tabs field into Term struct
    
    Tabs stop are simulated in st using a fixed size of 8, always, without be
    worried about sequences changing the tab stops. A user can put a tab stop in
    each horizontal position of the screen, so we need at least one flag for
    each column of the screen. In the same way as dirty flags is used for the
    rows, it is used a bool dinamic array.
    
    Signed-off-by: Roberto E. Vargas Caballero <k0ga@shike2.com>
    ---
     st.c |   22 +++++++++++++++++++---
     1 file changed, 19 insertions(+), 3 deletions(-)

commit c6853fe18564437fe0a4cb06565a0a7d63d40b5a
Author: Brandon Invergo <brandon@invergo.net>
Date:   Fri Aug 3 14:46:40 2012 +0200

    apply post-XDBE patch BORDER fix

commit 94771d05886fbdd2422e66b7c0256ab27fa375cb
Author: Brandon Invergo <brandon@invergo.net>
Date:   Sat Jul 28 14:27:26 2012 +0200

    Implement Xdbe-based double-buffering

commit 8fdba7494fe33d3be1f6f96b8e900ef1bca01d47
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Mon Feb 27 12:48:13 2012 +0100

    update TODO.

commit cfea72c7b48261006079a327a9ce1adbe2bdc3e3
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Mon Feb 27 12:44:02 2012 +0100

    cleanup. refactored dirt-related function.

commit 6c0a1eff2fb2419b9bbfb545d0cf21a2e524efb2
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Thu Feb 16 19:24:46 2012 +0100

    use SHELL as default shell.

commit 7823aeb1f9eb5b7a77b42506f5f60a5743f7f71f
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Thu Feb 16 01:06:45 2012 +0100

    revert to "tip" in VERSION.

commit 83b06565889ff7bae8f335effec80d7da53b2214
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Thu Feb 16 01:05:26 2012 +0100

    Added tag 0.2.1 for changeset 108926a0fe61

commit 970d44a60db7b64279e1c14d8750253580feecaa
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Thu Feb 16 01:05:14 2012 +0100

    bump version.

commit ff5edcfd7055102c46098f18adf1b469eec7caef
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Thu Feb 16 00:59:26 2012 +0100

    replace fwrite by printf.

commit cb2e0e9c31a510cd6cdbbd3b0da231157a975d95
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Thu Feb 16 00:58:16 2012 +0100

    rewrite csidump().

commit 53ac69e90d95e52dedf99129e39a993d45c812ea
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Thu Feb 16 00:33:11 2012 +0100

    clean and name enum definitions.

commit 751fb765e4f26ce1500b4e8ee9f4cd5b6039b495
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Thu Feb 16 00:10:32 2012 +0100

    fix default color overwriten bug.

commit be2877cd042eaf5d0f7dda102f526357aa577232
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Wed Feb 15 19:33:48 2012 +0100

    show dark cursor when unfocused.

commit d8e11bdb0ecbccbaab7d944a577b9557ccff5d52
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Wed Feb 15 19:11:07 2012 +0100

    document possible configuration.

commit 33558ca042357ee7387b7c0ba9574af1106c4037
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Wed Feb 15 19:10:31 2012 +0100

    handle dim/bright colors.

commit 6de1ba6e7437919a137dfc5b925f5504085f4311
Merge: cee6ccc b11e22d
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Mon Feb 13 01:01:41 2012 +0100

    merge

commit b11e22df7d965fb5dff0954623e55093b50d3a62
Author: anselm@garbe.us <unknown>
Date:   Sat Feb 11 10:48:18 2012 +0100

    some minor fixes

commit cee6ccc6ee21fb6a4e4e04c2727aec26b7d47e07
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Wed Feb 8 16:45:52 2012 +0100

    reduce size of each glyph for faster copy.

commit b6b90253b88f6787804c5ced60d48e37394512f2
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Tue Feb 7 23:53:45 2012 +0100

    Added tag 0.2 for changeset 3c2f9f2ab5e4

commit bcb7ec68c2780a65d0d362bafd3690b2a8f5473e
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Sat Jan 21 23:43:03 2012 +0100

    cosmetic, whitespace, etc.

commit df54ab040509829b4baec1673e4b158038ff983d
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Sat Jan 21 23:26:53 2012 +0100

    fix PRINT/DRAW _TIMEOUT and fix redrawing bug.

commit 896310e5928b6daab5f594acd9648ffe8233022e
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Sat Jan 21 23:14:41 2012 +0100

    copy dirty lines to screen, add select() timeout & min time between draw() calls.
    
    
    * add a timeout value (SELECT_TIMEOUT) of 20ms in the select() call
    * wait at least 20ms (DRAW_TIMEOUT) between draw() calls
    * only copy dirty lines from the buffer to the screen
    
    what draw() does:
    * clears dirty lines in the buffer
    * draws the longest same-attributes string of each
      dirty line to the buffer with multiple xdraws() call
    * copies the current dirty line from buffer to the screen with a single
      xcopy() call
    
    this changeset makes st run ~10x faster.

commit 13a8eeb810ccfdaefd58c52328dd0ec867e3ae8d
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Tue Jan 10 22:21:03 2012 +0100

    fix segfault in selection. (thx Martti Kühne)

commit ab9c9a4e3af246d0b4c6419bffb02a23fd5c1462
Merge: a20125a 23bb97d
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Tue Nov 1 16:37:16 2011 +0100

    merge.

commit a20125a3d1fd9fec2af7886a474691a1839f8537
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Tue Nov 1 16:33:43 2011 +0100

    fix selection. (thx Tarmo Heiskanen)

commit 23bb97d9f3b01da5bc4ad5c01616606adee4f1da
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Thu Oct 20 23:26:58 2011 +0200

    drawregion() only copies region on screen.

commit 0dbf9c8c12a5de35d1cef22349ab80e8f0a8f10e
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Thu Oct 20 23:20:59 2011 +0200

    add dirty flag for lines

commit 907cb8bfa69926616639f9a19127117b37326029
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Thu Oct 6 21:32:34 2011 +0200

    no palette limit (thx Nick)

commit 9d613092d6698ef41cb7492cdb3214ee9a5ab4d7
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Thu Sep 22 10:04:58 2011 +0200

    simplify version format.

commit 4bd087766f16bd541a1aebd0b0348ecc5fe9b94c
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Fri Sep 16 18:48:16 2011 +0200

    selection is removed or scrolled properly. (thx Rafa Garcia Gallego)

commit b032814e25ddb166b4621262be4b8a1a0a609e37
Merge: 8e66b5c f78b793
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Fri Sep 16 18:24:13 2011 +0200

    working on old repo, merging recent changesets.

commit 8e66b5cc16831583a1086f3ba9cd0eaa55f02230
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Fri Sep 16 18:21:48 2011 +0200

    move xembedatom in XWindow struct, add link to xembed specs.

commit 8d2d8848e8ac7117adffe9e1d168c5125934dfcf
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Fri Sep 16 18:03:44 2011 +0200

    tweak focus to support XEMBED client message and remove focus on EnterNotify. (thx Adrian)

commit d5f3d120eae2377b8a2f80c94fbb5e4bd7a6189d
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Fri Sep 16 17:57:56 2011 +0200

    remove dup of default window size.

commit f78b793d91f954c769e029fe6e1613c22d30f5cc
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Sun Aug 14 17:15:19 2011 +0200

    change "op" cap in terminfo entry to xterm/rxvt value.

commit 6f260ba164ee302b50398e529f71e305e435504a
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Sun Aug 14 17:13:59 2011 +0200

    fix custom key handling.

commit 8503f954a1cb2d08124fe2c1f0227bd23dffff46
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Thu Jun 9 18:25:56 2011 +0200

    fix focus state when embed in another window.

commit cddbd6eee59104a029087c30f9ff5e7e415bc584
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Thu Jun 9 14:27:07 2011 +0200

    fix segfault with mouse selection. (thx anonymous)

commit 3959a99293785e603270d8798fbe0cb2ba0ae0ee
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Wed Jun 8 21:35:58 2011 +0200

    add -w option to embed st. (thx nodus cursorius)

commit 4736edd469d07685f6ceeb4bfe438ba48335bd81
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Wed Jun 8 20:26:00 2011 +0200

    applied parts of "anonymous" cleanup patch.

commit 189a81caa11a278079fde3e610870e07870d8968
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Wed Jun 8 20:22:38 2011 +0200

    add altscreen escseq alias & caps to terminfo entry. (thx Bert Münnich)

commit 9b404c0dfb99a7fd918760984ba4d0c50d3c87b8
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Wed Jun 8 19:32:10 2011 +0200

    disable mouse highlight when mouse report enabled. (thx Bert Münnich)

commit d59f92d6f19a4a914ba99168fdc42d1783eee1ba
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Wed Jun 8 12:40:35 2011 +0200

    reverse video mode. (thx Bert Münnich)

commit b2db58c2a05168257ee4e4b941f0533c6dde2a10
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Wed Jun 1 19:57:48 2011 +0200

    add status bar (window title) to terminfo. (thx Rafa Gallego)

commit 6734de9b6e1e74e6c713a6a3e22322e80884828d
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Sun May 22 16:57:27 2011 +0200

    set title before mapping window (thx Kamil Cholewiński).

commit 7d352f143655ace75dd4e40432199f18f296da5e
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Sat May 14 17:47:37 2011 +0200

    applied parts of Connor Lane Smith's cleanup patch.

commit 5beae6a62ee15dfe36048e377ebf86df09a0cf82
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Tue May 10 22:55:35 2011 +0200

    macro cleanup.

commit 0107293a446725551ceb756affe50b4853046f05
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Tue May 10 22:54:30 2011 +0200

    add mouse report escape to terminfo entry.

commit 80da37203e1699d9143cacfcfaeae7e7645c645d
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Tue May 10 22:22:44 2011 +0200

    support for x11 xterm mouse reporting

commit 8eaed2cdda375e8e951eb389af3859e18761eddc
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Tue Apr 26 20:29:28 2011 +0200

    whitespace.

commit babf4db52b58da74c9e1072d14cb0b9ef5b4dee7
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Tue Apr 26 20:22:15 2011 +0200

    cleanup.

commit aede91e22a41cbf4b11d64faa42575d1bdbd8446
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Fri Apr 22 00:42:58 2011 +0200

    update TODO

commit 9d5ea14b9dffac863b41432e4ce12b5624592000
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Fri Apr 22 00:18:53 2011 +0200

    selection clicks, shift+arrow keys, fast(er) redraw, key mask in config.h (thx Magnus Leuthner)

commit d3c5aba2d9b0f6046e4cc72fb056cbd56c6314e6
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Sun Apr 3 21:40:33 2011 +0200

    update README.

commit 742a4a18c2a071bf48133a7db6791ec7b74c68b4
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Sun Apr 3 21:05:41 2011 +0200

    quick bug-fixing 0.1.1 release.

commit 73e37f562964c2d1cb6029693d1d79a69a22ff14
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Sun Apr 3 21:04:45 2011 +0200

    update VERSION.

commit 89c8a3a2d9735fe10bcd85b90c8405fa20b4199e
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Sun Apr 3 21:03:48 2011 +0200

    take BORDER into account for selection. (thx Petr Sabata)

commit 9b63dd9f435408caf3f91b4dfa9144a611302dd6
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Sun Apr 3 21:00:55 2011 +0200

    fix utf8 clipboard. (thx Petr Sabata)

commit 1adf2e3978365c1e530d79372dd9d67f17fb19f7
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Sun Apr 3 02:02:31 2011 +0200

    Added tag 0.1 for changeset cbc18c988236

commit 674434ef6f75247fb25d8e5b39786bca9a0cabec
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Sun Apr 3 00:35:02 2011 +0200

    add support for utf8 clipboard. fix usage message.

commit a047431d34aa77ac7a8fab08151fb569bbe2148e
Author: pancake@nopcode.org <unknown>
Date:   Fri Apr 1 09:35:38 2011 +0200

    do not add newline to selection text if next line not selected (Nick)

commit fe724836866d16a6dfd6de3ca3664033d9146a54
Author: pancake@nopcode.org <unknown>
Date:   Fri Apr 1 09:33:28 2011 +0200

    remove debugging printf

commit 1ab42fd49e68a11bfbbe5990ebdab2d3ca502178
Author: pancake@nopcode.org <unknown>
Date:   Fri Apr 1 09:32:41 2011 +0200

    apply Nick's patch to fix some error printf to use stderr

commit 4d649c240326aa3292adf629c90ea528ecbe844f
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Sun Jan 23 12:30:01 2011 +0100

    fix insert key, terminfo and changed TERM back to st. (thx Ondrej Martinek)

commit 0a208cb6168a0acc9b5692b84ef061b25a5e81f1
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Sun Dec 12 13:32:13 2010 +0100

    change X cursor to "I".

commit e8b18dd97b34d29670484b3850c315213f01dfa5
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Wed Dec 8 18:41:55 2010 +0100

    update terminfo entry.

commit fd1149866f5bc4e3cfdbd281cdd3a45d7db56b40
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Wed Dec 8 18:09:39 2010 +0100

    add new line glitch to terminfo entry.

commit 86c5cb6de6644aeea3c480f66bdeb5e685aab86f
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Tue Nov 30 22:55:44 2010 +0100

    change -e behaviour and update man page.

commit 732b9601ed2543b1fa6acbc08ddc05818279265f
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Sun Nov 28 13:17:20 2010 +0100

    -e flag handles arguments.

commit 54bc450dbf057e66bed5f10d13d90a469e5ca8ae
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Sun Nov 28 01:40:39 2010 +0100

    use memmove() instead of memcpy() in ttyread().

commit af75c433e56e74d2ad7a315d504a9303ea532f18
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Sat Nov 27 21:19:31 2010 +0100

    fix and clean ttyread(). buf wasn't static.

commit 41a4497ecfa66c1dbc65202ae80542c18c5d7793
Merge: 00ba696 eaf38bf
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Fri Nov 26 22:12:54 2010 +0100

    merge.

commit 00ba6969f863c75536910a0138b5161bbd0638c9
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Fri Nov 26 22:11:31 2010 +0100

    s/xw.dis/xw.dpy/

commit eaf38bf310a3c7850df2444fcdd77683ab8e4dc2
Author: pancake@nopcode.org <unknown>
Date:   Wed Nov 24 14:27:44 2010 +0100

    Fix unused variable issue and OSX includes

commit b61925b5d6fd8af0ad0ccc922db60dff1746cfe2
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Sat Nov 20 22:24:04 2010 +0100

    cleanup & bugfix in xdraws().

commit 81a048d6cfda84a06353911130fee029df077c8d
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Fri Nov 19 22:32:39 2010 +0100

    clean comment regarding redrawing in bmotion().

commit b61afd24be566d8c8d7d5310fdad973441139428
Author: Gregor Best <gbe@ring0.de>
Date:   Fri Nov 19 17:13:13 2010 +0100

    Add -c option to override the default window class

commit 70464e208060746ad9184dfc298005fff3035d72
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Thu Nov 18 12:43:33 2010 +0100

    some code cleaning.

commit 9b74fcadc46ee78b38b20e9663c6924cd9df7e84
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Thu Nov 18 01:00:04 2010 +0100

    utf8 support! print text in delicious unicode greatness! all hail to the glorious Damian Okrasa for the patch!
    
    TERM set back to xterm.
    changed default fonts.
    Note: drawing is now (even) slower.

commit d581bfccd7c2987e12809383d8ce1f833529b715
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Mon Nov 8 19:49:13 2010 +0100

    selection code cleanup.

commit b1e6099220f7e10d88adb8d960db27f63f1d8ccb
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Sun Oct 31 20:29:22 2010 +0100

    fixed ED.

commit edfbc9b432bc779ec9c41f7523be52b99edeec85
Author: Devin J. Pohly <djpohly@djpohly.com>
Date:   Mon Oct 25 16:45:13 2010 -0400

    redraw if we scroll on resize

commit 638a30359d26c1f84a87f0f8df17df1765068029
Author: Devin J. Pohly <djpohly@djpohly.com>
Date:   Mon Oct 25 16:00:10 2010 -0400

    get rid of artifacts in border on resize down

commit d85f7319a2c0d0bc53c1e0be6539284823fe7389
Author: Devin J. Pohly <djpohly@djpohly.com>
Date:   Mon Oct 25 15:26:47 2010 -0400

    copy old pixmap to new on resize

commit 12435817723b44189bd412937403c401e5bbc136
Author: Devin J. Pohly <djpohly@djpohly.com>
Date:   Mon Oct 25 15:10:41 2010 -0400

    move code into new xresize func, add early exit to resize

commit 722688d989bae9ce5e71507be5656c9b78ae7834
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Sat Oct 16 20:54:19 2010 +0200

    \v and \f are have the same behaviour of \n.

commit 6f87a39444166674daa94860d365e72343e0b882
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Sat Oct 16 20:50:29 2010 +0200

    added LNM mode; re-organized kpress() to handle it.

commit ce27e634910e10c470b2dcb2edcd20f05d25343b
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Sat Oct 16 17:13:22 2010 +0200

    redraw optimization.

commit 9e004846def39ee73eeb06ba9b1be0e389752441
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Thu Oct 14 19:21:12 2010 +0200

    fixed newline bug.

commit 68d8fcf62a4f016c0292db543c1c2e694afc5b54
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Wed Oct 13 01:27:09 2010 +0200

    replaced memset by loops in tresize(); turns out it's faster.

commit e4bf56ae1a9e2612ec9a6faf2aaecd6eadcccaa7
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Wed Oct 13 01:25:04 2010 +0200

    remove useless draw().

commit d693b304c78708acb911773fe24971ef969d237e
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Wed Oct 13 01:24:11 2010 +0200

    applied xclipboard patch. thx David Isaac Wolinsky.

commit 3a50a4fd931ed58454b680c9fc5c1bc2278e67f3
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Wed Oct 13 00:50:18 2010 +0200

    clean button selection code.

commit 3470e3af23f4b98ce4293f6090c8df59a08329d9
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Tue Sep 21 16:04:13 2010 +0200

    compose key patch. thx federico luna.

commit 6faedce53a8de8a81da1ba045ffbc2b7603128cd
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Sat Sep 11 16:07:36 2010 +0200

    s/hasfocus/focus/ for consistency.

commit ab7037cb33b4be4d16e3197d907066ed5b8ab16b
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Sat Sep 11 16:05:57 2010 +0200

    don't draw if the window is not visible.

commit f693476365c9383ac83420319dd69372c55f9f50
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Sat Sep 11 16:01:41 2010 +0200

    use xclear() in draw().

commit 8c3757986a41ff8fa95b175be40f67d67d7e27b1
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Sat Sep 11 15:59:54 2010 +0200

    use XCreateWindow(), set gravity bit.

commit 273d4ba938dc6bf7edb2b1154ea36c19bfcd22d1
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Fri Sep 3 00:15:43 2010 +0200

    cleaning st.info. added comment in st.c for DECSCNM.

commit c43526153fbe368351f6139f5e672e1798f6d2f1
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Fri Sep 3 00:00:41 2010 +0200

    cleaning st.info. fixed cvvis.

commit 58083da61f53cdcea2112bfe835f8aeebd44850b
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Thu Sep 2 22:35:55 2010 +0200

    set terminal colors to xterm default ones.

commit ebc287271cd1c31a0a44826915257093867733ac
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Thu Sep 2 21:59:05 2010 +0200

    removed gfx chars not present in xterm acsc.

commit 7d325a3797006297e47cbdcb4a5de61348c82664
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Thu Sep 2 20:24:33 2010 +0200

    fixed start/end sequence of gfx.

commit 223909e008bae6fce33cc1ad72e8480fc36805ca
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Thu Sep 2 20:21:40 2010 +0200

    undefined gfx doesn't draw \0.

commit b6af0fdc20cd79861fbf770c71484ec04405e744
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Thu Sep 2 02:03:53 2010 +0200

    fixed makefile.

commit 2080dfebeaf82c6426c9ec2708ec8d96a7af76bb
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Thu Sep 2 02:02:56 2010 +0200

    added manpage.

commit fbc6ec3207fa1298ec8347697ddea6b3e78f13d0
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Thu Sep 2 01:42:03 2010 +0200

    resize from the top.

commit 9d82bdd94708fa2daabc0b53f8b71bca2a3c6f0a
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Thu Sep 2 01:37:01 2010 +0200

    added -e and -t option.

commit 97695baf4f9bc3632792a3330fb46e188ef166a2
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Wed Sep 1 23:20:54 2010 +0200

    factored code and fixed behaviour of tnewline().

commit 32e160c939ba1c6bdda7b2181c72ca6df06d94ad
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Wed Sep 1 22:54:28 2010 +0200

    updated TODO.

commit 42344b715420a26a5711bb687a0e5f68bbcd3c86
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Wed Sep 1 22:54:07 2010 +0200

    started to go through st.info and fix things.

commit a79bc96c94e786c0e542539f80b622147d7385ac
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Wed Sep 1 19:47:46 2010 +0200

    capabilities sorted by capname in st.info. copy acsc from xterm.

commit df5c5ed04547986ad2fd22226aaa3da430310374
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Wed Sep 1 18:12:54 2010 +0200

    removed debug code.

commit 5ce6c5c0324ef3b7d0f5b9e6e2ba4d87ae0d3bb1
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Wed Sep 1 17:21:09 2010 +0200

    fixed IL and DL.

commit ef69118028afad1938951a1f7dff8db2aa557879
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Wed Sep 1 16:26:12 2010 +0200

    factor and cleanup code.

commit f732ca5f1f03a0a496a07aa6bda15f6c363a2484
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Wed Sep 1 00:30:39 2010 +0200

    added correct line drawing characters for default font.

commit cfe897554d4467fdf4c002429370fc7716e419bc
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Tue Aug 31 18:30:18 2010 +0200

    use struct instead of array.

commit 9703859e6c1e2280036dc7992cb4c54688f719f5
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Tue Aug 31 18:22:59 2010 +0200

    cleanup.

commit 591d147af7d59f31a68513f613124d49f25f9859
Author: pancake@nopcode.org <unknown>
Date:   Tue Aug 31 17:36:55 2010 +0200

    fix segfault when selecting big buffers
    
    shift+insert paste clipboard
    honor CFLAGS and LDFLAGS in config.mk

commit 1132d9e2d65f469dedd9c5b6f356495c7a87b743
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Tue Aug 31 16:56:27 2010 +0200

    fix build.

commit c4225bdcc9da2eb87e49608cc1821757cbd69dee
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Tue Aug 31 16:53:34 2010 +0200

    add selinit() and renamed clipboard_* to sel*.

commit f211bc2eedaa8ea86dc66ad04ccd08938c73a93c
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Tue Aug 31 16:30:11 2010 +0200

    move event configuration in xinit().

commit ee858b4805aec3e12bff48cf27433ebcd3f6ac34
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Tue Aug 31 15:36:13 2010 +0200

    use one global struct instead of many vars for selection. Cleanup.

commit 80f70f1c224ec6fb10f04c29ea2205f47ae553ff
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Tue Aug 31 14:52:52 2010 +0200

    use GLYPH_SET to test if a char is set; cleanup.

commit 23cc3fc5715a650c91e3b99074c31aaf63e2102c
Author: pancake@nopcode.org <unknown>
Date:   Tue Aug 31 11:40:57 2010 +0200

    fix crash for small windows
    
    use unconditional infinite loops

commit 160bda1b60148ce8f7d3b001ada2b12f1da9e152
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Tue Aug 31 11:02:17 2010 +0200

    toggle ATTR_REVERSE on selected text, factored some code and fixed Makefile.

commit 596bb133a55a6aba13b55795a9a38e29fcf1b38b
Author: pancake <pancake@nopcode.org>
Date:   Mon Aug 30 23:49:15 2010 +0200

    fix build
    
    use config.def.h mechanism
    add SHELL in config.h

commit 0ba53e48c76a2a2668dfa270cfd0227461c3a91b
Author: pancake <pancake@nopcode.org>
Date:   Mon Aug 30 23:41:37 2010 +0200

    initial implementation of selection and clipboard

commit e1ce89f2678628b1c0e904800822a553de2817de
Author: pancake@nopcode.org <unknown>
Date:   Mon Aug 30 17:07:54 2010 +0200

    fix segfault

commit 12c25bcea973ced6e3b3b03f05cdb3f45fcd9f7f
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Mon Aug 30 16:48:18 2010 +0200

    added support for alternate screen.

commit 326586ba434fb873ebdb81f385ebe838419a98a7
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Mon Aug 30 15:28:29 2010 +0200

    cursor is hid when unfocused.

commit ae5baac932af877cb18df6853d45f033ed9b270f
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Mon Aug 30 13:04:19 2010 +0200

    use predefined OS macro instead of uname.

commit bef87acd0d0e22ba4689be6f1c39ce2d90812317
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Mon Aug 30 01:20:38 2010 +0200

    st should compile on NetBSD.

commit 1bb7398f4b9e38e1c42157717a9dc420bc645d2d
Merge: e851736 581ae58
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Mon Aug 30 03:12:11 2010 +0200

    removed pty.h. minimal system guessing added in config.mk.

commit e851736e8bd6c04f1805659d4783de2314ecb263
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Mon Aug 30 03:05:05 2010 +0200

    removed (visual) bell. '\a' sets the urgency flag if st is unfocused.

commit 188293c828033fd7ff74d753239b3a5052b372a2
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Mon Aug 30 01:45:57 2010 +0200

    removed useless cursor init. and renamed xcursor() to xdrawcursor().

commit 7d88cf88d05c5f5fffbe096da9fac79d7d8957f9
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Mon Aug 30 01:35:37 2010 +0200

    added support for the "magic margin", changed c.hide to c.state, changed xcursor() to use term instead of a
    
    parameter and fixed the cursor position after setting a scrolling region.

commit 1f6e7b84c6131612cb8cb7751a2b373af9957c6d
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Mon Aug 30 01:19:05 2010 +0200

    removed old VT52 escapes, fixed VT100 IND.

commit 581ae58b4182c2d472b30d11dbbef813704642f1
Author: pancake <pancake@nopcode.org>
Date:   Mon Aug 30 00:32:49 2010 +0200

    fix warning

commit 5258d6054599e456c260984b8619500d0b4b75b7
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Sun Aug 29 20:12:44 2010 +0200

    fixed optimized drawing routine and factored some code.

commit b4f623f9109cc38a87469c6430d5e780e9a01989
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Sun Aug 29 19:41:36 2010 +0200

    fixed pixmap buffer drawing.

commit eab9aad1dcd87ba1721bc63ef987203b7a643c69
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Sun Aug 29 19:14:05 2010 +0200

    added a XFlush() in xbell().

commit 2181040594ae63f2821899caba0bef34257a6c2b
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Sun Aug 29 18:55:15 2010 +0200

    moved term.hidec in term.c for consistency, put back delay in xbell()
    
    along with duration in config.h, factored some code in tnew()/treset()
    and cleaned some code.

commit c186c8ef9a995616384c425c5568b6913676b252
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Sun Aug 29 12:27:59 2010 +0200

    merged tscroll() with tscrollup().

commit 6db6980e27bdde6f2d444dd3cdd7a46985fa84fc
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Sat Aug 28 03:18:22 2010 +0200

    st now runs on Linux, OpenBSD and FreeBSD.

commit c56332857145d1c6741d4f6c1bbc87dcc6c6ab97
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Fri Aug 27 13:53:27 2010 +0200

    removed XINERAMA from config.mk and fixed a segfault when st is
    
    started without a display. (thx Hiltjo Posthuma)

commit a1018e0e9e52f29fe220a6af85a237a1a02a732c
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Fri Aug 27 00:58:28 2010 +0200

    fixed potential bug in IS_SET().

commit fbb66da9a9ef3c12c1e8dee7433d003b85d70e9c
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Fri Aug 27 00:28:27 2010 +0200

    merged tcursorwrap() with tnewline(), added few comments and updated copyright.

commit 42b2912e2151f02e181bd014ce1610f7e03a7d07
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Fri Aug 27 00:05:50 2010 +0200

    cleaned some spaces.

commit 5d611cd5476b56884077120bc2a6ba9727fcdd2c
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Thu Aug 26 23:43:08 2010 +0200

    added macro to test flags, removed tmovecursor().

commit 4db3df312ada9d92564d5580fb4e67f7704efff8
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Thu Aug 26 21:37:12 2010 +0200

    faster resizing.

commit e8c13ebe8001a7870a70b698d8b8fa80b7c90fd3
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Thu Aug 26 21:36:21 2010 +0200

    close master/slave pty in the shell process.

commit 5c93f399c564f3475ffa4d3b3314a06db533e410
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Thu Aug 26 21:34:37 2010 +0200

    clean \t.

commit 44226483fb0a3d6270970399d8a91abb2d16146b
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Thu Aug 26 21:33:53 2010 +0200

    update function prototypes.

commit b09401b96b640a796d11774664c49031cee3245a
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Thu Aug 26 21:32:34 2010 +0200

    fix \b and clean \t.

commit a7922bd1d94ace6d14e40a27820e217cd6c4e632
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Sun Aug 22 19:46:46 2010 +0200

    added F1-12 key, fixed DCH and ICH.

commit ce3f4fc647be3ab28f934db9365445a56ebd85bf
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Thu Aug 19 12:46:54 2010 +0200

    fixed backspace problem, updated terminfo entry and moved TNAME in config.h.

commit d2f157c7418e2762316e5471f819ec1e5c49e93c
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Fri Aug 13 22:43:30 2010 +0200

    renamed a function.

commit 10e49a0505a250fc78c41842d93eb2a0abaf4c93
Author: Anselm R Garbe <anselm@garbe.us>
Date:   Sat Jul 24 12:09:14 2010 +0100

    applied Devin J Pohly's st color info patches, thanks Devin!

commit 9e8f5f1348e3a38d5c0d90bddcf40c9c03caa098
Author: pancake@nopcode.org <unknown>
Date:   Thu Jul 8 17:34:02 2010 +0200

    fix gcc warnings

commit 499c70cda048e9d62ab9085efb3a6d484c64bf37
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Thu Jul 8 16:31:41 2010 +0200

    fixed background color bug (thx Devin J. Pohly).

commit 2f96cfeadaac871456e2e2acae3b997c23c93d63
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Thu Jun 3 23:14:37 2010 +0200

    added PBaseSize hint and set default title to "st".

commit 2f5ebe0a4d71aea0bb3aa0e500765a402e4a96f4
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Wed Jun 2 16:01:30 2010 +0200

    rearranged code, resize fixed.

commit 476f93794acc36ea69dfd33551e311863c8afc9a
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Tue Apr 27 00:04:29 2010 +0200

    little clean up.

commit d01c55c9ab58588d98239c515aa8db6443ae75ca
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Mon Apr 26 19:20:53 2010 +0200

    use SHELL environment variable (thx Thomas Adam)

commit b3b7ffce5f1cb1d82aa26df976f0316d89d15d7f
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Mon Mar 15 23:56:38 2010 +0100

    double-buffering added using pixmap (finally).
    
    results in a lot of simplification :
            - no more dirty flags (perf are good enough).
            - no more ugly gfx call in emulation functions.
    LINESPACE removed from config.h.
    BORDER is now handled correctly.

commit 0f4dd5035ed920c67133f1a4b8aef5cbd957c7be
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Thu Mar 11 23:50:50 2010 +0100

    bold attribute is back.
    
    visibility of the cursor is not saved/loaded anymore.
    scrolling up/down is fixed.
    added RI and RIS sequences.
    fixed cursor drawing bug.

commit 7cdaf130b17e4991da9bb3d8d1341e0092474a73
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Sun Feb 21 14:59:32 2010 +0100

    added VT100 NEL.

commit 639f16d200eee5e297187c582afd9fd2e3e8ef57
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Sun Feb 21 14:39:31 2010 +0100

    added VT100 RI.

commit 636c369d86b6452a89f54c497a9816ca1f866d4e
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Sun Feb 21 14:28:32 2010 +0100

    added VT100 save&load cursor support.

commit 3ba517e796e0c7a73c5030ad791be1db36a8cec5
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Sun Feb 21 14:14:58 2010 +0100

    ECH handled correctly.

commit eff05c7b90429ac4dddbbc53ac7d4c05dfc5efd4
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Mon Feb 8 23:16:55 2010 +0100

    more escapes & more compability:
    
    cursor keys are handled in kpress according to the Application Mode (DECPAM).
    define & enum were renamed.
    tcursor() is now tmovecursor() which is more correct.
    tcpos() is now tcursor(), as DECSC is also supposed to save attributes.
    capnames are indicated whenever possible.
    
    Currently:
    alsamixer looks fine, totally usable.
    ncmpc is almost ok.
    emacs looks like shit.

commit e6b3f5c755349ba7a339dd43958870e4cceb57bf
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Wed Feb 3 16:18:04 2010 +0100

    graphic charset and a few more escapes.

commit 0981437524b64579cc656f60b0108abdcdf8a0cd
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Wed Feb 3 03:25:35 2010 +0100

    TERM set to xterm by default (which broke a lot of stuff), better escape handling (title), and a little clean up.

commit f2dff29a16ef0eb1a0b680cdd753471ba406e4f5
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Wed Oct 28 14:34:22 2009 +0100

    drawing is faster but the bold attr is not supported anymore.

commit 4e6915a16b75c1e79142e15a9b23e761140d4e9b
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Mon Sep 7 21:19:29 2009 +0200

    Fixed possible segfault by reverting to the key struct (again).

commit dab8326e6428a5db6b7a6e08f40fa1e5ac77bc6f
Author: Anselm R Garbe <garbeam@gmail.com>
Date:   Fri Jul 10 16:27:14 2009 +0100

    only compile tdump if DEBUG flag is set

commit cf65699a29683bff9d50187c18b160e21a538f48
Author: Anselm R Garbe <garbeam@gmail.com>
Date:   Fri Jul 10 16:23:11 2009 +0100

    we definately need pixmaps for the drawing, currently drawing into the window is painfully slow! much more slower than drawing into a pixmap and mapping that when finished -- several optimisations

commit 0a5e5102096d65a3ba8e39ea9b9b0eb89fe30e04
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Sun Jun 21 19:52:06 2009 +0200

    reverted back to the old Key struct.

commit 4d794b3479cc586de7796d9b060b2eb469a6500d
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Sun Jun 21 19:37:12 2009 +0200

    updated "key" to a lookup table.

commit 44d8c319a9fe51b011ba6a44779659aec45023a7
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Wed Jun 17 20:44:36 2009 +0200

    removed old unused cursor() proto.

commit b8ffa1d7e9cffda8bd8cc7f4ccf612201a617b34
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Wed Jun 17 02:58:40 2009 +0200

    fixed the scrolling bug and cleaned some stuff.

commit d5f4554431f82424af40600ed6835672ab8e44ae
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Tue Jun 16 12:34:10 2009 +0200

    dump escseq if not handled.

commit 53937e045aba6cdefd9e8e81556b306976691747
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Tue Jun 16 02:41:45 2009 +0200

    clean up.

commit 2e37752961f439c33614a9d8469d7c297f0465cb
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Tue Jun 16 02:33:38 2009 +0200

    added/removed files, updated Makefile.

commit 8b4bfe31ec1075316dbb2e7d21753771ae3e5590
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Tue Jun 16 02:23:46 2009 +0200

    made kpress() more flexible, removed st.h, added config.h.

commit 5d8aa08ba5a13b20166f21540370b01e239819b1
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Thu Jun 11 17:03:25 2009 +0200

    updated TODO.

commit ad39f000be87ec16e74c05bdc3fa81ef307b5477
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Thu Jun 11 16:41:14 2009 +0200

    added sigchld handler, cleaned error checking.

commit 2f35cef54b5a32b5498aded0a25f78d0d973a152
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Thu May 28 01:33:01 2009 +0200

    cleaned up (removed space indentation). select/event bug fixed.

commit 129bcd7586968ed882e41c0df76c5c0c0c414e6d
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Tue May 26 02:21:02 2009 +0200

    fixed a memory leak & segfault in tresize.

commit 059d2ba264f8ee2f6fbdb4d7199b611433ad8a72
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Fri May 15 00:40:47 2009 +0200

    updated TODO.

commit a866108af2c6c008e37a32c61cee931efa5e4f9a
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Fri May 15 00:39:51 2009 +0200

    tab moves the cursor instead of inserting spaces.

commit 1cf8b77d2798a43c979b71e16fd45d63b808f569
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Thu May 14 01:03:17 2009 +0200

    handle tabulation (still not perfect)

commit 0ecfcc39b07bb7cca6a688a743299e6ef990e122
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Thu May 14 00:28:10 2009 +0200

    removed truecolor stuff

commit abe6f3b0e4a76ff80315cf6e958549e8295737d6
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Thu May 14 00:27:37 2009 +0200

    removed the truecolor stuff

commit 86fa756033e9072a4b114a50896baff36b804ce4
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Thu May 14 00:18:05 2009 +0200

    same thing, really fixed this time.

commit ccafacb3ff22c85516ff46a88275097936dfe442
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Thu May 14 00:04:34 2009 +0200

    added some error checking in xinit (fixed the segfault caused by a missing font)

commit fd281ad336166de21c9d8652f465ab40a0f12468
Author: Aurélien Aptel <aurelien.aptel@gmail.com>
Date:   Sun May 10 23:32:21 2009 +0200

    Removed unused variable and cleaned some comment.

commit d58dd3b8bc42ed31232e4145696d7dacb117a31c
Author: Anselm R Garbe <garbeam@gmail.com>
Date:   Sun May 10 13:17:09 2009 +0100

    backport of local changes

commit 802f1922f93aef1e4876719e107828a1fa15b1a6
Author: Matthias-Christian Ott <ott@enolink.de>
Date:   Fri Sep 5 20:25:34 2008 +0200

    add accidentally omitted word

commit a7f50ebb64892900e5b56e30c6edd83807a4040b
Author: Matthias-Christian Ott <ott@enolink.de>
Date:   Mon Aug 25 17:56:00 2008 +0200

    use stdio(3)

commit 07d1edcd76cf8ec3f6e72e79bbc1481da77e30f7
Author: Matthias-Christian Ott <ott@enolink.de>
Date:   Mon Aug 25 16:29:37 2008 +0200

    add description of std

commit d61a2a8fce2638594644feb664ce04398825b0f3
Author: Matthias-Christian Ott <ott@enolink.de>
Date:   Thu Aug 7 10:38:54 2008 +0200

    add prototype for command parsing

commit 240411e7d08006f181afbf70930f748d7585ce85
Author: Matthias-Christian Ott <ott@enolink.de>
Date:   Mon Jul 21 17:10:33 2008 +0200

    correct year of copyright notice

commit e0d0a2b96e84bba95f6f3e274131e3bbfb3a4f56
Author: Matthias-Christian Ott <ott@enolink.de>
Date:   Mon Jul 21 17:06:59 2008 +0200

    simplify Makefile
    
    
    Due to consideration of POSIX compliance issues config.mk had
    to be removed. Configuration variables can be overridden by
    environment variables or specified via command line.
    
    Additionally all pretty-printed messages were removed and
    built-in rules are used. This also simplifies and purges
    the Makefile.

commit 082d8bb82bc478bdd0b1470232ba52976a0c035d
Author: Matthias-Christian Ott <ott@enolink.de>
Date:   Mon Jul 21 10:34:02 2008 +0200

    reunite pty.c with std.c

commit 6c6b65ea6ec775cc02c25b8cf69cce32971f9fe8
Author: Matthias-Christian Ott <ott@enolink.de>
Date:   Mon Jul 21 09:25:47 2008 +0200

    correct programme name

commit 746931a3d4114f9bd35a43307fd48bfa64ff0d8b
Author: Matthias-Christian Ott <ott@enolink.de>
Date:   Mon Jul 21 09:25:25 2008 +0200

    use errx() for help and version messages

commit a95f4f2ed9772599c491e582e65f90ff4fd7085d
Merge: fb4508b 7a132bd
Author: Matthias-Christian Ott <ott@enolink.de>
Date:   Thu Jul 10 22:43:24 2008 +0200

    merge with backout head

commit 7a132bd6ac40bfa32b6ac1da412c8c7d35e2d5ca
Author: Matthias-Christian Ott <ott@enolink.de>
Date:   Thu Jul 10 22:42:10 2008 +0200

    Backed out changeset d2bb4220fdf3
    
    
    Ptm and pts are used by pty.c, thus they have to be non-static.

commit fb4508b0b7ca638decb03482535c2087383a523d
Author: Matthias-Christian Ott <ott@enolink.de>
Date:   Wed Jul 9 11:10:38 2008 +0200

    remove TODO

commit 0cbcedb89ffe6e29b3c0640f371bed578c6e0c07
Author: Matthias-Christian Ott <ott@enolink.de>
Date:   Wed Jul 9 10:50:44 2008 +0200

    make ptm and pts static

commit afc73c920df958dabaf1e8e544be47cbe9c919ce
Author: Matthias-Christian Ott <ott@enolink.de>
Date:   Sat Jul 5 13:29:21 2008 +0200

    remove useless variable

commit b3902ca1782515ee8b9cd38af10e51bc3ba2fc98
Author: Matthias-Christian Ott <ott@enolink.de>
Date:   Fri Jul 4 18:18:51 2008 +0200

    remove emallocz()

commit f982c1c37ccc4adc38260a132aa64ee29d1a1a8c
Author: Matthias-Christian Ott <ott@enolink.de>
Date:   Fri Jul 4 18:05:08 2008 +0200

    replace eprint() functions with BSD error functions

commit d83cbc27b99427d00846832a73810f285d8f0d05
Author: Matthias-Christian Ott <ott@enolink.de>
Date:   Sun Jun 15 17:31:24 2008 +0200

    simplify flushing

commit 3cb67937811b34fcc600b4eb96bd8fdd392ecab4
Author: Matthias-Christian Ott <ott@enolink.de>
Date:   Sun Jun 15 09:19:22 2008 +0200

    correct buffering

commit cf147ae9da0221123596b749d4742d06f0ea643b
Author: Matthias-Christian Ott <ott@enolink.de>
Date:   Sat Jun 14 23:29:11 2008 +0200

    make local functions and variables static

commit f9a0524f9430147a3e4a0d200cb3bbd54d1448a4
Author: Matthias-Christian Ott <ott@enolink.de>
Date:   Sat Jun 14 23:24:12 2008 +0200

    add select(2)-based i/o multiplexing

commit a49919a10c11c141f1bfb8414d5c8d2ca9d4a90e
Author: Matthias-Christian Ott <ott@enolink.de>
Date:   Sat Jun 14 23:12:07 2008 +0200

    drop stdio usage
    
    
    Std requires I/O multiplexing which is very complicated with
    stdio, because it provides no transparent buffering.

commit 0c0ada8a7f6e916eb2b05ae5571e375e522d0a2e
Author: Matthias-Christian Ott <ott@enolink.de>
Date:   Sat Jun 14 11:03:29 2008 +0200

    make st and std separate programmes

commit 339e7f35713ae0c35be2537e6639cd5eee592acb
Author: Matthias-Christian Ott <ott@enolink.de>
Date:   Tue Jun 10 18:01:15 2008 +0200

    add missing header file

commit 09fe1e22ce65b2478b47fc2cf1bbe9a9eb966212
Author: Matthias-Christian Ott <ott@enolink.de>
Date:   Tue Jun 10 18:00:15 2008 +0200

    assume glibc by default

commit 5f287254715dd91f2c508a2a6b9853f0ef4ed785
Author: Matthias-Christian Ott <ott@enolink.de>
Date:   Tue Jun 10 17:56:57 2008 +0200

    source utility functions out to util.c

commit 05ebee60843f24201f3e7c5c76ff94b6b5e868b2
Author: Matthias-Christian Ott <ott@enolink.de>
Date:   Tue Jun 10 17:32:15 2008 +0200

    add copyright comment

commit 47d8633f157156ef4701ce71ed7eff766206c107
Author: Matthias-Christian Ott <ott@enolink.de>
Date:   Tue Jun 10 17:30:15 2008 +0200

    source getpty() out to pty.c

commit 0dedee5de8e35f4bab3d707d63be31943715264e
Author: Matthias-Christian Ott <ott@enolink.de>
Date:   Mon Jun 9 22:24:44 2008 +0200

    update TODO

commit 0dce422d31d1178f93ecaf1dcf4e2c0bccb3c076
Author: Matthias-Christian Ott <ott@enolink.de>
Date:   Mon Jun 9 22:21:37 2008 +0200

    correct function name

commit b8f79f0ed0db553745798cd4fb43329ba5c61cef
Author: Matthias-Christian Ott <ott@enolink.de>
Date:   Sun Jun 8 21:36:58 2008 +0200

    remove xinerama flags
    
    
    The xinerama related variables in config.mk are a relict of
    dwm and therefore should be removed.

commit 5e680d7102ec540ca5859a87a82a2c8d93532518
Author: Matthias-Christian Ott <ott@enolink.de>
Date:   Sun Jun 8 21:18:49 2008 +0200

    add missing header file

commit dc01596e6d7b81d52b805a3e8c16e47228325540
Author: Matthias-Christian Ott <ott@enolink.de>
Date:   Sun Jun 8 21:17:02 2008 +0200

    add parser loop

commit 5d055fdc7cb441162f4ff5b67d0cbf6c58439d10
Author: Matthias-Christian Ott <ott@enolink.de>
Date:   Sun Jun 8 20:55:42 2008 +0200

    remove useless variable

commit a6efc851b6b0fa9befe1f81627c5c5955d48e6f6
Author: Matthias-Christian Ott <ott@enolink.de>
Date:   Sun Jun 8 20:47:08 2008 +0200

    replace state with separate variables

commit 50b4785f2650a741f827f4be17ecc18844a1b175
Author: Matthias-Christian Ott <ott@enolink.de>
Date:   Wed Jun 4 19:52:59 2008 +0200

    terminate error message with newline

commit c61b34e8e1883faba38f94b0c6775a47b1267e6f
Author: Matthias-Christian Ott <ott@enolink.de>
Date:   Mon Jun 2 20:15:52 2008 +0200

    correct LENGTH()

commit 693e2413c8c114c6a95327a609c28be643b9d582
Author: Matthias-Christian Ott <ott@enolink.de>
Date:   Mon Jun 2 20:01:35 2008 +0200

    simplify control flow

commit 0b3510df45057bf63f0e3b5ce225ff4491912bb8
Author: Matthias-Christian Ott <ott@enolink.de>
Date:   Mon Jun 2 18:42:23 2008 +0200

    remove debug code

commit 40c0ecfe821036a3eefc210e6f5dc09e846ae5bf
Author: Matthias-Christian Ott <ott@enolink.de>
Date:   Mon Jun 2 18:41:23 2008 +0200

    remove stdio slave pty opening

commit e2ac1676b10e71dcc2c11614637ea8f00d3ba9a1
Author: Matthias-Christian Ott <ott@enolink.de>
Date:   Mon Jun 2 18:40:22 2008 +0200

    drop support for proprietary UNIX variants
    
    
    Proprietary UNIX variants like AIX, HP-UX or SCO UNIX
    are nowadays rarely used and maintaining compatibility to
    non-standard operating systems interfaces is wasteful and
    practically useless.
    
    Projects like xterm suffer from backward compatibility to decades-old
    UNIX variants and terminal standards. This does not conform to st's
    design goals.

commit 375efb8891a2d131d46f1582fd770d34464094e0
Author: Anselm R Garbe <garbeam@gmail.com>
Date:   Sun Jun 1 18:04:49 2008 +0100

    slight changes

commit 771ece25e89882a39700d0a24febbda42363d2ef
Author: Anselm R Garbe <garbeam@gmail.com>
Date:   Sun Jun 1 18:02:48 2008 +0100

    applied Matthias-Christians changes to std.c

commit 1987ae4bacf58c588bbc967434be4e39125c37f9
Author: Anselm R Garbe <garbeam@gmail.com>
Date:   Tue May 20 10:03:59 2008 +0100

    added some new files for the initial rewrite of st from scratch

commit 16f373e36cb2ef0512ac8a281cc18132b2b14b98
Author: arg@localhost.localdomain <unknown>
Date:   Sun May 11 16:36:13 2008 +0000

    added new TODO
