#!/bin/bash
socat TCP-LISTEN:1900,fork,reuseaddr TCP:localhost:8080 &
cd /munseo/_docs/docfx_project
mono ../../_docfx/docfx.exe serve _site
tail -f /dev/null
