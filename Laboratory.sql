DROP DATABASE IF EXISTS laboratory;
CREATE DATABASE laboratory;
USE laboratory;

DROP TABLE IF EXISTS EMPLOYEE;
DROP TABLE IF EXISTS TEST;
DROP TABLE IF EXISTS CLIENT;
DROP TABLE IF EXISTS CLIENTPHONENUM;
DROP TABLE IF EXISTS ORDERS;
DROP TABLE IF EXISTS HANDLES;
DROP TABLE IF EXISTS FUMEHOOD;
DROP TABLE IF EXISTS DEPARTMENT;
DROP TABLE IF EXISTS MATERIAL;
DROP TABLE IF EXISTS CONTAIN;
DROP TABLE IF EXISTS USES;
DROP TABLE IF EXISTS TECHNICIAN;
DROP TABLE IF EXISTS INSPECT;


CREATE TABLE `EMPLOYEE` (
    `EmployeeID`	INT,
    `First`	VARCHAR(512),
    `Last`	VARCHAR(512),
    `HireDate`	DATE,
    `Salary`	INT, 
    CONSTRAINT EMPLOYEE_PK PRIMARY KEY (EmployeeID)
);

INSERT INTO `EMPLOYEE` (`EmployeeID`, `First`, `Last`, `HireDate`, `Salary`) VALUES ('101', 'Nevsa', 'Pennock', '2022/03/05', '105000');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `First`, `Last`, `HireDate`, `Salary`) VALUES ('102', 'Corrianne', 'Andrich', '2022/03/08', '125000');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `First`, `Last`, `HireDate`, `Salary`) VALUES ('103', 'Julee', 'Leverich', '2022/03/06', '150000');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `First`, `Last`, `HireDate`, `Salary`) VALUES ('104', 'Cyrille', 'Upston', '2022/04/17', '170000');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `First`, `Last`, `HireDate`, `Salary`) VALUES ('105', 'Deeanne', 'Blinco', '2022/09/15', '145000');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `First`, `Last`, `HireDate`, `Salary`) VALUES ('106', 'Janessa', 'Catmull', '2023/03/08', '115000');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `First`, `Last`, `HireDate`, `Salary`) VALUES ('107', 'Shari', 'Clowes', '2023/08/04', '125000');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `First`, `Last`, `HireDate`, `Salary`) VALUES ('108', 'Arvie', 'Tiesman', '2023/12/26', '150000');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `First`, `Last`, `HireDate`, `Salary`) VALUES ('109', 'Nobie', 'Rame', '2024/02/07', '130000');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `First`, `Last`, `HireDate`, `Salary`) VALUES ('110', 'Ferris', 'Weson', '2024/05/16', '150000');


CREATE TABLE `TEST` (
    `TestID`	VARCHAR(60),
    CONSTRAINT TEST_PK PRIMARY KEY (TestID)
);

INSERT INTO `TEST` (`TestID`) VALUES ('T1');
INSERT INTO `TEST` (`TestID`) VALUES ('T2');
INSERT INTO `TEST` (`TestID`) VALUES ('T3');
INSERT INTO `TEST` (`TestID`) VALUES ('T4');
INSERT INTO `TEST` (`TestID`) VALUES ('T5');
INSERT INTO `TEST` (`TestID`) VALUES ('T6');


CREATE TABLE `CLIENT` (
    `ClientID`	VARCHAR(60),
    `CompanyName`	VARCHAR(512),
    `ContactName`	VARCHAR(512),
    `Street`	VARCHAR(512),
    `City`	VARCHAR(512),
    `State`	VARCHAR(512),
    `ZipCode`	INT, 
    CONSTRAINT CLIENT_PK PRIMARY KEY (ClientID)
);

