--  Create table email_signup with given data 

CREATE TABLE email_signup (id int, email_id VARCHAR(50), signup_date date);
 
INSERT INTO email_signup VALUES
(1, 'Rajesh@Gmail.com', '2022-02-01'),
(2, 'Rakesh_gmail@rediffmail.com', '2023-01-22'),
(3, 'Hitest@Gmail.com', '2020-09-08'),
(4, 'Salil@Gmmail.com', '2019-07-05'),
(5, 'Himanshu@Yahoo.com', '2023-05-09'),
(6, 'Hitesh@Twitter.com', '2015-01-01'),
(7, 'Rakesh@facebook.com', null);
 
 SELECT * FROM email_signup;


 --  write the query to replace null value with ‘1970-01-01’

UPDATE email_signup
SET signup_date = '1970-01-01'
WHERE signup_date IS NULL;


--  Write a query to find gmail accounts with latest and first signup date and difference between both the dates

 
SELECT COUNT(CASE WHEN email_id LIKE '%@gmail.com' THEN 1 END) AS count_gmail_account,
MAX(CASE WHEN email_id LIKE '%@gmail.com' THEN signup_date END) AS latest_signup_date,
MIN(CASE WHEN email_id LIKE '%@gmail.com' THEN signup_date END) AS first_signup_date,
DATEDIFF(DAY, MIN(CASE WHEN email_id LIKE '%@gmail.com' THEN signup_date END), MAX(CASE WHEN email_id LIKE '%@gmail.com' THEN signup_date END)) as diff_in_days
FROM email_signup;