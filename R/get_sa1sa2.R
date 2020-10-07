get_sa1sa2 <- function() {


  con <- RPostgreSQL::dbConnect(DBI::dbDriver("PostgreSQL"),
                                user="dewoller", password=db_password,
                                host="alf", port=5432, dbname="postgis_db")


}
