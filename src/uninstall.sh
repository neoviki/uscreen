#! /bin/bash
: '
   Linux command line utility uninstaller. 
    				-->   [ Author ]  Viki (a) Vignesh Natarajan 
				-->   [ Domain ]  https://vikiworks.io 
'

UTILITY_NAME="uscreen"

INSTALL_DIR="/usr/bin"

get_installation_directory(){
    echo "[ status   ] Identifying Host System"
    linux_system=`uname -srm | grep -i "linux"`
    mac_system=`uname -srm | grep -i "darwin"`

    if [ ! -z "$linux_system" ]; then
        echo "[ status ] Linux System "
        INSTALL_DIR="/usr/bin"
    fi

    if [ ! -z "$mac_system" ]; then
        echo "[ status ] Mac System"
        INSTALL_DIR="/opt/local/bin/"
    fi
}

install_util(){
    chmod +x ./$UTILITY_NAME
    #check sudo 
    cp ./$UTILITY_NAME $INSTALL_DIR
}

uninstall_util(){
    #check sudo 
    rm -rf $INSTALL_DIR/$UTILITY_NAME
}


check_installation_status(){
    if [ $1 -eq 0 ]; then
        echo "[ success ] $UTILITY_NAME uninstall successful"
    else
        echo "[ failure ] $UTILITY_NAME uninstall failed"
	echo "	-> [ case 1 ] You should have sudo or root access to uninstall this package"
        echo "	-> [ case 2 ] $UTILITY_NAME may not be installed"
    fi
}

get_installation_directory

uninstall_util
check_installation_status $?

