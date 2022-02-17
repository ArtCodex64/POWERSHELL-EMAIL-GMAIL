$mq = hostname

$usr = whoami

$BODY = "Maquina: " + $mq + " Usuario: " + $usr

$FROM = "correo-envia@dominio.com"

$TO = "correo-destinatario@dominio.com"

$Subject = "Mensaje de prueba"

$SMTPServer = "smtp.gmail.com"

$SMTPPort = 587

$credential = Get-Credential

Send-MailMessage -SmtpServer $SMTPServer -Port $SMTPPort -UseSsl -From $FROM -To $TO -Subject $Subject -Body $BODY -Credential $credential