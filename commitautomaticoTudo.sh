#!/bin/bash

while true; do
  # Verifica por alterações em qualquer arquivo da pasta
  if git diff --name-only HEAD | grep -q "."; then
    # Realiza o commit das mudanças
    git commit -am "Commit automático"

    # Realiza o push das mudanças para o repositório remoto
    git push
  fi
  # Aguarda 60 segundos antes de verificar novamente
  sleep 1800
done
