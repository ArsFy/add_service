# Add Linux Service

```
curl -O https://raw.githubusercontent.com/ArsFy/add_service/1.0/add.sh && bash add.sh
```

```
wget https://raw.githubusercontent.com/ArsFy/add_service/1.0/add.sh && bash add.sh
```

## Example
```bash
root@server:~/path# curl -O https://raw.githubusercontent.com/ArsFy/add_service/1.0/add.sh && bash add.sh
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100   600  100   600    0     0  10000      0 --:--:-- --:--:-- --:--:-- 10000
Add Service!
Service Name (Required): name
Working Directory (Required): /root/path
Exec Start (Required): node /root/path/main.js
```
