TYPE=VIEW
query=select `det`.`Id_ordine` AS `Id_ordine`,`po`.`Id_prodotto_ordinato` AS `Id_prodotto_ordinato`,`p`.`Id_prodotto` AS `Id_prodotto`,`p`.`Tipologia_prodotto` AS `Tipologia_prodotto`,`p`.`Grandezza` AS `Grandezza`,group_concat(`o`.`Nome_gusto` separator \', \') AS `Gusto`,`det`.`Quantita` AS `Quantita`,`det`.`PrezzoUnitario` AS `PrezzoUnitario`,`det`.`PrezzoTotale` AS `PrezzoTotale` from (((`negozio_gelateria`.`prodotti_ordinati` `po` join `negozio_gelateria`.`prodotti` `p` on(`po`.`Id_prodotto` = `p`.`Id_prodotto`)) join `negozio_gelateria`.`opzioni` `o` on(`po`.`Id_prodotto_ordinato` = `o`.`Id_prodotto_ordinato`)) join `negozio_gelateria`.`dettaglio_acquisti` `det` on(`po`.`Id_prodotto_ordinato` = `det`.`Id_prodotto_ordinato`)) group by `det`.`Id_ordine`,`po`.`Id_prodotto_ordinato`,`p`.`Id_prodotto`,`p`.`Tipologia_prodotto`,`p`.`Grandezza`,`det`.`Quantita`,`det`.`PrezzoUnitario`,`det`.`PrezzoTotale`
md5=0edda7ce371fa20b46437c111ea0861d
updatable=0
algorithm=0
definer_user=root
definer_host=localhost
suid=2
with_check_option=0
timestamp=0001731668052665189
create-version=2
source=select\n	det.Id_ordine,\n    po.Id_prodotto_ordinato,\n    p.Id_prodotto,\n    p.Tipologia_prodotto,\n    p.Grandezza,\n    GROUP_CONCAT(o.Nome_gusto separator \', \') as Gusto,\n    det.Quantita,\n    det.PrezzoUnitario,\n    det.PrezzoTotale\nfrom\n    PRODOTTI_ORDINATI po\njoin\n    PRODOTTI p on po.Id_prodotto = p.Id_prodotto\njoin\n    OPZIONI o on po.Id_prodotto_ordinato = o.Id_prodotto_ordinato\njoin\n	DETTAGLIO_ACQUISTI det on po.Id_prodotto_ordinato = det.Id_prodotto_ordinato\ngroup by\n	det.Id_ordine,\n    po.Id_prodotto_ordinato,\n    p.Id_prodotto,\n    p.Tipologia_prodotto,\n    p.Grandezza,\n    det.Quantita,\n    det.PrezzoUnitario,\n    det.PrezzoTotale
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select `det`.`Id_ordine` AS `Id_ordine`,`po`.`Id_prodotto_ordinato` AS `Id_prodotto_ordinato`,`p`.`Id_prodotto` AS `Id_prodotto`,`p`.`Tipologia_prodotto` AS `Tipologia_prodotto`,`p`.`Grandezza` AS `Grandezza`,group_concat(`o`.`Nome_gusto` separator \', \') AS `Gusto`,`det`.`Quantita` AS `Quantita`,`det`.`PrezzoUnitario` AS `PrezzoUnitario`,`det`.`PrezzoTotale` AS `PrezzoTotale` from (((`negozio_gelateria`.`prodotti_ordinati` `po` join `negozio_gelateria`.`prodotti` `p` on(`po`.`Id_prodotto` = `p`.`Id_prodotto`)) join `negozio_gelateria`.`opzioni` `o` on(`po`.`Id_prodotto_ordinato` = `o`.`Id_prodotto_ordinato`)) join `negozio_gelateria`.`dettaglio_acquisti` `det` on(`po`.`Id_prodotto_ordinato` = `det`.`Id_prodotto_ordinato`)) group by `det`.`Id_ordine`,`po`.`Id_prodotto_ordinato`,`p`.`Id_prodotto`,`p`.`Tipologia_prodotto`,`p`.`Grandezza`,`det`.`Quantita`,`det`.`PrezzoUnitario`,`det`.`PrezzoTotale`
mariadb-version=100432
