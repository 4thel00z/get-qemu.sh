# get-qemu.sh

## Motivation

I want emulation for the following archs:

* arm
* s390x
* amd64
* ppc64le

and this scripts installs all statically compiled qemu versions of them for me.

## Usage

To fetch all new qemu versions do:

```
make
# optionally, if you want to install to /usr/local/bin
make install
```

If you want to run the tests, do:

```
make test-all
```

## License

This project is licensed under the GPL-3 license.