INSERT INTO `CLIENT` (`ClientID`, `CompanyName`, `ContactName`, `Street`, `City`, `State`, `ZipCode`) VALUES ('CL1', 'Thoughtblab', 'Madlin Jacobowits', '9792 Grasskamp Pass', 'Austin', 'TX', '78789');
INSERT INTO `CLIENT` (`ClientID`, `CompanyName`, `ContactName`, `Street`, `City`, `State`, `ZipCode`) VALUES ('CL2', 'Oyope', 'Britte Keller', '2 Elgar Pass', 'Washington', 'DC', '20041');
INSERT INTO `CLIENT` (`ClientID`, `CompanyName`, `ContactName`, `Street`, `City`, `State`, `ZipCode`) VALUES ('CL3', 'Fivechat', 'Rosalie Gierhard', '75 Texas Street', 'Denver', 'C0', '80565');
INSERT INTO `CLIENT` (`ClientID`, `CompanyName`, `ContactName`, `Street`, `City`, `State`, `ZipCode`) VALUES ('CL4', 'Oyoyo', 'Nelia Spicer', '6404 Nancy Street', 'Austin', 'TX', '78744');
INSERT INTO `CLIENT` (`ClientID`, `CompanyName`, `ContactName`, `Street`, `City`, `State`, `ZipCode`) VALUES ('CL5', 'Fanoodle', 'Randi Broxholme', '7 Old Shore Road', 'Colorado Springs', 'CO', '80945');
INSERT INTO `CLIENT` (`ClientID`, `CompanyName`, `ContactName`, `Street`, `City`, `State`, `ZipCode`) VALUES ('CL6', 'Avavee', 'Catrina Stonier', '25 Cordelia Hill', 'Golden', 'CO', '80580');
INSERT INTO `CLIENT` (`ClientID`, `CompanyName`, `ContactName`, `Street`, `City`, `State`, `ZipCode`) VALUES ('CL7', 'Leexo', 'Jesse Jeynes', '879 6th Plaza', 'El Paso', 'TX', '79923');
INSERT INTO `CLIENT` (`ClientID`, `CompanyName`, `ContactName`, `Street`, `City`, `State`, `ZipCode`) VALUES ('CL8', 'Dynabox', 'Derrik Eccleshare', '32274 Gerald Terrace', 'Sioux Falls', 'SD', '57110');
INSERT INTO `CLIENT` (`ClientID`, `CompanyName`, `ContactName`, `Street`, `City`, `State`, `ZipCode`) VALUES ('CL9', 'Twitternation', 'Taite Dockreay', '714 Blue Bill Park Lane', 'Boulder', 'CO', '80302');
INSERT INTO `CLIENT` (`ClientID`, `CompanyName`, `ContactName`, `Street`, `City`, `State`, `ZipCode`) VALUES ('CL10', 'Edgetag', 'Johnathon Novelli', '868 Fremont Way', 'Washington', 'DC', '20067');


CREATE TABLE `CLIENTPHONENUM` (
    `PhoneNum`	VARCHAR(60),
    `ClientID`	VARCHAR(60), 
    CONSTRAINT CLIENTPHONENUM_PK PRIMARY KEY (PhoneNum, ClientID),
    CONSTRAINT CLIENTPHONENUM_FK_CLIENT FOREIGN KEY (ClientID) REFERENCES `CLIENT`(ClientID)
);

