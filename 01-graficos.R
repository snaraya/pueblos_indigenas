library(tidyverse)
library(sjmisc)

paleta <- c("#66b76a","#437039","#0f492f","#47926a","#d5ca7a","#efb337","#dd8024","#a24307","#b8191b","#8e1916")

scales::show_col(paleta)

df <- read_rds("data/nombre_pueblo_indigena.rds")

df <- df %>% 
  group_by()