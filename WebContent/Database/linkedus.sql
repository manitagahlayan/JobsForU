CREATE DATABASE IF NOT EXISTS LINKEDUS;
USE LINKEDUS;

DROP TABLE IF EXISTS `Student`;
CREATE TABLE `Student` (
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `firstName` varchar(50),
  `lastName` varchar(50),
  `telephone` varchar(20),
  `address` varchar(100),
  `summary` LONGTEXT,
  `expectedJob` varchar(100),
  `skills` LONGTEXT,
  `schoolName` varchar(100),
  `schoolStartMonth` varchar(10),
  `schoolStartYear` varchar(10),
  `schoolEndMonth` varchar(10),
  `schoolEndYear` varchar(10),
  `schoolDegree` varchar(100),
  `schoolMajor` varchar(100),
  `workCompanyName` varchar(100),
  `workJobTitle` varchar(100),
  `workStartMonth` varchar(10),
  `workStartYear` varchar(10),
  `workEndMonth` varchar(10),
  `workEndYear` varchar(10),
  `workJobResponsibility` LONGTEXT,
  `projectName` varchar(100),
  `projectDescription` LONGTEXT,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=7;


DROP TABLE IF EXISTS `Recruiter`;
CREATE TABLE `Recruiter` (
  `recEmail` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`recEmail`)
) ENGINE=InnoDB AUTO_INCREMENT=7;

DROP TABLE IF EXISTS `Job`;
CREATE TABLE `Job` (
  `jobID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `recEmail` varchar(50) NOT NULL,
  `jobTitle` varchar(50),
  `companyName` varchar(20),
  `companyWebsite` varchar(100),
  `location` varchar(50),
  `jobDescription` LONGTEXT,
  `desiredSkills` LONGTEXT,
  `industry` varchar(50),
  `employmentType` varchar(50),
  `experienceLevel` varchar(50),
  `jobFunction` varchar(50),
  `education` varchar(50),
  `postTime` date,
  `jobLink` varchar(1000),
  PRIMARY KEY (`jobID`)
) ENGINE=InnoDB AUTO_INCREMENT=7;

DROP TABLE IF EXISTS `Admin`;
CREATE TABLE `Admin` (
  `adminID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `adminName` varchar(50),
  `password` varchar(50),
  PRIMARY KEY (`adminID`)
) ENGINE=InnoDB AUTO_INCREMENT=7;


