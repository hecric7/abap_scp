@AbapCatalog.sqlViewName: 'ZV_CLNTS_LIB'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Clientes - Libros'
@Metadata.allowExtensions: true
define view z_b_clnts_lib
  as select from ztb_clnts_lib as Clientes_Lib
  association [1] to Z_B_CLIENTESL as _Clientes on Clientes_Lib.id_cliente = _Clientes.IdCliente 
{
  key id_cliente as IdCliente,
  key id_libro   as IdLibro,
  _Clientes.Nombre as Nombre,
  _Clientes.Apellidos as Apellidos,
  _Clientes.Email as EMail,
  _Clientes.TipoAcceso as TipoAcceso,
  _Clientes.Url as URL
}
