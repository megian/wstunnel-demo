#!/bin/sh

wstunnel client -R 'tcp://:7000:google.com:443' wss://localhost:8000

