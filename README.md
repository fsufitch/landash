# LAN Dash
Monitoring for a home network with a custom router.


## Setup

Install `podman`, `make`, and Python 3 with venv support.

Build your CLI environment: `make venv`.

To start the run:  (root is required to be able to monitor your network)

    sudo venv/bin/podman-compose up -d --build --force-recreate'

To see logs, run: (substitute `cat` with any other file-manipulation stuff to your pleasure)

    sudo venv/bin/podman-compose exec aggregator cat /var/iptraf-output/fifo

Substitute `cat` with any other file-manipulation stuff to your pleasure.

## Other features coming Soon&trade;

*As root*: activate an environment: `. venv/bin/activate`.
