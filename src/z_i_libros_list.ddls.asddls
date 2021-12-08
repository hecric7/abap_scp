@AbapCatalog.sqlViewName: 'ZV_LIBROS_LIST'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Lista de libros'
@Metadata.allowExtensions: true
define view Z_I_LIBROS_LIST
  as select from Z_B_Libros as Libros
  association [0..*] to z_b_clnts_lib  as _Clientes   on  Libros.ID_Libro = _Clientes.IdLibro
  association [1]    to z_b_ventas_lib as _Ventas_Lib on  Libros.ID_Libro     = _Ventas_Lib.ID_Libro
                                                      and Libros.BI_Categoria = _Ventas_Lib.Categoria
{
  key Libros.ID_Libro,
  key Libros.BI_Categoria,
      Libros.Titulo,
      Libros.Autor,
      Libros.Editorial,
      Libros.Idioma,
      Libros.Paginas,
      Libros.Precio,
      Libros.Moneda,
      Libros.Formato,
      Libros.Url,
      case
        when _Ventas_Lib.Ventas <= 0 then 1
        when _Ventas_Lib.Ventas <= 2 and _Ventas_Lib.Ventas > 0 then 2
        when _Ventas_Lib.Ventas >= 3 then 3
        else 0
        end as Ventas,

      _Clientes

}
