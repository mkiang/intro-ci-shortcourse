# practicing dataset exploration

library(tidyverse)
library(haven)

setwd('~/Dropbox/intro-ci-shortcourse/slides/')

# Troost & Richardson (DD on bank failures in 1930)
#   estimating the impact of 

df <- read_csv('datasets/dd_banks.csv')
df <- df %>% 
  mutate(date_cal = as.Date(date, origin = "1900-01-01")) %>%
  select(-weekday, -day, -month, -year) %>%
  gather(measure, val, -date_cal, -date) %>%
  mutate(log_val = log(val),
         type = ifelse(measure %in% c("bio6", "bio8"),
                       "bio", "bib"))

ggplot(df, aes(x = date_cal, y = log_val, color = measure,
               group = measure)) + 
  geom_point() + geom_line()


# Angrist & A... schooling
#   multiple IV regressions on child labor laws
df <- read_dta('datasets/AA_schooling_small.dta')

# Angrist Kreuger (QoB on schooling)
df <- read_dta('./../datasets/ak_91_iv_qob.dta') %>%
  mutate(reg_wage = exp(lnw))
agg_df <- df %>% 
  unite(yob_qob, yob, qob, remove = F) %>%
  group_by(yob_qob) %>%
  summarise(mean_s = mean(s),
            qob = mean(qob),
            yob = mean(yob),
            mean_lnw = mean(lnw))
ggplot(agg_df, aes(x = yob_qob, y = mean_s, group = NA)) + 
  geom_point(aes(color = factor(qob)), size = 3) + 
  geom_line() + geom_label(aes(label = qob,
                               fill = factor(qob))) +
  scale_x_discrete(breaks = agg_df$yob_qob[str_detect(agg_df$yob_qob, "_1")])

ggplot(agg_df, aes(x = yob_qob, y = mean_lnw, group = NA)) + 
  geom_point(aes(color = factor(qob)), size = 3) + 
  geom_line() + geom_label(aes(label = qob, 
                               fill = factor(qob))) +
  scale_x_discrete(breaks = agg_df$yob_qob[str_detect(agg_df$yob_qob, "_1")])

ggplot(agg_df, aes(x = yob_qob, y = mean_lw, group = NA)) + 
  geom_point(aes(color = factor(qob)), size = 3) + 
  geom_line()

year_df <- df %>%
  group_by(s) %>%
  summarise(mean_lw = mean(lnw))
ggplot(year_df, aes(x = s, y = mean_lw)) + geom_point() +
  geom_line()

# residuals plot
a <- lm(reg_wage ~ s, data = df)
# residuals plot on wages
b <- lm(lnw ~ s, data = df)
