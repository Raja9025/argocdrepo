#!/bin/bash

sed "s/tagVersion/$1/g" deployjenkins.yaml > deployjenkins-app.yaml 
