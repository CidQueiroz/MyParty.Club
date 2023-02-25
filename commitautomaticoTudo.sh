#!/bin/bash

while true; do
  # Verifica o status do repositório
  if git status | grep -q "Changes not staged for commit"; then
    # Adiciona todas as mudanças para o commit
    git add .

    # Realiza o commit das mudanças
    git commit -m "Commit automático"

    # Realiza o push das mudanças para o repositório remoto
    git push
  fi

  # Aguarda 1800 segundos (30 minutos) antes de verificar novamente
  sleep 1800
done
