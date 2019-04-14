#!/bin/bash
nohup java -jar currency-service.jar &
MyPID=$!                        				                  
echo $MyPID