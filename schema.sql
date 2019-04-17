-- CREATE DATABASE expenses;

CREATE TABLE expenses (
  id serial PRIMARY KEY,
  amount decimal(6, 2) NOT NULL,
  memo text NOT NULL,
  created_on date NOT NULL
);

ALTER TABLE expenses ADD CONSTRAINT non_zero_amount CHECK (amount > 0);


-- INSERT INTO expenses (amount, memo, created_on) VALUES
-- (9999.99, 'biggest', '2019-04-16');
--
-- INSERT INTO expenses (amount, memo, created_on) VALUES
-- (10000.00, 'too big', '2019-04-16');
--
-- INSERT INTO expenses (amount, memo, created_on) VALUES
-- (0000.00, 'smallest', '2019-04-16');
--
-- INSERT INTO expenses (amount, memo, created_on) VALUES
-- (-9999.99, 'actual smallest', '2019-04-16');
--
-- DELETE FROM expenses WHERE amount <= 0;
--
-- ALTER TABLE expenses ADD CONSTRAINT non_zero_amount CHECK (amount > 0);
--
-- INSERT INTO expenses (amount, memo, created_on) VALUES
-- (-00.01, 'too small', '2019-04-16');
--
-- INSERT INTO expenses (amount, memo, created_on) VALUES
-- (14.56, 'pencils', NOW()),
-- (3.29, 'coffee', NOW()),
-- (49.99, 'solar panel', NOW());
