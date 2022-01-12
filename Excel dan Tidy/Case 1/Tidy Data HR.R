setwd("~/nutriversity/Excel dan Tidy")

rm(list=ls())

library(readxl)

data_new = read_excel("Contoh_Data.xlsx")

str(data_new)

# kalau mau melakukan data carpentry
# bisa pilih:
# 1. prinsip tidy
# %>% --> namanya pipe
# then ...

# bangun %>% mandi %>% sarapan %>% berangkat kerja

# 2. prinsip data.table

# berangkat kerja(sarapan(mandi(bangun)))

library(dplyr)

data_new %>% head(10)
data_new %>% tail(5)
data_new %>% str()

# filtering
data_new %>% 
  filter(bulan == "Jan")

data_new %>% 
  filter(bulan %in% c("Jan","Mar"))

# group_by
data_new %>% 
  group_by(dept,bulan) %>% 
  tally() %>% 
  ungroup()

# group_by
data_new %>% 
  group_by(bulan,status) %>% 
  tally() %>% 
  ungroup()

# mencari orang yang sakit
data_new %>% 
  filter(sick.frequency > 0) %>% 
  group_by(bulan,status) %>% 
  tally() %>% 
  ungroup()

# mencari orang yang sering izin
data_new %>% 
  filter(permit.frequency > 3) %>% 
  group_by(dept) %>% 
  tally() %>% 
  ungroup()

data_new %>% 
  group_by(nama.karyawan) %>% 
  summarise(total_sakit = sum(sick.frequency),
            total_cuti = sum(leave.frequency)) %>% 
  ungroup() %>% 
  arrange(desc(total_sakit))
  
  
  