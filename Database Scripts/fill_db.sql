USE company;

-- POSITIONS INSERTS
INSERT developers_position(
	position_id,
    position_value
) VALUES (0, 'Developer');
INSERT developers_position(
	position_id,
    position_value
) VALUES (1, 'QA Developer');
INSERT developers_position(
	position_id,
    position_value
) VALUES (2, 'Frontend Developer');
INSERT developers_position(
	position_id,
    position_value
) VALUES (3, 'Backend Developer');
INSERT developers_position(
	position_id,
    position_value
) VALUES (4, 'Fullstack Developer');
INSERT developers_position(
	position_id,
    position_value
) VALUES (5, 'Data scientist');
INSERT developers_position(
	position_id,
    position_value
) VALUES (6, 'iOS developer');
INSERT developers_position(
	position_id,
    position_value
) VALUES (7, 'Android developer');
INSERT developers_position(
	position_id,
    position_value
) VALUES (8, 'System administrator');

-- SPECIALTIES INSERTS
INSERT developers_specialty(
	specialty_id,
    specialty_value
) VALUES (0, 'Trainee');
INSERT developers_specialty(
	specialty_id,
    specialty_value
) VALUES (1, 'Junior');
INSERT developers_specialty(
	specialty_id,
    specialty_value
) VALUES (2, 'Middle');
INSERT developers_specialty(
	specialty_id,
    specialty_value
) VALUES (3, 'Senior');
INSERT developers_specialty(
	specialty_id,
    specialty_value
) VALUES (4, 'Technical Director');

-- DEVELOPERS INSERTS

-- 1
INSERT developers(
	developer_name, 
    developer_surname, 
    developer_patronymic, 
    developer_email, 
    developer_password, 
    developer_birth,
	developer_position,
    developer_specialty
)
VALUES (
	'Даша', 
	'Колигова', 
	'Ивановна', 
	'dkol@gmail.com', 
	'U2FsdGVkX1%2BdRyjrCJv9AUlyPbIm%2B%2FCEofvfj1FVNPI%3D', 
	'1997-05-23',
    2,
    3
);

-- 2
INSERT developers(
	developer_name, 
    developer_surname, 
    developer_patronymic, 
    developer_email, 
    developer_password, 
    developer_birth
)
VALUES (
	'Иван', 
	'Костюшин', 
	'Константинович', 
	'ivkos@gmail.com', 
	'U2FsdGVkX1%2BdRyjrCJv9AUlyPbIm%2B%2FCEofvfj1FVNPI%3D', 
	'1998-11-25'
);

-- 3
INSERT developers(
	developer_name, 
    developer_surname, 
    developer_patronymic, 
    developer_email, 
    developer_password, 
    developer_birth
)
VALUES (
	'Николай', 
	'Костюшин', 
	'Климович', 
	'nikkos@gmail.com', 
	'U2FsdGVkX1%2BdRyjrCJv9AUlyPbIm%2B%2FCEofvfj1FVNPI%3D', 
	'1995-05-11'
);

-- 4
INSERT developers(
	developer_name, 
    developer_surname, 
    developer_patronymic, 
    developer_email, 
    developer_password, 
    developer_birth
)
VALUES (
	'Зинаида', 
	'Громова', 
	'Александровна', 
	'zingrom@gmail.com', 
	'U2FsdGVkX1%2BdRyjrCJv9AUlyPbIm%2B%2FCEofvfj1FVNPI%3D', 
	'1996-01-21'
);

-- 5
INSERT developers(
	developer_name, 
    developer_surname, 
    developer_patronymic, 
    developer_email, 
	developer_password, 
    developer_birth
)
VALUES (
	'Анастасия', 
	'Кличко', 
	'Ивановна', 
	'anaskl@gmail.com', 
	'U2FsdGVkX1%2BdRyjrCJv9AUlyPbIm%2B%2FCEofvfj1FVNPI%3D', 
	'1993-08-08'
);

-- 6
INSERT developers(
	developer_name, 
    developer_surname, 
    developer_patronymic, 
    developer_email, 
    developer_password, 
    developer_birth
)
VALUES (
	'Климентий', 
	'Сахаров', 
	'Дмитриевич', 
	'klsah@gmail.com', 
	'U2FsdGVkX1%2BdRyjrCJv9AUlyPbIm%2B%2FCEofvfj1FVNPI%3D', 
	'1998-01-02'
);

-- 7
INSERT developers(
	developer_name, 
    developer_surname, 
    developer_patronymic, 
    developer_email, 
    developer_password, 
    developer_birth,
    developer_is_admin
)
VALUES ('Александр', 'Смирнов', 'Константинович', 'newline@gmail.com', 'U2FsdGVkX1%2BdRyjrCJv9AUlyPbIm%2B%2FCEofvfj1FVNPI%3D', '2000-03-30', true);

-- 8
INSERT developers(
	developer_name, 
    developer_surname, 
    developer_patronymic, 
    developer_email, 
    developer_password, 
    developer_birth,
	developer_position,
    developer_specialty
)
VALUES('Анатолий', 'Жданов', null, 'anzh@gmail.com', 'U2FsdGVkX1%2BdRyjrCJv9AUlyPbIm%2B%2FCEofvfj1FVNPI%3D', '1994-05-24',1,3);

-- 9
INSERT developers(
	developer_name, 
    developer_surname, 
    developer_patronymic, 
    developer_email, 
    developer_password, 
    developer_birth,
	developer_position,
    developer_specialty
)
VALUES (
	'Вадим', 
	'Гусев', 
	'Андреевич', 
	'gusvad@gmail.com', 
	'U2FsdGVkX1%2BdRyjrCJv9AUlyPbIm%2B%2FCEofvfj1FVNPI%3D', 
	'1993-08-01',
    4,
    1
);

