TYPE=VIEW
query=select `lis`.`Nome_torta` AS `Nome_torta`,group_concat(`a`.`Nome_gusto` separator \', \') AS `Gusti` from (`negozio_gelateria`.`listino_torte` `lis` join `negozio_gelateria`.`attinenze` `a` on(`lis`.`Nome_torta` = `a`.`Nome_torta`)) group by `lis`.`Nome_torta`
md5=788bdd5026cb0fa587e32ce53b6cf2d4
updatable=0
algorithm=0
definer_user=root
definer_host=localhost
suid=2
with_check_option=0
timestamp=0001731668052706031
create-version=2
source=select \n	lis.Nome_torta,\n    GROUP_CONCAT(a.Nome_gusto separator \', \') as Gusti\nfrom\n	LISTINO_TORTE lis \njoin \n	ATTINENZE a ON lis.Nome_torta = a.Nome_torta\ngroup by\n	lis.Nome_torta
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select `lis`.`Nome_torta` AS `Nome_torta`,group_concat(`a`.`Nome_gusto` separator \', \') AS `Gusti` from (`negozio_gelateria`.`listino_torte` `lis` join `negozio_gelateria`.`attinenze` `a` on(`lis`.`Nome_torta` = `a`.`Nome_torta`)) group by `lis`.`Nome_torta`
mariadb-version=100432
