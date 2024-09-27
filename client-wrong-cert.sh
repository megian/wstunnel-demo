#!/bin/sh

wstunnel client --log-lvl TRACE --tls-certificate client-old.crt --tls-private-key client-old.key -R 'tcp://7000:google.com:443' wss://localhost:8000

