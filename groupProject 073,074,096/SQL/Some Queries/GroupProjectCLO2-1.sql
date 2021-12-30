SELECT
    "A1"."NAME"         "NAME",
    "A1"."COMPOSITION"  "COMPOSITION",
    "A1"."COST_PER_TAB" "COST_PER_TAB"
FROM
    "GROUPPROJECT"."MEDICINE" "A1"
ORDER BY
    "A1"."COST_PER_TAB" DESC;