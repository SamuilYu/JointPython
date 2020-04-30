begin;
drop table if exists chats;



create table chats(
  name varchar primary key, --название чата - является уникальным.
  users varchar(60)[]       -- массив пользователей данного чата.
);
-- P.S В Psql очень непросто сделать кастомный тип данных множество,
-- который я бы хранил в users - для взаимодействия с базой
-- в связи с чем механизм работы такой - хотите поменять пользователей чата:
-- выгружаете данные об этом чате, меняете их, удаляете запись в базе -
-- и перезаписываете

--Вы спросите, а как по пользователю узнавать в каком он чате?
--нужно добавлять запись о чате пользователя в словаре users,
--а инициализировать это дело можно при старте сервера во время init_users



commit;