-- 10
INSERT developers(
	developer_name, 
    developer_surname, 
    developer_patronymic, 
    developer_email, 
    developer_password, 
    developer_birth,
	developer_position,
    developer_specialty
)
VALUES (
	'Виктория', 
	'Турова', 
	'Ивановна', 
	'vikiv@gmail.com', 
	'U2FsdGVkX1%2BdRyjrCJv9AUlyPbIm%2B%2FCEofvfj1FVNPI%3D', 
	'1996-01-05',
    2,
    2
);

-- 11
INSERT developers(
	developer_name, 
    developer_surname, 
    developer_patronymic, 
    developer_email, 
    developer_password, 
    developer_birth,
	developer_position,
    developer_specialty
)
VALUES (
	'Яна', 
	'Сушкова', 
	'Валерьевна', 
	'yanval@gmail.com', 
	'U2FsdGVkX1%2BdRyjrCJv9AUlyPbIm%2B%2FCEofvfj1FVNPI%3D', 
	'2000-03-06',
    1,
    1
);

-- 12
INSERT developers(
	developer_name, 
    developer_surname, 
    developer_patronymic, 
    developer_email, 
    developer_password, 
    developer_birth,
	developer_position,
    developer_specialty
)
VALUES (
	'Татьяна', 
	'Казакова', 
	null, 
	'tankaz@gmail.com', 
	'U2FsdGVkX1%2BdRyjrCJv9AUlyPbIm%2B%2FCEofvfj1FVNPI%3D', 
	'1985-10-20',
    4,
    1
);

-- 13
INSERT developers(
	developer_name, 
    developer_surname, 
    developer_patronymic, 
    developer_email, 
    developer_password, 
    developer_birth,
	developer_position,
    developer_specialty
)
VALUES (
	'Руслан', 
	'Никифоров', 
	'Андреевич', 
	'rusandr@gmail.com', 
	'U2FsdGVkX18+owsKsHfAFKsoJoZI6RnFUUdNKaNTNu8=', 
	'1999-07-15',
    2,
    1
);

-- 14
INSERT developers(
	developer_name, 
    developer_surname, 
    developer_patronymic, 
    developer_email, 
    developer_password, 
    developer_birth,
	developer_position,
    developer_specialty
)
VALUES (
	'Павел', 
	'Яковлев', 
	null, 
	'pavyak@gmail.com', 
	'U2FsdGVkX1%2BdRyjrCJv9AUlyPbIm%2B%2FCEofvfj1FVNPI%3D', 
	'1987-09-28',
    1,
    1
);

-- 15
INSERT developers(
	developer_name, 
    developer_surname, 
    developer_patronymic, 
    developer_email, 
    developer_password, 
    developer_birth,
	developer_position,
    developer_specialty
)
VALUES (
	'Николай', 
	'Суханов', 
	'Александрович', 
	'niksuch@gmail.com', 
	'U2FsdGVkX1%2BdRyjrCJv9AUlyPbIm%2B%2FCEofvfj1FVNPI%3D', 
	'1985-01-01',
    3,
    2
);

-- 16
INSERT developers(
	developer_name, 
    developer_surname, 
    developer_patronymic, 
    developer_email, 
    developer_password, 
    developer_birth,
	developer_position,
    developer_specialty
)
VALUES (
	'Нелли', 
	'Жданова', 
	'Евгеньевна', 
	'nelevg@gmail.com', 
	'U2FsdGVkX1%2BdRyjrCJv9AUlyPbIm%2B%2FCEofvfj1FVNPI%3D', 
	'1980-05-23',
    2,
    3
);

-- 17
INSERT developers(
	developer_name, 
    developer_surname, 
    developer_patronymic, 
    developer_email, 
    developer_password, 
    developer_birth,
	developer_position,
    developer_specialty
)
VALUES (
	'Лев', 
	'Кузнецов', 
	'Алексеевич', 
	'levkuz@gmail.com', 
	'U2FsdGVkX1%2BdRyjrCJv9AUlyPbIm%2B%2FCEofvfj1FVNPI%3D', 
	'1989-04-27',
    3,
    3
);

-- 18
INSERT developers(
	developer_name, 
    developer_surname, 
    developer_patronymic, 
    developer_email, 
    developer_password, 
    developer_birth,
	developer_position,
    developer_specialty
)
VALUES (
	'Максим', 
	'Исаев', 
	'Алексеевич', 
	'maxis@gmail.com', 
	'U2FsdGVkX1%2BdRyjrCJv9AUlyPbIm%2B%2FCEofvfj1FVNPI%3D', 
	'1991-03-30',
    4,
    1
);

-- 19
INSERT developers(
	developer_name, 
    developer_surname, 
    developer_patronymic, 
    developer_email, 
    developer_password, 
    developer_birth,
	developer_position,
    developer_specialty
)
VALUES (
	'Константин', 
	'Жуков', 
	'Романович', 
	'konszhuk@gmail.com', 
	'U2FsdGVkX1%2BdRyjrCJv9AUlyPbIm%2B%2FCEofvfj1FVNPI%3D', 
	'1995-08-01',
    1,
    4
);

-- 20
INSERT developers(
	developer_name, 
    developer_surname, 
    developer_patronymic, 
    developer_email, 
    developer_password, 
    developer_birth,
	developer_position,
    developer_specialty
)
VALUES (
	'Виктор', 
	'Ершов', 
	'Вадимович', 
	'vikersh@gmail.com', 
	'U2FsdGVkX1%2BdRyjrCJv9AUlyPbIm%2B%2FCEofvfj1FVNPI%3D', 
	'1995-12-05',
    2,
    4
);
-- 21
INSERT developers(
	developer_name, 
    developer_surname, 
    developer_patronymic, 
    developer_email, 
    developer_password, 
    developer_birth,
	developer_position,
    developer_specialty
)
VALUES (
	'Артем', 
	'Евсеев', 
	'Николаевич', 
	'artevs@gmail.com', 
	'U2FsdGVkX1%2BdRyjrCJv9AUlyPbIm%2B%2FCEofvfj1FVNPI%3D', 
	'1990-01-12',
    4,
    1
);

