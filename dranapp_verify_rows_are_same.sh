mariadb -ABNe "select concat('On host ',@@hostname,': There are ',count(*),' rows on dranapp.dd_downloads.') from dranapp.dd_downloads;"
mariadb -usqluser -ppassword -h dran1.edw.ee -ABNe "select concat('On host ',@@hostname,': There are ',count(*),' rows on dranapp.dd_downloads.') from dranapp.dd_downloads;"
