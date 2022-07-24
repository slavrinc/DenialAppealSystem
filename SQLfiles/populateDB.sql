--POPULATE INSURANCE INFO DB
INSERT INTO INSURANCE_INFO (insurance_number, insurance_name, address_line1, address_line2, city, state, zip)
VALUES ('1', 'UPMC Health Plan', 'Attn: Appeals and Grievances', 'P.O. Box 2939', 'Pittsburgh', 'PA', '15230-2939');
INSERT INTO INSURANCE_INFO (insurance_number, insurance_name, address_line1, address_line2, city, state, zip)
VALUES ('2', 'Aetna', 'Aetna Provider Resolution', 'P.O. Box 14020', 'Lexington', 'KY', '40512');
INSERT INTO INSURANCE_INFO (insurance_number, insurance_name, address_line1, address_line2, city, state, zip)
VALUES ('3', 'Aetna Medicare Advantage', 'Medicare Provider Appeals', 'P.O. Box 14835', 'Lexington', 'KY', '40512');
INSERT INTO INSURANCE_INFO (insurance_number, insurance_name, address_line1, address_line2, city, state, zip)
VALUES ('4', 'Highmark', 'Appeals and Grievances', 'P.O. Box 106004', 'Pittsburgh', 'PA', '15230');
INSERT INTO INSURANCE_INFO (insurance_number, insurance_name, address_line1, address_line2, city, state, zip)
VALUES ('5', 'Anthem Blue Cross', 'Payment Appeals/Disputes', 'P.O. Box 61599', 'Virginia Beach', 'VA', '23466-1599');
INSERT INTO INSURANCE_INFO (insurance_number, insurance_name, address_line1, address_line2, city, state, zip)
VALUES ('6', 'Cigna', 'Cigna Appeals Unit', 'P.O. Box 188062', 'Chattanooga', 'TN', '37422-8062');
INSERT INTO INSURANCE_INFO (insurance_number, insurance_name, address_line1, address_line2, city, state, zip)
VALUES ('7', 'Medicare', 'Novitas Solutions Attn: Appeals Department', 'P.O. Box 3110', 'Mechanicsburg', 'PA', '17055-1826');

--SELECT * FROM insurance_info;

--POPULATE PATIENT INFO
INSERT INTO PATIENT_INFO (patient_id, first_name, last_name, dob, insurance_number, policy_number) VALUES ('1', 'Samantha', 'Sampson', '1988-08-18', 1, 'fhy-546-8e5e');
INSERT INTO PATIENT_INFO (patient_id, first_name, last_name, dob, insurance_number, policy_number) VALUES ('2', 'John', 'Johnson', '1968-05-22', 1, 'sdf-687-4ewe');
INSERT INTO PATIENT_INFO (patient_id, first_name, last_name, dob, insurance_number, policy_number) VALUES ('3', 'Brandon', 'Branderson', '1995-01-16', 1, 'jdk-654-2d4f');
INSERT INTO PATIENT_INFO (patient_id, first_name, last_name, dob, insurance_number, policy_number) VALUES ('4', 'Elle', 'Taylor', '1972-10-30', 2, 'dfs-481-5f1s');
INSERT INTO PATIENT_INFO (patient_id, first_name, last_name, dob, insurance_number, policy_number) VALUES ('5', 'Sneha', 'Stuart', '1964-11-27', 2, 'hsy-846-5s02');
INSERT INTO PATIENT_INFO (patient_id, first_name, last_name, dob, insurance_number, policy_number) VALUES ('6', 'Gemma', 'Kaufman', '1982-07-02', 3, 'wef-453-sfsl');
INSERT INTO PATIENT_INFO (patient_id, first_name, last_name, dob, insurance_number, policy_number) VALUES ('7', 'Leyla', 'Walmsley', '2005-04-22', 4, 'wdk-5464-qwkdd');
INSERT INTO PATIENT_INFO (patient_id, first_name, last_name, dob, insurance_number, policy_number) VALUES ('8', 'Jax', 'Gonzalez', '2000-01-01', 5, 'qwljkf-1156');
INSERT INTO PATIENT_INFO (patient_id, first_name, last_name, dob, insurance_number, policy_number) VALUES ('9', 'Kerys', 'Derrick', '1992-08-02', 6, '152-55548-87e');
INSERT INTO PATIENT_INFO (patient_id, first_name, last_name, dob, insurance_number, policy_number) VALUES ('10', 'Beauden', 'Fields', '1955-02-14', 7, '15-a658726643');
INSERT INTO PATIENT_INFO (patient_id, first_name, last_name, dob, insurance_number, policy_number) VALUES ('11', 'Yusuf', 'Foley', '1951-03-25', 7, '23-a45435483');
INSERT INTO PATIENT_INFO (patient_id, first_name, last_name, dob, insurance_number, policy_number) VALUES ('12', 'Evan', 'Jordan', '1952-07-18', 7, '26-a65465764');
INSERT INTO PATIENT_INFO (patient_id, first_name, last_name, dob, insurance_number, policy_number) VALUES ('13', 'Anisha', 'Sanford', '1996-12-18', 5, 'fhy-657-wd44');

