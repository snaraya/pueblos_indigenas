library(tidyverse)
library(sjmisc)

paleta <- c("#66b76a","#437039","#0f492f","#47926a","#d5ca7a","#efb337","#dd8024","#a24307","#b8191b","#8e1916")

scales::show_col(paleta)

df <- read_rds("data/nombre_pueblo_indigena.rds")

df <- df %>% 
  group_by(region, nombre_pueblo, sexo) %>% 
  summarise(n = sum(n)) %>% 
  arrange(nombre_pueblo, n)

df %>% 
  ggplot(aes(x = nombre_pueblo, y = n, fill = nombre_pueblo)) +
  geom_col(width = 0.5) +
  scale_y_continuous(limits = c(0,200000)) +
  scale_fill_manual(values = paleta, guide = "none") +
  coord_flip() +
  facet_grid(cols = vars(sexo), scales = "free")
