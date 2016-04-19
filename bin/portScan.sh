#!/bin/bash
for i in {1..65564}; do echo $i; ncat -i .5 -w .5 <ip.addr> $i; done |& grep -B 2 'Idle'
