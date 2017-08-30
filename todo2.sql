CREATE TABLE todos2 (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  details VARCHAR(1000) NULL,
  priority INTEGER NOT NULL,
  created_at TIMESTAMP NOT NULL,
  completed_at TIMESTAMP NULL
);

-- NOT NULL means not optional
-- NULL means optional, the value can be left blank

-- Write INSERT statements to insert 20 todos into the todos table, with a combination of priorities, created times, and completed times, with not all having a completed time.
INSERT INTO todos2 (title, details, priority, created_at, completed_at) VALUES
('Pizza', 'trash pizza boxes', '3', NOW(), NOW()),
('Milk', 'Buy whole milk', '1', NOW(), NOW()),
('Sheet', 'Laundry time', '4', NOW(), NOW()),
('Create SQL', 'Make damn-fine table', '2', NOW(), NOW()),
('Bedtime', 'Put Sophia to bed', '1', NOW(), NOW()),
('Cake', 'Eat it all!', '5', NOW(), NOW()),
('Gift Bags', 'Trash it all', '2', NOW(), NOW()),
('Wedding', 'Buy wedding gift for Jennifer', '2', NOW(), NOW()),
('Game Room', 'Get nice decoration going', '4', NOW(), NOW()),
('Dogs', 'Feed and water their bowls', '2', NOW(), NOW()),
('Teepee', 'Set up the tent and light', '1', NOW(), NOW()),
('Sleep', 'Recharge the body', '3', NOW(), NOW());

INSERT INTO todos2 (title, details, priority, created_at) VALUES
('Toys', 'organize into bins', '4', NOW()),
('Trash', 'Pull trash bins out to sidewalk', '1', NOW()),
('Vaccination', 'Call dr to make appointment', '2', NOW()),
('Incomplete projects', 'Play catch-up on incompletes', '2', NOW()),
('Phone', 'Charge cell phone', '3', NOW()),
('TV', 'Fix minion movie addiction', '2', NOW()),
('Clothes', 'Burn or wash them', '5', NOW()),
('Tank', 'Change aspen bedding for Monty', '2', NOW());


-- Write a SELECT statement to find all incomplete todos with priority 3.
SELECT * FROM todos2 WHERE completed_at IS NULL AND priority = 3;

-- Write a SELECT statement to find the number of incomplete todos by priority.
SELECT * FROM todos2 WHERE completed_at IS NULL ORDER BY priority ASC;

-- Write a SELECT statement to find the number of todos by priority created in the last 30 days.
--NOTE: I accidentally deleted the table for the previous daily project concerning with creating our first table in SQL.
SELECT DISTINCT priority FROM todos2 WHERE created_at > current_date - interval '30' day;


-- Write a SELECT statement to find the next todo you should work on. This is the todo with the highest priority that was created first.
SELECT * FROM todos2 WHERE priority = 1 ORDER BY created_at ASC;
