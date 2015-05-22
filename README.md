# postfix-sendmailstat
dirty hack for count send mail per domain or user in postfix (exec /usr/local/bin/insertstat.sh and write data to mysql when send mail)  
and log sasl_username in log whe send mail (we allow change from in mails)  
Example  
May 22 09:39:45 mail1 postfix/smtpd[28356]: proxy-accept: END-OF-MESSAGE: 250 2.0.0 from MTA([127.0.0.1]:10025): 250 2.0.0 Ok: queued as E152B24A6286; from=<user@domain> to=<othermail@mail.ru> proto=ESMTP helo=<sbit5> realsend_user=<realuser@realdomain.ru>
