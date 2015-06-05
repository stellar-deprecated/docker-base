# docker-atlas

Stellar's base container.

Includes:

* wget - for grabbing stuff
* software-properties-common - for easy use of PPAs
* confd - for building configuration files
* /cores - a place to put core dumps when they happen

## Usage

Intended to be used as a base image so no need to run it directly.

Just include a `FROM stellar/base:latest` in your Dockerfile.

Typically we leverage confd by first adding our config files and templates to the default location:

```Dockerfile
ADD confd /etc/confd
```

Then kicking off a one time run just before starting the container's main process:

```bash
confd -onetime -backend=env
```

