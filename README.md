# gz2xz
gz2xz converts files between different compression algorithms. Despite it's name, it supports converting to and from .gz, .xz, .bz2, .lz4, .zst.
# What is this?
gz2xz is a small tool written in Bash which can convert files between multiple different compression algorithms. It currently supports .gz, .xz, .bz2, .lz4, and .zst.

Symlinks are used to define what conversion should take place. For example: if invoked as 'xz2zst', then it will convert .xz to .zst.

If you are using a distribution-provided package of gz2xz (see "Distributions" below), symlinks should be installed automatically. However, if you manually installed gz2xz from the source repository, you can pass `--install-symlinks` or `--remove-symlinks` to install or remove the symlinks respectively.

Conversion requires the following software:

- For .gz: **gzip**
- For .xz: **xz**
- For .bz2: **bzip2**
- For .lz4: **lz4**
- For .zst: **zstd**

Not all of the above programs are required, but conversion with the appropriate type will fail without the relevant program.
# Usage
Convert a .gz compressed file to .xz (default):
```
gz2xz file-to-convert.gz
```
Convert a .bz2 compressed file to .lz4 (assuming symlinks are installed):
```
bz22lz4 file-to-convert.bz2
```
Install symlinks to support other conversions (not available on distribution-provided packages - symlinks should be installed by default):
```
gz2xz --install-symlinks
```
Remove installed symlinks (not available on distribution-provided packages):
```
gz2xz --remove-symlinks
```
# Installation
- [MassOS](https://massos.org): gz2xz is included by default.

If your distribution doesn't have a package available, you can manually install it following the steps beow.

Clone the repository:
```
git clone https://github.com/TheSonicMaster/gz2xz.git
cd gz2xz
```
Install it (must be run as root):
```
make install
```
The default installation path is `/usr/local/bin`, and the default manual page path is `/usr/local/share/man`. You can customise these by specifying `INSTALL_DIR` and `MAN_DIR` respectively. For example:
```
make INSTALL_DIR=/opt/my-package-prefix/bin MAN_DIR=/opt/my-package-prefix/share/man install
```
To uninstall (as root):
```
make uninstall
```
`INSTALL_DIR` and `MAN_DIR` also work with uninstalling, however note that symlinks will not be automatically removed.
# Distributions
If you are packaging gz2xz for a distribution, you can replace `install` with `install-vendored` to prevent the user from being able to run `--install-symlinks` or `--remove-symlinks`, which could cause package manager conflicts:
```
make INSTALL_DIR=${PackagingDir}/usr/bin MAN_DIR=${PackagingDir}/usr/share/man install-vendored
```
Symlinks will be installed automatically in this case.
