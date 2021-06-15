drop database company;
create database company;
use company;

create table developers_position
(
	position_id int primary key,
    position_value varchar(50) not null
);
create table developers_specialty
(
	specialty_id int primary key,
    specialty_value varchar(50) not null
);

create table developers
(
	developer_id int primary key auto_increment,
    developer_name varchar(50) not null,
    developer_surname varchar(50) not null,
    developer_patronymic varchar(50),
    developer_email varchar(50) not null unique,
    developer_password varchar(150) not null,
    developer_is_admin bool not null default false,
    developer_position int default 1,
    developer_specialty int default 1,
    developer_birth date not null,
    developer_avatar_url varchar(300),
    
    foreign key (developer_position) references developers_position(position_id),
    foreign key (developer_specialty) references developers_specialty(specialty_id)
);
create table projects 
(
	project_id int primary key auto_increment,
    project_title varchar(150) not null,
    project_description varchar(2000),
    project_deadline date not null,
    project_lead_id int,
    
    foreign key (project_lead_id) references developers(developer_id) on delete set null
);

create table tasks 
(
	task_id int primary key auto_increment,
    task_title varchar(150) not null,
    task_description varchar(2000),
    task_results varchar(3000),
    task_planned_deadline datetime not null,
    task_actual_deadline datetime not null,
    task_lead_id int,
    project_id int not null,
    
    foreign key (task_lead_id) references developers(developer_id) on delete set null,
    foreign key (project_id) references projects(project_id) on delete cascade
);

create table developers_tasks
(
	developer_id int not null,
    task_id int not null,
    primary key(developer_id, task_id),
    foreign key (developer_id) references developers(developer_id) on delete cascade,
    foreign key (task_id) references tasks(task_id) on delete cascade
);

create table notifications
(
	notif_id int primary key auto_increment,
    notif_sender varchar(150) not null,
    notif_content varchar(3100) not null,
    notif_date datetime not null,
    task_id int not null,
    
	foreign key (task_id) references tasks(task_id) on delete cascade
);

create table changing_dates
(
	changing_date_id int primary key auto_increment,
    changing_date_cause varchar(500) not null,
    changing_date_deadline_before datetime not null,
    changing_date_deadline_after datetime not null,
    changing_date_task_id int not null,
    
    foreign key (changing_date_task_id) references tasks(task_id) on delete cascade
);
create table achievements 
(
	achievement_id int primary key auto_increment,
    achievement_title varchar(500) not null,
    descritpion varchar(3100) not null, 
    linkIMG text not null
);

create table developer_achievements 
(
	developer_id int not null,
    achievement_id int not null,
    primary key(developer_id, achievement_id),
    foreign key (developer_id) references developers(developer_id) on delete cascade,
    foreign key (achievement_id) references achievements(achievement_id) on delete cascade
);
create table working_time
(
	working_time_id int primary key auto_increment,
    start_time timestamp not null,
    working_time_comment varchar(500),
    working_time_status int default 0 not null,
    end_time timestamp,
    developer_id int not null,
	task_id int not null,	
    foreign key (developer_id) references developers(developer_id) on delete cascade,
    foreign key (task_id) references tasks(task_id) on delete cascade
);

