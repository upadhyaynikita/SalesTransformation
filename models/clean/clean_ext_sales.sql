{{
    config(
        materialized= 'incremental',
        incremental_strategy= 'append',
        schema = 'INS_CLEAN'
    )
}}
select name, csku, sales, current_timestamp() as insert_tmstmp,
current_timestamp() as updated_tmstmp from ins_raw.EXT_SALES
