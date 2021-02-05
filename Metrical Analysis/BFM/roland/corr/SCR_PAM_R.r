#Timothée Premat | 22/01/2020
#Script to print plots based on PAM analysis results

#Load packages
library(scales)
library(tidyverse)
library(readxl)
library(ggpubr)
library(ggrepel)
library(Hmisc)

#Set directory
setwd("~/Documents/GitHub/PhD/Metrical Analysis/BFM/roland_corr")

#Import datasets
##Import global data
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
#rawscore <- df_epC[, c("Meter","Score1", "Score2")]
#rawscore <- melt(rawscore, id = c("Type")) %>%
#    group_by(variable) %>% summarize(value=mean(value), count = n())
    #Allow to add labels of count
    #From now, df_epC is ready to be dataframe for global analysis and graph production.
    #Seems to be (a) non-needed, and (b) source of error. Keep it there for archive for some time, then delete it!

##Import global data for schwa/no schwa
        PAM_raw_xlsx <- read_excel("all.xlsx")
    
    #First, let's apply some transformations to clean up and properly reorganize data!
    ##Moove columns
        PAM_raw_xlsx <- PAM_raw_xlsx %>% relocate(meter, ces_3, ces_4, ces_5, ces_6, ces_7)
    
    ##Delete uneven lines (which contains syllables and not tags)
        toDelete <- seq(1, nrow(PAM_raw_xlsx), 2)
        PAM_tag <- PAM_raw_xlsx[ toDelete ,]

    ##Delete empty columns (xlsx export from PAM creates extra columns to be sure to be large enough for big too-long lines) (would also delete unused -1 (elided schwa) columns, but it shouldn't have any consequences and should be very rare, if existing)
        PAM_tag <- PAM_tag[,colSums(is.na(PAM_tag))<nrow(PAM_tag)]

    ##Compute the 'Yes/No' criteria for presence/absence of final schwas in the line
        #Computation of feminine rimes (schwa in feminine rime should not count in counting below as it cannot made the line ill-formed)
            #Define a function
            lastValue <- function(x)   tail(x[!is.na(x)], 1)
            #Apply it to the all df
            PAM_tag$rime <- apply(PAM_tag, 1, lastValue)
            
        #Computation of the number of schwas in the line
            #For non elided final schwa
            PAM_tag$schwa_C_sum_temp <- (rowSums(PAM_tag == 0, na.rm = TRUE))
            #For elided final schwa
            PAM_tag$schwa_V_sum <- (rowSums(PAM_tag == -1, na.rm = TRUE))
            #Re-ajust the number of elided final schwa to exclude (a) line-final schwa (should not count here as it cannot made the line ill-formed) and (b) the criteria rime=='1' criteria (meaning the rime is feminine)
            PAM_tag <- PAM_tag %>%
                mutate(schwa_C_sum = case_when(
                    rime == 0 ~ (schwa_C_sum_temp - 2),
                    rime > 0 ~ schwa_C_sum_temp
                ))

        #Computation of the boolean variables on final schwa
        #TO DO?
        PAM_tag <- PAM_tag %>%
            mutate(schwa_C = case_when(
                schwa_C_sum > 0 ~ "Yes",
                schwa_C_sum == 0 ~ "No"
            ))
        PAM_tag <- PAM_tag %>%
            mutate(schwa_V = case_when(
                schwa_V_sum > 0 ~ "Yes",
                schwa_V_sum == 0 ~ "No"
            ))

        #Calculate the percentage of final schwa per line
        PAM_tag <- PAM_tag %>%
            mutate(percent_schwa_C = schwa_C_sum / meter)
        PAM_tag <- PAM_tag %>%
            mutate(percent_schwa_V = schwa_V_sum / meter)

        #Reduce meter==11 to meter==10 when 4épC or 6épC detected
        PAM_tag_epC <- PAM_tag %>%
            mutate(meter=replace(meter, ces_4=="4épC" & meter==11, 10)) %>%
            as.data.frame()
        PAM_tag_epC <- PAM_tag_epC %>%
            mutate(meter=replace(meter, ces_6=="6épC" & meter==11, 10)) %>%
            as.data.frame()

        #Reorder data for readability
        PAM_tag_epC <- PAM_tag_epC %>% relocate(meter, rime, schwa_C, schwa_C_sum, schwa_V, schwa_V_sum, percent_schwa_C, percent_schwa_V)
        PAM_tag_epC$schwa_C_sum_temp <- NULL

