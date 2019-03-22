# svitru_infra
svitru Infra repository

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

