TYPE=VIEW
query=select `agg`.`Nome_torta` AS `Nome_torta`,`agg`.`Data_agg_t` AS `Data_agg_t`,`el`.`Data_eli_t` AS `Data_eli_t` from (`negozio_gelateria`.`aggiunta_torte` `agg` left join `negozio_gelateria`.`eliminazione_torte` `el` on(`agg`.`Nome_torta` = `el`.`Nome_torta` and `el`.`Data_eli_t` > `agg`.`Data_agg_t`)) group by `agg`.`Nome_torta`,`agg`.`Data_agg_t`,`el`.`Data_eli_t` having `agg`.`Data_agg_t` >= ifnull(max(`el`.`Data_eli_t`),\'0000-00-00\')
md5=96f268171b455db5598b5388aed3cb39
updatable=0
algorithm=0
definer_user=root
definer_host=localhost
suid=2
with_check_option=0
timestamp=0001731668052718392
create-version=2
source=select\n	agg.Nome_torta,\n    agg.Data_agg_t,\n    el.Data_eli_t\nfrom\n	AGGIUNTA_TORTE agg\nleft join\n	ELIMINAZIONE_TORTE el on agg.Nome_torta = el.Nome_torta and el.Data_eli_t > agg.Data_agg_t \ngroup by\n	agg.Nome_torta, agg.Data_agg_t, el.Data_eli_t\nhaving \n	agg.Data_agg_t >= ifnull(max(el.Data_eli_t), \'0000-00-00\')
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select `agg`.`Nome_torta` AS `Nome_torta`,`agg`.`Data_agg_t` AS `Data_agg_t`,`el`.`Data_eli_t` AS `Data_eli_t` from (`negozio_gelateria`.`aggiunta_torte` `agg` left join `negozio_gelateria`.`eliminazione_torte` `el` on(`agg`.`Nome_torta` = `el`.`Nome_torta` and `el`.`Data_eli_t` > `agg`.`Data_agg_t`)) group by `agg`.`Nome_torta`,`agg`.`Data_agg_t`,`el`.`Data_eli_t` having `agg`.`Data_agg_t` >= ifnull(max(`el`.`Data_eli_t`),\'0000-00-00\')
mariadb-version=100432
