#!/usr/bin/env bash

test_role() {

  local ANSIBLE_INSTALLER_URI='https://raw.githubusercontent.com/shrikeh/ansible-virtualenv/master/init.sh';
  local ANSIBLE_VENV='.venv';
  local ANSIBLE_VERSION='v1.9.2-1';
  local ANSIBLE_CHECKOUT_PATH='./.ansible';
  local ANSIBLE_INVENTORY_FILE='./inventory';
  local ANSIBLE_PLAYBOOK='playbook.yml';
  local ANSIBLE_TEST_REMOTE_USER=${ANSIBLE_TEST_REMOTE_USER:-root};

  . <(curl -L --silent "${ANSIBLE_INSTALLER_URI}") \
    -d "${ANSIBLE_CHECKOUT_PATH}" \
    --branch "${ANSIBLE_VERSION}" \
    --venv "${ANSIBLE_VENV}" \
    --use-pip-version \
  ;

  ( ansible-playbook -i "${ANSIBLE_INVENTORY_FILE}" \
    "${ANSIBLE_PLAYBOOK}" \
    -u "$ANSIBLE_TEST_REMOTE_USER" \
    --extra-vars="$ANSIBLE_EXTRA_VARS" \
    -vvvv \
  );
}

test_role;
