#!/usr/bin/env bash
TREEPATH="$(pwd)/$1"
Rscript TreeViewer.R "$TREEPATH"
xdg-open out.pdf
