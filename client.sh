#!/bin/sh

wstunnel client --log-lvl TRACE --tls-certificate client.crt --tls-private-key client.key -R 'tcp://7000:google.com:443' -R 'tcp://7001:neverssl.com:80' wss://localhost:8000
