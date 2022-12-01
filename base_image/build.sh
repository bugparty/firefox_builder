#!/bin/bash
docker build . -t bowmanhan/gecko_builder:base
docker push bowmanhan/gecko_builder:base