INSERT INTO `CLIENTPHONENUM` (`PhoneNum`, `ClientID`) VALUES ('+1 337 609 0213', 'CL1');
INSERT INTO `CLIENTPHONENUM` (`PhoneNum`, `ClientID`) VALUES ('+1 703 343 2013', 'CL2');
INSERT INTO `CLIENTPHONENUM` (`PhoneNum`, `ClientID`) VALUES ('+1 203 599 6871', 'CL3');
INSERT INTO `CLIENTPHONENUM` (`PhoneNum`, `ClientID`) VALUES ('+1 512 375 1969', 'CL4');
INSERT INTO `CLIENTPHONENUM` (`PhoneNum`, `ClientID`) VALUES ('+1 719 190 9316', 'CL5');
INSERT INTO `CLIENTPHONENUM` (`PhoneNum`, `ClientID`) VALUES ('+1 843 901 9234', 'CL6');
INSERT INTO `CLIENTPHONENUM` (`PhoneNum`, `ClientID`) VALUES ('+1 915 825 3540', 'CL7');
INSERT INTO `CLIENTPHONENUM` (`PhoneNum`, `ClientID`) VALUES ('+1 605 401 7760', 'CL8');
INSERT INTO `CLIENTPHONENUM` (`PhoneNum`, `ClientID`) VALUES ('+1 937 899 3345', 'CL9');
INSERT INTO `CLIENTPHONENUM` (`PhoneNum`, `ClientID`) VALUES ('+1 202 798 5121', 'CL10');


CREATE TABLE `ORDERS` (
    `TestID`	VARCHAR(60),
    `ClientID`	VARCHAR(60),
    CONSTRAINT ORDERS_PK PRIMARY KEY (TestID, ClientID),
    CONSTRAINT ORDERS_FK_TEST FOREIGN KEY (TestID) REFERENCES `TEST`(TestID),
    CONSTRAINT ORDERS_FK_CLIENT FOREIGN KEY (ClientID) REFERENCES `CLIENT`(ClientID)
);

INSERT INTO `ORDERS` (`TestID`, `ClientID`) VALUES ('T1', 'CL1');
INSERT INTO `ORDERS` (`TestID`, `ClientID`) VALUES ('T2', 'CL2');
INSERT INTO `ORDERS` (`TestID`, `ClientID`) VALUES ('T3', 'CL3');
INSERT INTO `ORDERS` (`TestID`, `ClientID`) VALUES ('T3', 'CL4');
INSERT INTO `ORDERS` (`TestID`, `ClientID`) VALUES ('T5', 'CL5');
INSERT INTO `ORDERS` (`TestID`, `ClientID`) VALUES ('T6', 'CL6');
INSERT INTO `ORDERS` (`TestID`, `ClientID`) VALUES ('T1', 'CL7');
INSERT INTO `ORDERS` (`TestID`, `ClientID`) VALUES ('T2', 'CL8');
INSERT INTO `ORDERS` (`TestID`, `ClientID`) VALUES ('T2', 'CL9');
INSERT INTO `ORDERS` (`TestID`, `ClientID`) VALUES ('T2', 'CL10');
INSERT INTO `ORDERS` (`TestID`, `ClientID`) VALUES ('T1', 'CL9');
INSERT INTO `ORDERS` (`TestID`, `ClientID`) VALUES ('T5', 'CL10');
INSERT INTO `ORDERS` (`TestID`, `ClientID`) VALUES ('T5', 'CL3');
INSERT INTO `ORDERS` (`TestID`, `ClientID`) VALUES ('T6', 'CL9');
INSERT INTO `ORDERS` (`TestID`, `ClientID`) VALUES ('T5', 'CL9');
INSERT INTO `ORDERS` (`TestID`, `ClientID`) VALUES ('T1', 'CL10');
INSERT INTO `ORDERS` (`TestID`, `ClientID`) VALUES ('T2', 'CL6');
INSERT INTO `ORDERS` (`TestID`, `ClientID`) VALUES ('T3', 'CL6');
INSERT INTO `ORDERS` (`TestID`, `ClientID`) VALUES ('T4', 'CL10');



CREATE TABLE `HANDLES` (
    `EmployeeID`	INT,
    `TestID`	VARCHAR(60),
    `ClientID`	VARCHAR(60),
    `Date`	DATE, 
    CONSTRAINT HANDLES_PK PRIMARY KEY (EmployeeID, TestID, ClientID),
    CONSTRAINT HANDLES_FK_EMPLOYEE FOREIGN KEY (EmployeeID) REFERENCES `EMPLOYEE`(EmployeeID),
    CONSTRAINT HANDLES_FK_TEST FOREIGN KEY (TestID) REFERENCES `TEST`(TestID),
    CONSTRAINT HANDLES_FK_CLIENT FOREIGN KEY (ClientID) REFERENCES `CLIENT`(ClientID)
);

