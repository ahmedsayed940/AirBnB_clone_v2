# Define MySQL commands
MYSQL_CMD="mysql -uroot -p"

# Define database and user information
DB_NAME="hbnb_dev_db"
USER_NAME="hbnb_dev"
USER_PASSWORD="hbnb_dev_pwd"

# Create database if it doesn't exist
$MYSQL_CMD -e "CREATE DATABASE IF NOT EXISTS $DB_NAME;"

# Create user if it doesn't exist
$MYSQL_CMD -e "CREATE USER IF NOT EXISTS '$USER_NAME'@'localhost' IDENTIFIED BY '$USER_PASSWORD';"

# Grant privileges to the user on the database
$MYSQL_CMD -e "GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$USER_NAME'@'localhost';"

# Grant SELECT privilege on performance_schema
$MYSQL_CMD -e "GRANT SELECT ON performance_schema.* TO '$USER_NAME'@'localhost';"
