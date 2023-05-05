-- 1. Traer todos los discos con su respectivo estilo. La consulta debe mostrar: Nombre de disco, Fecha de lanzamiento, Estilo (no el id, sino la descripción).

-- 2. Insertar al menos dos estilos nuevos y un tipo de edición de disco. 

-- 3. Insertar al menos dos discos nuevos cargando correctamente su información.

-- 4. Actualizar al menos un disco modificando la cantidad de canciones y la fecha de lanzamiento. No te olvides del Where.

-- 5. Borrar un disco a elección.

-- 6. Traer todos los estilos que estén asociados a algún disco.

-- 7. Traer todos los discos con el siguiente formato: Nombre, Estilo, Edición (todo texto).

-- 8. Traer todos los discos que contengan en su nombre la sílaba "ho".


select * from DISCOS

-- PUNTO  1

select Titulo,D.FechaLanzamiento,E.Descripcion Estilo from DISCOS D,ESTILOS E
where D.idEstilo=E.id 


  -- PUNTO 2

insert into ESTILOS (Descripcion) values ('Salsa')
insert into ESTILOS (Descripcion) values ('Pop')
insert into ESTILOS (Descripcion) values ('Reggae')
insert into ESTILOS (Descripcion) values ('Pop Rock')

select * from DISCOS

  -- PUNTO 3
 insert into DISCOS Values
 ('Paradojas','2015-10-23',12,'https://pastillasdelabuelo.com.ar/wp-content/uploads/2017/09/TAPA_PARADOJAS.jpg',3,2)

insert into DISCOS Values
  ('Guau!','2004-10-06',12,'https://www.cmtv.com.ar/tapas-cd/arbolguau.webp',8,2)
  
  -- PUNTO 4

  update DISCOS set FechaLanzamiento = getdate(),CantidadCanciones = 15 where id = 2

  -- PUNTO 5

  delete from DISCOS where id = 6


  -- PUNTO 6

  select E.Descripcion Estilo from DISCOS D,ESTILOS E
  where D.IdEstilo = E.Id

  -- PUNTO 7

  select Titulo Nombre,E.Descripcion Estilo,T.Descripcion Edicion from DISCOS D,ESTILOS E,TIPOSEDICION T
  where D.IdEstilo = E.Id AND D.IdTipoEdicion = T.Id

  -- PUNTO 8

  select Titulo Nombres from DISCOS     -- para buscar silabas basta con like y % entre la silaba
  where Titulo like '%ho%'

-- LEER


-- MODIFICAR

Update ESTILOS set Descripcion = 'Cumbia' where id=2   -- MODIFICAMOS EL GENERO DE POP A CUMBIA


-- ELIMINAR

delete from DISCOS where id = 10
