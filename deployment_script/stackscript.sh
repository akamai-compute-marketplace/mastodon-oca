#!/bin/bash
set -x
## Mastodon Settings
#<UDF name="domain" label="Domain name for your Mastodon instance." example="domain.tld" />
#<UDF name="token_password" label="Your Linode API token" />
#<UDF name="soa_email_address" label="Email address (for the Let's Encrypt SSL certificate)" example="user@domain.tld" />
#<UDF name="owner_username" label="Username for Mastodon Owner" example="" />
#<UDF name="owner_email" label="Email address for Mastodon Owner" example="user@domain.tld" />
#<UDF name="single_user_mode" label="Do you want to start Mastodon in single-user mode?" oneOf="Yes,No" />


# git repo + workdirs
export GIT_REPO="https://github.com/akamai-compute-marketplace/mastodon-oca.git"
export WORK_DIR="/tmp/oca-deployment"
export LINODE_API_TOKEN="${TOKEN_PASSWORD}"

# enable logging
exec > >(tee /dev/ttyS0 /var/log/stackscript.log) 2>&1
source <ssinclude StackScriptID=1>

function cleanup {
  if [ -d "${WORK_DIR}" ]; then
    rm -rf ${WORK_DIR}
  fi
}

function setup {
  # install dependancies
  apt-get update
  apt-get install -y git python3 python3-pip python3-dev build-essential

  #clone repo and set up ansible environment
  mkdir -p ${WORK_DIR}
  cd ${WORK_DIR}
  git clone $GIT_REPO
  cd mastodon-oca

  # write udf vars
  cat <<END > group_vars/mastodon/vars
  domain: ${DOMAIN}
  soa_email_address: ${SOA_EMAIL_ADDRESS}
  owner_username: ${OWNER_USERNAME}
  owner_email: ${OWNER_EMAIL}
  single_user_mode: ${SINGLE_USER_MODE}
END

  #venv
  pip3 install virtualenv
  python3 -m virtualenv env
  source env/bin/activate
  pip install pip --upgrade
  pip install -r requirements.txt
  ansible-galaxy install -r collections.yml
}

function run {
# run playbooks
  ansible-playbook -v site.yml
}

# main
setup
run
cleanup
