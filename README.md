# promagents
Docker Stack deployment for cAdvisor & node-exporter.

## Getting Started

You might need to create swarm-scoped overlay network called `dockerswarm_monitoring` for all the stacks to communicate if you haven't already.

```sh
$ docker network create --scope swarm --driver overlay --attachable dockerswarm_monitoring
```

## Deployment

To deploy the stack, run the following command:

```sh
$ make deploy
```

## Destroy

To destroy the stack, run the following command:

```sh
$ make destroy
```
