Use M_Gufos

Select * from Categorias

Select * from Usuarios

Select * from Eventos

Select * from Presencas

Select * from Categorias order by IdCategoria asc;

Select * from Categorias order by IdCategoria desc;

Select * from Eventos order by Titulo asc;

Select * from Usuarios order by nome asc;

Select E.*, C.*
from Eventos E
join Categorias C
on E.IdCategoria = C.IdCategoria

Select P.* , U.* , E.*
From Presencas P
join Usuarios U
on P.IdUsuario = U.IdUsuario
inner join Eventos as E
on P.IdEvento = E.IdEvento

select  P.* , U.* , E.* , C.*
from Presencas P
join Usuarios U
on P.IdUsuario = U.IdUsuario
join Eventos E
on P.IdEvento = E.IdEvento
join Categorias C
on E.IdCategoria = C.IdCategoria