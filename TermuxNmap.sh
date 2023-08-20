#!/bin/bash
# 𝐜𝐨𝐝𝐞𝐝 𝐛𝐲 𝐜𝐨𝐝𝐞𝐫𝐟𝐞𝐧𝐫𝐢𝐫 ✓
# uyarı! bazıları çalışmayabilir.

# Renk kodları
lightgreen="\e[1;32m"
cyan="\e[0;36m"
red="\e[1;31m"
yellow="\e[1;33m"
blue="\e[0;34m"
tp="\e[0m"

clear

function hedef_bilgi_gir() {
    read -p "Hedef site veya IP adresini girin: " target
}

echo -e "${lightgreen}  _____                              _   _$tp"
echo -e "${lightgreen} |_   _|__ _ __ _ __ ___  _   ___  _| \ | |_ __ ___   __ _ _ __ $tp"
echo -e "${lightgreen}   | |/ _ \\  __|  _   _ \\| | | \\ \\/ /  \\| |  _   _ \\ / _  |  _ \\ $tp"
echo -e "${lightgreen}   | |  __/ |  | | | | | | |_| |>  <| |\\  | | | | | | (_| | |_) |$tp"
echo -e "${lightgreen}   |_|\\___|_|  |_| |_| |_|\\__,_/_/\\_\\_| \\_|_| |_| |_|\\__,_| .__/ $tp"
echo -e "${lightgreen}                                                          |_|$tp"
echo -e "${blink}${yellow}  ---------------------------------------------------------$tp"
echo -e "${blink}${lightgreen}  |$tp ${cyan}Tool Name           $white:$red TermuxNmap$tp ${blink}${lightgreen}                       |$tp"
echo -e "${blink}${lightgreen}  |$tp ${cyan}Create by           $white:$red Coderfenrir$tp ${blink}${lightgreen}                      |$tp"
echo -e "${blink}${lightgreen}  |$tp ${cyan}Github              $white:$red https://github.com/coderfenrir$tp ${blink}${lightgreen}   |$tp"
echo -e "${blink}${lightgreen}  |$tp ${cyan}Instagram           $white:$red https://instagram.com/coderfenrir$tp ${blink}${lightgreen}|$tp"
echo -e "${blink}${yellow}  ---------------------------------------------------------$tp\n"
echo ""

while true; do
    echo -e "${yellow} [1]${tp} ${cyan}Site Taraması ✔${tp}"
    echo -e "${yellow} [2]${tp} ${cyan}Hızlı Servis Tespiti ✔${tp}"
    echo -e "${yellow} [3]${tp} ${cyan}Hedef Port Aralığı Belirtme ✔${tp}"
    echo -e "${yellow} [4]${tp} ${cyan}Hedef IP Aralığı Taraması ✔${tp}"
    echo -e "${yellow} [5]${tp} ${cyan}İşletim Sistemi Sürümü Tespiti ✔${tp}"
    echo -e "${yellow} [6]${tp} ${cyan}WHOIS Sorgulama ✔${tp}"
    echo -e "${yellow} [7]${tp} ${cyan}DNS Sorgulama ✔${tp}"
    echo -e "${yellow} [8]${tp} ${cyan}Ağ Haritalama ✔${tp}"
    echo -e "${yellow} [9]${tp} ${cyan}Çıkış${tp}"

    echo -ne "\n${red}┌─[${tp}${USER}${yellow}@${blue}coderfenrir${red}]─[${green}./TermuxNmap.sh${red}] \n└──╼${yellow}$ ${tp}"
    read choice
    echo ""

    case $choice in
        1)
            hedef_bilgi_gir
            nmap -F $target
            ;;
        2)
            hedef_bilgi_gir
            nmap -sV $target
            ;;
        3)
            hedef_bilgi_gir
            read -p "Başlangıç portunu girin: " start_port
            read -p "Bitiş portunu girin: " end_port
            nmap -p $start_port-$end_port $target
            ;;
        4)
            hedef_bilgi_gir
            nmap -sn $target
            ;;
        5)
            hedef_bilgi_gir
            nmap -sS $target
            ;;
        6)
            hedef_bilgi_gir
            whois $target
            ;;
        7)
            hedef_bilgi_gir
            dig $target
            ;;                                                                                                                                       8)
            hedef_bilgi_gir
            nmap -sP $target
            ;;
        9)
            while true; do
                 read -p "Devam etmek istiyor musunuz? [Y/N]: " continue_choice
                 case $continue_choice in
                    [Yy]*)
                        clear
                        echo -e "${lightgreen}  _____                              _   _$tp"
                        echo -e "${lightgreen} |_   _|__ _ __ _ __ ___  _   ___  _| \ | |_ __ ___   __ _ _ __ $tp"
                        echo -e "${lightgreen}   | |/ _ \\  __|  _   _ \\| | | \\ \\/ /  \\| |  _   _ \\ / _  |  _ \\ $tp"
                        echo -e "${lightgreen}   | |  __/ |  | | | | | | |_| |>  <| |\\  | | | | | | (_| | |_) |$tp"
                        echo -e "${lightgreen}   |_|\\___|_|  |_| |_| |_|\\__,_/_/\\_\\_| \\_|_| |_| |_|\\__,_| .__/ $tp"
                        echo -e "${lightgreen}                                                          |_|$tp"
                        echo -e "${blink}${yellow}  ---------------------------------------------------------$tp"
                        echo -e "${blink}${lightgreen}  |$tp ${cyan}Tool Name           $white:$red TermuxNmap$tp ${blink}${lightgreen}                       |$tp"
                        echo -e "${blink}${lightgreen}  |$tp ${cyan}Create by           $white:$red Coderfenrir$tp ${blink}${lightgreen}                      |$tp"
                        echo -e "${blink}${lightgreen}  |$tp ${cyan}Github              $white:$red https://github.com/coderfenrir$tp ${blink}${lightgreen}   |$tp"
                        echo -e "${blink}${lightgreen}  |$tp ${cyan}Instagram           $white:$red https://instagram.com/coderfenrir$tp ${blink}${lightgreen}|$tp"
                        echo -e "${blink}${yellow}  ---------------------------------------------------------$tp\n"
                        echo ""
                        break
                        ;;
                    [Nn]*)
                        echo -e "\e[1;32mÇıkıyor...\e[0m"
                        exit 0
                        ;;
                    *)
                        echo -e "\e[1;31mGeçersiz cevap! Lütfen Y veya N girin.\e[0m"
                        ;;
                esac
            done
            ;;
        *)
            echo -e "\e[1;31mGeçersiz seçenek!\e[0m"
            ;;
    esac
done
