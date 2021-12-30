select patient_patid,stores_store_id,patient.name,patient.address
from transactions NATURAL JOIN patient 
WHERE transactions.patient_patid = patient.patid AND patient.patid = 'pat1' ;