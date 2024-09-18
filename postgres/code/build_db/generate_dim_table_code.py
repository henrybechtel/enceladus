
tables_and_columns = [{'table_name':'event_types', 'column_name':'library_definition'},
                      {'table_name':'targets', 'column_name':'target'},
                      {'table_name':'teams', 'column_name':'team'},
                      {'table_name':'requests', 'column_name':'request_name'},
                      {'table_name':'spass_types', 'column_name':'spass_type'},
                      ]

# SQL template
sql_template = """
-- Creating {table_name} lookup table
drop table if exists {table_name};
select distinct {column_name} into {table_name}
from import.master_plan;

alter table {table_name}
add id serial primary key;
"""


# Specify the filename
filename = "dim_tables.sql"
sql_query = "-- Creating dimension/lookup tables for Curious Moon work \n"

for item in tables_and_columns:
    sql_query += sql_template.format(table_name=item['table_name'], column_name=item['column_name'])

    # Open the file in write mode
with open(filename, 'w') as file:
    file.write(sql_query)
    file.write("\n")

print(f"SQL queries written to {filename}")
