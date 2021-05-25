CREATE TABLE IF NOT EXISTS jobs(
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT 'primary key',
  createdAt DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Time Created',
  updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Update',
  jobName VARCHAR(255) COMMENT 'Job name',
  location VARCHAR(255) COMMENT 'Job Location',
  description VARCHAR(255) COMMENT 'Job Description'
);

CREATE TABLE IF NOT EXISTS contractors(
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT 'primary key',
  name VARCHAR(255) COMMENT 'Job name'
);

CREATE TABLE IF NOT EXISTS jobs_contractors(
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT 'primary key',
  jobId INT NOT NULL COMMENT 'FK: Job Relationship',
  contractorId INT NOT NULL COMMENT 'FK: Contractor relationship',
  FOREIGN KEY(jobId) REFERENCES jobs(id) ON DELETE CASCADE,
  FOREIGN KEY(contractorId) REFERENCES contractors(id) ON DELETE CASCADE
);

INSERT INTO 
jobs(location, jobName, description)
VALUES
("Boise, ID", "Albertsons","Repave parking lot");

INSERT INTO 
contractors(name)
VALUES
("Oppedyk Construction");

INSERT INTO 
jobs_contractors(contractorId,jobId)
VALUES
(1,1);

SELECT  * FROM jobs;

SELECT
j.*,
c.name,
jc.id AS jobsContractorsId,
jc.jobId AS jobsId,
jc.contractorId AS contractorsId
FROM jobs_contractors jc
JOIN jobs j ON j.id = jc.jobId
JOIN contractors c ON c.id = jc.contractorId
WHERE jobId = 2;
