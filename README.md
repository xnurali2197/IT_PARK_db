# Student Management Database

A simple **PostgreSQL schema** for managing **students, groups, mentors, and subjects**.  

## 📌 Tables
- **Masters** — subjects (`IT`, `English`, …)  
- **Mentors** — teachers linked to subjects  
- **Groupss** — groups linked to mentors  
- **Students** — student list  
- **StudentGroups** — many-to-many relation (students ↔ groups)  

## 📊 Example Data
- Masters: `IT`, `English`  
- Mentors: Azamat Tojiyev, Mahliyo Qalandarova, …  
- Groups: `TQ-IT-0901`, `TQ-EN-0901`  
- Students: Nurali Khusinov, Bobur Ulugbekov, …  

## 🔎 Sample Queries
List groups with mentors & subjects:
```sql
SELECT g.title, m.firstname || ' ' || m.lastname AS mentor, ms.subject
FROM Groupss g
JOIN Mentors m ON g.mentor_id = m.id
JOIN Masters ms ON m.master_id = ms.id;
List students in each group:

sql
Copy code
SELECT g.title, s.firstname || ' ' || s.lastname AS student
FROM StudentGroups sg
JOIN Students s ON sg.student_id = s.id
JOIN Groupss g ON sg.group_id = g.id;