insert into student values(
'1@students.itu.edu',
'1234',
'John',
'Doe',
'(123)456-7890',
'San Jose, California, United States',
'As a senior at ITU, 
I am currently pursuing a degree in Business
 Administration with a concentration in International Business. 
I plan to graduate in 2016. Playing sports my entire life and 
now in college, I have mastered time management skills and 
can work efficiently towards deadlines. I have strong communications 
skills from multiple jobs in customer service and am excited to 
use my skills in the business world upon graduation.',
'Sales and Marketing Intern',
'Customer Service;Team Leadership;Microsoft Office',
'International Technological University',
'January',
'2015',
'May',
'2016',
'Master of Business Administration (M.B.A.)',
'Business Administration',
'The Museum of Flight',
'Admissions Assistant',
'June',
'2015',
'December',
'2015',
'Sold admissions tickets, additional entertainment accessories, 
and operated Flight Avionics simulator. Overcame and effectively 
communicated through cultural barriers, which led to better 
overall efficiency of customer service skills.',
'Junior Achievement',
'Taught first grade class at West Mercer Elementary School about primary 
economics topics which included, but were not limited to wants versus needs,
 money, goods and services, entrepreneurship, and businesses.');
 
 insert into student values(
'2@students.itu.edu',
'1234',
'Jack',
'Wu',
'(123)456-7890',
'San Jose, California, United States',
'OS: Mac, Linux, Windows
Programmming languages: Java, C++ , Scala(basics)
Platform (frameworks): Java EE (EJB, JPA), Storm (+DRPC), OpenNLP, Android, Hibernate, JDBC, Qt
DB: MongoDB, JavaDB(Derby), MySQL (basics)
Languages: English, Ukraine, Russian
Specialties: Text mining, Data mining, machine learning, Big Data',
'Software Development Engineer',
'Java; Android; OOP; Linux; Software Engineering; Git; C++; Algorithms; Eclipse',
'International Technological University',
'January',
'2015',
'May',
'2016',
'Master Degree',
'Computer Science/Software Engineering',
'Amazon',
'SDE',
'June',
'2015',
'December',
'2015',
'Development of algorithms for data processing; Data/Text mining algorithms. 
Also development of programs for different mobile platforms as well as the development of
firmware for phones on the Bada OS and Android. Development and implementation of new
technologies and software.',
'Social network for family',
'Social network for family');

 insert into student values(
'3@students.itu.edu',
'1234',
'Mike',
'Gong',
'(123)456-7890',
'San Jose, California, United States',
'OS: Mac, Linux, Windows
Programmming languages: Java, C++ , Scala(basics)
Platform (frameworks): Java EE (EJB, JPA), Storm (+DRPC), OpenNLP, Android, Hibernate, JDBC, Qt
DB: MongoDB, JavaDB(Derby), MySQL (basics)
Languages: English, Ukraine, Russian
Specialties: Text mining, Data mining, machine learning, Big Data',
'Software Development Engineer',
'Java; Android; OOP; Linux; Software Engineering; Git; C++; Algorithms; Eclipse',
'International Technological University',
'January',
'2015',
'May',
'2016',
'Master Degree',
'Computer Science/Software Engineering',
'Amazon',
'SDE',
'June',
'2015',
'December',
'2015',
'Development of algorithms for data processing; Data/Text mining algorithms. 
Also development of programs for different mobile platforms as well as the development of
firmware for phones on the Bada OS and Android. Development and implementation of new
technologies and software.',
'Social network for family',
'Social network for family');

 insert into student values(
'4@students.itu.edu',
'1234',
'Brian',
'Roxhdec',
'(123)456-7890',
'San Jose, California, United States',
'OS: Mac, Linux, Windows
Programmming languages: Java, C++ , Scala(basics)
Platform (frameworks): Java EE (EJB, JPA), Storm (+DRPC), OpenNLP, Android, Hibernate, JDBC, Qt
DB: MongoDB, JavaDB(Derby), MySQL (basics)
Languages: English, Ukraine, Russian
Specialties: Text mining, Data mining, machine learning, Big Data',
'Software Development Engineer',
'Java; Android; OOP; Linux; Software Engineering; Git; C++; Algorithms; Eclipse',
'International Technological University',
'January',
'2015',
'May',
'2016',
'Master Degree',
'Computer Science/Software Engineering',
'Amazon',
'SDE',
'June',
'2015',
'December',
'2015',
'Development of algorithms for data processing; Data/Text mining algorithms. 
Also development of programs for different mobile platforms as well as the development of
firmware for phones on the Bada OS and Android. Development and implementation of new
technologies and software.',
'Social network for family',
'Social network for family');

insert into job(recEmail,jobTitle,companyName,companyWebsite,location,
jobDescription,desiredSkills,industry,employmentType,experienceLevel,
jobFunction,education,postTime,jobLink) values(
'1@itu.edu',
'Software Development Engineer',
'Amazon',
'https://www.amazon.com/',
'Seattle, WA, US',
'The AWS Relational Database Service is one of the fastest-growing AWS businesses, 
providing automated relational database management in the cloud. 
Customers can set up a new database with just a few clicks, 
and complex administrative tasks like scaling, fail-over, 
and monitoring are all automatically handled by our control systems. 
Providing such simplified management for customers comes with the 
challenge of building sophisticated and reliable control systems. 
The RDS team addresses these challenges by developing services that 
reflect the latest advances in high availability, data dissemination 
and replication, load balancing, autonomous management, and repair.',
'Bachelor degree in Computer Science or related field, minimum of 3 years software development experience
Alternatively (no degree) minimum of eight years of professional software development experience
Proficiency developing in a modern programming language, such as C++, Java, C#, Python, or Ruby
Proficiency in design and analysis of algorithms and data structures
Knowledge of Operating Systems and their security features
Detailed technical knowledge of systems and network security, authentication and security protocols, 
applied cryptography, and application security
Proficiency in object-oriented design
Effective verbal and written communication skills
Masters or Ph.D. degree in Computer Science',
'Computer Science/Software Engineering',
'Full-time',
'Entry level',
'Engineering',
'Masters or Ph.D. degree in Computer Science',
'2016-03-08',
'https://us-amazon.icims.com/jobs/372402/sde/job?mode=job&iis=Job%2BBoard&iisn=LinkedIn&mobile=false&width=1329&height=1200&bga=true&needsRedirect=false&jan1offset=-480&jun1offset=-420');

insert into job(recEmail,jobTitle,companyName,companyWebsite,location,
jobDescription,desiredSkills,industry,employmentType,experienceLevel,
jobFunction,education,postTime,jobLink) values(
'1@itu.edu',
'TED Software Development Engineer II',
'Yahoo',
'https://www.yahoo.com/',
'Sunnyvale, CA , USA',
'Contribute significant tested, high-quality, reusable, elegant code.
Navigate the serving stack from browser to API with ease, across multiple technologies, and languages.
Partner with Product and Design to build and implement solutions.
Test your own code using Test Driven Development techniques both unit and functional.
Contribute to engineering best practices, architecture, and implementations.
Own project/features development with minimal supervision, learn, and apply new technologies quickly and without reticence.
Maintain and improve existing code with a pride of ownership including up-to-date documentation on processes and code.',
'Familiar with technologies distributed systems, cloud computing, Web services, and communications protocols with understanding of full serving architecture including use of HTTP proxies, Memcache, Traffic Server or Squid.
Solid understanding of algorithms, data structures, algorithm design, and problem solving, with some combination of JavaScript, Nodejs, Java, PHP, C++, Python, Perl, and/or Mobile.
Solid experience with Web technologies, e.g., Apache, proxy servers, HTTP, REST, JSON, AJAX, JavaScript.
Proficiency in Unix/Linux tools and utilities with familiar with client and server performance optimization techniques, profiling, debugging.
Experience with test engineering including unit/functional testing, Continuous Integration philosophies and practices, exposure to Test Driven Development, Agile/Scrum methodologies.
Strong verbal and written communication skills with great sense of responsibility and attention to detail.',
'Computer Science/Software Engineering',
'Full-time',
'Entry level',
'Engineering',
'Masters or Ph.D. degree in Computer Science',
'2016-02-19',
'https://tas-yahoo.taleo.net/careersection/yahoo_global_cs/jobdetail.ftl?job=1545149&src=SNS-10032&lang=en&ylng=en&yloc=false');

insert into job(recEmail,jobTitle,companyName,companyWebsite,location,
jobDescription,desiredSkills,industry,employmentType,experienceLevel,
jobFunction,education,postTime,jobLink) values(
'1@itu.edu',
'Data Analyst (Instagram)',
'Facebook',
'https://www.facebook.com/',
'Menlo Park, CA, US',
'Facebook was built to help people connect and share, 
and over the last decade our tools have played a critical 
part in changing how people around the world communicate with one another. 
With over a billion people using the service and more than 
fifty offices around the globe, a career at Facebook offers 
countless ways to make an impact in a fast growing organization.
Nearly 400 million people use Instagram each month to connect with friends, 
family, and public figures. A big part of this social connection 
is the ongoing social conversation that takes place on Facebook 
about the latest breaking news, award show, and sporting event 
being watched all around the world.
As a data analyst on the communications team, 
your primary focus will be using data to bring these big 
consumer public moments to life, particularly in relation 
to important world news moments and special events.
This position is full-time and based in Menlo Park.',
'3+ years of data related working experience
Advanced degree in psychology, statistics, economics, behavioral
 or social science or a related quantitative field preferred
Experience with statistical and data analysis using SQL or similar (HIVE experience a plus)',
'Computer Science/Software Engineering',
'Full-time',
'Entry level',
'Information Technology,Analyst',
'Masters or Ph.D. degree in Computer Science',
'2016-03-08',
'https://us-amazon.icims.com/jobs/372402/sde/job?mode=job&iis=Job%2BBoard&iisn=LinkedIn&mobile=false&width=1329&height=1200&bga=true&needsRedirect=false&jan1offset=-480&jun1offset=-420');

insert into job(recEmail,jobTitle,companyName,companyWebsite,location,
jobDescription,desiredSkills,industry,employmentType,experienceLevel,
jobFunction,education,postTime,jobLink) values(
'1@itu.edu',
'Software Development Engineer II',
'Microsoft',
'https://www.microsoft.com/en-us/',
'Redmond, WA, US',
'Ever wanted to work with the latest Microsoft devices and services 
technologies and partner with the world top developers. 
Our partners are building amazing applications and we are 
looking for a software engineer with strong developer skills 
to join the DX Technical Team with the objective to drive 
adoption and development of industry leading applications 
and services across devices and work to provide feedback to 
engineering on adjustments to our products. 
The candidate will need to demonstrate deep technical knowledge 
and development expertise necessary to develop the most leading-edge 
applications specifically focusing on the client technologies.
 The candidate will have the technical expertise and problem 
solving skills to build strong, influential relationships with 
partners by helping them solve their most complex technical 
problems and build strong relationships with engineering. 
As part of the role, the candidate will need to work closely 
with other engineering groups, provide partner feedback, 
and influence the roadmap for future product releases. 
The candidate will also engage with partners to chart their 
applications architectural direction and develop the resulting 
solutions. Based on their deep expertise developing this software, 
the candidate will present at top industry events.',
'Alternatively (no degree) minimum of eight years of professional software development experience
Proficiency developing in a modern programming language, such as C++, Java, C#, Python, or Ruby
Proficiency in design and analysis of algorithms and data structures
Knowledge of Operating Systems and their security features
Detailed technical knowledge of systems and network security, authentication and security protocols, 
applied cryptography, and application security
Proficiency in object-oriented design
Effective verbal and written communication skills',
'Masters or Ph.D. degree in Computer Science',
'Full-time',
'Entry level',
'Engineering',
'Masters or Ph.D. degree in Computer Science',
'2016-04-08',
'https://careers.microsoft.com/resumepreview.aspx?aid=218760&utm_source=linkedin');

insert into recruiter values(
'1@itu.edu',
'1234'
);

insert into admin values(
'1',
'admin',
'admin'
);
