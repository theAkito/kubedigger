![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/akito13/kubedigger?style=plastic)
![Docker Image Version (latest semver)](https://img.shields.io/docker/v/akito13/kubedigger?style=plastic)

![Docker Stars](https://img.shields.io/docker/stars/akito13/kubedigger?style=plastic)
![Docker Pulls](https://img.shields.io/docker/pulls/akito13/kubedigger?style=plastic)

![Docker Image Size (latest semver)](https://img.shields.io/docker/image-size/akito13/kubedigger?style=plastic)
![Docker Cloud Automated build](https://img.shields.io/docker/cloud/automated/akito13/kubedigger?style=plastic)

![GitHub](https://img.shields.io/github/license/theAkito/docker-kubedigger?style=plastic)
![Liberapay patrons](https://img.shields.io/liberapay/patrons/Akito?style=plastic)

## What
This is a Kubernetes Cluster Debugging Utility. Aims to be deployed as a workload in a Kubernetes cluster, so that you can debug and test connectivity between workloads from their perspective.

## Why
All the popular utilities try to fix determine issues from the outside. This utility aims to debug connectivity issues from inside. This way you are closer to the actual behaviour of your debugging targets, compared to what you see when looking from above/outside.

## How
Deploy this is a Pod or Deployment in your Kubernetes cluster. Once support will be added, you will also be able to deploy it as a Helm Chart, which will be compatible with Rancher.

## Get
Latest build:
```bash
docker pull akito13/kubedigger
```
Fixed version:
```bash
docker pull akito13/kubedigger:0.5.0
```
Tags follow semver, without the `v`.
Git tags equal Docker tags, so no need to check tags explicitly on Docker Hub.

## Build
Build yourself:
```bash
bash docker-build.sh
```

## License
Copyright (C) 2020  Akito <the@akito.ooo>

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <https://www.gnu.org/licenses/>.