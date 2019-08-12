/*Подсчитайте количество дней рождения, 
которые приходятся на каждый из дней недели. 
Следует учесть, что необходимы дни недели текущего года, 
а не года рождения.*/

DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Имя покупателя',
  birthday_at DATE COMMENT 'Дата рождения',
  created_at varchar(50),
  updated_at varchar(50) 
) COMMENT = 'Покупатели';

INSERT INTO users (name, birthday_at, created_at, updated_at) VALUES
  ('Геннадий', '1990-10-05', "20.10.2017 8:10", "20.10.2017 8:10"),
  ('Наталья', '1984-11-12', "20.10.2017 8:10", "20.10.2017 8:10"),
  ('Александр', '1985-05-20', "20.10.2017 8:10", "20.10.2017 8:10"),
  ('Сергей', '1988-02-14', "20.10.2017 8:10", "20.10.2017 8:10"),
  ('Иван', '1998-01-12', "20.10.2017 8:10", "20.10.2017 8:10"),
  ('Мария', '1992-08-29', "20.10.2017 8:10", "20.10.2017 8:10");

select dayname(date_format(birthday_at, '2019-%m-%d')) as 'Birthday on weekday in 2019', count(*) 
from users group by dayname(date_format(birthday_at, '2019-%m-%d'))