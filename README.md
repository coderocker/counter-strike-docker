[![Build Status](https://travis-ci.org/JimTouz/counter-strike-docker.svg?branch=master)](https://travis-ci.org/coderocker/counter-strike-docker)
[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://github.com/coderocker/counter-strike-docker/blob/master/LICENSE)

# Docker image for Counter Strike 1.6 Dedicated Server

## Start the server

### Minimum properties setup

```bash
docker run -d -p 26900:26900/udp -p 27020:27020/udp -p 27015:27015/udp -p 27015:27015 -e ADMIN_STEAM=0:1:1234566 --name cs cs16ds/server:latest
```

### All properties setup
```bash
docker run -d -p 26900:26900/udp -p 27020:27020/udp -p 27015:27015/udp -p 27015:27015 -e MAXPLAYERS=32 -e START_MAP=de_dust2 -e SERVER_NAME="My Server Name" -e START_MONEY=16000 -e BUY_TIME=0.25 -e FRIENDLY_FIRE=1 -e ADMIN_STEAM=0:1:1234566 --name cs cs16ds/server:latest +log
```

#### Propetries

| Name              | Description                                             | Default Value               |
| ----------------- | ------------------------------------------------------- | --------------------------- |
| `MAXPLAYERS`      | The maximum number of players                           | `32`                        |
| `START_MAP`       | The initial map                                         | `de_dust2`                  |
| `SERVER_NAME`     | The server name                                         | `Counter-Strike 1.6 Server` |
| `START_MONEY`     | The initial money                                       | `800`                       |
| `BUY_TIME`        | The allowed time to buy items in each round (*minutes*) | `0.25`                      |
| `FRIENDLY_FIRE`   | Enable or disable the friendly fire. (*off: 0, on: 1*)  | `1`                         |
| `SERVER_PASSWORD` | The server password. (*Empty for no server password*)   | None                        |
| `RCON_PASSWORD`   | The rcon password. (*Empty for no rcon password*)       | None                        |
| `RESTART_ON_FAIL` | *TBD*                                                   | *TBD*                       |
| `ADMIN_STEAM`     | *TBD - amx mod related*                                 | *TBD*                       |

## Stop the server

```bash
docker stop cs
```

## Start existing (stopped) server

```bash
docker start cs
```

## Remove the server

```bash
docker rm cs
```

# Attributions

This project is based on below 2 repos
- [counter-strike-docker](https://github.com/artem-panchenko/counter-strike-docker) , developed by [Artem Panchenko](https://github.com/artem-panchenko).

- [counter-strike-docker](https://github.com/jimtouz/counter-strike-docker) , extended by [Dimitris Touzloudis](https://github.com/jimtouz).

## Changes from original project

* Changed the name of the build.
* Added new maps.
* Added new parameters in run script.
