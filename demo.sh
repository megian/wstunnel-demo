#!/bin/sh

echo
ss -ltnp | grep wstunnel
echo
echo Request to google.com via the wstunnel...
echo
curl -k --header 'Host: google.com' https://localhost:7000
echo
echo Request to neverssl.com via the wstunnel...
echo
curl --header 'Host: neverssl.com' http://localhost:7001

