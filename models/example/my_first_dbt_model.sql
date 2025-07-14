
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(
    materialized='table',
    indexes = [{'columns': ['id'], 'unique': True}]    
) }}

with source_data as (

    select show_id as id, cast_members as c_members
    from netflix_shows
)

select *
from source_data

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
