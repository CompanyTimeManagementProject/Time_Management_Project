INSERT INTO public."Achievements"(
	"Title", "Description", "LinkIMG")
	VALUES ("50 часов", "Проработал 50 часов", "test"),("100 часов", "Проработал 100 часов", "test");
INSERT INTO public."Project"(
	"Title", "Description", "idTL")
	VALUES ("TimeManagment", "Создать приложение для отслеживание работы", 1), ("Test", "Test", 2);
INSERT INTO public."Role"(
	"Role")
	VALUES ("Admin"), ("User");	
INSERT INTO public."Task"(
	"Title", "Description", "idProject")
	VALUES ("Спроектировать БД", "Создать ER и Физ диаграмму БД", 2),("Настроить ГитХаб", "Создать и добавить всех участников в проект", 3);	
INSERT INTO public."User"(
	"Name", "Surname", "Patronymic", "Birthday", "Email", "Password", "Role")
	VALUES ("Иванов","Иван","Иванович","1990-01-01","test@test.com","12345678","Admin"), ("Шаталов","Арсений",NULL,"2000-01-01","test@test.ru","12345","User"), ("Смирнов","Александр","2000-01-01","test@test.ru","452144","User"),("Железной","Александр","2000-01-01","test@test.ru","412413","User"),("Петров","Петр","Петрович","1970-01-02","test@test.ru","fdghsdfg","Admin");	
INSERT INTO public."User-Achievements"(
	"idUser", "idAchievements")
	VALUES (1, 1),(2, 1),(3, 2),(4, 2);	
INSERT INTO public."User-Task"(
	"idUser", "idTask")
	VALUES (1, 1),(2,2),(3,1);
INSERT INTO public."WorkingTime"(
	"StartTime", "EndTime", "idUser", "idTask")
	VALUES ("10.03.2021 8:00",	"11.03.2021 10:00",	1,	1),("10.03.2021 12:00",	"10.03.2021 15:00",	2,	2);	