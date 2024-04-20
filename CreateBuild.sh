#!/bin/sh
# Build Download_Install_macOS
# By chris1111
#
PARENTDIR=$(dirname "$0")
cd "$PARENTDIR"
SHC_VERSIONS="Source_Script/SHC-3.8.9b"

if [[ -f "$SHC_VERSIONS" ]]; then
   echo "$SHC_VERSIONS Build"
   rm -rf ./build
   mv ./Source_Script/Download_Install_macOS.txt ./Source_Script/Download_Install_macOS.sh
   Sleep 2
   chmod 755 ./Source_Script/Download_Install_macOS.sh
   chmod 755 ./Source_Script/SHC-3.8.9b
   ./Source_Script/SHC-3.8.9b -v -r -T -f ./Source_Script/Download_Install_macOS.sh
   Sleep 2
   rm -rf ./Download_Install_macOS/Download_Install_macOS.c
   Sleep 2
   cp -rp ./Source_Script/Download_Install_macOS.sh.x.c ./Download_Install_macOS/Download_Install_macOS.c
   rm -rf ./Source_Script/Download_Install_macOS.sh.x
   rm -rf ./Source_Script/Download_Install_macOS.sh.x.c
   mv ./Source_Script/Download_Install_macOS.sh ./Source_Script/Download_Install_macOS.txt
fi