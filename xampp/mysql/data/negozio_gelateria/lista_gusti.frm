TYPE=VIEW
query=select `ag`.`Nome_gusto` AS `Nome_gusto`,`ag`.`Data_aggiunta` AS `Data_aggiunta`,`e`.`Data_eli` AS `Data_eli` from (`negozio_gelateria`.`aggiunta_prodotti` `ag` left join `negozio_gelateria`.`eliminazione_prodotti` `e` on(`ag`.`Nome_gusto` = `e`.`Nome_gusto` and `e`.`Data_eli` > `ag`.`Data_aggiunta`)) group by `ag`.`Nome_gusto`,`ag`.`Data_aggiunta`,`e`.`Data_eli` having `ag`.`Data_aggiunta` >= ifnull(max(`e`.`Data_eli`),\'0000-00-00\')
md5=639028a389b329f7fc58d8bbeac72734
updatable=0
algorithm=0
definer_user=root
definer_host=localhost
suid=2
with_check_option=0
timestamp=0001731668052710406
create-version=2
source=select \n    ag.Nome_gusto,\n    ag.Data_aggiunta,\n    e.Data_eli\nfrom \n    AGGIUNTA_PRODOTTI ag\nleft join\n    ELIMINAZIONE_PRODOTTI e \n    on ag.Nome_gusto = e.Nome_gusto\n    and e.Data_eli > ag.Data_aggiunta -- Mostra l\'eliminazione solo se è successiva all\'aggiunta\ngroup by \n    ag.Nome_gusto, ag.Data_aggiunta, e.Data_eli\nhaving\n    ag.Data_aggiunta >= IFNULL(MAX(e.Data_eli), \'0000-00-00\')
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select `ag`.`Nome_gusto` AS `Nome_gusto`,`ag`.`Data_aggiunta` AS `Data_aggiunta`,`e`.`Data_eli` AS `Data_eli` from (`negozio_gelateria`.`aggiunta_prodotti` `ag` left join `negozio_gelateria`.`eliminazione_prodotti` `e` on(`ag`.`Nome_gusto` = `e`.`Nome_gusto` and `e`.`Data_eli` > `ag`.`Data_aggiunta`)) group by `ag`.`Nome_gusto`,`ag`.`Data_aggiunta`,`e`.`Data_eli` having `ag`.`Data_aggiunta` >= ifnull(max(`e`.`Data_eli`),\'0000-00-00\')
mariadb-version=100432
