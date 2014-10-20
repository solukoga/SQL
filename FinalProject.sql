DROP TABLE Loan_T	 	        CASCADE CONSTRAINTS ;
DROP TABLE Member_T 		    CASCADE CONSTRAINTS ;
DROP TABLE Computer_T 		  CASCADE CONSTRAINTS ;
DROP TABLE Room_T 		      CASCADE CONSTRAINTS ;
DROP TABLE Reservation_T 		CASCADE CONSTRAINTS ;
DROP TABLE Event_T 		      CASCADE CONSTRAINTS ;
DROP TABLE Account_T 		    CASCADE CONSTRAINTS ;
DROP TABLE Item_T 		      CASCADE CONSTRAINTS ;
DROP TABLE Movie_T 		      CASCADE CONSTRAINTS ;


CREATE TABLE Loan_T
       (LoanNumber          NUMBER(10,0)    NOT NULL,
	      CheckoutDate        DATE            NOT NULL,
	      ReturnDate          DATE            NOT NULL,
        DueDate             DATE            NOT NULL,              
        AmountFined         NUMBER(3,2),
        MemberCard#         NUMBER(10,0),
        ItemID              NUMBER(3,0),
CONSTRAINT Loan_PK PRIMARY KEY (LoanNumber));

CREATE TABLE Member_T
       (MemberCardNumber    NUMBER(10,0)    NOT NULL,
	      MemberName          VARCHAR2(20)    NOT NULL,
        Address             VARCHAR2(30)    NOT NULL,
        Phone               VARCHAR2(11)    NOT NULL,
        Email               VARCHAR2(20)    NOT NULL,
        DateJoined          DATE            NOT NULL,      
CONSTRAINT Member_PK PRIMARY KEY (MemberCardNumber));

CREATE TABLE Computer_T
       (ComputerID          NUMBER(10,0)     NOT NULL,
	      ComputerType        VARCHAR2(10)     NOT NULL,
        ComputerLocation    VARCHAR2(20)     NOT NULL,
        RoomID              NUMBER(3,0)      NOT NULL,        
CONSTRAINT Computer_PK PRIMARY KEY (ComputerID));

CREATE TABLE Room_T
       (RoomID          NUMBER(3,0)     NOT NULL,
	      Capacity        NUMBER(3,0)     NOT NULL,
CONSTRAINT Room_PK PRIMARY KEY (RoomID));

CREATE TABLE Reservation_T
       (ReservationNumber   NUMBER(3,0)      NOT NULL,
	      ReservationDate     DATE             NOT NULL,
	      BorrowTime          TIME             NOT NULL,
        ReturnTime          TIME             NOT NULL,              
        ComputerID          NUMBER(10,0),
        MemberCardNumber    NUMBER(10,0),
CONSTRAINT Reservation_PK PRIMARY KEY (ReservationNumber));

CREATE TABLE Event_T
       (EventID       NUMBER(10,0)    NOT NULL,
	      EventDate     DATE            NOT NULL,
	      RoomID        NUMBER(3,0)     NOT NULL,
CONSTRAINT Event_PK PRIMARY KEY (EventID));

CREATE TABLE Account_T
       (AccountID           NUMBER(10,0)    NOT NULL,
	      Balance             NUMBER(5,2)     NOT NULL,
	      DueDate             DATE            NOT NULL,
        MemberCardNumber    NUMBER(10,0)    NOT NULL,                  
CONSTRAINT Account_PK PRIMARY KEY (AccountID));

CREATE TABLE Item_T
       (ItemID         NUMBER(3,0)      NOT NULL,
	      ItemLocation   VARCHAR2(20)     NOT NULL,
	      Status         VARCHAR2(15)     NOT NULL,
        Title          VARCHAR2(20)     NOT NULL,              
        ItemType       VARCHAR2(10),
CONSTRAINT Item_PK PRIMARY KEY (ItemID));

CREATE TABLE Movie_T
       (ItemID         NUMBER(3,0)      NOT NULL,
	      IMDbUrl        VARCHAR2(10)     NOT NULL,
	      Rating         CHAR(1)          NOT NULL,
        Quantity       NUMBER(2,0)      NOT NULL,              
        Condition      VARCHAR2(10),
CONSTRAINT Movie_PK PRIMARY KEY (?????));


