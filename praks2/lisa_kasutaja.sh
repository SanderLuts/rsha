#!/bin/bash
sudo useradd -r -m -s /bin/bash $1
sudo passwd -d $1
