#!/bin/bash
echo "user running the script"

def a=3
def b=3
def c=a+b
echo "${c}"

pipeline {
    agent any

    stages {
    stage ('Build') {
    steps{
    echo "pulling latest code"
    git pull origin main
    }
    }
}