INSERT INTO `HANDLES` (`EmployeeID`, `TestID`, `ClientID`, `Date`) VALUES ('101', 'T1', 'CL1', '2024/04/05');
INSERT INTO `HANDLES` (`EmployeeID`, `TestID`, `ClientID`, `Date`) VALUES ('102', 'T2', 'CL2', '2024/04/08');
INSERT INTO `HANDLES` (`EmployeeID`, `TestID`, `ClientID`, `Date`) VALUES ('103', 'T3', 'CL3', '2024/04/06');
INSERT INTO `HANDLES` (`EmployeeID`, `TestID`, `ClientID`, `Date`) VALUES ('104', 'T4', 'CL4', '2024/04/12');
INSERT INTO `HANDLES` (`EmployeeID`, `TestID`, `ClientID`, `Date`) VALUES ('105', 'T5', 'CL5', '2024/09/12');
INSERT INTO `HANDLES` (`EmployeeID`, `TestID`, `ClientID`, `Date`) VALUES ('106', 'T6', 'CL6', '2025/03/08');
INSERT INTO `HANDLES` (`EmployeeID`, `TestID`, `ClientID`, `Date`) VALUES ('107', 'T1', 'CL7', '2025/08/04');
INSERT INTO `HANDLES` (`EmployeeID`, `TestID`, `ClientID`, `Date`) VALUES ('108', 'T2', 'CL8', '2025/09/04');
INSERT INTO `HANDLES` (`EmployeeID`, `TestID`, `ClientID`, `Date`) VALUES ('101', 'T2', 'CL9', '2025/09/07');
INSERT INTO `HANDLES` (`EmployeeID`, `TestID`, `ClientID`, `Date`) VALUES ('101', 'T2', 'CL10', '2025/09/08');
INSERT INTO `HANDLES` (`EmployeeID`, `TestID`, `ClientID`, `Date`) VALUES ('102', 'T1', 'CL9', '2025/09/09');
INSERT INTO `HANDLES` (`EmployeeID`, `TestID`, `ClientID`, `Date`) VALUES ('101', 'T5', 'CL10', '2025/09/10');
INSERT INTO `HANDLES` (`EmployeeID`, `TestID`, `ClientID`, `Date`) VALUES ('105', 'T5', 'CL3', '2025/09/12');
INSERT INTO `HANDLES` (`EmployeeID`, `TestID`, `ClientID`, `Date`) VALUES ('105', 'T6', 'CL9', '2025/09/12');
INSERT INTO `HANDLES` (`EmployeeID`, `TestID`, `ClientID`, `Date`) VALUES ('101', 'T5', 'CL9', '2025/10/01');
INSERT INTO `HANDLES` (`EmployeeID`, `TestID`, `ClientID`, `Date`) VALUES ('102', 'T1', 'CL10', '2025/10/03');
INSERT INTO `HANDLES` (`EmployeeID`, `TestID`, `ClientID`, `Date`) VALUES ('105', 'T2', 'CL6', '2025/10/07');
INSERT INTO `HANDLES` (`EmployeeID`, `TestID`, `ClientID`, `Date`) VALUES ('101', 'T3', 'CL6', '2025/10/11');
INSERT INTO `HANDLES` (`EmployeeID`, `TestID`, `ClientID`, `Date`) VALUES ('105', 'T4', 'CL10', '2025/11/12');


CREATE TABLE `DEPARTMENT` (
    `DepName`	VARCHAR(60), 
    CONSTRAINT DEPARTMENT_PK PRIMARY KEY (DepName)
);

