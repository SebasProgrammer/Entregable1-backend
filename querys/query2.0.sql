INSERT INTO courses (title, description, level, teacher) values ('Frontend with React', 'Learn HTML,CSS, JAVASCRIPT and REACT', 'medios', 'Alejandra Olazagasti');

INSERT INTO categories (name) values ('Ciencia de datos');

INSERT INTO pivote_courses_categories (categoryId, courseId) values (1,2);

INSERT INTO users (name, email, password, age) values ('claudia', 'clau@gmail.com', '9876543', 26);

INSERT INTO roles (name) values ('admin');

UPDATE users SET roleId = 3 WHERE id = 2;

INSERT INTO videocourses (title, url) values ('Tecnicas para mejorar habilidades blandas', 'https:/habilidades-blandas.com');

INSERT INTO  pivote_users_courses (userId, courseId) values (2,1);