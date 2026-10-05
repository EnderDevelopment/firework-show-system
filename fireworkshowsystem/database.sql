CREATE TABLE IF NOT EXISTS firework_shows (
    id INT AUTO_INCREMENT PRIMARY KEY,
    start_time DATETIME,
    end_time DATETIME,
    duration INT,
    status VARCHAR(20)
);

INSERT INTO firework_shows (start_time, end_time, duration, status) VALUES (NOW(), NOW() + INTERVAL 20 MINUTE, 1200, 'completed');