--SELECT * FROM patient_info;


--POPULATE PROCEDURE CODES
INSERT INTO PX_CODES (px_code, px_text) VALUES ('29240', 'Strapping; shoulder');
INSERT INTO PX_CODES (px_code, px_text) VALUES ('29260', 'Strapping; elbow or wrist');
INSERT INTO PX_CODES (px_code, px_text) VALUES ('29280', 'Strapping; hand or finger');
INSERT INTO PX_CODES (px_code, px_text) VALUES ('29520', 'Strapping; hip');
INSERT INTO PX_CODES (px_code, px_text) VALUES ('29540', 'Strapping; ankle and/or foot');
INSERT INTO PX_CODES (px_code, px_text) VALUES ('29550', 'Strapping; toes');
INSERT INTO PX_CODES (px_code, px_text) VALUES ('29580', 'Unna boot');
INSERT INTO PX_CODES (px_code, px_text) VALUES ('29581', 'Application of multi-layer compression system; leg (below knee) including ankle & foot');
INSERT INTO PX_CODES (px_code, px_text) VALUES ('29582', 'Compression system; thigh and leg, including ankle and foot, when performed');

--SELECT * FROM px_codes;

--POPULATE DX CODES
INSERT INTO DX_CODES (dx_code, dx_text) VALUES ('M 843', 'Stress fracture, not elsewhere classified');
INSERT INTO DX_CODES (dx_code, dx_text) VALUES ('M 844', 'Pathological facture, not elsewhere classified');
INSERT INTO DX_CODES (dx_code, dx_text) VALUES ('M 907', 'Fracture of bone in neoplastic disease');
INSERT INTO DX_CODES (dx_code, dx_text) VALUES ('M 966', 'Fracture of bone following insertion of orthopaedic implant, joint prosthesis, or bone place');
INSERT INTO DX_CODES (dx_code, dx_text) VALUES ('S 32', 'Fracture of lumbar spine and pelvis');
INSERT INTO DX_CODES (dx_code, dx_text) VALUES ('S 42', 'Fracture of shoulder and upper arm');
INSERT INTO DX_CODES (dx_code, dx_text) VALUES ('S 52', 'Fracture of forearm');
INSERT INTO DX_CODES (dx_code, dx_text) VALUES ('S 62', 'Fracture at wrist and hand level');
INSERT INTO DX_CODES (dx_code, dx_text) VALUES ('S 72', 'Fracture of femur');
INSERT INTO DX_CODES (dx_code, dx_text) VALUES ('S 82', 'Fracture of lower leg, including ankle');
INSERT INTO DX_CODES (dx_code, dx_text) VALUES ('S 92', 'Fracture of foot, except ankle');

--POPULATE STATUS CODES
INSERT INTO STATUS_CODES (status_code, status_text) VALUES ('A', 'Appeal Sent');
INSERT INTO STATUS_CODES (status_code, status_text) VALUES ('D-T', 'Denied by Insurance - Timely filing');
INSERT INTO STATUS_CODES (status_code, status_text) VALUES ('D-M', 'Denied by Insurance - Not Medically Necessary');
INSERT INTO STATUS_CODES (status_code, status_text) VALUES ('D-P', 'Denied by Insurance - Preauthorization not obtained');
INSERT INTO STATUS_CODES (status_code, status_text) VALUES ('PT', 'Patient Responsibility');

