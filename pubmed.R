library(data.table)

biocuration_in_time = data.frame(fread("PubMed_Timeline_Results_by_Year.csv"))

library(ggplot2)
library(magrittr)

p <- biocuration_in_time %>% 
  ggplot(aes(x = Year, y = Count, )) +
  geom_bar(stat = 'identity', fill = "#0f6568") +
  ggtitle('Papers about "biocuration" in PubMed') +
  theme_classic()

filename = paste0("pubmed_", Sys.Date(), ".png" )
ggsave(filename,p)
p  

