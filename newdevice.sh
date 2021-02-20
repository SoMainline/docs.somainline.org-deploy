# Author: Konrad Dybcio
# $1 - Platform name
# $2 - Vendor name
# $3 - Device name
# $4 - if(1) debugging

DEBUG=1

if [ -z "$4" ]; then
	DEBUG=0
fi

if [ -z "$1" ] || [ -z "$2" ] || [ -z "$3" ]; then
	echo "Usage: ./newplatform.sh platformname vendorname devicename [1 for debug]" && exit 1
fi

if ! [ -d "source/platform/$1" ]; then
	echo "This platform is not supported, creating a directory."
	mkdir source/platform/$1 && if [ $DEBUG == 1 ]; then echo "Directory created successfully."; fi
	cp template/platform/index.rst source/platform/$1 && if [ $DEBUG == 1 ]; then echo "Template file copied."; fi
	sed -i s/PLATFORMNAME/${1^^}/g source/platform/$1/index.rst
	sed -i s/:orphan://g source/platform/$1/index.rst
	echo "--------------------------------------------------------------------------------------------------------------------------"
	echo "This script is low-budget (exactly \$0), so you have to add 'platform/$1/index.rst' to source/index.rst by hand (SORT IT!)"
	echo "--------------------------------------------------------------------------------------------------------------------------"
fi

if ! [ -d "source/platform/$1/$2" ]; then
	echo "There are no devices made by this vendor with this SoC that are supported yet, creating a directory."
	mkdir source/platform/$1/$2 && if [ $DEBUG == 1 ]; then echo "Directory created successfully."; fi
	cp template/platform/vendor/index.rst source/platform/$1/$2/ && if [ $DEBUG == 1 ]; then echo "Template file copied."; fi
	sed -i s/PLATFORMNAME/${1^^}/g source/platform/$1/$2/index.rst
	sed -i s/VENDORNAME/${2^}/g source/platform/$1/$2/index.rst
	sed -i s/DEVICENAME/${3}/g source/platform/$1/$2/index.rst
	echo "   $2/index.rst" >> source/platform/$1/$2/index.rst
	sed -i s/:orphan://g source/platform/$1/$2/index.rst
else
	echo "--------------------------------------------------------------------------------------------------------------------------"
	echo "This script is low-budget (exactly \$0), so you have to add '$3/index.rst' to source/platform/$1/$2/index.rst by hand (SORT IT!)"
	echo "--------------------------------------------------------------------------------------------------------------------------"
fi

if ! [ -d "source/platform/$1/$2/$3" ]; then
	echo "Adding support for $2-$3."
	mkdir source/platform/$1/$2/$3 && if [ $DEBUG == 1 ]; then echo "Directory created successfully."; fi
	cp template/platform/vendor/device/index.rst source/platform/$1/$2/$3 && if [ $DEBUG == 1 ]; then echo "Template file copied."; fi
	sed -i s/VENDORNAME/${2^}/g source/platform/$1/$2/$3/index.rst
	sed -i s/DEVICENAME/${3^}/g source/platform/$1/$2/$3/index.rst
	sed -i s/:orphan://g source/platform/$1/$2/$3/index.rst
	# We're done boys!
	echo "$2-$3 added successfully! Now go include some info :)"
	exit 1
fi

echo "$2-$3 is already supported!"
