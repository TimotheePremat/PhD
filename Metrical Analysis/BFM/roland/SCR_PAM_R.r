#Timothée Premat | 22/01/2020
#Script to print plots based on PAM analysis results

#Load packages
library(ggplot2)
library(readxl)
library(scales)
library(dplyr)

#Set directory
setwd("~/Documents/GitHub/PhD/Metrical Analysis/BFM/roland")

#Import datasets
##Import main data
df_all <- read_excel("roland_ALL.xlsx")
df_m_synthesis_all <- read_excel("roland_ALL.xlsx", sheet = "stat_meter")
df_c_synthesis_all <- read_excel("roland_ALL.xlsx", sheet = "stat_cesure")
#df_loc_plot <- read.table(
#  "roland_ALL.txt",
#  header=T)
df_loc_line <- read.table(
"line_by_line_meter.txt",
header=T)
df_epC <- df_loc_line %>%
    mutate(meter=replace(meter, ces_4=="4épC" & meter==11, 10)) %>%
    as.data.frame()
    #This replace meter=11 by meter=10 when ces_4=4épC, in order to display lines with m:11 and 4épC as having only 10 metrified syllable. They are merged with the 'natural' m:10 lines.
df_epC <- df_epC %>%
    mutate(meter=replace(meter, ces_6=="6épC" & meter==11, 10)) %>%
    as.data.frame()
    #This replace meter=11 by meter=10 when ces_6=6épC, in order to display lines with m:11 and 6épC as having only 10 metrified syllable. They are merged with the 'natural' m:10 lines.
    #We don't do that for line m:>11, because location of metrical break is not reliable for them.
rawscore <- df_epC[, c("Meter","Score1", "Score2")]
rawscore <- melt(rawscore, id = c("Type")) %>%
    group_by(variable) %>% summarize(value=mean(value), count = n())
    #Allow to add labels of count
    #From now, df_epC is ready to be dataframe for global analysis and graph production.

#PLOT IT!
##LOC = dotplot that shows location of each type of line
LOC <- ggplot(
    df_epC,
    aes(
    x=num_l,
    y=meter)) +

geom_jitter(
  width=0,
  height=0.05) +

###Good looking parameters
labs(
  x="Line number",
  y="Number of metrified syllables",
  title = "Line lenght* per line",
  caption = "*metrified syllables only") +
    #Very bad method to set the breaks, but still works. To be changed in the future.
  scale_y_continuous(breaks=c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20)) +
  theme_bw()

##DISTRIB = barplot of each type of m:n[x]
DISTRIB <-ggplot(df_epC, aes(meter)) + geom_bar() +
    geom_text(stat='count', aes(label=..count..), vjust=-0.5) +
###Good looking parameters
labs(
  x="Number of metrified syllables",
  y="Number of lines",
  title = "Distribution of line lenght*",
  caption = "*metrified syllables only") +
theme_classic() +
coord_trans(y='sqrt') +
scale_x_continuous(breaks=c(7,8,9,10,11,12,13,14,15)) +
scale_y_continuous(breaks=c(5,10,50,150,1000,4000)) +
annotate("text", x = 14, y = 3000, label = "Beware!\n Logarithmic \'y\' scale.")


#PRINT IT!
##Uncomment the plot you want to print. Leave all uncommented to print all plots.
#LOC
#    ggsave(LOC, filename = "loc_meter.png", width=25,height=10,units="cm",scale=1,dpi="retina")
DISTRIB
    ggsave(DISTRIB, filename = "distrib_meter.png", width=25,height=20.13,units="cm",scale=1,dpi="retina")
