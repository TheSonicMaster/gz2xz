# gz2xz
gz2xz converts files between different compression algorithms. Despite it's name, it supports converting to and from .gz, .xz, .bz2, .lz4, .zst.
# What is this?
gz2xz is a small tool written in Bash which can convert files between multiple different compression algorithms. It currently supports .gz, .xz, .bz2, .lz4, and .zst.

Symlinks are used to define what conversion should take place. For example: if invoked as 'xz2zst', then it will convert .xz to .zst.

For convenience, the `--install-symlinks` option will install all possible symlinks for you, so you don't have to do any manual work."

The `--remove-symlinks` option will remove any symlinks that were installed by `--install-symlinks`."

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
gz2xz <file_to_convert>
```
Install symlinks to support other conversions (Must be run as root if gz2xz is installed in a read-only folder like `/usr/local/bin`):
```
gz2xz --install-symlinks
```
After installing the symlinks, you can convert other file types. For example: To convert a .bz2 to a .lz4:
```
bz22lz4 <file_to_convert>
```
If you want to remove the installed symlinks:
```
gz2xz --remove-symlinks
```
# Installation
Clone the repository:
```
git clone https://github.com/TheSonicMaster/gz2xz.git
cd gz2xz
```
Install it (must be run as root):
```
make install
```
The default installation path is `/usr/local/bin`. You can customise the path that gz2xz will be installed in by setting INSTALL_DIR. For example:
```
make INSTALL_DIR=/path/to/my/custom/installation/folder install
```
To uninstall (as root):
```
make uninstall
```
INSTALL_DIR also works with uninstalling.
