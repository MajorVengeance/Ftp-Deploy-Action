#!/bin/sh -l

# Construct the exclude commands
for excludedPath in $INPUT_EXCLUDE
do
  EXCLUDE="$EXCLUDE --exclude $excludedPath"
done

lftp -u $INPUT_FTP_USERNAME,$INPUT_FTP_PASSWORD -p $INPUT_FTP_PORT -e "$([ "$INPUT_DISABLE_SSL_CERTIFICATE_VERIFICATION" == true ] && echo "set ssl:verify-certificate false;") mirror --verbose --reverse $([ "$INPUT_DELETE" == true ] && echo "--delete-first") $INPUT_LOCAL_SOURCE_DIR $INPUT_DIST_TARGET_DIR; exit" $INPUT_FTP_HOST