INSERT INTO `DEPARTMENT` (`DepName`) VALUES ('Sample Processing');
INSERT INTO `DEPARTMENT` (`DepName`) VALUES ('Testing');
INSERT INTO `DEPARTMENT` (`DepName`) VALUES ('Analysis and Reporting');


CREATE TABLE `FUMEHOOD` (
    `HoodID`	VARCHAR(60),
    `DepName`	VARCHAR(60),
    CONSTRAINT FUMEHOOD_PK PRIMARY KEY (HoodID),
    CONSTRAINT FUMEHOOD_FK_DEPARTMENT FOREIGN KEY (DepName) REFERENCES `DEPARTMENT`(DepName)
);

INSERT INTO `FUMEHOOD` (`HoodID`, `DepName`) VALUES ('H1', 'Sample Processing');
INSERT INTO `FUMEHOOD` (`HoodID`, `DepName`) VALUES ('H2', 'Testing');
INSERT INTO `FUMEHOOD` (`HoodID`, `DepName`) VALUES ('H3', 'Sample Processing');
INSERT INTO `FUMEHOOD` (`HoodID`, `DepName`) VALUES ('H4', 'Testing');
INSERT INTO `FUMEHOOD` (`HoodID`, `DepName`) VALUES ('H5', 'Analysis and Reporting');


CREATE TABLE `MATERIAL` (
    `LotNumber`	VARCHAR(60),
    `Name`	VARCHAR(512),
    `ExpDate`	DATE, 
    CONSTRAINT MATERIAL_PK PRIMARY KEY (LotNumber)
);

INSERT INTO `MATERIAL` (`LotNumber`, `Name`, `ExpDate`) VALUES ('LOT10', 'Sodium Hydroxide', '2026/11/24');
INSERT INTO `MATERIAL` (`LotNumber`, `Name`, `ExpDate`) VALUES ('LOT11', 'Acetonitrile', '2030/05/23');
INSERT INTO `MATERIAL` (`LotNumber`, `Name`, `ExpDate`) VALUES ('LOT12', 'Methanol', '2025/12/14');
INSERT INTO `MATERIAL` (`LotNumber`, `Name`, `ExpDate`) VALUES ('LOT13', 'Ethanol', '2027/03/02');
INSERT INTO `MATERIAL` (`LotNumber`, `Name`, `ExpDate`) VALUES ('LOT14', 'Phosphate Buffer', '2026/11/22');
INSERT INTO `MATERIAL` (`LotNumber`, `Name`, `ExpDate`) VALUES ('LOT15', 'Nitric Acid', '2026/04/13');
INSERT INTO `MATERIAL` (`LotNumber`, `Name`, `ExpDate`) VALUES ('LOT16', 'Magnesium', '2028/06/26');
INSERT INTO `MATERIAL` (`LotNumber`, `Name`, `ExpDate`) VALUES ('LOT17', 'Phosphorus', '2027/10/21');
INSERT INTO `MATERIAL` (`LotNumber`, `Name`, `ExpDate`) VALUES ('LOT18', 'Silicon', '2027/08/24');
INSERT INTO `MATERIAL` (`LotNumber`, `Name`, `ExpDate`) VALUES ('LOT19', 'Chlorine', '2030/04/17');


CREATE TABLE `CONTAIN` (
    `HoodID`	VARCHAR(60),
    `LotNumber`	VARCHAR(60),
    CONSTRAINT CONTAIN_PK PRIMARY KEY (HoodID, LotNumber),
    CONSTRAINT CONTAIN_FK_FUMEHOOD FOREIGN KEY (HoodID) REFERENCES `FUMEHOOD`(HoodID),
    CONSTRAINT CONTAIN_FK_MATERIAL FOREIGN KEY (LotNumber) REFERENCES `MATERIAL`(LotNumber)
);