-- 22
INSERT developers(
	developer_name, 
    developer_surname, 
    developer_patronymic, 
    developer_email, 
    developer_password, 
    developer_birth,
	developer_position,
    developer_specialty
)
VALUES (
	'Даниил', 
	'Авдеев', 
	'Генадьевич', 
	'danav@gmail.com', 
	'U2FsdGVkX1%2BdRyjrCJv9AUlyPbIm%2B%2FCEofvfj1FVNPI%3D', 
	'2001-11-03',
    1,
    1
);

-- 23
INSERT developers(
	developer_name, 
    developer_surname, 
    developer_patronymic, 
    developer_email, 
    developer_password, 
    developer_birth,
	developer_position,
    developer_specialty
)
VALUES (
	'Евгений', 
	'Беляев', 
	null, 
	'evgbel@gmail.com', 
	'U2FsdGVkX1%2BdRyjrCJv9AUlyPbIm%2B%2FCEofvfj1FVNPI%3D', 
	'1999-05-13',
    3,
    3
);

-- 24
INSERT developers(
	developer_name, 
    developer_surname, 
    developer_patronymic, 
    developer_email, 
    developer_password, 
    developer_birth,
	developer_position,
    developer_specialty
)
VALUES (
	'Евгения', 
	'Лапина', 
	'Дмитриевна', 
	'evlap@gmail.com', 
	'U2FsdGVkX1%2BdRyjrCJv9AUlyPbIm%2B%2FCEofvfj1FVNPI%3D', 
	'1989-01-27',
    4,
    1
);

-- 25
INSERT developers(
	developer_name, 
    developer_surname, 
    developer_patronymic, 
    developer_email, 
    developer_password, 
    developer_birth,
	developer_position,
    developer_specialty
)
VALUES (
	'Диана', 
	'Панова', 
	'Дмитриевна', 
	'diapan@gmail.com', 
	'U2FsdGVkX1%2BdRyjrCJv9AUlyPbIm%2B%2FCEofvfj1FVNPI%3D', 
	'1994-09-03',
    4,
    4
);

-- 26
INSERT developers(
	developer_name, 
    developer_surname, 
    developer_patronymic, 
    developer_email, 
    developer_password, 
    developer_birth,
	developer_position,
    developer_specialty
)
VALUES (
	'Егор', 
	'Савин', 
	null, 
	'egsav@gmail.com', 
	'U2FsdGVkX1%2BdRyjrCJv9AUlyPbIm%2B%2FCEofvfj1FVNPI%3D', 
	'1998-10-10',
    1,
    4
);

-- 27
INSERT developers(
	developer_name, 
    developer_surname, 
    developer_patronymic, 
    developer_email, 
    developer_password, 
    developer_birth,
	developer_position,
    developer_specialty
)
VALUES (
	'Захар', 
	'Силин', 
	'Михайлович', 
	'zahsil@gmail.com', 
	'U2FsdGVkX1%2BdRyjrCJv9AUlyPbIm%2B%2FCEofvfj1FVNPI%3D', 
	'1999-06-19',
    4,
    1
);

-- 28
INSERT developers (
	developer_name, 
    developer_surname, 
    developer_patronymic, 
    developer_email, 
    developer_password, 
    developer_birth,
	developer_position,
    developer_specialty
) VALUES (
	'Кира', 
	'Романова', 
	'Ивановна', 
	'kirrom@gmail.com', 
	'U2FsdGVkX1%2BdRyjrCJv9AUlyPbIm%2B%2FCEofvfj1FVNPI%3D', 
	'2000-08-19',
    3,
    3
);

-- 29
INSERT developers(
	developer_name, 
    developer_surname, 
    developer_patronymic, 
    developer_email, 
    developer_password, 
    developer_birth,
	developer_position,
    developer_specialty
)
VALUES (
	'Валентин', 
	'Панфилов', 
	'Владимирович', 
	'valpan@gmail.com', 
	'U2FsdGVkX1%2BdRyjrCJv9AUlyPbIm%2B%2FCEofvfj1FVNPI%3D', 
	'1978-05-19',
    4,
    4
);

-- 30
INSERT developers(
	developer_name, 
    developer_surname, 
    developer_patronymic, 
    developer_email, 
    developer_password, 
    developer_birth,
	developer_position,
    developer_specialty
)
VALUES (
	'Анастасия', 
	'Савина', 
	'Дмитриевна', 
	'ansav@gmail.com', 
	'U2FsdGVkX1%2BdRyjrCJv9AUlyPbIm%2B%2FCEofvfj1FVNPI%3D', 
	'1998-09-07',
    1,
    3
);

-- 31
INSERT developers(
	developer_name, 
    developer_surname, 
    developer_patronymic, 
    developer_email, 
    developer_password, 
    developer_birth,
	developer_position,
    developer_specialty
)
VALUES (
	'Кирилл', 
	'Потапов', 
	'Данилович', 
	'kirpot@gmail.com', 
	'U2FsdGVkX1%2BdRyjrCJv9AUlyPbIm%2B%2FCEofvfj1FVNPI%3D', 
	'2000-06-10',
    1,
    1
);

