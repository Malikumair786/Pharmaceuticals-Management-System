SELECT st.name AS StoreName,st.manager AS StoreManager,st.contact_no AS StoreContact,st.address as StoreAddress,
m.name  AS medicineName ,m.mfg_date,m.exp_date,m.composition,m.cost_per_tab,
r.batchno,r.quantity,
d.name AS DealerName,d.address AS DealrAddress,d.phoneno AS DealerContact
from dealer d 
JOIN supplies  s ON s.dealer_dealid1 = d.dealid
JOIN stores st ON st.store_id = s.stores_store_id
JOIN retail r ON r.stores_store_id = s.stores_store_id
JOIN medicine m ON m.med_id = r.medicine_med_id;