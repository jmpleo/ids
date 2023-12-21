INSERT INTO public.acces_log_signature(
	pattern, description, tag)
	VALUES 
	('.*SELECT.*', 'Поиск оператора SELECT, который может указывать на попытку извлечения данных', 'SQL Injection,Web,Web,logs'),
	('.*DELETE.*', 'Поиск оператора DELETE, используемого для удаления данных', 'SQL Injection,Web,logs'),
	('.*UPDATE.*', 'Поиск оператора UPDATE, используемого для обновления данных', 'SQL Injection,Web,logs'),
	('.*INSERT.*', 'Поиск оператора INSERT, который может быть использован для вставки данных', 'SQL Injection,Web,logs'),
	('.*DROP.*', 'Поиск оператора DROP, который может быть использован для удаления таблиц или баз данных', 'SQL Injection,Web,logs'),
	('.*<script>.*', 'Поиск тега <script>, который может использоваться для внедрения вредоносного JavaScript кода', 'XSS,Web,logs'),
	('.*onerror.*', 'Поиск строки onerror=, которая может указывать на попытку выполнения кода при возникновении ошибки', 'XSS,Web,logs'),
	('.*javascript:.*', 'Поиск строки javascript:, которая может указывать на использование JavaScript', 'XSS,Web,logs'),
	('.*document.cookie.*', 'Поиск строки document.cookie, которая может использоваться для доступа к куки файлам', 'XSS,Web,logs'),
	('.*alert\(.*', 'Поиск функции alert(), которая может использоваться для отображения всплывающих окон', 'XSS,Web,logs'),
	('.*exec.*', 'Поиск попыток выполнения системных команд через exec', 'Command Injection,Web,logs'),
	('.*whoami.*', 'Поиск команды для просмотра содержимого директории', 'Command Injection,Web,logs'),
	('.*cmd.*', 'Поиск попыток выполнения системных команд через cmd', 'Command Injection,Web,logs'),
	('.*nc\s+-e\s+\/bin\/sh.*', 'Поиск использования утилиты nc (netcat) для установки обратного шелла', 'Reverse Shell,Web,logs'),
	('.*bash\s+-i\s+>&\s+\/dev\/tcp\/.*' , 'Поиск использования bash для установки обратного шелла', 'Reverse Shell,Web,logs'),
	('.*python\s+-c\s+\''import\s+socket,subprocess,os.*', 'Попытка использования Python для установки обратного шелла', 'Reverse Shell,Web,logs'),
	('.*perl\s+-MIO\s+-e.*', 'Попытка использования Perl для установки обратного шелла', 'Reverse Shell,Web,logs'),
	('.*rm\s+\/tmp\/f;mkfifo\s+\/tmp\/f;cat\s+\/tmp\/f\|\/bin\/sh\s+-i\s+2>&1\|nc\s+.*', 'Попытка установки обратного шелла с использованием fifo и netcat', 'Reverse Shell');
    
INSERT INTO public.fuzzers_signature(
	pattern, description, tag)
	VALUES 
    ('.*feroxbuster.*', 'Фаззер feroxbuster', 'Fuzzer,Web,logs')
	('.*w3af.*', 'Фаззер w3af', 'Fuzzer,Web,logs'),
    ('.*Fuzz Faster U Fool.*', 'Фаззер FFUF', 'Fuzzer,Web,logs'),
    ('.*Wfuzz.*', 'Фаззер WFFUF', 'Fuzzer,Web,logs'),
    ('.*DirBuster.*', 'Фаззер DirBuster', 'Fuzzer,Web,logs'),
    ('.*gobuster.*', 'Фаззер GoBuster', 'Fuzzer,Web,logs'),
    ('.*Dirsearch.*', 'Фаззер Dirsearch', 'Fuzzer,Web,logs'),
    ('.*Burp Suite.*', 'Инструмент для тестирования на уязвимости Burp Suite', 'Fuzzer,Web,logs'),
    ('.*sqlmap.*', 'Фаззер sqlmap для автоматизации тестирования на SQL инъекции', 'Fuzzer,Web,logs'),
    ('.*OWASP ZAP.*', 'OWASP Zed Attack Proxy - инструмент для тестирования безопасности', 'Fuzzer,Web,logs'),
    ('.*Nikto.*', 'Nikto - инструмент для сканирования веб-серверов', 'Fuzzer,Web,logs'),
    ('.*Nmap.*', 'Инструмент для тестирования на уязвимости Nmap', 'Fuzzer,Web,logs'),
    ('.*WhatWeb.*', 'Инструмент для тестирования на уязвимости WhatWeb', 'Fuzzer,Web,logs'),
    ('.*Netsparker.*', 'Netsparker - инструмент для автоматизированного тестирования на уязвимости', 'Fuzzer,Web,logs');
	
INSERT INTO public.files_signature(
	filename, description, tag)
	VALUES 
	('suspicious.sh', 'Скрипт с подозрительным поведением', 'Suspicious,files'),
    ('malware.bin', 'Исполняемый файл вредоносной программы', 'Malware,files'),
    ('phishing.html', 'HTML-страница для кражи личной информации', 'Phishing,files'),
    ('trojan.so', 'Библиотека, содержащая троянскую программу', 'Trojan,files'),
    ('backdoor.py', 'Скрипт, создающий заднюю дверь в систему', 'Backdoor,files'),
    ('ransomware.locked', 'Файл, зашифрованный программой-вымогателем', 'Ransomware,files'),
    ('keylogger.log', 'Логи клавиатурного ввода от потенциального шпиона', 'Keylogger,files'),
    ('exploit.tar.gz', 'Архив с файлами, использующими уязвимость системы', 'Exploit,files'),
    ('rootkit.conf', 'Конфигурационный файл скрытой программы', 'Rootkit,files'),
    ('worm.exe', 'Исполняемый файл, распространяющийся по сети', 'Worm,files'),
    ('sniffing.pcap', 'Захваченный сетевой трафик для анализа', 'Sniffing,files'),
    ('suspicious.txt', 'Текстовый файл с подозрительным содержимым', 'Suspicious,files'),
    ('infected.jar', 'Файл Java, содержащий вредоносный код', 'Malware,files'),
    ('phishing.zip', 'Архив с файлами для кражи личных данных', 'Phishing,files'),
    ('exploit.c', 'Исходный код программы, использующей уязвимость', 'Exploit,files'),
    ('trojanhorse.rpm', 'Пакет, содержащий программу-троянца', 'Trojan,files'),
    ('malware.dll', 'Библиотека вредоносной программы', 'Malware,files'),
    ('spyware.txt', 'Текстовый файл, содержащий шпионскую информацию', 'Spyware,files'),
    ('adware.js', 'JavaScript-файл, показывающий рекламу', 'Adware,files'),
    ('phishing.exe', 'Исполняемый файл для перехвата личных данных', 'Phishing');
	('revshell.c', 'Исходный код для создания обратного shell на языке C', 'Reverse Shell,files'),
    ('revshell.py', 'Скрипт на Python для установки обратного shell', 'Reverse Shell,files'),
    ('revshell.php', 'PHP-скрипт, реализующий обратный shell', 'Reverse Shell,files'),
    ('revshell.js', 'JavaScript-файл для создания обратного shell', 'Reverse Shell,files'),
    ('revshell.sh', 'Shell-скрипт, создающий обратное соединение', 'Reverse Shell,files'),
	('poc_exploit.py', 'Python-скрипт с POC эксплойтом', 'POC,files'),
    ('poc_vuln.html', 'HTML-файл, иллюстрирующий уязвимость', 'POC')
    ('poc_exploit.c', 'Исходный код на C с демонстрацией эксплойта', 'POC,files'),
    ('poc_script.js', 'JavaScript-скрипт, демонстрирующий уязвимость', 'POC,files'),
    ('poc_payload.php', 'PHP-скрипт с примером payload для уязвимости', 'POC,files'),
    ('poc_exploit.ps1', 'PowerShell-скрипт с POC эксплойтом', 'POC,files'),
    ('poc_exploit.rb', 'Ruby-скрипт с эксплойтом уязвимости', 'POC,files'),
    ('poc_demo.jar', 'Демонстрационный файл Java для показа уязвимости', 'POC,files'),
    ('poc_exploit.sh', 'Shell-скрипт с демонстрацией эксплойта', 'POC,files'),
    ('poc_example.aspx', 'ASP.NET файл, демонстрирующий уязвимость', 'POC,files'),
	('linpeas.sh', 'Shell-скрипт для сканирования системы на уязвимости и привилегированные доступы', 'Privilege Escalation,files'),
    ('linux-privilege-escalation-checker.py', 'Python-скрипт для проверки привилегий на системе', 'Privilege Escalation,files'),
    ('linenum.ps1', 'PowerShell-скрипт для анализа привилегий в системе Linux', 'Privilege Escalation,files'),
    ('linux-privilege-escalation-check.c', 'Исходный код на языке C для поиска способов повышения привилегий', 'Privilege Escalation');