#Prepare data for regression line (does not work with count numbers (in fake % shape).
#PAM_tag_epC <- PAM_tag_epC %>%
 #   mutate(meter_disc = as.numeric(as.character(meter)))

#Import data for m:9
#df_m9 <- read.table("m9.txt", header=T)

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

##DISTRIB_lines = barplot of each type of m:n[x]
DISTRIB_lines <-ggplot(df_epC, aes(meter)) + geom_bar() +
    geom_text(stat='count', aes(label=..count..), vjust=-0.5) +
    ###Good looking parameters
    labs(
      x="Number of metrified syllables",
      y="Number of lines (squared log.)",
      title = "Distribution of line lenght*",
      caption = "*metrified syllables only") +
    theme_classic() +
    coord_trans(y='sqrt') +
    scale_x_continuous(breaks=c(7,8,9,10,11,12,13,14,15)) +
    scale_y_continuous(breaks=c(5,10,50,150,1000,4000))

##Apply transformations (needed for ploting) to the df
PAM_tag_epC <- PAM_tag_epC %>%
    mutate(schwa_C_sum_disc = as_factor(schwa_C_sum))
PAM_tag_epC <- PAM_tag_epC %>%
    mutate(schwa_V_sum_disc = as_factor(schwa_V_sum))
PAM_tag_epC <- PAM_tag_epC %>%
    mutate(meter_disc = as_factor(meter))

cor.test(x = PAM_tag_epC$meter, y = PAM_tag_epC$schwa_C_sum, method="kendall")

##NUM_SCHWA = barplot with quantity of schwa per line and metrical status
# A.a
NUM_SCHWA_C <- ggplot(PAM_tag_epC, aes(schwa_C_sum, fill = meter)) + geom_bar(position="stack", color="grey") +
    geom_text(stat='count', aes(label=..count..), vjust = -0.25) +
    labs(
        x="Per line: number of non-elided schwas",
        y="Number of lines",
        title = "Non-elided final schwas: qty. per line") +
    theme_classic()

# A.b
NUM_SCHWA_V <- ggplot(PAM_tag_epC, aes(schwa_V_sum, fill = meter)) + geom_bar(position="stack", color="grey") +
    geom_text(stat='count', aes(label=..count..), vjust = -0.25) +
    labs(
        x="Per line: number of non-elided schwas",
        y="Number of lines",
        title = "Elided final schwas: qty. per line") +
    theme_classic()

##QUANTITY_SCHWA = filled barplot with quantity of schwa per line and metrical status
## B.a
QUANTITY_SCHWA_C <- ggplot(PAM_tag_epC, aes(meter, fill = forcats::fct_rev(schwa_C_sum_disc))) + geom_bar(position="fill", color="grey") +
    geom_text(stat='count', aes(label=..count..), position = position_fill(vjust = .5), color="black") +
    labs(
        x="Line-type (num. of metrified syll. per line)",
        y="Quantity of lines",
        fill="Num. of (non-)elided final schwa",
        title = "Non-elided final schwas: absolute qty. per line-type") +
    theme_classic() +
    theme(legend.position = "bottom") +
    scale_fill_manual(values = c("grey50", "grey60", "grey70", "grey80", "grey90", "white")) +
    scale_y_continuous(labels=scales::percent) +
    guides(fill = guide_legend(nrow = 1, reverse=T))

## B.c
QUANTITY_SCHWA_V <- ggplot(PAM_tag_epC, aes(meter, fill = forcats::fct_rev(schwa_V_sum_disc))) + geom_bar(position="fill", color="grey") +
    geom_text(stat='count', aes(label=..count..), position = position_fill(vjust = .5), color="black") +
    labs(
        x="Line-type (num. of metrified syll. per line)",
        y="Quantity of lines",
        fill="Num. of (non-)elided final schwa",
        title = "Elided final schwas: absolute qty. per line-type") +
    theme_classic() +
    theme(legend.position = "bottom") +
scale_fill_manual(values = c("grey80", "grey90", "white")) +
    scale_y_continuous(labels=scales::percent) +
    guides(fill = guide_legend(nrow = 1, reverse=T))

