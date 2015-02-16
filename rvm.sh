#!/usr/bin/env bash

provision apt

has rvm || {
    echo "Installing RVM"
    gpg --keyserver hkp://keys.gnupg.net --recv-keys D39DC0E3
    command curl -sSL https://rvm.io/mpapis.asc | gpg --import -
    \curl -sSL https://get.rvm.io | bash -s stable --rails
}
