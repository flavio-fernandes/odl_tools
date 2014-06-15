#!/bin/bash

set -x

/opt/devstack/unstack.sh
/opt/devstack/reallyunstack.sh
/opt/ostest.sh
