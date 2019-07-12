vault write database/config/test_db \
  plugin_name=mysql-database-plugin \
  connecton_url="{{username}}:{{password}}@tcp(hashivault_testDB_1:3306)/" \
  allowed_roles="read-only" \
  username="vaultUser" \
  password="S3cretPass"


vault write database/config/test_db \
    plugin_name=mysql-database-plugin \
    connection_url="{{username}}:{{password}}@tcp(hashivault_testDB_1:3306)/" \
    allowed_roles="read-only" \
    username="vaultUser" \
    password="S3cretPass"



vault write database/roles/read-only \
  db_name=test_db \
  creation_statements="CREATE USER '{{name}}'@'%' IDENTIFIED BY '{{password}}';GRANT SELECT ON test_db.* TO '{{name}}'@'%';" \
  default_ttl="1h" \
  max_ttl="24h"


CREATE TABLE Welcome (
id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
Language VARCHAR(30) NOT NULL,
Greeting VARCHAR(30) NOT NULL
); 

INSERT INTO test_db.Welcome (Language, Greeting)
VALUES ('english', 'Hello'),
  ('german', "Hallo"),
  ('french', 'Bonjour');
