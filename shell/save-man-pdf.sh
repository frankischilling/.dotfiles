#!/bin/sh
man -k . | dmenu -l 30 | awk '{print $1}' | xargs -I {} sh -c 'man -Tpdf {} > "{}_manpage.pdf"'
