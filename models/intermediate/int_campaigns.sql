SELECT *
 FROM {{ref('stg_raw__adwords')}}
 UNION ALL
 SELECT *
 FROM {{ref('stg_raw__bing')}}
 UNION ALL
 SELECT *
 FROM {{ref('stg_raw__criteo')}}
 UNION ALL
 SELECT *
 FROM {{ref('stg_raw__facebook')}}


 -- or if the dbt_util package was installed, only this: 
--   {{
--      dbt_utils.union_relations(
--          relations=[ref('stg_raw__adwords'), ref('stg_raw__bing'), ref('stg_raw__criteo'), ref('stg_raw__facebook')]
--      )
--  }}