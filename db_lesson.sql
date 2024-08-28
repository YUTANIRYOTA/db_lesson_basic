Q1
CREATE TABLE departments (
departments_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(20) NOT NULL,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

Q2
ALTER TABLE people ADD COLUMN department_id INT unsigned AFTER email;

Q3
INSERT INTO departments (departments_id,name)
VALUES
('1','sales'),
('2','development'),
('3','accounting'),
('4','human resources'),
('5','information system');

INSERT INTO people (name,email,department_id,age,gender)
VALUES
('玉田たろう','tamada@gizumo.co.jp',1,25,1),
('山本たかし','yamamoto@gizumo.co.jp',1,31,1),
('山田まさし','yamada@gizumo.co.jp',1,42,1),
('谷口いちろう','taniguchi@gizumo.co.jp',2,20,1),
('高橋じろう','takahashi@gizumo.co.jp',2,29,1),
('佐藤こういち','satou@gizumo.co.jp',2,38,1),
('遠藤ひろと','enndou@gizumo.co.jp',2,59,1),
('山口ひろし','yamguchi@gizumo.co.jp',3,62,1),
('森本はやと','morimoto@gizumo.co.jp',4,21,1),
('石川たくま','ishikawa@gizumo.co.jp',5,23,1);

INSERT INTO reports (person_id,content)
VALUES
('10','今日は月曜日で快晴です'),
('10','今日は火曜日で快晴です'),
('11','今日は水曜日で快晴です'),
('12','今日は木曜日で快晴です'),
('13','今日は金曜日で快晴です'),
('14','今日は土曜日で快晴です'),
('15','今日は日曜日で快晴です'),
('16','今日は月曜日で大雨です'),
('17','今日は火曜日で大雨です'),
('18','今日は水曜日で大雨です');

Q4
UPDATE people SET department_id = '1' WHERE email = 'tanaka@gizumo.jp';
UPDATE people SET department_id = '1' WHERE email = 'fukuda@gizumo.jp';
UPDATE people SET department_id = '1' WHERE email = 'toyoshima@gizumo.jp';
UPDATE people SET department_id = '1' WHERE email = 'suzuki@gizumo.jp';
UPDATE people SET department_id = '1' WHERE email = 'hayasaka@gizumo.co.jp';

Q5
SELECT * FROM people WHERE gender = 1 ORDER BY age DESC;

Q6
`people`のテーブルから`department_id` = 1という特定のレコードだけを取得し`created_at`の昇順で並び替えて、カラム名　`name`, `email`, `age`を表示せよ


Q7
SELECT * FROM people WHERE age BETWEEN 20 AND 30 AND gender = 2 OR age BETWEEN 40 AND 50 AND gender = 1;

Q8
SELECT * FROM people WHERE department_id = 1 ORDER BY age;

Q9
SELECT AVG(age) AS average_age FROM people WHERE department_id = 2 AND gender = 2;

Q10 
SELECT people.name, people.department_id, reports.content
FROM people INNER JOIN reports ON people.person_id = reports.person_id;

Q11
 SELECT people.name, reports.content 
FROM people LEFT OUTER JOIN reports ON people.person_id = reports.person_id WHERE content IS NULL;