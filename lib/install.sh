#!/bin/bash

INSTALL_DIR="/opt/linux-admin-toolkit"

sudo mkdir -p $INSTALL_DIR
sudo cp -r * $INSTALL_DIR
sudo ln -sf $INSTALL_DIR/userctl /usr/local/bin/userctl

echo "Installation complete"
echo "Run: userctl --help"
