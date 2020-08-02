#!/bin/sh -l

# Construct the exclude commands
for excludedPath in $INPUT_EXCLUDE
do
  EXCLUDE="$EXCLUDE --exclude $excludedPath"
done

lftp open $INPUT_FTP_HOST -p $INPUT_FTP_PORT -u $INPUT_FTP_USERNAME,$INPUT_FTP_PASSWORD -e "$([ "$INPUT_DISABLE_SSL_CERTIFICATE_VERIFICATION" == true ] && echo "set ssl:verify-certificate false;") mirror --verbose --reverse $([ "$INPUT_DELETE" == true ] && echo "--delete-first") $EXCLUDE $INPUT_LOCAL_SOURCE_DIR $INPUT_DIST_TARGET_DIR; exit"