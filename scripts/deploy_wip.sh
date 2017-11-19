#!/bin/bash

ssh ea0@147.83.7.157 "cd /home/ea0/PROJECTS;rm -rf mean-template-wip;git clone https://github.com/EA2017G2/mean-template.git mean-template-wip;cd mean-template-wip;git checkout $1"