--POPULATE PROCEDURE INFO
INSERT INTO PROCEDURE_INFO (patient_id, dos, status_code) VALUES (1, '2022-05-06', 'D-T');
INSERT INTO PROCEDURE_INFO (patient_id, dos, status_code) VALUES (1, '2022-07-06', 'D-M');
INSERT INTO PROCEDURE_INFO (patient_id, dos, status_code) VALUES (2, '2022-04-22', 'D-T');
INSERT INTO PROCEDURE_INFO (patient_id, dos, status_code) VALUES (2, '2022-07-06', 'D-T');
INSERT INTO PROCEDURE_INFO (patient_id, dos, status_code) VALUES (3, '2022-03-17', 'D-T');
INSERT INTO PROCEDURE_INFO (patient_id, dos, status_code) VALUES (3, '2022-05-06', 'D-P');
INSERT INTO PROCEDURE_INFO (patient_id, dos, status_code) VALUES (4, '2022-06-16', 'D-T');
INSERT INTO PROCEDURE_INFO (patient_id, dos, status_code) VALUES (4, '2022-07-01', 'D-P');
INSERT INTO PROCEDURE_INFO (patient_id, dos, status_code) VALUES (5, '2022-07-09', 'D-M');
INSERT INTO PROCEDURE_INFO (patient_id, dos, status_code) VALUES (5, '2022-03-22', 'D-T');
INSERT INTO PROCEDURE_INFO (patient_id, dos, status_code) VALUES (6, '2022-07-01', 'D-M');
INSERT INTO PROCEDURE_INFO (patient_id, dos, status_code) VALUES (6, '2022-05-06', 'D-T');
INSERT INTO PROCEDURE_INFO (patient_id, dos, status_code) VALUES (7, '2022-02-18', 'D-M');
INSERT INTO PROCEDURE_INFO (patient_id, dos, status_code) VALUES (7, '2022-04-15', 'D-T');
INSERT INTO PROCEDURE_INFO (patient_id, dos, status_code) VALUES (8, '2022-05-06', 'D-T');
INSERT INTO PROCEDURE_INFO (patient_id, dos, status_code) VALUES (8, '2022-07-06', 'D-P');
INSERT INTO PROCEDURE_INFO (patient_id, dos, status_code) VALUES (9, '2022-02-06', 'PT');
INSERT INTO PROCEDURE_INFO (patient_id, dos, status_code) VALUES (9, '2022-07-04', 'D-T');
INSERT INTO PROCEDURE_INFO (patient_id, dos, status_code) VALUES (10, '2022-05-23', 'D-T');
INSERT INTO PROCEDURE_INFO (patient_id, dos, status_code) VALUES (10, '2022-05-24', 'D-M');
INSERT INTO PROCEDURE_INFO (patient_id, dos, status_code) VALUES (11, '2022-06-06', 'A');
INSERT INTO PROCEDURE_INFO (patient_id, dos, status_code) VALUES (11, '2022-06-15', 'D-T');
INSERT INTO PROCEDURE_INFO (patient_id, dos, status_code) VALUES (12, '2022-06-30', 'D-T');
INSERT INTO PROCEDURE_INFO (patient_id, dos, status_code) VALUES (12, '2022-06-26', 'D-M');

--SELECT * FROM status_codes;

--POPULATE APPEALS
INSERT INTO APPEALS (appeal_title, appeal_text) VALUES ('Timely Filing', 'This claim was sent within the timely filing limits. Please check the claim date and received date for verification.');
INSERT INTO APPEALS (appeal_title, appeal_text) VALUES ('Medical Necessity', 'According to the attending physician, this procedure was medically necessary. Please review the enclosed documents that support medical necessity.');
INSERT INTO APPEALS (appeal_title, appeal_text) VALUES ('Preauthorization', 'This patient required immediate medical care and a preauthorization could not be obtained prior to the procedure. Please review the attached medical records that support this procedure.');

--SELECT * FROM appeals;

