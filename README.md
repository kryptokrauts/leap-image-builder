# leap-image-builder

This repository includes a Github action that builds a docker image for [Antelope Leap](https://github.com/AntelopeIO/leap).

The images are published on DockerHub:
- https://hub.docker.com/repository/docker/kryptokrauts/leap

## Example usage

### Run via docker-compose
The provided [`docker-compose.yaml`](./example-usage/docker-compose.yaml) showcases how the docker image can be used to run a node on the [XPR Network](https://xprnetwork.org) that has the [`state-history-plugin`](https://github.com/AntelopeIO/leap/blob/main/docs/01_nodeos/03_plugins/state_history_plugin/index.md) enabled.

Note: In order to restore a chain snapshot with full state history, we refer to the [official guide](https://github.com/AntelopeIO/leap/blob/main/docs/01_nodeos/03_plugins/state_history_plugin/40_how-to-restore-snapshot-with-full-history.md).

### Cleanup folders
You can use the [`cleanup.sh`](./example-usage/cleanup.sh) script to easily remove all the chain relevant files that will be added when running the node.