-- 32
INSERT developers(
	developer_name, 
    developer_surname, 
    developer_patronymic, 
    developer_email, 
    developer_password, 
    developer_birth,
	developer_position,
    developer_specialty
)
VALUES (
	'Елена', 
	'Некрасова', 
	'Николаевна', 
	'elnik@gmail.com', 
	'U2FsdGVkX1%2BdRyjrCJv9AUlyPbIm%2B%2FCEofvfj1FVNPI%3D', 
	'1993-01-21',
    3,
    1
);

-- 33
INSERT developers(
	developer_name, 
    developer_surname, 
    developer_patronymic, 
    developer_email, 
    developer_password, 
    developer_birth,
	developer_position,
    developer_specialty
)
VALUES (
	'Александр', 
	'Сафонов', 
	null, 
	'alsaf@gmail.com', 
	'U2FsdGVkX1%2BdRyjrCJv9AUlyPbIm%2B%2FCEofvfj1FVNPI%3D', 
	'1996-12-13',
    2,
    1
);

-- 34
INSERT developers(
	developer_name, 
    developer_surname, 
    developer_patronymic, 
    developer_email, 
    developer_password, 
    developer_birth,
	developer_position,
    developer_specialty
)
VALUES (
	'Анастасия', 
	'Кузнецова', 
	'Александровна', 
	'ankuz@gmail.com', 
	'U2FsdGVkX1%2BdRyjrCJv9AUlyPbIm%2B%2FCEofvfj1FVNPI%3D', 
	'1998-12-03',
    3,
    1
);

-- 35
INSERT developers(
	developer_name, 
    developer_surname, 
    developer_patronymic, 
    developer_email, 
    developer_password, 
    developer_birth,
	developer_position,
    developer_specialty
)
VALUES (
	'Дмитрий', 
	'Марков', 
	null, 
	'dmmar@gmail.com', 
	'U2FsdGVkX1%2BdRyjrCJv9AUlyPbIm%2B%2FCEofvfj1FVNPI%3D', 
	'1990-07-12',
    1,
    1 
);

-- 36
INSERT developers(
	developer_name, 
    developer_surname, 
    developer_patronymic, 
    developer_email, 
    developer_password, 
    developer_birth,
	developer_position,
    developer_specialty
)
VALUES (
	'Виктория', 
	'Цветкова', 
	'Александровна', 
	'viktscv@gmail.com', 
	'U2FsdGVkX1%2BdRyjrCJv9AUlyPbIm%2B%2FCEofvfj1FVNPI%3D', 
	'1990-05-01',
    3,
    3
);

-- PROJECTS INSERTS

-- 1
INSERT projects (
	project_title,
    project_description,
    project_deadline,
    project_lead_id
)
VALUES (
	'Создание ПО для медицинского оборудования',
    'Проект для индонезийской компании "New line". Продукт разрабатывается для считывания нейронных сигналов головного мозга.
    Должны присутствовать: Контроль температуры тела, визуальное воспроизведение данных мозга, сбор и отправка данных
    на специально разработанный сервер через медицинскую сеть. Технологии:
    1. Python
    2. СИ,
    3. WebGL с вспомогательными библиотеками',
    '2020-12-03',
	4
);

-- 2
INSERT projects (
	project_title,
    project_description,
    project_deadline,
    project_lead_id
)
VALUES (
	'Создание WEB приложения для контроля диеты',
    'Приложение включает в себя несколько серверов для контроля мобильного и браузерного приложений. 
    Идет мониторинг веса, самочувствия, и прочих параметров, заносимых пользователем на протяжении диеты.
    Далее собранные данные генерируют последовательность действий для продолжения/изменения/перехода на другую диету.
    Так же необходимо реализовать календарь здоровья, в котором будут отмечены все чекпоинты диеты.',
    '2021-02-03',
	11
);


-- 3
INSERT projects (
	project_title,
    project_description,
    project_deadline,
    project_lead_id
)
VALUES (
	'Управление проектами',
    'Спроектировать базу данных для фирмы, занимающейся разработкой ПО. В базе данных должна быть представлена информация о 
    проектах (название, номер, описание, ФИО руководителя проекта, сроки исполнения проекта). Каждый проект включает группу задач. 
    У каждой задачи есть название, описание того, в чем состоит задача, результаты, планируемые и фактические сроки ее исполнения, 
    ФИО того, кто отвечает за исполнение задачи, а также ФИО всех, кто задействован в реализации этой задачи, Учесть, что сроки 
    исполнения проекта, задач могут меняться, в базе данных должна храниться информация обо всех изменениях сроков с указанием 
    причины. За сутки до истечения срока реализации задачи система рассылает сообщения исполнителям задачи. После реализации задачи 
    ответственный за ее выполнение отправляет отчет о результатах.',
    '2020-12-31',
    30
);

-- OTHER INSERTS

-- ********* 1 *********
INSERT tasks (
	task_title,
    task_description,
    task_results,
    task_planned_deadline,
    task_actual_deadline,
    task_lead_id,
    project_id
)
VALUES (
	'Создание и проектирование базы',
    'Необходимо реализовать базу данных для хранения всей собираемой оборудованием информации',
	'1. Была выбрана база данных Oracle,
    2. Спроектирована структура базы данных со всеми вытекающими сущностями',
    '2020-11-01 20:00:00',
    '2020-11-01 20:00:00',
    1,
    1
);
INSERT notifications (
	notif_sender,
	notif_content,
    notif_date,
    task_id
) 
VALUES (
	'System',
    'Задача "Создание и проектирование базы" была создана',
    '2020-10-30 20:00:00',
    1
);
INSERT notifications (
	notif_sender,
	notif_content,
    notif_date,
    task_id
) 
VALUES (
	'System',
    'Задача "Создание и проектирование базы" была изменена',
    '2020-10-30 20:00:00',
    1
);
INSERT developers_tasks (
	developer_id,
    task_id
)
VALUES (1, 1);
INSERT developers_tasks (
	developer_id,
    task_id
)
VALUES (2, 1);
INSERT developers_tasks (
	developer_id,
    task_id
)
VALUES (3, 1);
INSERT developers_tasks (
	developer_id,
    task_id
)
VALUES (4, 1);

