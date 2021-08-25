#!/bin/bash
# use testnet settings,  if you need mainnet,  use ~/.bitdollarcore/bitdollard.pid file instead
bitdollar_pid=$(<~/.bitdollarcore/testnet3/bitdollard.pid)
sudo gdb -batch -ex "source debug.gdb" bitdollard ${bitdollar_pid}
