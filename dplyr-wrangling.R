# -----Section 1: Filter----------

library(tidyverse)
library(lterdatasampler)
library(palmerpenguins)

# Look for an exact match
penguins_biscoe <- penguins %>% filter(island == "Biscoe")
# unique(penguins_biscoe$island)

penguins_2007 <- penguins %>%  filter(year == 2007)
# view(penguins_2007)

adelie_torgersen <- penguins %>% filter(species == "Adelie", island == "Torgersen")
#  You can also use the & instead of a comma


# Make a Data set that only contains Gentoo penguins observed in 2008
gentoo_2008 <- penguins %>% filter(species == "Gentoo" & year == "2008")
# view(gentoo_2008)

# Create a subset that contains Gentoos and Adelies
gentoo_adelie <- penguins %>% filter(species == "Adelie" | species == "Gentoo")
# view(gentoo_adelie)

# Create a subset where the year is 2009 or the island is Dream
dream_2009 <- penguins %>% filter(island == "Dream" | year == "2009")
# view(dream_2009)


# view(pie_crab)
ggplot(data = pie_crab, aes(x = water_temp, y = size))+
  geom_point()

# Keep observations for site NIB, ZI, DB, JC
# We can use the %in% operator to ask: does this value in our column match any of the values in this vector
pie_sites <- pie_crab %>%
  filter(site %in% c("NIB", "ZI", "DB", "JC"))

pie_sites_2 <- pie_crab %>%
  filter(site %in% c("PIE", "ZI", "NIB", "BB","CC"))

exclude_zi <- pie_crab %>% filter(site != "ZI")

# What if I want to exclude sites BB, CC, PIE?
exclude_BB_CC_ZI <- pie_crab %>% fliter(!site %in% c("BB", "CC", "ZI"))

# Create a subset from pie crab that only contians ovbservations from NIB CC and ZI for crabs with carapace length exceeding 13mm
crab_site_large <- pie_crab %>%
  filter(site %in% c("NIB", "CC", "ZI"), size > 13)


sites <- c("GTM","SI"  "NIB" "ZI"  "RC"  "VCR" "DB"  "JC"  "CT"  "NB"  "CC""BC"  "PIE")
row_info<- c("Count", "Mean_Carapace_Size")
summary_data <- matrix(nrow = length(row_info), ncol = length(sites))

for(i in seq_along(sites)){
  filter_by_site <- pie_crab %>%
    filter(site == sites[i])


}
