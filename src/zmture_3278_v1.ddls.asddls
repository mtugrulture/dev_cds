@AbapCatalog.sqlViewName: 'ZMTURE_3278_CDS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'mehmet tuğrul ture cds eğitim'
define view zmture_3278_v1 as select from ekko 
        inner join ekpo on ekko.ebeln = ekpo.ebeln
        inner join lfa1 on lfa1.lifnr = ekko.lifnr
        inner join mara on mara.matnr = ekpo.matnr
        left outer join makt on makt.matnr = mara.matnr and
                                makt.spras = $session.system_language
    {     
   key ekpo.ebeln,
   key ekpo.ebelp,
    ekpo.matnr,
    makt.maktx,
    ekpo.werks,
    ekpo.lgort,
    ekpo.meins, 
    lfa1.lifnr,
    lfa1.name1,
   concat_with_space( lfa1.stras , lfa1.mcod3 , 1 ) as adres
}
