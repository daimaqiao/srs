#!/usr/bin/env bash

mkdir -p log

nohup ./chat.sh > log/chat.log &

nohup ./auth.sh > log/auth.log &

nohup ./live.sh > log/live.log &

