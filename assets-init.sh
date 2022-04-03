#!/bin/bash
function jsdelivr_npm {
    name=$1
    version=$2
    filename=$3
    jsdelivr_url="https://cdn.jsdelivr.net/npm/$name@$version/dist/$filename"
    echo "Downloading $jsdelivr_url"
    curl -s -o "src/assets/lib/$filename" "$jsdelivr_url"
}

jsdelivr_npm "moment" "2.29.1" "moment.min.js"
