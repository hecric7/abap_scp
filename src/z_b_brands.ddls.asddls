@AbapCatalog.sqlViewName: 'ZV_BRANDSL'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Brands'
define view z_b_brands
  as select from zrent_brands
{
  key marca as Marca,
      @UI.hidden: true
      url   as Imagen
}
