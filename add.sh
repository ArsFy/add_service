#!/bin/bash
echo "Add Service!"
read -p "Service Name (Required): " name
if [ -z "${name}" ];then
    echo "Don't enter empty!"
    exit
fi
read -p "Working Directory (Required): " wd
if [ -z "${wd}" ];then
    echo "Don't enter empty!"
    exit
fi
read -p "Exec Start (Required): " es
if [ -z "${es}" ];then
    echo "Don't enter empty!"
    exit
fi
cat > /etc/systemd/system/$name.service <<EOF
[Unit]
Description=$name

[Service]
Type=simple
WorkingDirectory=$wd
ExecStart=$es
Restart=always
RestartSec=5
StartLimitInterval=3
RestartPreventExitStatus=137
 
[Install]
WantedBy=multi-user.target
EOF