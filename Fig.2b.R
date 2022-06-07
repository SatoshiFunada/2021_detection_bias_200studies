library(ggalluvial)

ggplot(data = data_ORR,
       aes(axis1 = Prespecified, axis2 = Published_paper)) +
  geom_alluvium(aes(fill = Inconsistency)) +
  scale_fill_manual(values=c("grey80","blue","green","gold1","red","grey30"))+
  #scale_fill_brewer(palette = "Set2")+
  geom_stratum() +
  geom_text(stat = "stratum", aes(label = after_stat(stratum))) +
  #geom_stratum(aes(fill = Published_paper))+
  scale_x_discrete(limits = c("Protocol/Registry", "Published_paper"), expand = c(0.15, 0.05)) +
  labs(title = "B: Objective response rate", x="Adjudicators", y="Frequency")+
  theme_bw()+
  theme(legend.title = element_text(size = 10), legend.text = element_text(size = 10))+
  ggsave(file = "Figure/Fig.2b.png", dpi = 300, width = 10.0, height = 11.0)

