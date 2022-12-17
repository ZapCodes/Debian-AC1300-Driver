## Debian-AC1300-Driver

* Simple AC1300 driver installer



## Usage


* You can simplify it and run it in sh mode or manually insert these codes given below

    ```
    git clone https://github.com/ZapCodes/rtl88x2bu.git
    ```
    ```
    cd rtl88x2bu
    ```
    ```
    VER=$(sed -n 's/\PACKAGE_VERSION="\(.*\)"/\1/p' dkms.conf)
    ```
    ```
    sudo rsync -rvhP ./ /usr/src/rtl88x2bu-${VER}
    ```
    ```
    sudo dkms add -m rtl88x2bu -v ${VER}
    ```
    
    ```
    sudo dkms build -m rtl88x2bu -v ${VER}
    ```
    
    ```
    sudo dkms install -m rtl88x2bu -v ${VER}
    ```
    
    ```
    sudo modprobe 88x2bu
    
