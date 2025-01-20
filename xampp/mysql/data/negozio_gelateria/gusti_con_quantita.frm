TYPE=VIEW
query=select `o`.`Nome_gusto` AS `Nome_gusto`,sum(`det`.`Quantita`) AS `Quantita` from (`negozio_gelateria`.`opzioni` `o` left join `negozio_gelateria`.`dettaglio_acquisti` `det` on(`o`.`Id_prodotto_ordinato` = `det`.`Id_prodotto_ordinato`)) group by `o`.`Nome_gusto`
md5=325388797812be6f47959cc52d4e2ddd
updatable=0
algorithm=0
definer_user=root
definer_host=localhost
suid=2
with_check_option=0
timestamp=0001731668052723371
create-version=2
source=select \n    o.Nome_gusto,\n    SUM(det.Quantita) as Quantita\nfrom\n    OPZIONI o\nleft join \n    DETTAGLIO_ACQUISTI det on o.Id_prodotto_ordinato = det.Id_prodotto_ordinato\ngroup by\n    o.Nome_gusto
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select `o`.`Nome_gusto` AS `Nome_gusto`,sum(`det`.`Quantita`) AS `Quantita` from (`negozio_gelateria`.`opzioni` `o` left join `negozio_gelateria`.`dettaglio_acquisti` `det` on(`o`.`Id_prodotto_ordinato` = `det`.`Id_prodotto_ordinato`)) group by `o`.`Nome_gusto`
mariadb-version=100432
