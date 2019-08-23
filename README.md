
Source code of docker image `ken0x0a/expo`

---

The base image is [mhart/alpine-node](https://github.com/mhart/alpine-node), which is well maintained and works great.
The [official image](https://github.com/nodejs/docker-node) is a bit heavier.

## Usage

#### Local
```sh
docker run --rm IMAGE_NAME whoami # => expo whoami
```

#### CI

Not tested...

```sh

- name: ken0x0a/expo:3.0.10
  args: ['publish', '--non-interactive', '--release-channel', 'staging']

jobs: # a collection of steps
  install-dependencies:
  docker:
    - image: ken0x0a/expo:3.0.10
```