-- ********* 2 *********
INSERT tasks (
	task_title,
    task_description,
    task_results,
    task_planned_deadline,
    task_actual_deadline,
    task_lead_id,
    project_id
)
VALUES (
	'Программирование оборудования',
    'Необходимо собрать плату и запрограммировать ее на основе прошлых проектов.',
	'1. Куплены все необходимые материалы,
    2. Обеспечен сбор всей необходимой информации
    3. Собран фреймворк для конфортной работы команды над задачей',
    '2020-11-05 20:00:00',
    '2020-11-05 20:00:00',
    5,
    1
);
INSERT notifications (
	notif_sender,
	notif_content,
    notif_date,
    task_id
) 
VALUES (
	'System',
    'Задача "Программирование оборудования" была создана',
    '2020-10-27 20:00:00',
    2
);
INSERT notifications (
	notif_sender,
	notif_content,
    notif_date,
    task_id
) 
VALUES (
	'System',
    'Задача "Программирование оборудования" была изменена',
    '2020-10-28 20:00:00',
    2
);
INSERT notifications (
	notif_sender,
	notif_content,
    notif_date,
    task_id
) 
VALUES (
	'Лидер проекта',
    'Задача "Программирование оборудования": уведомляю, что фреймворк готов к работе. Установочное собрание
    для обучения работы с ним пройдет завтра во второй половине дня.',
    '2020-10-29 20:00:00',
    2
);
INSERT developers_tasks (
	developer_id,
    task_id
)
VALUES (5, 2);
INSERT developers_tasks (
	developer_id,
    task_id
)
VALUES (6, 2);
INSERT developers_tasks (
	developer_id,
    task_id
)
VALUES (15, 2);
INSERT developers_tasks (
	developer_id,
    task_id
)
VALUES (8, 2);
INSERT developers_tasks (
	developer_id,
    task_id
)
VALUES (9, 2);

-- ********* 3 *********
INSERT tasks (
	task_title,
    task_description,
    task_results,
    task_planned_deadline,
    task_actual_deadline,
    task_lead_id,
    project_id
)
VALUES (
	'Настройка локальной сети',
    null,
	'1. Совершена настройка сервера,
    2. Написан протокол для локальной отправки данных
    3. Протокол протекстирован на локальной сети',
    '2020-12-01 13:00:00',
    '2020-12-01 13:00:00',
    8,
    1
);

INSERT notifications (
	notif_sender,
	notif_content,
    notif_date,
    task_id
) 
VALUES (
	'System',
    'Задача "Настройка локальной сети" была создана',
    '2020-10-26 10:00:00',
    3
);

INSERT notifications (
	notif_sender,
	notif_content,
    notif_date,
    task_id
) 
VALUES (
	'Лидер проекта',
    'Задача "Настройка локальной сети": Все необходимые работы были проделаны, поздравляю участников проекта.
    Завтра будет принято решение о переносе актуальных сроков сдачи почти на месяц раньше',
    '2020-10-29 20:00:00',
    3
);
INSERT developers_tasks (
	developer_id,
    task_id
)
VALUES (10, 3);
INSERT developers_tasks (
	developer_id,
    task_id
)
VALUES (11, 3);
INSERT developers_tasks (
	developer_id,
    task_id
)
VALUES (12, 3);
INSERT developers_tasks (
	developer_id,
    task_id
)
VALUES (13, 3);
INSERT developers_tasks (
	developer_id,
    task_id
)
VALUES (14, 3);

-- ********* 4 *********
INSERT tasks (
	task_title,
    task_description,
    task_results,
    task_planned_deadline,
    task_actual_deadline,
    task_lead_id,
    project_id
)
VALUES (
	'Сбор необходимых данных и построение архитектуры приложения',
	'Необходимо обеспечить сбор медицинской информации и на ее основе построить граф приложения.
    Данное задание должно быть выполено как можно раньше',
    '1. Произведена настройка и имплементация прошлого проекта
    2. Промежуточные данные переданы лидеру',
    '2020-12-31 18:30:00',
    '2020-12-31 18:30:00',
    15,
    2
);

INSERT notifications (
	notif_sender,
	notif_content,
    notif_date,
    task_id
) 
VALUES (
	'System',
    'Задача "Сбор необходимых данных и построение архитектуры приложения" была создана',
    '2020-10-30 10:00:00',
    4
);
INSERT developers_tasks (
	developer_id,
    task_id
)
VALUES (15, 4);
INSERT developers_tasks (
	developer_id,
    task_id
)
VALUES (16, 4);
INSERT developers_tasks (
	developer_id,
    task_id
)
VALUES (17, 4);
INSERT developers_tasks (
	developer_id,
    task_id
)
VALUES (18, 4);
INSERT developers_tasks (
	developer_id,
    task_id
)
VALUES (19, 4);

-- ********* 5 *********
INSERT tasks (
	task_title,
    task_description,
    task_results,
    task_planned_deadline,
    task_actual_deadline,
    task_lead_id,
    project_id
)
VALUES (
	'Создание сети серверов',
	'Выбор технологии для создания сети серверов, а также реализация общей структуры для как можно скорейшего тестирования
    мобльной части приложения. По поводу использованя ресурсов проконсультироваться с лидером проекта. При возникновении 
    проблем нетривиального характера сообщить менеджеру проекта.',
    '1. Были выбраны технологии Java + Node JS прослойка',
    '2020-12-31 18:30:00',
    '2020-12-31 18:30:00',
    22,
    2
);

