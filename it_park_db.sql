CREATE TABLE IF NOT EXISTS Masters
(
    id SERIAL PRIMARY KEY,
    subject VARCHAR(30) NOT NULL
);

CREATE TABLE IF NOT EXISTS Mentors
(
    id SERIAL PRIMARY KEY,
    firstname VARCHAR(30) NOT NULL,
    lastname VARCHAR(30) NOT NULL,
    master_id INTEGER,
    FOREIGN KEY (master_id) REFERENCES Masters (id)
);

CREATE TABLE IF NOT EXISTS Groupss
(
    id SERIAL PRIMARY KEY,
    title VARCHAR(30) NOT NULL,
    mentor_id INTEGER,
    FOREIGN KEY (mentor_id) REFERENCES Mentors (id)
);

CREATE TABLE IF NOT EXISTS Students
(
    id SERIAL PRIMARY KEY,
    firstname VARCHAR(30) NOT NULL,
    lastname VARCHAR(30) NOT NULL
);

CREATE TABLE IF NOT EXISTS StudentGroups
(
    id SERIAL PRIMARY KEY,
    student_id INTEGER,
    group_id INTEGER,
    FOREIGN KEY (student_id) REFERENCES Students(id),
    FOREIGN KEY (group_id) REFERENCES Groupss(id)
);

-- Masters
INSERT INTO Masters (subject)
VALUES 
    ('IT'),
    ('English');

-- Mentors
INSERT INTO Mentors (firstname, lastname, master_id)
VALUES
    ('Azamat', 'Tojiyev', 1),
    ('Nodir', 'Odilov', 1), 
    ('Mahliyo', 'Qalandarova', 2),
    ('Zuhra', 'Yaqubova', 1),
    ('Odilbek', 'Matyoqubov', 2); 

-- Groupss (title o‘rnida)
INSERT INTO Groupss (title, mentor_id)
VALUES
    ('TQ-IT-0901', 1),
    ('TQ-EN-0901', 3);

-- Students
INSERT INTO Students (firstname, lastname)
VALUES
    ('Nurali', 'Khusinov'),
    ('Bobur', 'Ulugbekov'),
    ('Mansurbek', 'Rajabov'),
    ('Sayidboy', 'Yoldoshov'),
    ('Hamrozbek', 'Subhonberdiyev'),
    ('Maksim', 'Kuryozov');

-- StudentGroups
INSERT INTO StudentGroups (student_id, group_id)
VALUES
    (1, 1),
    (1, 2),
    (2, 1),
    (2, 2),
    (3, 1),
    (3, 2),
    (4, 1),
    (4, 2),
    (5, 1),
    (5, 2),
    (6, 1),
    (6, 2);

