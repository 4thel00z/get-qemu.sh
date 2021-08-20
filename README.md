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

If you want to run the tests (needs a go toolchain!), do:

```
make test-all
```

If you want to download a specific version of qemu, you can also invoke `fetch.sh` yourself and pass the version as an argument:

```
./fetch.sh v6.0.4
```

## License

This project is licensed under the GPL-3 license.
