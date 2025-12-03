#!/bin/bash
echo "user running the script"

def a=3
def b=3
def c=a+b
echo "${c}"

pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'main', url: 'https://github.com/12Madan/Jenkins.git'
            }
        }

        stage('Pull Latest Code') {
            steps {
                sh "git pull origin main"
            }
        }