INSERT notifications (
	notif_sender,
	notif_content,
    notif_date,
    task_id
) 
VALUES (
	'System',
    'Задача "Создание сети серверов" была создана',
    '2020-10-31 15:30:00',
    5
);
INSERT notifications (
	notif_sender,
	notif_content,
    notif_date,
    task_id
) 
VALUES (
	'Администратор',
    'Уведомляю Вас о продолжении формирования вашей команды. В течение недели будет поток джунов, которым необходимо 
    получить опыт именно на вашей задаче. Просим отнестись с пониманием к получившейся неразберихе в команде.',
    '2020-10-31 19:40:00',
    5
);

INSERT developers_tasks (
	developer_id,
    task_id
)
VALUES (20, 5);
INSERT developers_tasks (
	developer_id,
    task_id
)
VALUES (21, 5);
INSERT developers_tasks (
	developer_id,
    task_id
)
VALUES (22, 5);
INSERT developers_tasks (
	developer_id,
    task_id
)
VALUES (23, 5);
INSERT developers_tasks (
	developer_id,
    task_id
)
VALUES (24, 5);
INSERT developers_tasks (
	developer_id,
    task_id
)
VALUES (25, 5);
INSERT developers_tasks (
	developer_id,
    task_id
)
VALUES (26, 5);

-- ********* 6 *********
INSERT tasks (
	task_title,
    task_description,
    task_results,
    task_planned_deadline,
    task_actual_deadline,
    task_lead_id,
    project_id
)
VALUES (
	'Реализация клиентского календаря в браузере',
	'Необходимо ознакомиться с фреймворком VueJS. Должна быть подключена библиотека дл отрисовки и синхронизации времени
    на стороне сервера. Должен быть реализован механизм взаимодействия пользователя с календарем. Страница отдельной даты.',
    '1. Произведено ознакомление с фрейморком VueJS.
    2. Получен макет календаря и страницы даты
    3. Настроен WebPack',
    '2020-01-05 18:30:00',
    '2020-01-05 18:30:00',
    22,
    2
);
INSERT notifications (
	notif_sender,
	notif_content,
    notif_date,
    task_id
) 
VALUES (
	'System',
    'Задача "Реализация клиентского календаря в браузере" была создана',
    '2020-10-31 15:30:00',
    6
);
INSERT notifications (
	notif_sender,
	notif_content,
    notif_date,
    task_id
) 
VALUES (
	'System',
    'Задача "Реализация клиентского календаря в браузере" была изменена',
    '2020-11-08 18:30:00',
    6
);
INSERT notifications (
	notif_sender,
	notif_content,
    notif_date,
    task_id
) 
VALUES (
	'System',
    'Задача "Реализация клиентского календаря в браузере" была изменена',
    '2020-11-10 15:30:00',
    6
);

INSERT developers_tasks (
	developer_id,
    task_id
)
VALUES (27, 6);
INSERT developers_tasks (
	developer_id,
    task_id
)
VALUES (28, 6);
INSERT developers_tasks (
	developer_id,
    task_id
)
VALUES (29, 6);
INSERT developers_tasks (
	developer_id,
    task_id
)
VALUES (30, 6);
INSERT developers_tasks (
	developer_id,
    task_id
)
VALUES (31, 6);
INSERT developers_tasks (
	developer_id,
    task_id
)
VALUES (32, 6);
INSERT developers_tasks (
	developer_id,
    task_id
)
VALUES (33, 6);

-- ********* 7 *********

INSERT tasks (
	task_title,
    task_description,
    task_results,
    task_planned_deadline,
    task_actual_deadline,
    task_lead_id,
    project_id
)
VALUES (
	'Реализация оплаты',
	'Необходимо сделать страницу оплаты, а механизм оплаты. Оплата должна производиться как по банковской карте, так и
    с помощью WebMoney, Qiwi и т.д.',
    '1. Сделана страница оплаты
    2. Добавлена возможность оплаты по карте',
    '2020-10-31 13:00:00',
    '2020-10-31 13:00:00',
    29,
    2
);

INSERT notifications (
	notif_sender,
	notif_content,
    notif_date,
    task_id
) 
VALUES (
	'System',
    'Задача "Реализация оплаты" была создана',
    '2020-10-22 11:30:00',
    7
);
INSERT notifications (
	notif_sender,
	notif_content,
    notif_date,
    task_id
) 
VALUES (
	'System',
    'Задача "Реализация оплаты" была изменена',
    '2020-10-22 11:30:00',
    7
);

INSERT notifications (
	notif_sender,
	notif_content,
    notif_date,
    task_id
) 
VALUES (
	'Лидер проекта',
    'Уведомляю о проблемме, связанной с реализацией оплаты с Qiwi. Данная система оплаты довольно нестабильна,
    поэтому ведется пересмотр реализации системы оплаты со средствами, отличными от банковских карт.',
    '2020-10-23 15:30:00',
    7
);

INSERT developers_tasks (
	developer_id,
    task_id
)
VALUES (34, 7);
INSERT developers_tasks (
	developer_id,
    task_id
)
VALUES (35, 7);
INSERT developers_tasks (
	developer_id,
    task_id
)
VALUES (13, 7);
INSERT developers_tasks (
	developer_id,
    task_id
)
VALUES (7, 7);
INSERT developers_tasks (
	developer_id,
    task_id
)
VALUES (1, 7);

-- ********* 8 *********
INSERT tasks (
	task_title,
    task_description,
    task_results,
    task_planned_deadline,
    task_actual_deadline,
    task_lead_id,
    project_id
)
VALUES (
	'Работа с алгоритмом, рассчитывающим дальнейшую диету',
	'Разработать алгоритм с помощью вспомогательных библиотек, рассчитывающим дальнейших ход диеты, а так же 
    предполагаемое самочувствие пользователя при соблюдении данной диеты.',
    '1. Разработан алгоритм',
    '2020-01-03 18:30:00',
    '2020-01-03 18:30:00',
    16,
    2
);

