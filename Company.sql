
STEP 1: 

CREATE TABLE MEMBER (
    Member_id INT PRIMARY KEY,
    First_name VARCHAR(50),
    Last_name VARCHAR(50),
    Address TEXT,
    ContactInfo VARCHAR(100)
);


CREATE TABLE EQUIPMENT (
    Equipment_id INT PRIMARY KEY,
    Brand VARCHAR(50),
    Model VARCHAR(50),
    Condition VARCHAR(50),
    Member_id INT,
    CONSTRAINT fk_member
        FOREIGN KEY (Member_id) 
        REFERENCES MEMBER(Member_id)
        ON DELETE SET NULL
        ON UPDATE CASCADE
);


CREATE TABLE ACTIVITY (
    Activity_id INT PRIMARY KEY,
    Type VARCHAR(50)
);



CREATE TABLE SESSION (
    Session_id INT PRIMARY KEY,
    Location VARCHAR(100),
    Start_datetime DATETIME,
    End_datetime DATETIME,
    Activity_id INT,
    CONSTRAINT fk_activity
        FOREIGN KEY (Activity_id) 
        REFERENCES ACTIVITY(Activity_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);


CREATE TABLE ROLE (
    Role_id INT PRIMARY KEY,
    Role VARCHAR(50)
);


CREATE TABLE MEMBERS_ROLES (
    Member_id INT,
    Role_id INT,
    PRIMARY KEY (Member_id, Role_id),
    CONSTRAINT fk_member_role_member
        FOREIGN KEY (Member_id) 
        REFERENCES MEMBER(Member_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    CONSTRAINT fk_member_role_role
        FOREIGN KEY (Role_id) 
        REFERENCES ROLE(Role_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);


STEP 2 (Inserting Data): 

MEMBERS TABLE: 

INSERT INTO MEMBER (Member_id, First_name, Last_name, Address, ContactInfo) VALUES (1, 'Mike', 'Jones', '123 Texas Street', 'who.mike.jones@gmail.com');

INSERT INTO MEMBER (Member_id, First_name, Last_name, Address, ContactInfo) VALUES (2, 'Drake', 'Graham', ' Toronto Street', 'ovo.xo@gmail.com');

INSERT INTO MEMBER (Member_id, First_name, Last_name, Address, ContactInfo) VALUES (3, 'Slash', 'Hudson', ' Hampstead Avenue', 'slash.guns.n.roses@gmail.com');

INSERT INTO MEMBER (Member_id, First_name, Last_name, Address, ContactInfo) VALUES (4, 'Travis', 'Barker', ' Fontana RD', 'blink.182@gmail.com');

INSERT INTO MEMBER (Member_id, First_name, Last_name, Address, ContactInfo) VALUES (5, 'Flea', 'Balzary', ' Melbourne BLVD', 'rhcp.flea@gmail.com');

EQUIPMENT TABLE:


INSERT INTO EQUIPMENT (Equipment_id, Brand, Model, Condition, Member_id) VALUES (1, 'Shure', 'SM-7B', 'New', 1);

INSERT INTO EQUIPMENT (Equipment_id, Brand, Model, Condition, Member_id) VALUES (2, 'Sennheiser Pro', 'TLM-49', 'Used', 2);

INSERT INTO EQUIPMENT (Equipment_id, Brand, Model, Condition, Member_id) VALUES (3, 'Gibson', 'Les Paul', 'New', 3);

INSERT INTO EQUIPMENT (Equipment_id, Brand, Model, Condition, Member_id) VALUES (4, 'Yamaha', 'Infusion', 'Used', 4);

INSERT INTO EQUIPMENT (Equipment_id, Brand, Model, Condition, Member_id) VALUES (5, 'Gibson', 'SLS', 'Used', 5);

ACTIVITY TABLE:

INSERT INTO ACTIVITY (Activity_id, Type) VALUES (1, 'Concert');
INSERT INTO ACTIVITY (Activity_id, Type) VALUES (2, 'Concert');



SESSION TABLE:

INSERT INTO SESSION (Session_id, Location, Start_datetime, End_datetime, Activity_id) VALUES (1, 'House of Blues', '2024-03-29 10:00:00', '2024-03-29 12:00:00', 1);

INSERT INTO SESSION (Session_id, Location, Start_datetime, End_datetime, Activity_id) VALUES (2, 'Staples Center', '2024-03-30 15:00:00', '2024-03-30 17:00:00', 2);


ROLE: 
INSERT INTO ROLE (Role_id, Role) VALUES (1, 'Vocalist');
INSERT INTO ROLE (Role_id, Role) VALUES (2, 'Vocalist');
INSERT INTO ROLE (Role_id, Role) VALUES (3, 'Guitarist');
INSERT INTO ROLE (Role_id, Role) VALUES (4, 'Drummer');
INSERT INTO ROLE (Role_id, Role) VALUES (5, 'Bass');



MEMBERS_ROLES: 

INSERT INTO MEMBERS_ROLES (Member_id, Role_id) VALUES (1, 1);
INSERT INTO MEMBERS_ROLES (Member_id, Role_id) VALUES (2, 2);
INSERT INTO MEMBERS_ROLES (Member_id, Role_id) VALUES (3, 3);
INSERT INTO MEMBERS_ROLES (Member_id, Role_id) VALUES (4, 4);
INSERT INTO MEMBERS_ROLES (Member_id, Role_id) VALUES (5, 5);



MEMBERS_SESSIONS:

INSERT INTO MEMBERS_SESSIONS (Member_id, Session_id) VALUES (1, 1);
INSERT INTO MEMBERS_SESSIONS (Member_id, Session_id) VALUES (1, 2);

INSERT INTO MEMBERS_SESSIONS (Member_id, Session_id) VALUES (2, 1);
INSERT INTO MEMBERS_SESSIONS (Member_id, Session_id) VALUES (2, 2);

INSERT INTO MEMBERS_SESSIONS (Member_id, Session_id) VALUES (3, 1);
INSERT INTO MEMBERS_SESSIONS (Member_id, Session_id) VALUES (3, 2);

INSERT INTO MEMBERS_SESSIONS (Member_id, Session_id) VALUES (4, 1);
INSERT INTO MEMBERS_SESSIONS (Member_id, Session_id) VALUES (4, 2);

INSERT INTO MEMBERS_SESSIONS (Member_id, Session_id) VALUES (5, 1);
INSERT INTO MEMBERS_SESSIONS (Member_id, Session_id) VALUES (5, 2);
