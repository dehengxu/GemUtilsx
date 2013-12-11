#!/bin/bash
rake build
sudo rvm all do gem install --local pkg/utilsx-0.0.1.gem