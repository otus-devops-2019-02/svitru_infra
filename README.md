# README HW №5
### **Созданы два инстанса:**
**bastion**
IP 35.210.170.206, 10.132.0.2

**someinternalhost**
IP 10.132.0.3

На bastion поднят VPN-сервер pritunl.

### **Подключение по SSH**

Запуск ssh-agent
```
eval $(ssh-agent)
```
Добавление ssh-ключ в агента
```
ssh-add ~/.ssh/appuser
```
Подключения к someinternalhost в одну команду:
```
ssh -i ~/.ssh/appuser -A appuser@35.210.170.206 -t ssh 10.132.0.3
```

bastion_IP = 35.210.170.206
someinternalhost_IP = 10.156.0.3
