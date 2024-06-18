# Web-Scraping-Project-Report
Task: Extract Information from Websites (use any 100 websites)

Web Scraping Solution

This project scrapes information from a list of websites and stores the data in a MySQL database.

Prerequisites

1.Python 3.x

2.MySQL server

3.Required Python libraries:

4.requests

5.BeautifulSoup (bs4)

6.mysql-connector-python

Installation

1.Clone the Repository:

git clone <repository_url>

cd <repository_directory>

2.Install the Python Libraries:

pip install requests bs4 mysql-connector-python

3.Set Up the MySQL Database:

Open your MySQL client (e.g., MySQL Workbench) and run the provided SQL script to create the necessary database and table:

CREATE DATABASE web_info;

USE web_info;

CREATE TABLE website_data (

    id INT AUTO_INCREMENT PRIMARY KEY,
    
    url VARCHAR(255) NOT NULL,
    
    social_media_links TEXT,
    
    tech_stack TEXT,
    
    meta_title VARCHAR(255),
    
    meta_description TEXT,
    
    payment_gateways VARCHAR(255),
    
    website_language VARCHAR(50),
    
    category VARCHAR(50)
);

Usage

1.In the source code, update the database connection parameters with your MySQL username and password:

db = mysql.connector.connect(

    host="localhost",
    
    user="root",
    
    password="YourPassword",
    
    database="web_info"
)

2.Run the Script:

python <script_name>.py

The script will:

a.Scrape data from the list of URLs.

b.Store the extracted data in the MySQL database.

c.Display the stored data after scraping is complete.

Additional Notes

a.The script includes a 5-second delay between requests to avoid overwhelming the target servers and to comply with polite scraping practices.

b.Error handling is implemented to skip over any websites that fail to be scraped, ensuring that the script continues to run even if some URLs are problematic.







