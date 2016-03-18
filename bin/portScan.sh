#!/bin/bash
for i in {1..65564}; do echo $i; ncat -i 1 <ip.addr> $i; done |& grep -B 2 'Idle'
