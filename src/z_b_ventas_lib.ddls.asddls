@AbapCatalog.sqlViewName: 'ZV_VENTAS_LIB'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Ventas de libros'
define view z_b_ventas_lib
  as select from Z_B_Libros as Libros
  association [0..*] to z_b_clnts_lib as _Clientes_Lib on Libros.ID_Libro = _Clientes_Lib.IdLibro
{
 key Libros.ID_Libro as ID_Libro,
 key Libros.BI_Categoria as Categoria,
 count( distinct _Clientes_Lib.IdCliente ) as Ventas

  }
group by
    Libros.ID_Libro,
    Libros.BI_Categoria


