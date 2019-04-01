# README HW №7
### **Работа с Packer:**
На локальную ОС произведена установка packer
С помощью Packer создан image, содержащий в себе установленные ruby, mongo

Запуск создания image используя файл переменных:
```
packer build -var-file variables.json ubuntu16.json
```
### **Установка инстанса**

Используя gcloud через запуск скрипта
```
./config-scripts/create-reddit-vm.sh
```
