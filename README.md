# README HW №6
### **Работа с gcloud:**
На локальную ОС произведена установка gloud и привязан аккаунт\n
С помощью gcloud установлен инстанс, созданы скрипты для установки ruby, mongo и деплоя puma

### **Установка инстанса **

Используя gcloud с параметром startup-script
```
gcloud compute instances create reddit-app  --boot-disk-size=10GB   --image-family ubuntu-1604-lts   --image-project=ubuntu-os-cloud   --machine-type=g1-small   --tags puma-server   --restart-on-failure --metadata-from-file startup-script=startup_script.sh
```

bastion_IP = 35.210.170.206
someinternalhost_IP = 10.132.0.3

testapp_IP = 35.195.181.241
testapp_port = 9292

