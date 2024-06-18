CREATE DATABASE web_info;

USE web_info;

CREATE TABLE website_data (
    id INT AUTO_INCREMENT PRIMARY KEY,
    url VARCHAR(255),
    social_media_links TEXT,
    tech_stack TEXT,
    meta_title VARCHAR(255),
    meta_description TEXT,
    payment_gateways TEXT,
    website_language VARCHAR(50),
    category VARCHAR(100)
);
SELECT * FROM website_data;
SET SQL_SAFE_UPDATES = 0;

UPDATE website_data
SET social_media_links = 'None'
WHERE social_media_links IS NULL;

UPDATE website_data
SET tech_stack = 'Unknown'
WHERE tech_stack IS NULL;

UPDATE website_data
SET meta_title = 'No Title'
WHERE meta_title IS NULL;

UPDATE website_data
SET meta_description = 'No Description'
WHERE meta_description IS NULL;

UPDATE website_data
SET payment_gateways = 'None'
WHERE payment_gateways IS NULL;

UPDATE website_data
SET website_language = 'Unknown'
WHERE website_language IS NULL;

UPDATE website_data
SET category = 'Other'
WHERE category IS NULL;


