CREATE TABLE users (
  id INT PRIMARY KEY AUTO_INCREMENT,
  username VARCHAR(255) NOT NULL,
  password VARCHAR(255) NOT NULL,
  role ENUM('teacher', 'student') NOT NULL
);

CREATE TABLE journals (
  id INT PRIMARY KEY AUTO_INCREMENT,
  teacher_id INT NOT NULL,
  description TEXT,
  published_at DATETIME,
  attachment_type ENUM('image', 'video', 'url', 'pdf'),
  attachment_url VARCHAR(255),
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (teacher_id) REFERENCES users(id)
);

CREATE TABLE student_journal (
  id INT PRIMARY KEY AUTO_INCREMENT,
  journal_id INT NOT NULL,
  student_id INT NOT NULL,
  FOREIGN KEY (journal_id) REFERENCES journals(id),
  FOREIGN KEY (student_id) REFERENCES users(id)
);
