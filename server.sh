#!/bin/sh

wstunnel server --log-lvl TRACE --tls-certificate server.crt --tls-private-key server.key --tls-client-ca-certs ca.crt --restrict-config restrictions.yaml wss://localhost:8000