INSERT INTO Loan_T(LoanNumber,CheckoutDate,ReturnDate,DueDate,AmountFined,MemberCard#,ItemID)
VALUES('1245','02/12/14','02/19/14','3/12/14','0','1352467891','003');
INSERT INTO Loan_T(LoanNumber,CheckoutDate,ReturnDate,DueDate,AmountFined,MemberCard#,ItemID)
VALUES('1678','12/05/13','01/10/14','01/05/14','1.00','1052557881','001');
INSERT INTO Loan_T(LoanNumber,CheckoutDate,ReturnDate,DueDate,AmountFined,MemberCard#,ItemID)
VALUES('1679','03/02/14','03/19/14','04/02/14','0','2377767892','002');
INSERT INTO Loan_T(LoanNumber,CheckoutDate,ReturnDate,DueDate,AmountFined,MemberCard#,ItemID)
VALUES('1001','01/08/14','02/06/14','02/08/14','0','2332367890','004');
INSERT INTO Loan_T(LoanNumber,CheckoutDate,ReturnDate,DueDate,AmountFined,MemberCard#,ItemID)
VALUES('1401','02/01/14','03/09/14','03/01/14','2.00','2436322287','005');

INSERT INTO Member_T(MemberCardNumber,MemberName,Address,Phone,Email,DateJoined)
VALUES('1352467891','Paul Smith','12 Potter St. Boston,MA 02115','7182234546','smithp@yahoo.com','01/21/13');
INSERT INTO Member_T(MemberCardNumber,MemberName,Address,Phone,Email,DateJoined)
VALUES('1052557881','Catherine Wallace','23 Olsen Rd.Boston,MA 02125','6173221304','cathyw@gmail.com','09/24/12');
INSERT INTO Member_T(MemberCardNumber,MemberName,Address,Phone,Email,DateJoined)
VALUES('2377767892', 'Aaron Walker','9 Ash St. Stoughton,MA 02072', '6179802240','aaronwalker@gmail.com','02/15/14';);
INSERT INTO Member_T(MemberCardNumber,MemberName,Address,Phone,Email,DateJoined)
VALUES('2332367890','Sally Allen','24 Brook Rd. Milton,MA 02186','6176967289','allens@wit.edu','05/21/12');
INSERT INTO Member_T(MemberCardNumber,MemberName,Address,Phone,Email,DateJoined)
VALUES('2436322287','Richard Thomas','6 Pond Ln. Boston,MA 02116','6174452481','thomasr@yahoo.com','07/19/13');

INSERT INTO Computer_T(ComputerID,ComputerType,ComputerLocation,RoomID)
VALUES('1000500001','Mac','1st Floor','000');
INSERT INTO Computer_T(ComputerID,ComputerType,ComputerLocation,RoomID)
VALUES('1000500002','Windows','2nd Floor','020');
INSERT INTO Computer_T(ComputerID,ComputerType,ComputerLocation,RoomID)
VALUES('1000500003','Windows','1st Floor','010');


INSERT INTO Room_T(RoomID,Capacity)
VALUES('000','40');
INSERT INTO Room_T(RoomID,Capacity)
VALUES('010','20');
INSERT INTO Room_T(RoomID,Capacity)
VALUES('020','35');


INSERT INTO Reservation_T(ReservationNumber,ReservationDate,BorrowTime,ReturnTime,ComputerID,MemberCardNumber)
VALUES('110','01/23/14','4:00','5:24','1000500001','1352467891');
INSERT INTO Reservation_T(ReservationNumber,ReservationDate,BorrowTime,ReturnTime,ComputerID,MemberCardNumber)
VALUES('110','01/23/14','4:00','5:24','1000500001','2436322287');
INSERT INTO Reservation_T(ReservationNumber,ReservationDate,BorrowTime,ReturnTime,ComputerID,MemberCardNumber)
VALUES('110','01/23/14','4:00','5:24','1000500001','2332367890');


INSERT INTO Event_T(EventID,EventDate,RoomID)
VALUES('1200000060','12/22/13','001');
INSERT INTO Event_T(EventID,EventDate,RoomID)
VALUES('1200000061','02/14/14','008');
INSERT INTO Event_T(EventID,EventDate,RoomID)
VALUES('1200000062','03/17/14','003');

INSERT INTO Account_T(AccountID,Balance,DueDate,MemberCardNumber)
VALUES('1278901238','0',NULL,'1352467891');
INSERT INTO Account_T(AccountID,Balance,DueDate,MemberCardNumber)
VALUES('1278901238','1.00','01/11/14','1052557881');
INSERT INTO Account_T(AccountID,Balance,DueDate,MemberCardNumber)
VALUES('1278901238','0',NULL,'2377767892'); 
INSERT INTO Account_T(AccountID,Balance,DueDate,MemberCardNumber)
VALUES('1278901238','0',NULL,'2332367890');
INSERT INTO Account_T(AccountID,Balance,DueDate,MemberCardNumber)
VALUES('1278901238','10.25','03/10/14','2436322287');

INSERT INTO Item_T(ItemID,ItemLocation,Status,Title,ItemType)
VALUES('003','1st Floor','Checked out','Where The Wild Things Are','Book');
INSERT INTO Item_T(ItemID,ItemLocation,Status,Title,ItemType)
VALUES('001','3rd Floor','Checked out','Harry Potter and the Chamber of Secrets','Movie');
INSERT INTO Item_T(ItemID,ItemLocation,Status,Title,ItemType)
VALUES('002','1st Floor','Checked out','Number the Stars','Book');
INSERT INTO Item_T(ItemID,ItemLocation,Status,Title,ItemType)
VALUES('004','1st Floor','Checked out','The Outsiders','Book');
INSERT INTO Item_T(ItemID,ItemLocation,Status,Title,ItemType)
VALUES('005','3rd Floor','Checked out','The Hunger Games','Book');
INSERT INTO Item_T(ItemID,ItemLocation,Status,Title,ItemType)
VALUES('006','2nd Floor','Available','The Sound of Music','Movie');
INSERT INTO Item_T(ItemID,ItemLocation,Status,Title,ItemType)
VALUES('007','2nd Floor','Available','Aladdin','Movie');

INSERT INTO Movie_T(ItemID,IMDbUrl,Rating,Quantity,Condition)
VALUES('001','http://www.imdb.com/title/tt0295297/?ref_=fn_al_tt_8','7.3','1','New');
INSERT INTO Movie_T(ItemID,IMDbUrl,Rating,Quantity,Condition)
VALUES('006','http://www.imdb.com/title/tt0059742/?ref_=nv_sr_1','8.0','2','Good');
INSERT INTO Movie_T(ItemID,IMDbUrl,Rating,Quantity,Condition)
VALUES('007','http://www.imdb.com/title/tt0103639/?ref_=nv_sr_1','8.0','4','Good');



--count the number of members who have a phone number beginning with 617
select count(Phone) from Member_T where Phone LIKE '617%';

--list Windows computers
select ComputerID,Computer_Type from Computer_T where upper(ComputerType) = 'Windows';

--list items that are available
select ItemID,Status from Item_T where upper(Status) = 'Available';

--list the amounts fined that are greater than $1
select LoanNumber,Amount_Fined from Loan where Amount_Fined > 1.00;

--list the movie ratings in descending order
select ItemID,Rating from Movie_T group by ItemID order by Rating DESC;












INSERT INTO Employee_T  (EmployeeID, EmployeeFirstName, EmployeeLastName, EmployeeAddress, EmployeeCity, EmployeeState,EmployeeZip,EmployeeDateHired,EmployeeBirthDate,EmployeeSupervisorID)
VALUES  ('454-56-768', 'Robert', 'Lewis', '17834 Deerfield Ln', 'Nashville', 'CA',NULL, '01/Jan/95',NULL,NULL);
INSERT INTO Employee_T  (EmployeeID, EmployeeFirstName, EmployeeLastName, EmployeeAddress, EmployeeCity, EmployeeState,EmployeeZip,EmployeeDateHired,EmployeeBirthDate,EmployeeSupervisorID)
VALUES  ('123-44-345', 'Jim', 'Jason', '2134 Hilltop RD', NULL, 'CA',NULL, '12/Jun/99',NULL,'454-56-768');
INSERT INTO Employee_T  (EmployeeID, EmployeeFirstName, EmployeeLastName, EmployeeAddress, EmployeeCity, EmployeeState,EmployeeZip,EmployeeDateHired,EmployeeBirthDate,EmployeeSupervisorID)
VALUES  ('454-56-324', 'Richard', 'James', '34 Washington st', 'Mansfield', 'MA',NULL, '01/Jan/99',NULL,'123-44-345');
INSERT INTO Employee_T  (EmployeeID, EmployeeFirstName, EmployeeLastName, EmployeeAddress, EmployeeCity, EmployeeState,EmployeeZip,EmployeeDateHired,EmployeeBirthDate,EmployeeSupervisorID)
VALUES  ('454-56-377', 'Leon', 'Williams', '55 Washington Bld', 'Alexandria', 'VA',NULL, '04/Jan/97',NULL,NULL);

INSERT INTO Skill_T (SkillID,SkillDescription)
VALUES  (01, 'java');
INSERT INTO Skill_T (SkillID,SkillDescription)
VALUES  (02, 'C++');
INSERT INTO Skill_T (SkillID,SkillDescription)
VALUES  (03, 'Perl');

INSERT INTO EmployeeSkills_T (EmployeeID, SkillID)
VALUES ('123-44-345',01);
INSERT INTO EmployeeSkills_T (EmployeeID, SkillID)
VALUES ('123-44-345',03);
INSERT INTO EmployeeSkills_T (EmployeeID, SkillID)
VALUES ('454-56-768',01);



select * FROM Employee_T;
select * FROM Employee_T WHERE upper(EmployeeLastName) LIKE 'L%';


select * FROM Employee_T;
select * FROM Employee_T WHERE EmployeeDateHired LIKE '%-%-99';


select * FROM Employee_T;
select * FROM Employee_T WHERE EmployeeState IN ('CA', 'VA') order by EmployeeZip DESC;


select * FROM Employee_T;
select * FROM Employee_T WHERE EmployeeSupervisorID LIKE '123-44-345';


select * FROM Employee_T;
select COUNT(EmployeeID) from Employee_T;


select  EmployeeState, count(EmployeeID)  from Employee_T
      group by EmployeeState;


COMMIT;