Isocoin Core
=============

Setup
---------------------
Isocoin Core is the original Isocoin client and it builds the backbone of the network. It downloads and, by default, stores the entire history of Isocoin transactions (which is currently more than 100 GBs); depending on the speed of your computer and network connection, the synchronization process can take anywhere from a few hours to a day or more.

To download Isocoin Core, visit [isocoincore.org](https://isocoincore.org/en/releases/).

Running
---------------------
The following are some helpful notes on how to run Isocoin Core on your native platform.

### Unix

Unpack the files into a directory and run:

- `bin/isocoin-qt` (GUI) or
- `bin/isocoind` (headless)

### Windows

Unpack the files into a directory, and then run isocoin-qt.exe.

### macOS

Drag Isocoin Core to your applications folder, and then run Isocoin Core.

### Need Help?

* See the documentation at the [Isocoin Wiki](https://en.isocoin.it/wiki/Main_Page)
for help and more information.
* Ask for help on [#isocoin](http://webchat.freenode.net?channels=isocoin) on Freenode. If you don't have an IRC client use [webchat here](http://webchat.freenode.net?channels=isocoin).
* Ask for help on the [IsocoinTalk](https://isocointalk.org/) forums, in the [Technical Support board](https://isocointalk.org/index.php?board=4.0).

Building
---------------------
The following are developer notes on how to build Isocoin Core on your native platform. They are not complete guides, but include notes on the necessary libraries, compile flags, etc.

- [Dependencies](dependencies.md)
- [macOS Build Notes](build-osx.md)
- [Unix Build Notes](build-unix.md)
- [Windows Build Notes](build-windows.md)
- [OpenBSD Build Notes](build-openbsd.md)
- [NetBSD Build Notes](build-netbsd.md)
- [Gitian Building Guide](gitian-building.md)

Development
---------------------
The Isocoin repo's [root README](/README.md) contains relevant information on the development process and automated testing.

- [Developer Notes](developer-notes.md)
- [Release Notes](release-notes.md)
- [Release Process](release-process.md)
- [Source Code Documentation (External Link)](https://dev.visucore.com/isocoin/doxygen/)
- [Translation Process](translation_process.md)
- [Translation Strings Policy](translation_strings_policy.md)
- [Travis CI](travis-ci.md)
- [Unauthenticated REST Interface](REST-interface.md)
- [Shared Libraries](shared-libraries.md)
- [BIPS](bips.md)
- [Dnsseed Policy](dnsseed-policy.md)
- [Benchmarking](benchmarking.md)

### Resources
* Discuss on the [IsocoinTalk](https://isocointalk.org/) forums, in the [Development & Technical Discussion board](https://isocointalk.org/index.php?board=6.0).
* Discuss project-specific development on #isocoin-core-dev on Freenode. If you don't have an IRC client use [webchat here](http://webchat.freenode.net/?channels=isocoin-core-dev).
* Discuss general Isocoin development on #isocoin-dev on Freenode. If you don't have an IRC client use [webchat here](http://webchat.freenode.net/?channels=isocoin-dev).

### Miscellaneous
- [Assets Attribution](assets-attribution.md)
- [Files](files.md)
- [Fuzz-testing](fuzzing.md)
- [Reduce Traffic](reduce-traffic.md)
- [Tor Support](tor.md)
- [Init Scripts (systemd/upstart/openrc)](init.md)
- [ZMQ](zmq.md)

License
---------------------
Distributed under the [MIT software license](/COPYING).
This product includes software developed by the OpenSSL Project for use in the [OpenSSL Toolkit](https://www.openssl.org/). This product includes
cryptographic software written by Eric Young ([eay@cryptsoft.com](mailto:eay@cryptsoft.com)), and UPnP software written by Thomas Bernard.
