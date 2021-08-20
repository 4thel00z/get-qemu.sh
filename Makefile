.PHONY:
fetch:
	./fetch.sh

.PHONY:
clean:
	rm qemu* test/main test/main.arm test/main.s390x test/main.ppc64le

.PHONY:
install:
	install qemu* /usr/local/bin

.PHONY:
test-all: fetch
	env GOARCH=s390x go build -o test/main.s390x test/main.go
	env GOARCH=arm go build -o test/main.arm test/main.go
	env GOARCH=ppc64le go build -o test/main.ppc64le test/main.go
	go build -o test/main test/main.go
	qemu-arm-static test/main.arm
	qemu-ppc64le-static test/main.ppc64le
	qemu-s390x-static test/main.s390x
	qemu-x86_64-static test/main
