@AbapCatalog.sqlViewName: 'ZV_CATEGOL'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Categoria'
define view Z_B_CATEGOL
  as select from ztb_catego
{
  key bi_categ    as BiCateg,
      descripcion as Descripcion
}
