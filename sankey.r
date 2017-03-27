set.seed(1000)
df <- data.frame(col1= sample(c(1:15), 15, replace = F),
                 col2=sample(c("aa", "bb","cc"), 15, replace=TRUE),
                 col3=sample(c('a','b','c','d'), 15, replace=TRUE, prob=c(0.25, 0.25, 0.20, 0.30)))

grp<-df %>%
  group_by(col2, col3) %>%
  summarise(n=n())

Sankeyy <- gvisSankey(grp, from="col2", to="col3", weight="n",
                      options=list(
                        sankey="{link: {color: { fill: '#d799ae' } },
                    node: { color: { fill: '#a61d4c' },
                    label: { color: '#871b47' } }}"))
plot(Sankeyy)
