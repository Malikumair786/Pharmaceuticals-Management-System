SELECT
    "A1"."DOCTOR_DOCID"   "DOCTOR_DOCID",
    "A1"."HOSPITAL_HOSID" "HOSPITAL_HOSID",
    "A1"."TREATID"        "TREATID",
    "A1"."TREATDATE"      "TREATDATE",
    "A1"."PATIENT_PATID1" "PATIENT_PATID1",
    "A1"."PATID"          "PATID",
    "A1"."NAME"           "NAME",
    "A1"."ADDRESS"        "ADDRESS",
    "A1"."PHONENO"        "PHONENO",
    "A1"."DOCID"          "DOCID",
    "A1"."DOCNAME"        "DOCNAME"
FROM
    (
        SELECT
            "A3"."DOCTOR_DOCID"   "DOCTOR_DOCID",
            "A3"."HOSPITAL_HOSID" "HOSPITAL_HOSID",
            "A3"."TREATID"        "TREATID",
            "A3"."TREATDATE"      "TREATDATE",
            "A3"."PATIENT_PATID1" "PATIENT_PATID1",
            "A3"."PATID"          "PATID",
            "A3"."NAME"           "NAME",
            "A3"."ADDRESS"        "ADDRESS",
            "A3"."PHONENO"        "PHONENO",
            "A2"."DOCID"          "DOCID",
            "A2"."DOCNAME"        "DOCNAME"
        FROM
            (
                SELECT
                    "A5"."DOCTOR_DOCID"   "DOCTOR_DOCID",
                    "A5"."HOSPITAL_HOSID" "HOSPITAL_HOSID",
                    "A5"."TREATID"        "TREATID",
                    "A5"."TREATDATE"      "TREATDATE",
                    "A5"."PATIENT_PATID1" "PATIENT_PATID1",
                    "A4"."PATID"          "PATID",
                    "A4"."NAME"           "NAME",
                    "A4"."ADDRESS"        "ADDRESS",
                    "A4"."PHONENO"        "PHONENO"
                FROM
                    "GROUPPROJECT"."TREATMENT" "A5",
                    "GROUPPROJECT"."PATIENT"   "A4"
            )                       "A3",
            "GROUPPROJECT"."DOCTOR" "A2"
    ) "A1"
WHERE
        "A1"."PATID" = "A1"."PATIENT_PATID1"
    AND "A1"."DOCTOR_DOCID" = "A1"."DOCID";