##YESNO = barplot with quantity of lines that have/have not at least one final schwa
# C.a
YESNO_C <- ggplot(PAM_tag_epC, aes(x=meter, fill=schwa_C)) + geom_bar(position=position_dodge()) +
    labs(
        x="Line-type (num. of metrified syll. per line)",
        y="Number of lines (squared log.)",
        title = "Non-elided final schwas: number of lines",
        fill = "The line contains at least one (non-)elided final schwa:") +
    theme_classic() + theme(legend.position = "bottom") +
    scale_x_continuous(breaks=c(7,8,9,10,11,12,13,14,15)) +
    scale_y_continuous(breaks=c(5,10,25,50,125, 250, 500, 1000, 2000, 3000, 4000, 5000)) +
    scale_fill_grey() +
    coord_trans(y='sqrt')

# C.b
YESNO_V <- ggplot(PAM_tag_epC, aes(x=meter, fill=schwa_V)) + geom_bar(position=position_dodge()) +
    labs(
        x="Line-type (num. of metrified syll. per line)",
        y="Number of lines (squared log.)",
        title = "Elided final schwas: number of lines",
        fill = "The line contains at least one (non-)elided final schwa:") +
    theme_classic() + theme(legend.position = "bottom") +
    scale_x_continuous(breaks=c(7,8,9,10,11,12,13,14,15)) +
    scale_y_continuous(breaks=c(5,10,25,50,125, 250, 500, 1000, 2000, 3000, 4000, 5000)) +
    scale_fill_grey() +
    coord_trans(y='sqrt')

##PERCENT_SCHWA = filled barplot with percentage of schwa per line and metrical status
# D.a
coefs_C <- coef(lm(percent_schwa_C ~ meter, data = PAM_tag_epC))
PERCENT_SCHWA_C <- ggplot(PAM_tag_epC, aes(x=meter, y=percent_schwa_C, group=meter_disc)) +  geom_violin(fill="grey35",color="grey35") +
    labs(
        x="Line-type (num. of metrified syll. per line)",
        y="Percentage of final schwa among all syll.",
        title = "Non-elided final schwas: relative qty. per line-type") +
    theme_classic() +
    theme(legend.position = "bottom") +
    scale_x_continuous(breaks=c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20)) +
    scale_y_continuous(labels=scales::percent) +
    geom_abline(intercept = coefs_C[1], slope = coefs_C[2]) +
    stat_summary(fun.y=mean, geom="point", shape=23, size=2, color="grey35", fill="white")

# D.e
coefs_V <- coef(lm(percent_schwa_V ~ meter, data = PAM_tag_epC))
PERCENT_SCHWA_V <- ggplot(PAM_tag_epC, aes(x=meter, y=percent_schwa_V, group=meter_disc)) +  geom_violin(fill="grey35",color="grey35") +
    labs(
        x="Line-type (num. of metrified syll. per line)",
        y="Percentage of final schwa among all syll.",
        title = "Elided final schwas: relative qty. per line-type") +
    theme_classic() +
    theme(legend.position = "bottom") +
    scale_x_continuous(breaks=c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20)) +
    scale_y_continuous(labels=scales::percent) +
    geom_abline(intercept = coefs_V[1], slope = coefs_V[2]) +
    stat_summary(fun.y=mean, geom="point", shape=23, size=2, color="grey35", fill="white") +
    annotate("text", x = 13, y = 0.2, label = "\U25CA Mean value per line-type")
        #The wanted symbol is:U25C7, but it does not work... No time for this!

##STATS = calculate and print general results as the PAM but with comprehension of 4épC and 6épC
PAM_md <- PAM_tag_epC %>%
    group_by(meter) %>%
    summarise(count = n()) %>%
    mutate(rate=sprintf("%0.2f", count/sum(count)*100))

knitr::kable(head(PAM_md), "pipe", align = "lrr")

##ARRANGE: compiles plot on only one figure
###QUANTITY SCHWA for _C and _V
QUANTITY_SCHWA <- ggarrange(QUANTITY_SCHWA_C, QUANTITY_SCHWA_V,
    labels = "AUTO",
    ncol=2, nrow=1,
    common.legend=TRUE,
    legend="bottom")

NUM_SCHWA <- ggarrange(NUM_SCHWA_C, NUM_SCHWA_V,
    labels = "AUTO",
    ncol=2, nrow=1)

YESNO <- ggarrange(YESNO_C, YESNO_V,
    labels = "AUTO",
    ncol=2, nrow=1)

PERCENT <- ggarrange(PERCENT_SCHWA_C,PERCENT_SCHWA_V,
    labels = "AUTO",
    ncol=2,nrow=1)

