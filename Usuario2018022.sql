create database Usuario2018022;
use Usuario2018022;

-- -----------------------------------------------------------------------------------------------------------

create table Usuario(
	idUsuario int not null primary key auto_increment,
    nombres varchar(50) not null,
    apellidos varchar(50) not null,
    alias varchar(50) not null);
    
-- -----------------------------------------------------------------------------------------------------------
    
delimiter $$
	create procedure sp_AgregarUsuario(p_nombres varchar(50),p_apellidos varchar(50),p_alias varchar(50))
    begin
    
    insert into Usuario(nombres,apellidos,alias)
		values(p_nombres,p_apellidos,p_alias);
end $$

	call sp_AgregarUsuario('jose','chach','choco');
    call sp_AgregarUsuario('jose','diaz','chompi');
    call sp_AgregarUsuario('edwin','aquino','el wason');
    
-- -----------------------------------------------------------------------------------------------------------
select * from Usuario;