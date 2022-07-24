DROP TABLE IF EXISTS INSURANCE_INFO;
CREATE TABLE INSURANCE_INFO (
    insurance_number INTEGER,
    insurance_name VARCHAR(32),
    address_line1 VARCHAR(50),
    address_line2 VARCHAR(50),
    city VARCHAR(32),
    state VARCHAR(32),
    zip VARCHAR(10),

    CONSTRAINT pk_ins_info PRIMARY KEY (insurance_number)
);

DROP TABLE IF EXISTS PATIENT_INFO;
CREATE TABLE PATIENT_INFO (
    patient_id INTEGER,
    first_name VARCHAR(32),
    last_name VARCHAR(32),
    dob DATE,
    insurance_number INTEGER,
    policy_number VARCHAR(32),

    CONSTRAINT pk_patient_info PRIMARY KEY(patient_id)
);

DROP TABLE IF EXISTS PX_CODES;
CREATE TABLE PX_CODES (
    px_code VARCHAR(32),
    px_text VARCHAR(300),

    CONSTRAINT pk_px_codes PRIMARY KEY (px_code)
);

DROP TABLE IF EXISTS DX_CODES;
CREATE TABLE DX_CODES (
    dx_code VARCHAR(32),
    dx_text VARCHAR(300),

    CONSTRAINT pk_dx_codes PRIMARY KEY (dx_code)
);

DROP TABLE IF EXISTS PROCEDURE_INFO;
CREATE TABLE PROCEDURE_INFO (
    patient_id INTEGER,
    dos DATE,
    status_code VARCHAR(5),

    CONSTRAINT pk_proc_info PRIMARY KEY(patient_id, dos)
);

DROP TABLE IF EXISTS STATUS_CODES;
CREATE TABLE STATUS_CODES (
    status_code VARCHAR(5),
    status_text VARCHAR(150),

    CONSTRAINT pk_status_code PRIMARY KEY(status_code)
);

DROP TABLE IF EXISTS APPEALS;
CREATE TABLE APPEALS (
    appeal_code SERIAL,
    appeal_title VARCHAR(100),
    appeal_text VARCHAR(1000),

    CONSTRAINT pk_appeals PRIMARY KEY(appeal_code)
);

DROP TABLE IF EXISTS PATIENT_PX;
CREATE TABLE PATIENT_PX (
    patient_id INTEGER,
    pt_proc_code VARCHAR(32),
    date_of_service DATE,
    attending_physician varchar(32),
    dx_code VARCHAR(32),

    CONSTRAINT pk_pt_px PRIMARY KEY (patient_id, pt_proc_code)
);

DROP TABLE IF EXISTS VALID_USERS;
CREATE TABLE VALID_USERS (
    username VARCHAR(32),
    password VARCHAR(32),

    CONSTRAINT pk_valid_users PRIMARY KEY (username)
);