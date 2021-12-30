SELECT p.name AS patientName,p.address AS patientAddress,p.phoneno AS patientContact,
d.docname AS doctorName,h.name AS hospitalName,h.address AS hospitalAddress,
h.phoneno AS HospitalContact,t.treatdate AS treatmentDate,s.name AS pharmacyName,
s.manager AS PharmacyOwner,s.address AS pharmacyAddress,s.contact_no AS pharmacyContacy,
e.purchasedate as purchasedate,e.quantity as quantity,e.total as TotalBill
FROM transactions e
JOIN patient p ON p.patid = e.patient_patid
JOIN stores s ON s.store_id = e.stores_store_id
JOIN treatment t ON t.patient_patid1 = p.patid
JOIN hospital h ON h.hosid = t.hospital_hosid
JOIN doctor d ON t.doctor_docid = d.docid;