ALL_SCHWA <- ggarrange(
    ggarrange(NUM_SCHWA_C, NUM_SCHWA_V,
        labels = c("A.a","A.b"),
        ncol=2,
        nrow=1),
    ggarrange(QUANTITY_SCHWA_C, QUANTITY_SCHWA_V,
        labels = c("B.a","B.b"),
        ncol=2,
        nrow=1,
        common.legend=TRUE,
        legend="bottom"),
    ggarrange(YESNO_C, YESNO_V,
        labels = c("C.a","C.b"),
        ncol=2,
        nrow=1,
        common.legend=TRUE,
        legend="bottom"),
    ggarrange(PERCENT_SCHWA_C,PERCENT_SCHWA_V,
        labels = c("D.a","D.b"),
        ncol=2,
        nrow=1),
    ncol=1)

#PRINT IT!
##Uncomment the plot you want to print. Leave all uncommented to print all plots.
LOC
    ggsave(LOC, filename = "loc_meter.png", width=25,height=10, units="cm", scale=1, dpi="retina")

DISTRIB_lines
    ggsave(DISTRIB_lines, filename = "distrib_meter.png", width=25, height=20.13, units="cm", scale=1, dpi="retina")

#NUM_SCHWA
#    ggsave(NUM_SCHWA, filename = "num_schwa.png", width=25, height=12, units="cm", scale=1, dpi="retina")

#QUANTITY_SCHWA
    #ggsave(QUANTITY_SCHWA, filename = "qty_schwa.png", width=25, height=12, units="cm", scale=1, dpi="retina")

ALL_SCHWA
    ggsave(ALL_SCHWA, filename = "all_schwa.png", width=25, height=36, units="cm", scale=1, dpi="retina")

#--------------
#ARCHIVE. Contains no print instruction, so can be let uncommented for now; to comment or delete to increase process speed.
#--------------
SCATTER_SCHWA_V <- ggplot(PAM_tag_epC, aes(x=meter, y=schwa_C_sum)) + geom_point() +# geom_jitter(height=0.2) +
labs(
    x="Number of metrified syllables",
    y="Number of non-elided final schwa(s)",
    title = "Quantity of non-elided final schwas per line-type") +
theme_classic() +
scale_x_continuous(breaks=c(7,8,9,10,11,12,13,14,15)) +
geom_smooth(method=NULL, se=FALSE)

DENSITY_SCHWA_V <- ggplot(PAM_tag_epC, aes(x=meter, color=schwa_C, fill=schwa_C)) + geom_density(adjust = 5, alpha = 0.1) +
scale_color_grey() + scale_fill_grey() +
coord_trans(y='sqrt') +
theme_classic()

LINE_SCHWA_V <- ggplot(PAM_tag_epC, aes(x=meter, y=schwa_C_sum_disc, color=schwa_C_sum, fill=schwa_C_sum)) + geom_line(alpha = 0.1) +
scale_color_grey() + scale_fill_grey() +
theme_classic()

PROB_C <- ggplot(PAM_tag_epC, aes(x=schwa_C_sum, fill=meter_disc, group=meter_disc)) + geom_bar(position="fill", color="grey") +
    geom_text(stat='count', aes(label=..count..), position = position_fill(vjust = .5), check_overlap=TRUE) +
    labs(
        x="Number of non-elided schwas per line",
        y="Quantity of lines",
        title = "Non-elided final schwas and line well-formedness",
        fill = "Number of\nmetrified\nsyllables") +
    theme_classic() +
    scale_x_continuous(breaks=c(0,1,2,3,4,5)) +
    scale_y_continuous(labels=scales::percent) +
    scale_fill_manual(values = c("grey10", "grey20", "grey30", "grey50", "grey70", "grey80", "grey90", "grey95", "white")) +
    theme(legend.position = "none")

PROB_V <- ggplot(PAM_tag_epC, aes(x=schwa_V_sum, fill=meter_disc, group=meter_disc)) + geom_bar(position="fill", color="grey") +
    geom_text(stat='count', aes(label=..count..), position = position_fill(vjust = .5), check_overlap=TRUE) +
    labs(
        x="Number of elided schwas per line",
        y="Quantity of lines",
        title = "Elided final schwas and line well-formedness",
        fill = "Number of\nmetrified\nsyllables") +
    theme_classic() +
    scale_x_continuous(breaks=c(0,1,2,3,4,5)) +
    scale_y_continuous(labels=scales::percent) +
    scale_fill_manual(values = c("grey10", "grey20", "grey30", "grey50", "grey70", "grey80", "grey90", "grey95", "white"))
