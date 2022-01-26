INSERT INTO department (name)
VALUES
  ('Customer Support'),
  ('Engineering'),
  ('Sales'),
  ('Services'),
  ('Marketing');

INSERT INTO role (title, salary, department_id)
VALUES
  ('Inside Sales Manager', 50000, 1),
  ('Order Processing Support', 30000, 1),
  ('Technical Engineer', 90000, 2),
  ('Solutions Architect', 150000, 2),
  ('Sales Field Rep', 75000, 3),
  ('Sales Lead Generator', 25000, 3),
  ('Maintenance Support Rep', 75000, 4),
  ('Services Contractor', 50000, 4),
  ('Digital Marketing Manager', 70000, 5),
  ('Social Marketing Rep', 40000, 5);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES
    ('Umair','Rowley', 2, 3),
    ('Blair', 'Cummings', 1, NULL),
    ('Mihai', 'Stamp', 3, 2),
    ('Moses', 'Walmsley', 6, 4),
    ('Jordan', 'Hyde', 9, NULL),
    ('Daryl', 'Walter', 6, 4),
    ('Kiri', 'Leonard', 7, 5),
    ('Pascal', 'Hills', 4, 2),
    ('Roy', 'Kumar', 8, 5),
    ('Gerrard', 'Needham', 10, 1),
    ('Rio', 'Roman', 2, 3),
    ('Iga', 'Decker', 3, 2),
    ('Wayne', 'Leblanc', 8, 5),
    ('Mehdi', 'Sexton', 6, 4),
    ('Aysha', 'Britton', 8, 5),
    ('Kian', 'Lynch', 2, 3),
    ('Elliott', 'Parkes', 4, 2),
    ('Hazel', 'Dillard', 10, 1),
    ('Noor', 'Norris', 3, 2),
    ('Nyah', 'Wyatt', 7, 5),
    ('Arwen', 'Blackwell', 4, 2);