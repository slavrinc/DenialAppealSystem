-- the following is a function that combined the status code, procedure info, patient info and insurance
-- info tables and returns a set of all denied claims with a claim status matching 'D...'
CREATE OR REPLACE FUNCTION denialList()
returns setof record
language plpgsql AS $$
    BEGIN

    CREATE OR REPLACE VIEW comboDenial AS
        SELECT * FROM procedure_info NATURAL JOIN patient_info
        WHERE procedure_info.patient_id = patient_info.patient_id;

    CREATE OR REPLACE VIEW comboDenialIns AS
        SELECT * FROM comboDenial NATURAL JOIN insurance_info
        WHERE comboDenial.insurance_number = insurance_info.insurance_number;

    CREATE OR REPLACE VIEW comboDenialInsStatus AS
        SELECT * FROM comboDenialIns NATURAL JOIN status_codes
        WHERE comboDenialIns.status_code = status_codes.status_code;

    RETURN QUERY
    SELECT first_name, last_name, insurance_name, dos, status_text FROM comboDenialInsStatus
        WHERE status_code like 'D%';

END;
$$;

-- the function can be called with a db query from the Java program using the following request:
SELECT * from denialList() AS f(first_name varchar, last_name varchar, insurance_name varchar, dos date, status_text varchar);


------------------------------------------------------------------------------------------------
-- The following table is created as a combination table that includes all of the information requested by
-- the Java program when a denial is selected and the user is on the letter generation screen
CREATE OR REPLACE VIEW comboPtIns AS
    SELECT * FROM patient_info NATURAL JOIN insurance_info
    WHERE patient_info.insurance_number = insurance_info.insurance_number;

CREATE OR REPLACE VIEW comboPtInsProc AS
    SELECT patient_id, insurance_number, first_name, last_name, policy_number, insurance_name, address_line1, address_line2, city, state, zip, dos, status_code
    FROM comboPtIns NATURAL JOIN procedure_info
    WHERE comboPtIns.patient_id = procedure_info.patient_id;

CREATE OR REPLACE VIEW comboPtInsProcStatus AS
    SELECT * FROM comboPtInsProc NATURAL JOIN status_codes
    WHERE comboPtInsProc.status_code = status_codes.status_code;

CREATE OR REPLACE VIEW comboPtInsProcStatusPX AS
    SELECT * FROM comboPtInsProcStatus NATURAL JOIN patient_px
    WHERE comboPtInsProcStatus.patient_id = patient_px.patient_id
    AND comboPtInsProcStatus.dos = patient_px.date_of_service;

CREATE OR REPLACE VIEW comboPtInsProcStatusPXDX AS
    SELECT * FROM comboPtInsProcStatusPX NATURAL JOIN px_codes
    WHERE comboPtInsProcStatusPX.pt_proc_code = px_codes.px_code;

CREATE OR REPLACE VIEW requestPtInfo AS
    SELECT patient_id, first_name, last_name, dos, px_code, px_text, dx_code, dx_text, attending_physician, insurance_name, address_line1, address_line2, city, state, zip, policy_number, status_text AS denial_reason FROM comboPtInsProcStatusPXDX NATURAL JOIN dx_codes
    WHERE comboPtInsProcStatusPXDX.dx_code = dx_codes.dx_code;

-- This can be called within Java using the following:
SELECT * FROM requestPtInfo WHERE first_name = 'Brandon' AND last_name = 'Branderson' AND dos = '2022-03-17';

------------------------------------------------------------------------------------------------
-- To add a new denial reason, call the following in Java, using the appropriate text obtained
-- from the text boxes on the letter generation screen
-- INSERT INTO appeals (appeal_title, appeal_text) VALUES ('exampleTitle', 'exampleText');

------------------------------------------------------------------------------------------------
-- To update a claim status code
SELECT * FROM appeals;
SELECT * FROM status_codes;