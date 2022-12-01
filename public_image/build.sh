#!/bin/bash
docker build . -t bowmanhan/gecko_builder:latest
docker push bowmanhan/gecko_builder:latest