INSERT developers_tasks (
	developer_id,
    task_id
)
VALUES (21, 8);
INSERT developers_tasks (
	developer_id,
    task_id
)
VALUES (19, 8);

-- ********* 9 *********
INSERT tasks (
	task_title,
    task_description,
    task_results,
    task_planned_deadline,
    task_actual_deadline,
    task_lead_id,
    project_id
)
VALUES (
	'Создание системы контроля взаимодействия лидеров и подчиненных',
	'Реализация системы взаимодействия различных участников проекта. Должна включать чат, а также прочие приблуды',
    null,
    '2020-11-13 13:30:00',
    '2020-11-13 13:30:00',
    22,
    3
);

INSERT notifications (
	notif_sender,
	notif_content,
    notif_date,
    task_id
) 
VALUES (
	'System',
    'Задача "Создание системы контроля взаимодействия лидеров и подчиненных" была создана',
    '2020-11-30 15:30:00',
    8
);
INSERT notifications (
	notif_sender,
	notif_content,
    notif_date,
    task_id
) 
VALUES (
	'System',
    'Задача "Создание системы контроля взаимодействия лидеров и подчиненных" была изменена',
    '2020-11-30 23:30:00',
    8
);
INSERT developers_tasks (
	developer_id,
    task_id
)
VALUES (21, 9);
INSERT developers_tasks (
	developer_id,
    task_id
)
VALUES (19, 9);
INSERT developers_tasks (
	developer_id,
    task_id
)
VALUES (20, 9);
INSERT developers_tasks (
	developer_id,
    task_id
)
VALUES (30, 9);

-- ********* 10 *********
INSERT tasks (
	task_title,
    task_description,
    task_results,
    task_planned_deadline,
    task_actual_deadline,
    task_lead_id,
    project_id
)
VALUES (
	'Построение архитектуры приложения и вспомогательных диаграмм',
	'Необхоимд учесть ожидаемые результаты и возможные требования заказчика, 
    после чего сделать расширяемую модель приложения, состоящую из нескольких точек входа на сервере
    и модели хранения общего состояния на клиенте.',
    '1. Построена архитектура
    2. Произведена работа с командой',
    '2020-11-15 18:30:00',
    '2020-11-15 18:30:00',
    33,
    3
);
INSERT notifications (
	notif_sender,
	notif_content,
    notif_date,
    task_id
) 
VALUES (
	'Лидер проекта',
    'Задача построения диаграмм отменяется, данное решение буду реализовывать я)))',
    '2020-11-05 15:30:00',
    8
);
INSERT developers_tasks (
	developer_id,
    task_id
)
VALUES (5, 10);
INSERT developers_tasks (
	developer_id,
    task_id
)
VALUES (3, 10);
INSERT developers_tasks (
	developer_id,
    task_id
)
VALUES (2, 10);
INSERT developers_tasks (
	developer_id,
    task_id
)
VALUES (17, 10);

-- ********* 11 *********
INSERT tasks (
	task_title,
	task_description,
	task_results,
	task_planned_deadline,
	task_actual_deadline,
	task_lead_id,
	project_id
)
VALUES (
	'Добавление возможности поиска разработчика по фамилии или почте',
	'Необходимо добавить на страницу списка разработчиков компании окно для поиска. Поиск должен осуществляться по фамилии или почте сотрудника.',
	'С помощью JS были созданы два специальных окна поиска в верхней части страницы',
	'2020-10-30 05:00:00',
	'2020-11-01 20:00:00',
	13,
	3
);
INSERT notifications (
	notif_sender,
	notif_content,
	notif_date,
	task_id
)
VALUES (
	'Лидер проекта',
	'Уведомляю о готовности половины проекта "Добавление возможности поиска разработчика по фамилии или почте". В данный момент на страницу добавлена возможность поиска по фамилии. Возможность поиска по почте находится в разработке.',
	'2020-11-08 16:25:00',
	11
);
 
INSERT notifications (
	notif_sender,
	notif_content,
	notif_date,
	task_id
) 
VALUES (
	'System',
	'Задача "Добавление возможности поиска разработчика по фамилии или почте" была создана',
	'2020-11-08 20:55:00',
	11
);

INSERT developers_tasks (
	developer_id,
    task_id
)
VALUES (18, 11);
INSERT developers_tasks (
	developer_id,
    task_id
)
VALUES (25, 11);
INSERT developers_tasks (
	developer_id,
    task_id
)
VALUES (32, 11);

-- ********* 12 *********
INSERT tasks (
task_title,
task_description,
task_results,
task_planned_deadline,
task_actual_deadline,
task_lead_id,
project_id
)
VALUES (
	'Возможность редактирования персональной информации разработчика',
	'Необходимо добавить возможность редактирования персональной информации разработчика. Изменение должно осуществляться на отдельной странице и быть доступно для каждого разработчика.',
	'1. На страницу разработчика добавлена кнопка изменения личного профиля
	2. Создана отдельная страница для удобного изменения информации',
	'2020-10-30 04:00:00',
	'2020-11-01 20:00:00',
	1,
	3
);
INSERT developers_tasks (
	developer_id,
    task_id
)
VALUES (24, 12);
INSERT developers_tasks (
	developer_id,
    task_id
)
VALUES (16, 12);
INSERT developers_tasks (
	developer_id,
    task_id
)
VALUES (6, 12);

-- ACHIEVEMENTS INSERTS