--POPULATE PATIENT_PX
INSERT INTO PATIENT_PX (patient_id, pt_proc_code, date_of_service, attending_physician, dx_code) VALUES (1, '29240', '2022-05-06', 'Michael Roberts', 'S 42');
INSERT INTO PATIENT_PX (patient_id, pt_proc_code, date_of_service, attending_physician, dx_code) VALUES (1, '29260', '2022-07-06', 'Michelle Jordan', 'S 42');
INSERT INTO PATIENT_PX (patient_id, pt_proc_code, date_of_service, attending_physician, dx_code) VALUES (2, '29280', '2022-04-22', 'Michael Roberts', 'S 62');
INSERT INTO PATIENT_PX (patient_id, pt_proc_code, date_of_service, attending_physician, dx_code) VALUES (2, '29550', '2022-07-06', 'Michael Roberts', 'S 92');
INSERT INTO PATIENT_PX (patient_id, pt_proc_code, date_of_service, attending_physician, dx_code) VALUES (3, '29540', '2022-03-17', 'Michelle Jordan', 'M 907');
INSERT INTO PATIENT_PX (patient_id, pt_proc_code, date_of_service, attending_physician, dx_code) VALUES (3, '29260', '2022-05-06', 'Michelle Jordan', 'S 42');
INSERT INTO PATIENT_PX (patient_id, pt_proc_code, date_of_service, attending_physician, dx_code) VALUES (4, '29580', '2022-06-16', 'Michelle Jordan', 'S 82');
INSERT INTO PATIENT_PX (patient_id, pt_proc_code, date_of_service, attending_physician, dx_code) VALUES (4, '29550', '2022-07-01', 'Michael Roberts', 'S 92');
INSERT INTO PATIENT_PX (patient_id, pt_proc_code, date_of_service, attending_physician, dx_code) VALUES (5, '29240', '2022-07-09', 'Michael Roberts', 'S 42');
INSERT INTO PATIENT_PX (patient_id, pt_proc_code, date_of_service, attending_physician, dx_code) VALUES (5, '29550', '2022-03-22', 'Michael Roberts', 'S 92');
INSERT INTO PATIENT_PX (patient_id, pt_proc_code, date_of_service, attending_physician, dx_code) VALUES (6, '29280', '2022-07-01', 'Michael Roberts', 'S 62');
INSERT INTO PATIENT_PX (patient_id, pt_proc_code, date_of_service, attending_physician, dx_code) VALUES (6, '29260', '2022-05-06', 'Michelle Jordan', 'S 42');
INSERT INTO PATIENT_PX (patient_id, pt_proc_code, date_of_service, attending_physician, dx_code) VALUES (7, '29520', '2022-02-18', 'Michael Roberts', 'S 32');
INSERT INTO PATIENT_PX (patient_id, pt_proc_code, date_of_service, attending_physician, dx_code) VALUES (7, '29550', '2022-04-15', 'Michelle Jordan', 'S 92');
INSERT INTO PATIENT_PX (patient_id, pt_proc_code, date_of_service, attending_physician, dx_code) VALUES (8, '29582', '2022-05-06', 'Michael Roberts', 'S 82');
INSERT INTO PATIENT_PX (patient_id, pt_proc_code, date_of_service, attending_physician, dx_code) VALUES (8, '29550', '2022-07-06', 'Michelle Jordan', 'S 92');
INSERT INTO PATIENT_PX (patient_id, pt_proc_code, date_of_service, attending_physician, dx_code) VALUES (9, '29582', '2022-02-06', 'Michelle Jordan', 'M 843');
INSERT INTO PATIENT_PX (patient_id, pt_proc_code, date_of_service, attending_physician, dx_code) VALUES (9, '29581', '2022-07-04', 'Michelle Jordan', 'M 907');
INSERT INTO PATIENT_PX (patient_id, pt_proc_code, date_of_service, attending_physician, dx_code) VALUES (10, '29550', '2022-05-23', 'Michelle Jordan', 'S 92');
INSERT INTO PATIENT_PX (patient_id, pt_proc_code, date_of_service, attending_physician, dx_code) VALUES (10, '29520', '2022-05-24', 'Michael Roberts', 'S 32');
INSERT INTO PATIENT_PX (patient_id, pt_proc_code, date_of_service, attending_physician, dx_code) VALUES (11, '29540', '2022-06-06', 'Michael Roberts', 'S 82');
INSERT INTO PATIENT_PX (patient_id, pt_proc_code, date_of_service, attending_physician, dx_code) VALUES (11, '29580', '2022-06-15', 'Michelle Jordan', 'S 82');
INSERT INTO PATIENT_PX (patient_id, pt_proc_code, date_of_service, attending_physician, dx_code) VALUES (12, '29581', '2022-06-30', 'Michelle Jordan', 'S 82');
INSERT INTO PATIENT_PX (patient_id, pt_proc_code, date_of_service, attending_physician, dx_code) VALUES (12, '29582', '2022-06-26', 'Michael Roberts', 'S 82');

--SELECT * FROM PATIENT_PX;

INSERT INTO VALID_USERS (username, password) VALUES ('enterusername**', 'enterpassword**');


