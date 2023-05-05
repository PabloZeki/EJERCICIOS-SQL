-- Constultas SQL


-- LEER

select * from TIPOSEDICION    -- PARA QUE TRAIGA TODO LO QUE TENGA TIPOSEDICION CON EL *

SELECT  D.Titulo,D.CantidadCanciones,D.FechaLanzamiento,D.UrlImagenTapa,E.Descripcion Estilo from DISCOS D,ESTILOS E     -- ACA QUEREMOS TRAER COLUMNAS ESPICIFICAS ( TITULO Y CANTIDAD DE CANCIONES , FECHA DE LANZAMIENTO Y ID ESTILO)

where D.idEstilo = E.id --AND CantidadCanciones = 12   -- usamos alias en las tablas para usar la condicion where (cuando ),queremos que nos tire la descripcion cuando la id de discos y la id de estilos coincidan

Select * from ESTILOS  -- aca nos encontramos con que los estilos musicales tan asociados a un ( Numero de id )

  --Select * from DISCOS where idestilo = 2 AND CantidadCanciones = 12   -- si hacemos una consulta general nos encontramos con que tenemos una (ID estilo), pero no nos trae la info de a que estilo hace referencia ese numero

  --ESCRIBIR

  insert into DISCOS(Titulo,CantidadCanciones,IdEstilo)Values('Siempre es hoy',15,1) -- por un lado especificamos el nombre de las columnas,y en values(los valores a cargar en orden de como pusimos las columnas)

  insert into DISCOS Values
  ('Pablo Da Costa',getdate(),15,'https://www.twitch.tv/llunaclark',3,2) -- esta es otra forma de cargar los datos,si vamos a utilizar todas las columnas,la carga debe ser en orden,getdate nos tira la fecha actual

  -- MODIFICAR
  
  update ESTILOS set Descripcion = 'Country' where Id = 1  -- para modificar un valor por ejemplo de la tabla estilos,la columna (Descripcion),en este caso el pop punk por country
															-- nunca olvidarse de poner el (where) porque sino modifica toda la columna,error fatal
	
-- ELIMINAR

delete from DISCOS where Id = 3 -- para eliminar en este caso el registro con id 3 de la tabla DISCOS siempre poner where sino borra todo
