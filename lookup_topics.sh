#!/bin/bash
cat queue | while read n; do python3 gitstuff.py $n; rm geckodriver.log; done
#EOF
