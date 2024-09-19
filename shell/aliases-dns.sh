function xproxy() {

        if [ $1 = "help" ]; then
                echo "Usage: xproxy [option]"
                echo "Options:"
                echo "s     Shecan DNS"
                echo "g     Google DNS"
                echo "o     OpenDNS"
                echo "q     Quad9 DNS"
                echo "cf    Cloudflare DNS"
                echo "com   Comodo DNS"
                echo "cb    CleanBrowsing DNS"
                echo "alt   Alternate DNS"
                echo "local Local DNS"
                echo "help  Show this help"
        elif [ $1 = "d" ]; then
                echo "nameserver 127.0.0.53" > ~/.shecan.resolv.conf
                echo "options edns0 trust-ad" >> ~/.shecan.resolv.conf
                echo "search ." >> ~/.shecan.resolv.conf
                sudo mv ~/.shecan.resolv.conf /etc/resolv.conf
        elif [ $1 = "403" ]; then
                echo "nameserver 10.202.10.102" > ~/.shecan.resolv.conf
                echo "nameserver 10.202.10.202" >> ~/.shecan.resolv.conf
                sudo mv ~/.shecan.resolv.conf /etc/resolv.conf
                echo "Proxy 403 DNS Applied"
        elif [ $1 = "s" ]; then
                echo "nameserver 178.22.122.100" > ~/.shecan.resolv.conf
                echo "nameserver 185.51.200.2" >> ~/.shecan.resolv.conf
                sudo mv ~/.shecan.resolv.conf /etc/resolv.conf
                echo "Proxy Shecan DNS Applied"
         elif [ $1 = "e" ]; then
                echo "nameserver 78.157.42.100" > ~/.resolv.conf
                echo "nameserver 78.157.42.101" >> ~/.resolv.conf
                sudo mv ~/.resolv.conf /etc/resolv.conf
                echo "Proxy Electro TM DNS Applied"
        elif [ $1 = "g" ]; then
                echo "nameserver 8.8.8.8" > ~/.shecan.resolv.conf
                echo "nameserver 8.8.4.4" >> ~/.shecan.resolv.conf
                sudo mv ~/.shecan.resolv.conf /etc/resolv.conf
                echo "Proxy Google DNS Applied"
        elif [ $1 = "o" ]; then
                echo "nameserver 208.67.220.220" > ~/.shecan.resolv.conf
                echo "nameserver 208.67.222.222" >> ~/.shecan.resolv.conf
                sudo mv ~/.shecan.resolv.conf /etc/resolv.conf
                echo "Proxy OpenDNS Applied"
        elif [ $1 = "q" ]; then
                echo "nameserver 9.9.9.9" > ~/.local.resolv.conf
                echo "nameserver 149.112.112.112" >> ~/.local.resolv.conf
                sudo mv ~/.local.resolv.conf /etc/resolv.conf
                echo "Proxy Quad9 DNS Applied"
        elif [ $1 = "cf" ]; then
                echo "nameserver 1.1.1.1" > ~/.local.resolv.conf
                echo "nameserver 1.0.0.1" >> ~/.local.resolv.conf
                sudo mv ~/.local.resolv.conf /etc/resolv.conf
                echo "Proxy Cloudflare DNS Applied"
        elif [ $1 = "com" ]; then
                echo "nameserver 8.26.56.26" > ~/.local.resolv.conf
                echo "nameserver 8.20.247.20" >> ~/.local.resolv.conf
                sudo mv ~/.local.resolv.conf /etc/resolv.conf
                echo "Proxy Comodo DNS Applied"
        elif [ $1 = "cb" ]; then
                echo "nameserver 185.225.168.168" > ~/.local.resolv.conf
                echo "nameserver 185.228.169.168" >> ~/.local.resolv.conf
                sudo mv ~/.local.resolv.conf /etc/resolv.conf
                echo "Proxy CleanBrowsing DNS Applied"
        elif [ $1 = "alt" ]; then
                echo "nameserver 76.76.19.19" > ~/.local.resolv.conf
                echo "nameserver 76.223.122.150" >> ~/.local.resolv.conf
                sudo mv ~/.local.resolv.conf /etc/resolv.conf
                echo "Proxy Alternate DNS Applied"
        elif [ $1 = "adg" ]; then
                echo "nameserver 176.103.130.130" > ~/.local.resolv.conf
                echo "nameserver 176.103.130.131" >> ~/.local.resolv.conf
                sudo mv ~/.local.resolv.conf /etc/resolv.conf
                echo "Proxy AdGuard DNS Applied"
        elif [ $1 = "vs" ]; then
                echo "nameserver 64.6.64.6" > ~/.local.resolv.conf
                echo "nameserver 64.6.65.6" >> ~/.local.resolv.conf
                sudo mv ~/.local.resolv.conf /etc/resolv.conf
                echo "Proxy Verisign DNS Applied"
        elif [ $1 = "onic" ]; then
                echo "nameserver 216.87.84.211" > ~/.local.resolv.conf
                echo "nameserver 23.90.4.6" >> ~/.local.resolv.conf
                sudo mv ~/.local.resolv.conf /etc/resolv.conf
                echo "Proxy Onic DNS Applied"
        elif [ $1 = "yanb" ]; then
                echo "nameserver 77.88.8.8" > ~/.local.resolv.conf
                echo "nameserver 77.88.8.1" >> ~/.local.resolv.conf
                sudo mv ~/.local.resolv.conf /etc/resolv.conf
                echo "Proxy Yandex Base DNS Applied"
        elif [ $1 = "yans" ]; then
                echo "nameserver 77.88.8.88" > ~/.local.resolv.conf
                echo "nameserver 77.88.8.2" >> ~/.local.resolv.conf
                sudo mv ~/.local.resolv.conf /etc/resolv.conf
                echo "Proxy Yandex Safe DNS Applied"
        elif [ $1 = "yanf" ]; then
                echo "nameserver 77.88.8.7" > ~/.local.resolv.conf
                echo "nameserver 77.88.8.3" >> ~/.local.resolv.conf
                sudo mv ~/.local.resolv.conf /etc/resolv.conf
                echo "Proxy Yandex Family DNS Applied"
        elif [ $1 = "watch" ]; then
                echo "nameserver 84.200.69.80" > ~/.local.resolv.conf
                echo "nameserver 84.200.70.40" >> ~/.local.resolv.conf
                sudo mv ~/.local.resolv.conf /etc/resolv.conf
                echo "Proxy DNS.Watch DNS Applied"
        elif [ $1 = "l3" ]; then
                echo "nameserver 209.244.0.3" > ~/.local.resolv.conf
                echo "nameserver 209.244.0.4" >> ~/.local.resolv.conf
                sudo mv ~/.local.resolv.conf /etc/resolv.conf
                echo "Proxy Level3 DNS Applied"
        elif [ $1 = "oracle" ]; then
                echo "nameserver 216.146.35.35" > ~/.local.resolv.conf
                echo "nameserver 216.146.36.36"
                sudo mv ~/.local.resolv.conf /etc/resolv.conf
                echo "Proxy Oracle DNS Applied"
        elif [ $1 = "ucns" ]; then
                echo "nameserver 91.239.100.100" > ~/.local.resolv.conf
                echo "nameserver 89.233.43.71" >> ~/.local.resolv.conf
                sudo mv ~/.local.resolv.conf /etc/resolv.conf
                echo "Proxy UncensoredDNS Applied"
        elif [ $1 = "neu" ]; then
                echo "nameserver 156.154.70.5" > ~/.local.resolv.conf
                echo "nameserver 156.157.71.5" >> ~/.local.resolv.conf
                sudo mv ~/.local.resolv.conf /etc/resolv.conf
                echo "Proxy Neustar Applied"
        elif [ $1 = "gt" ]; then
                echo "nameserver 81.218.119.11" > ~/.local.resolv.conf
                echo "nameserver 209.88.198.133" >> ~/.local.resolv.conf
                sudo mv ~/.local.resolv.conf /etc/resolv.conf
                echo "Proxy GreenTeamDNS Applied"
        elif [ $1 = "safe" ]; then
                echo "nameserver 195.46.39.39" > ~/.local.resolv.conf
                echo "nameserver 195.46.39.40" >> ~/.local.resolv.conf
                sudo mv ~/.local.resolv.conf /etc/resolv.conf
                echo "Proxy SafeDNS Applied"
        elif [ $1 = "he" ]; then
                echo "nameserver 74.82.42.42" > ~/.local.resolv.conf
                echo "nameserver 2001:470:20::2" >> ~/.local.resolv.conf
                sudo mv ~/.local.resolv.conf /etc/resolv.conf
                echo "Proxy Hurricane Electric Applied"
        fi

}
