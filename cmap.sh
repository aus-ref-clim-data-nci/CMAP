#!/bin/bash
#
# Copyright 2021 ARC Centre of Excellence for Climate Extremes 
#
# author: Paola Petrelli <paola.petrelli@utas.edu.au>
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# This script is used to download, checksum and update the CMAP dataset on
# the NCI server
# only the monthly files are updated semi-regularly
# long term monthly (ltm) goes from 1981 to 2010
# pentad: currently to 2016 so next 5-yrs will be possibly available soon
#
# The dataset is stored in /g/data/ia39/aus-ref-clim-data-nci/cmap/data/<subset>/<files>
# where <subset> can be enh (enhanced) or std (standard)
#
# To run the script ./cmap_download.sh <filename> <subset>
# record of updated files is kept in /g/data/ia39/aus-ref-clim-data-nci/cmap/data/updates.txt
#
# Last change:
# 2021-12-22
# 2022-04-07 - Moved directory to /g/data/ia39/aus-ref-clim-data-nci/cmap/
# 2022-04-12 - remove replica folder and introduce $AUSREFDIR
#


fname=$1
# subset can be std or enh
subset=$2
today=$(date "+%Y-%m-%d")
root_dir=${AUSREFDIR:-/g/data/ia39/aus-ref-clim-data-nci}
data_dir=${root_dir}/cmap/data
code_dir=${root_dir}/cmap/code
# download the file the calculate checksum for both new and old file
# if they differ update collection and log file
# old file is then temporarily moved to the previous_version folder
# testing  -N flag, so file shouldn't be downloaded unless is newer
# so if it works we'll need to adjust other actions
wget -N https://downloads.psl.noaa.gov/Datasets/cmap/${subset}/${fname}
new_md5=$(md5sum ${fname} | awk -F' ' '{print $1}')
old_md5=$(md5sum ${data_dir}/${subset}/${fname} | awk -F' ' '{print $1}')
if [ "new_md5" = "old_md5" ]; then
    rm $fname
else
    mv ${data_dir}/${subset}/${fname} ${data_dir}/${subset}/previous_version/. 
    mv $fname ${data_dir}/${subset}/. 
    mod_date=$(date -r  ${data_dir}/${subset}/${fname} "+%Y-%m-%d")
    echo "${subset}/${fname}: modified on ${mod_date}, updated on ${today}" >> \
	   ${code_dir}/update_log.txt 
fi
