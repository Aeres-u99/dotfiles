#!/bin/bash

cat ~/notes/notes.txt | sed 's/^/ \${color #ddddff}x  \$color /g'
