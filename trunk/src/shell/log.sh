#! /bin/bash
# Licensed to the Apache Software Foundation (ASF) under one or more
# contributor license agreements.  See the NOTICE file distributed with
# this work for additional information regarding copyright ownership.
# The ASF licenses this file to You under the Apache License, Version 2.0
# (the "License"); you may not use this file except in compliance with
# the License.  You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


SHELLNAME=$1
DATE=`date +%y%m%d`
TIME=`date +%Y/%m/%d-%H:%M:%S`
export LOG_SH_TARGET=/var/log/crawlzilla/shell-logs/$SHELLNAME-$DATE.log

##########  echo function  ##########
function debug_info () {
  if [ $? -eq 0 ]; then
    echo -e " [D-INFO] - $1 " >> $LOG_SH_TARGET
  fi
}


function show_info () {
  if [ $? -eq 0 ]; then
    echo -e "\033[1;32;40m $1 \033[0m"
    echo "[INFO] - $1" >> $LOG_SH_TARGET
  fi
}
#########end echo function ##########


if [ ! -e "/var/log/crawlzilla/shell-logs/" ]; then
    mkdir -p "/var/log/crawlzilla/shell-logs/";
fi
# file descriptor 4 prints to STDOUT and to TARGET
#exec 4> >(while read a; do echo $a; echo $a >> $LOG_SH_TARGET; done)
# now STDOUT is redirected
#exec 1>&4
#exec 2>&4

echo "" >> $LOG_SH_TARGET;
echo "*****************************************************" 	>> $LOG_SH_TARGET;
echo "* $TIME => $SHELLNAME begin   *" 				>> $LOG_SH_TARGET;
echo "*****************************************************" 	>> $LOG_SH_TARGET;