insert achievements (
achievement_title,
descritpion,
linkIMG
)
values ('Новичок', '10 часов работы', ' ');

insert achievements (
achievement_title,
descritpion,
linkIMG
)
values ('Работяга', '1000 часов работы', ' ');

insert achievements (
achievement_title,
descritpion,
linkIMG
)
values ('Легенда', '10000 часов работы', ' ');

-- Developer Achievements Insert

insert developer_achievements (
developer_id,
achievement_id
)
values (1,1);

insert developer_achievements (
developer_id,
achievement_id
)
values (1,2);

insert developer_achievements (
developer_id,
achievement_id
)
values (2,1);

insert developer_achievements (
developer_id,
achievement_id
)
values (3,1);


-- Working time insert
insert working_time (
	start_time,
    end_time,
    developer_id,
    task_id
)
values (
	'2020-10-20 12:00:01',
	'2020-10-20 16:20:01',
	1,
    1
);

insert working_time (
	start_time,
    end_time,
    developer_id,
    task_id
)
values (
	'2020-11-01 16:00:05',
	'2020-11-02 00:30:20',
	2,
    3
);

insert working_time (
	start_time,
    end_time,
    developer_id,
    task_id
)
values (
	'2020-11-15 10:00:35',
	'2020-11-015 13:30:00',
	2,
    3
);


-- Add limitation --
DELIMITER $$
CREATE
    TRIGGER `update_developers` BEFORE UPDATE ON `developers`
    FOR EACH ROW BEGIN
		IF (NEW.developer_birth >= curdate() - interval 14 year) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'MyTriggerError: Trying to update invalid birth date';
		END IF;
    END$$
    
CREATE
    TRIGGER `insert_developers` BEFORE INSERT ON `developers`
    FOR EACH ROW BEGIN
		IF (NEW.developer_birth >= curdate() - interval 14 year) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'MyTriggerError: Trying to insert invalid birth date';
		END IF;
    END$$



CREATE
    TRIGGER `update_projects` BEFORE UPDATE 
    ON `projects` 
    FOR EACH ROW BEGIN
		IF (NEW.project_deadline < curdate()) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'MyTriggerError: Trying to update invalid project deadline';
		END IF;
    END$$
    
CREATE
    TRIGGER `insert_projects` BEFORE INSERT 
    ON `projects` 
    FOR EACH ROW BEGIN
		IF (NEW.project_deadline < curdate()) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'MyTriggerError: Trying to insert invalid project deadline';
		END IF;
    END$$
    
    
    
    
CREATE
    TRIGGER `insert_tasks_planned_deadline` BEFORE INSERT 
    ON `tasks` 
    FOR EACH ROW BEGIN
		IF (NEW.task_planned_deadline < current_timestamp()) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'MyTriggerError: Trying to insert invalid planned deadline';
		END IF;
    END$$
    
CREATE
    TRIGGER `insert_tasks_actual_deadline` BEFORE INSERT 
    ON `tasks` 
    FOR EACH ROW BEGIN
		IF (NEW.task_actual_deadline < current_timestamp()) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT  = 'MyTriggerError: Trying to insert invalid actual deadline';
		END IF;
    END$$

    
CREATE
    TRIGGER `update_tasks_actual_deadline` BEFORE UPDATE 
    ON `tasks` 
    FOR EACH ROW BEGIN
		IF (NEW.task_actual_deadline < current_timestamp()) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT  = 'MyTriggerError: Trying to update invalid actual deadline';
		END IF;
    END$$
   
   
   
   
CREATE
    TRIGGER `update_changing_dates_after` BEFORE UPDATE 
    ON `changing_dates` 
    FOR EACH ROW BEGIN
		IF (NEW.changing_date_deadline_after < current_timestamp()) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT  = 'MyTriggerError: Trying to update invalid changing date';
		END IF;
    END$$
    
CREATE
    TRIGGER `insert_changing_dates_after` BEFORE INSERT 
    ON `changing_dates` 
    FOR EACH ROW BEGIN
		IF (NEW.changing_date_deadline_after < current_timestamp()) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT  = 'MyTriggerError: Trying to insert invalid changing date';
		END IF;
    END$$
    
    
    CREATE
    TRIGGER `ach_trigger` after insert 
    ON working_time
    FOR EACH ROW BEGIN
		declare insertingDiff integer;
        declare commonDiff integer;
        declare isExists10Ach integer;
        declare isExists1000Ach integer;
        declare isExists10000Ach integer;
        
        select	sum(timestampdiff(hour,  wt.start_time, wt.end_time)) into commonDiff
		  from 	working_time wt
		 where wt.developer_id = new.developer_id
		group by wt.developer_id
		;	
        
        select	count(*) into isExists10Ach
          from 	developer_achievements da
		 where	da.developer_id = new.developer_id and
				da.achievement_id = 1
		;
        select	count(*) into isExists1000Ach
          from 	developer_achievements da
		 where	da.developer_id = new.developer_id and
				da.achievement_id = 2
		;
        select	count(*) into isExists10000Ach
          from 	developer_achievements da
		 where	da.developer_id = new.developer_id and
				da.achievement_id = 3
		;
        
        if(commonDiff >= 10 and isExists10Ach = 0)
			then
				insert into developer_achievements (
					developer_id,
                    achievement_id
                ) values (new.developer_id, 1);							
		end if;
        
         if(commonDiff >= 1000 and isExists1000Ach = 0)
			then
				insert into developer_achievements (
					developer_id,
                    achievement_id
                ) values (new.developer_id, 2);							
		end if;
        
         if(commonDiff >= 10000 and isExists10000Ach = 0)
			then
				insert into developer_achievements (
					developer_id,
                    achievement_id
                ) values (new.developer_id, 3);							
		end if;
    END$$
DELIMITER ;