INSERT INTO `CONTAIN` (`HoodID`, `LotNumber`) VALUES ('H1', 'LOT10');
INSERT INTO `CONTAIN` (`HoodID`, `LotNumber`) VALUES ('H2', 'LOT11');
INSERT INTO `CONTAIN` (`HoodID`, `LotNumber`) VALUES ('H3', 'LOT12');
INSERT INTO `CONTAIN` (`HoodID`, `LotNumber`) VALUES ('H4', 'LOT13');
INSERT INTO `CONTAIN` (`HoodID`, `LotNumber`) VALUES ('H5', 'LOT14');
INSERT INTO `CONTAIN` (`HoodID`, `LotNumber`) VALUES ('H1', 'LOT15');
INSERT INTO `CONTAIN` (`HoodID`, `LotNumber`) VALUES ('H2', 'LOT16');
INSERT INTO `CONTAIN` (`HoodID`, `LotNumber`) VALUES ('H3', 'LOT17');
INSERT INTO `CONTAIN` (`HoodID`, `LotNumber`) VALUES ('H4', 'LOT18');
INSERT INTO `CONTAIN` (`HoodID`, `LotNumber`) VALUES ('H5', 'LOT19');
INSERT INTO `CONTAIN` (`HoodID`, `LotNumber`) VALUES ('H1', 'LOT19');
INSERT INTO `CONTAIN` (`HoodID`, `LotNumber`) VALUES ('H2', 'LOT19');
INSERT INTO `CONTAIN` (`HoodID`, `LotNumber`) VALUES ('H3', 'LOT15');
INSERT INTO `CONTAIN` (`HoodID`, `LotNumber`) VALUES ('H3', 'LOT16');
INSERT INTO `CONTAIN` (`HoodID`, `LotNumber`) VALUES ('H4', 'LOT19');
INSERT INTO `CONTAIN` (`HoodID`, `LotNumber`) VALUES ('H5', 'LOT12');
INSERT INTO `CONTAIN` (`HoodID`, `LotNumber`) VALUES ('H5', 'LOT18');


CREATE TABLE `USES` (
    `TestID`	VARCHAR(60),
    `HoodID`	VARCHAR(60),
    `LotNumber`	VARCHAR(60), 
    CONSTRAINT USES_PK PRIMARY KEY (TestID, HoodID, LotNumber),
    CONSTRAINT USES_FK_TEST FOREIGN KEY (TestID) REFERENCES `TEST`(TestID),
    CONSTRAINT USES_FUMEHOOD FOREIGN KEY (HoodID) REFERENCES `FUMEHOOD`(HoodID),
    CONSTRAINT USES_FK_MATERIAL FOREIGN KEY (LotNumber) REFERENCES `MATERIAL`(LotNumber)
);

