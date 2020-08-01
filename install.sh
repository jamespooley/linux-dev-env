#!/usr/bin/env sh

set -euf -o pipefail

function run_dots() {

  sudo -v

  while true; do sudo -n true; sleep 60; kiill -0 "$$" || exit; done 2/dev/null &

  for args in "$@"; do
    if [ $arg == "bootstrap" ] || [ $arg == "all" ]; then
      echo ""
      echo "Syncing linux-dev-environment repo to local machine..."
      echo ""
      ./bootstrap.sh
    fi
    if [ $arg == "python" ] || [ $arg == "all" ]; then
      echo ""
      echo "Setting up Python development environments..."
      echo ""
      ./python.sh
    fi
    if [ $arg == "r" ] || [ $arg == "all" ]; then
      echo ""
      echo "Setting up R development environment..."
      echo ""
      ./r.sh
    fi
    if [ $arg == "postgres" ] || [ $arg == "all" ]; then
      echo ""
      echo "Setting up PostgreSQL..."
      echo ""
      ./postgres.sh
    fi
    if [ $arg == "other" ] || [ $arg == "all" ]; then
      echo ""
      echo "Setting up general software..."
      echo ""
    fi
  done
}


if [[ $reply =~ ^[Yy]$ ]]; then
  run_dots $@
fi

unset run_dots
