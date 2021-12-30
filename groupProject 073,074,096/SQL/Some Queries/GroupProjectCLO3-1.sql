SELECT name,address,patient.patid,transactions.stores_store_id,phoneno,total
from patient NATURAL JOIN transactions 
where patient.patid = 'pat1' and transactions.patient_patid = 'pat1' and transactions.stores_store_id = 'S3';