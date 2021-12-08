@AbapCatalog.sqlViewName: 'ZV_LIBROSL'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Libros'
define view Z_B_Libros
  as select from ztb_libros
{
  key id_libro  as ID_Libro,
  key bi_categ  as BI_Categoria,
      titulo    as Titulo,
      autor     as Autor,
      editorial as Editorial,
      idioma    as Idioma,
      paginas   as Paginas,
      precio    as Precio,
      moneda    as Moneda,
      formato   as Formato,
      url       as Url
}
