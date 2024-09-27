#!/bin/sh

openssl genrsa -out ca.key 4096
openssl req -x509 -new -sha512 -noenc \
  -key ca.key -days 7300 \
  -config ca.conf \
  -out ca.crt

certs=(
  "server" "client"
)

for i in ${certs[*]}; do
  openssl genrsa -out "${i}.key" 2048

  openssl req -new -key "${i}.key" -sha256 \
    -config "ca.conf" -section ${i} \
    -out "${i}.csr"

  openssl x509 -req -days 7300 -in "${i}.csr" \
    -copy_extensions copyall \
    -sha256 -CA "ca.crt" \
    -CAkey "ca.key" \
    -CAcreateserial \
    -out "${i}.crt"

  openssl x509 -in "${i}.crt" -text -noout
done
