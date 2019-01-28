FROM golang:latest

RUN wget -O- https://apt.llvm.org/llvm-snapshot.gpg.key| apt-key add - && \
    echo "deb http://apt.llvm.org/stretch/ llvm-toolchain-stretch-8 main" >> /etc/apt/sources.list && \
    apt-get update && \
    apt-get install -y llvm-8-dev libclang-8-dev libllvm8 lld-8 \
    apt-utils python3 make binutils-avr gcc-avr avr-libc \ 
    make binutils-arm-none-eabi clang-8 \ 
    nano file less

## ENV PATH="/usr/lib/llvm-8/bin:${PATH}"

COPY . /go/src/github.com/aykevl/tinygo

RUN PATH="/usr/lib/llvm-8/bin:${PATH}" /go/src/github.com/aykevl/tinygo/tools/pkgconf.sh >/usr/lib/x86_64-linux-gnu/pkgconfig/llvm.pc

WORKDIR /go/src/github.com/aykevl/tinygo
RUN go get -d .
RUN make gen-device 
RUN go install /go/src/github.com/aykevl/tinygo/
