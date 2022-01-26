INSERT INTO department (name)
VALUES
  ('Customer Support'),
  ('Engineering'),
  ('Sales'),
  ('Services'),
  ('Marketing');

INSERT INTO role (title, salary, department_id)
VALUES
  ('Office Manager', 100000, 1),
  ('Order Processing Support', 30000, 1),
  ('Solutions Architect Manager', 150000, 2),
  ('Technical Engineer', 90000, 2),
  ('Sales Lead Manager', 150000, 3),
  ('Sales Field Rep', 75000, 3),
  ('Services Manager', 50000, 4),
  ('Maintenance Support Rep', 60000, 4),
  ('Marketing Manager', 75000, 5),
  ('Social Marketing Rep', 40000, 5);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES
    ('Umair','Rowley', 1, NULL),
    ('Blair', 'Cummings', 2, 1),
    ('Mihai', 'Stamp', 3, NULL),
    ('Moses', 'Walmsley', 4, 3),
    ('Jordan', 'Hyde', 5, NULL),
    ('Daryl', 'Walter', 6, 5),
    ('Kiri', 'Leonard', 7, NULL),
    ('Pascal', 'Hills', 8, 7),
    ('Roy', 'Kumar', 9, NULL),
    ('Gerrard', 'Needham', 10, 9),
    ('Rio', 'Roman', 2, 1),
    ('Iga', 'Decker', 4, 3),
    ('Wayne', 'Leblanc', 6, 5),
    ('Mehdi', 'Sexton', 8, 7),
    ('Aysha', 'Britton', 10, 9),
    ('Kian', 'Lynch', 2, 1),
    ('Elliott', 'Parkes', 4, 3),
    ('Hazel', 'Dillard', 6, 5),
    ('Noor', 'Norris', 8, 7),
    ('Nyah', 'Wyatt', 10, 9),
    ('Arwen', 'Blackwell', 8, 7);