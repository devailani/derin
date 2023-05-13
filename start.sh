sudo apt-get update
rm -rf w7x64 w7x64.img w7x64.gz ngrok ngrok.zip main.sh > /dev/null 2>&1
echo "Download windows files"
wget -O w7x64.img https://bit.ly/akuhnetw7X64
echo "Wait..."
echo "I m Working Now.."
mv w7x64 w7x64.img
wget -O main.sh https://raw.githubusercontent.com/devailani/derin/main/main.sh > /dev/null 2>&1
chmod +x main.sh
./main.sh
clear
echo "======================="
echo choose ngrok region
echo "======================="
echo "us - United States (Ohio)"
echo "eu - Europe (Frankfurt)"
echo "ap - Asia/Pacific (Singapore)"
echo "au - Australia (Sydney)"
echo "sa - South America (Sao Paulo)"
echo "jp - Japan (Tokyo)"
echo "in - India (Mumbai)"
./ngrok tcp --region ap 3388 &>/dev/null &
clear
echo Downloading files from aank.me
sudo apt-get install qemu-system-x86 -y
echo "Wait..."
echo "Starting Windows"
sudo qemu-system-x86_64 -hda w7x64.img -m 8G -smp cores=4 -net user,hostfwd=tcp::3388-:3389 -net nic -object rng-random,id=rng0,filename=/dev/urandom -device virtio-rng-pci,rng=rng0 -vga vmware -nographic &>/dev/null &
clear
echo RDP Address:
sudo curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo "===================================="
echo "Username: akuh"
echo "Password: Akuh.Net"
echo "===================================="
echo "===================================="
echo "Don't closse this Tab"
echo "Wait 1 - 3 minut for finishing bot"
echo "===================================="
printf """I Love You""";
sleep 300s
counter=1; while [ $counter -le 180000 ]; do echo $counter; ((counter++)); sleep 1s; done
