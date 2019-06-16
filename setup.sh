set -x
set -e


# Install coq
wget https://github.com/coq/coq/archive/V8.9.0.tar.gz
tar -xzf V8.9.0.tar.gz
cd coq-8.9.0
echo "/etc/xdg/coq\n" | ./configure -bindir /usr/local/bin \
                                    -libdir /usr/local/lib/coq \
                                    -coqide no \
                                    -datadir /usr/local/share/coq \
                                    -mandir /usr/local/share/man \
                                    -docdir /usr/local/share/doc/coq
make -j8
make install
cd -

which coqtop
which coq_makefile

# Install math-comp
wget https://github.com/math-comp/math-comp/archive/mathcomp-1.9.0.tar.gz
tar -xzf mathcomp-1.9.0.tar.gz
cd math-comp-mathcomp-1.9.0/mathcomp
make -j8
make install
cd -
