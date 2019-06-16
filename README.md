### Docker image with emacs as a Coq IDE

#### What's in the image

- emacs
- ocaml + coq + math-comp (ssreflect)

- proof-general
- company-coq

#### Usage

- build

    $ docker build --tag docker-coq .

- run

    $ docker run -ti --name mycoqide -v $(pwd):/usr/src docker-coq bash

- reuse

    $ docker start mycoqide && docker attach mycoqide
