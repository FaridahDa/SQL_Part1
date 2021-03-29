DELIMITER // 

CREATE PROCEDURE getBookGenres()
BEGIN
	SELECT distinct Genre from library_books;
END //


CALL getBookGenres()

DELIMITER //

CREATE PROCEDURE getLibraryUserAge()
BEGIN
	SELECT *, YEAR(CURDATE()) - YEAR(DOB) AS Age FROM Library_users;
END //

CALL getLibraryUserAge()

DELIMITER //

CREATE PROCEDURE getUnder18s()
BEGIN
	SELECT *, YEAR(CURDATE()) - YEAR(DOB) AS Age FROM Library_users
    WHERE Age < 18;
END //

CALL getUnder18s()

DELIMITER //
CREATE PROCEDURE getLibraryUserUnder18()
BEGIN
	SELECT * from Library_users
    WHERE DOB > '2003-03-29';
END //

CALL getLibraryUserUnder18()








