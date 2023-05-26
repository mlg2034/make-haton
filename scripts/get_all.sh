#!/bin/sh
flutter pub get

CWD=`pwd`
PACKAGES_RELATIVE_PATH="packages"
PACKAGES_DIR="$CWD/$PACKAGES_RELATIVE_PATH"

for d in $(ls $PACKAGES_DIR)
do
    PACKAGE_DIR="$PACKAGES_DIR/$d"
    echo "Entering $PACKAGES_RELATIVE_PATH/$d"
    cd $PACKAGE_DIR && flutter pub get
done