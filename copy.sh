#!/usr/bin/env bash


function copy_license() {
    dirs=`find ./Carthage/Checkouts -type d -maxdepth 1`

    for dir in $dirs;
    do
        cd ${dir}/
        
            pwd
            str=`echo ${dir} | awk -F "/" '{ print $NF }'`
            cp LICENSE ../../../Supporting\ Files/Licenses/${str}.license
        
        cd ..
        cd ..
        cd ..
    done
}


if [ -e ./Carthage/Checkouts ]; then
    copy_license
else
    echo "Before run this script, you have to checkout dependencies."
fi
