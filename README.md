# Zabbix_connect
## Настройка на стороне Zabbix
В Zabbix используется Type - URL. Все настройки производились на Zabbix 7.0.0.

 1. Добавить новые URL :
 Administration -> General  -> Other

![image](https://github.com/user-attachments/assets/679c2814-426a-4a6a-a603-011656e97115)

 2. Добавить новый script
Alerts -> Scripts -> Create script

![image](https://github.com/user-attachments/assets/b9b57c54-b26d-4366-b7ec-70d04da7f54b)

Для удобства используются разные URL:
RDP - `rdp://{HOST.NAME}`
SSH - `ssh://{HOST.IP}`
Почему? Всё зависит от того как настроены хосты у вас на Zabbix.
Пример:

![image](https://github.com/user-attachments/assets/4eb49e0e-c04d-488b-9201-bd915d7a9368)

`ssh://{HOST.IP}` подключит нас в никуда :)




## RDP
#### Запустить `RDP.reg`

## SSH
Я использую [WinSCP](https://winscp.net/eng/download.php), он добавляет hanlder SSH при установке.
Инструкция для [Putty](https://putty.org.ru/features/ssh-handler).
## PSSession

 1. Поместить `pssession-launcher.ps1` в `C:\Scripts` 
 Директорию можно заменить в `pssession.reg` 
  

> @="powershell.exe -NoExit -ExecutionPolicy Bypass -File \"C:\\Scripts\\pssession-launcher.ps1\" \"%1\""
2. Запустить `pssession.reg`

