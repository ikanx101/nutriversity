rm(list=ls())
library(dplyr)
library(tidyr)
library(openxlsx)

data = mtcars
rownames(data) = NULL

df1 = 
  data %>%
  select(am,gear,carb,mpg) %>% 
  nest(data_pecah = c(gear,carb,mpg))

df2 = 
  data %>% 
  select(am,gear,carb,mpg) %>% 
  split(~am)

df3 = 
  data %>% 
  select(am,gear,carb,mpg) %>% 
  group_by(am) %>% 
  summarise_all(mean) %>% 
  ungroup()

df3
sel_1 = df3 %>% filter(am == 0) %>% round(1)

df2$`0` %>% 
  add_row(sel_1)


wb = createWorkbook()
sh = addWorksheet(wb,"new")
expss::xl_write(df2, wb, sh)

plan(multisession,workers = 8)

start = Sys.time()

library(purrr)
library(furrr)
hasil = 
  df1 %>% 
  mutate(model = future_map(data_pecah,function(df){
    Sys.sleep(10)
    lm(gear ~.,data = df)
  }
                        )
         )

Sys.time() - start

sink("hasil.txt")
hasil$model
sink()
