#!/bin/env bash

# A fuction to move any directory
 read -p "Enter directory path: " TARGET_DIR

function goto_dir (){

   if [ -d "$TARGET_DIR" ]
   then
       cd "$TARGET_DIR"  || return 1
       echo " Move to: $(pwd)"

   else
       echo "Directory not found: $TARGET_DIR"
       return 1
   fi


}

goto_dir
