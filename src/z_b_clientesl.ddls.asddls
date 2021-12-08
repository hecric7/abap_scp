@AbapCatalog.sqlViewName: 'ZV_CLIENTESL'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Clientes'
define view Z_B_CLIENTESL
  as select from ztb_clientes
{

  key id_cliente  as IdCliente,
  key tipo_acceso as TipoAcceso,
      nombre      as Nombre,
      apellidos   as Apellidos,
      email       as Email,
      url         as Url

}
