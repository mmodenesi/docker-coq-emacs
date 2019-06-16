## Docker image with emacs as a Coq IDE

![screenshot](https://raw.githubusercontent.com/mmodenesi/docker-coq-emacs/master/docs/screenshot.png?raw=True)

#### What's in the image

- GNU Emacs 25.2.2 
- The OCaml toplevel, version 4.05.0
- The Coq Proof Assistant, version 8.9.0 (June 2019)
- The Mathematical Components repository, version 1.9.0
- Emacs package proof-general
- Emacs package company-coq

#### Usage

- build the image

    `docker build --tag docker-coq .`

- run a container, mounting the current directory at `/usr/src` inside the container

    `docker run -ti --name mycoqide -v $(pwd):/usr/src docker-coq bash`

- you can reuse the same container over and over again

    `docker start mycoqide && docker attach mycoqide`
