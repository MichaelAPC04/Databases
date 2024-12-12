--T4-pat-mods.sql

/*(a)*/
DROP TABLE roles CASCADE CONSTRAINTS;
CREATE TABLE roles (
    role_id NUMERIC(4) NOT NULL,
    role_type VARCHAR(30) NOT NULL
);

COMMENT ON COLUMN roles.role_id IS 'Identifier for a role';
COMMENT ON COLUMN roles.role_type IS 'Type of specified role';

ALTER TABLE roles ADD CONSTRAINT role_pk PRIMARY KEY (role_id);
ALTER TABLE roles ADD CONSTRAINT role_type_uq UNIQUE (role_type);

INSERT INTO roles (role_id, role_type) VALUES (1, 'General');
INSERT INTO roles (role_id, role_type) VALUES (2, 'Administrator');
INSERT INTO roles (role_id, role_type) VALUES (3, 'Head Coach');
INSERT INTO roles (role_id, role_type) VALUES (4, 'Coach');
INSERT INTO roles (role_id, role_type) VALUES (5, 'Physician');
COMMIT;

ALTER TABLE official ADD (role_id NUMERIC(4) DEFAULT 1);
ALTER TABLE official ADD CONSTRAINT role_fk FOREIGN KEY (role_id) REFERENCES roles(role_id);

UPDATE 
    official SET role_id = (
        SELECT 
            role_id 
        FROM 
            roles 
        WHERE 
            role_type = 'Administrator'
    ) 
WHERE 
    off_cdm IS NULL;
COMMIT;

DESC roles;
DESC official;

SELECT 
    * 
FROM 
    roles 
ORDER BY 
    role_id;

SELECT 
    o.off_id, 
    o.off_given, 
    o.off_family, 
    o.cr_ioc_code, 
    r.role_type as assigned_role 
FROM 
    official o 
JOIN 
    roles r 
ON 
    o.role_id = r.role_id 
ORDER BY 
    assigned_role;


/*(b)*/
DROP TABLE complaint_type CASCADE CONSTRAINTS;
CREATE TABLE complaint_type (
    type_id NUMERIC(4) NOT NULL,
    complaint_category VARCHAR(30) NOT NULL,
    demerit_points NUMERIC(1) NOT NULL
);

COMMENT ON COLUMN complaint_type.type_id IS 'Identifier for a complaint type';
COMMENT ON COLUMN complaint_type.complaint_category IS 'Category of complaint';
COMMENT ON COLUMN complaint_type.demerit_points IS 'Demerit points each complaint is worth';

ALTER TABLE complaint_type ADD CONSTRAINT category_pk PRIMARY KEY (type_id);
ALTER TABLE complaint_type ADD CONSTRAINT category_type_uq UNIQUE (complaint_category);
ALTER TABLE complaint_type ADD CONSTRAINT demerit_points_ck CHECK (demerit_points BETWEEN 1 AND 2);

INSERT INTO complaint_type (type_id, complaint_category, demerit_points) VALUES (1, 'Late Arrival', 1);
INSERT INTO complaint_type (type_id, complaint_category, demerit_points) VALUES (2, 'Failing to Assist', 1);
INSERT INTO complaint_type (type_id, complaint_category, demerit_points) VALUES (3, 'Rude Behaviour', 2);
INSERT INTO complaint_type (type_id, complaint_category, demerit_points) VALUES (4, 'Poor Driving', 2);
COMMIT;

DROP TABLE complaints CASCADE CONSTRAINTS;
CREATE TABLE complaints(
    complaint_id NUMERIC(4) NOT NULL,
    off_id NUMERIC(4) NOT NULL,
    trip_id NUMERIC(4) NOT NULL,
    type_id NUMERIC(4) NOT NULL,
    complaint_date DATE NOT NULL,
    complaint_time TIMESTAMP NOT NULL,
    complaint_comment VARCHAR(350),
    flag_valid CHAR(1) NOT NULL
);

COMMENT ON COLUMN complaints.complaint_id IS 'Identifier for a complaint';
COMMENT ON COLUMN complaints.off_id IS 'Identifier for an official';
COMMENT ON COLUMN complaints.trip_id IS 'Identifier for a trip';
COMMENT ON COLUMN complaints.type_id IS 'Identifier for a type of complaint';
COMMENT ON COLUMN complaints.complaint_date IS 'Date complaint was submitted';
COMMENT ON COLUMN complaints.complaint_time IS 'Time complaint was submitted';
COMMENT ON COLUMN complaints.complaint_comment IS 'Comment with the complaint';
COMMENT ON COLUMN complaints.flag_valid IS 'Flag to determine if complaint valid';

ALTER TABLE complaints ADD CONSTRAINT complaint_pk PRIMARY KEY (complaint_id);
ALTER TABLE complaints ADD CONSTRAINT flag_valid_ck CHECK (flag_valid IN ('Y', 'N'));
ALTER TABLE complaints MODIFY flag_valid DEFAULT 'N';
ALTER TABLE complaints ADD CONSTRAINT complaints_off_id_fk FOREIGN KEY (off_id) REFERENCES official(off_id);
ALTER TABLE complaints ADD CONSTRAINT trip_id_fk FOREIGN KEY (trip_id) REFERENCES trip(trip_id);
ALTER TABLE complaints ADD CONSTRAINT type_id_fk FOREIGN KEY (type_id) REFERENCES complaint_type(type_id);
ALTER TABLE complaints ADD CONSTRAINT complaints_uq UNIQUE (off_id, trip_id, complaint_date, complaint_time);
COMMIT;

DESC complaint_type;
DESC complaints;

SELECT 
    * 
FROM 
    complaint_type 
ORDER BY 
    type_id;