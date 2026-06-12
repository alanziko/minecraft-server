#!/usr/bin/env bash

set -euo pipefail

tofu output -json \
  | jq -r '
      to_entries[]
      | select(.value.sensitive == false)
      | "\(.key): \(.value.value)"
    ' > ansible/group_vars/all/main.yml

tofu output -json \
  | jq -r '
      to_entries[]
      | select(.value.sensitive == true)
      | "\(.key): \(.value.value)"
    ' \
  | ansible-vault encrypt > ansible/group_vars/all/vault.yml

ansible-playbook \
  --ask-vault-pass \
  --private-key ~/.ssh/id_ed25519 \
  -i ansible/inventory.ini \
  ansible/site.yml
