library(dplyr)
library(sf)

# read in postcodes
dir.create("tmp")
unzip("D:/OneDrive - University of Leeds/Data/Postcodes/codepo_20230129/codepo_gpkg_gb.zip", exdir = "tmp")

postcodes <- st_read("tmp/data/codepo_gb.gpkg")


names(postcodes) <- c("postcode","quality","Country_code","NHS_regional_HA_code","NHS_HA_code",
                      "Admin_county_code","Admin_district_code","Admin_ward_code",
                      "geom")
postcodes <- postcodes[,1:2]

unlink("tmp", recursive = TRUE)
saveRDS(postcodes,"D:/OneDrive - University of Leeds/Data/Postcodes/code_point_open_2023.Rds")
