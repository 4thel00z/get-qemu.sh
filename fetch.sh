#! /usr/bin/zsh

ARCHS=(arm s390x amd64 ppc64le)
QEMUARCHS=(arm s390x x86_64 ppc64le)
QEMUVER=${1:-"v6.0.0-2"}

echo "Downloading all versions for $QEMUVER"

get-qemu() {
    if [[ ! $(find . -name "*qemu-*") ]]; then
        echo "Downloading Qemu "
        for target_arch in ${QEMUARCHS[*]}; do
	    echo "Downloading qemu in target arch: $target_arch"
            if ! curl -OLs "https://github.com/multiarch/qemu-user-static/releases/download/$QEMUVER/x86_64_qemu-${target_arch}-static.tar.gz"; then
                echo "Error downloading Qemu"
                exit
            fi
            tar -xvf x86_64_qemu-"${target_arch}"-static.tar.gz
        done
        rm -f x86_64_qemu-*
    fi
}

get-qemu