INSERT INTO `USES` (`TestID`, `HoodID`, `LotNumber`) VALUES ('T1', 'H1', 'LOT10');
INSERT INTO `USES` (`TestID`, `HoodID`, `LotNumber`) VALUES ('T2', 'H2', 'LOT11');
INSERT INTO `USES` (`TestID`, `HoodID`, `LotNumber`) VALUES ('T3', 'H3', 'LOT12');
INSERT INTO `USES` (`TestID`, `HoodID`, `LotNumber`) VALUES ('T4', 'H4', 'LOT13');
INSERT INTO `USES` (`TestID`, `HoodID`, `LotNumber`) VALUES ('T5', 'H5', 'LOT14');
INSERT INTO `USES` (`TestID`, `HoodID`, `LotNumber`) VALUES ('T6', 'H1', 'LOT15');
INSERT INTO `USES` (`TestID`, `HoodID`, `LotNumber`) VALUES ('T1', 'H2', 'LOT16');
INSERT INTO `USES` (`TestID`, `HoodID`, `LotNumber`) VALUES ('T2', 'H3', 'LOT17');
INSERT INTO `USES` (`TestID`, `HoodID`, `LotNumber`) VALUES ('T2', 'H4', 'LOT18');
INSERT INTO `USES` (`TestID`, `HoodID`, `LotNumber`) VALUES ('T2', 'H5', 'LOT19');
INSERT INTO `USES` (`TestID`, `HoodID`, `LotNumber`) VALUES ('T1', 'H1', 'LOT19');
INSERT INTO `USES` (`TestID`, `HoodID`, `LotNumber`) VALUES ('T5', 'H2', 'LOT19');
INSERT INTO `USES` (`TestID`, `HoodID`, `LotNumber`) VALUES ('T5', 'H3', 'LOT15');
INSERT INTO `USES` (`TestID`, `HoodID`, `LotNumber`) VALUES ('T6', 'H3', 'LOT16');
INSERT INTO `USES` (`TestID`, `HoodID`, `LotNumber`) VALUES ('T5', 'H4', 'LOT19');
INSERT INTO `USES` (`TestID`, `HoodID`, `LotNumber`) VALUES ('T1', 'H5', 'LOT12');
INSERT INTO `USES` (`TestID`, `HoodID`, `LotNumber`) VALUES ('T2', 'H5', 'LOT18');
INSERT INTO `USES` (`TestID`, `HoodID`, `LotNumber`) VALUES ('T3', 'H3', 'LOT17');
INSERT INTO `USES` (`TestID`, `HoodID`, `LotNumber`) VALUES ('T4', 'H1', 'LOT19');


CREATE TABLE `TECHNICIAN` (
    `TechID`	VARCHAR(60),
    `First`	VARCHAR(512),
    `Middle`	VARCHAR(512),
    `Last`	VARCHAR(512),
    `CompanyName`	VARCHAR(512), 
    CONSTRAINT TECHNICIAN_PK PRIMARY KEY (TechID)
);

INSERT INTO `TECHNICIAN` (`TechID`, `First`, `Middle`, `Last`, `CompanyName`) VALUES ('TH1', 'Kean', 'Madlin', 'Jacobowits', 'Zoomzone');
INSERT INTO `TECHNICIAN` (`TechID`, `First`, `Middle`, `Last`, `CompanyName`) VALUES ('TH2', 'Tamarah', 'Britte', 'Keller', 'Zooveo');
INSERT INTO `TECHNICIAN` (`TechID`, `First`, `Middle`, `Last`, `CompanyName`) VALUES ('TH3', 'Lyn', 'Rosalie', 'Gierhard', 'Realbuzz');


CREATE TABLE `INSPECT` (
    `TechID`	VARCHAR(60),
    `HoodID`	VARCHAR(60),
    `DateRecentInspect`	DATE,
    `Result`	VARCHAR(512), 
    CONSTRAINT INSPECT_PK PRIMARY KEY (TechID, HoodID),
    CONSTRAINT INSPECT_TECHNICIAN FOREIGN KEY (TechID) REFERENCES `TECHNICIAN`(TechID),
    CONSTRAINT INSPECT_FUMEHOOD FOREIGN KEY (HoodID) REFERENCES `FUMEHOOD`(HoodID)
);

INSERT INTO `INSPECT` (`TechID`, `HoodID`, `DateRecentInspect`, `Result`) VALUES ('TH1', 'H1', '2025/01/11', 'Pass');
INSERT INTO `INSPECT` (`TechID`, `HoodID`, `DateRecentInspect`, `Result`) VALUES ('TH2', 'H2', '2025/03/07', 'Pass');
INSERT INTO `INSPECT` (`TechID`, `HoodID`, `DateRecentInspect`, `Result`) VALUES ('TH3', 'H3', '2025/05/10', 'Fail');
INSERT INTO `INSPECT` (`TechID`, `HoodID`, `DateRecentInspect`, `Result`) VALUES ('TH1', 'H4', '2025/08/06', 'Pass');
INSERT INTO `INSPECT` (`TechID`, `HoodID`, `DateRecentInspect`, `Result`) VALUES ('TH3', 'H5', '2025/09/10', 'Pass');









