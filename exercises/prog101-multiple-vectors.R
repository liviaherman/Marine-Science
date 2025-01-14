# What does the following code do?
# Tip: `%%` is the remainder operator. E.g. 10 %% 4 is 2.
instrument_deployed_hm <- c(730, 915, 1345)
#This code has values of time in terms of "hundreds of minutes"
instrument_deployed_h <- floor(instrument_deployed_hm) / 100
#This code gives you the full hour of each time by removing the decimal
instrument_deployed_hdec <- (instrument_deployed_hm %% 100) / 60
#This code uses the remainder operator to get the minutes and then uses %% to
#divide the minutes by 60 to get the fraction of an hour.
instrument_deployed <- instrument_deployed_h + instrument_deployed_hdec
#This code adds the hours plus fractional hours to get the total time in hours
#as a decimal

# Based on the code above, calculate the duration of instrument deployments
# using the instrument recovery times below. What units do the durations have?
instrument_recovered_hm <- c(1600, 1920, 2015)

instrument_recovered <- floor(instrument_recovered_hm/100)
#Divide hhmm by 100 and take the floor
instrument_durations <- (instrument_recovered_hm %% 100)/60
#Use the remainder operator (%%) to get the minutes, then divide by 60 to
# convert them to a fraction of an hour

# Which site had the longest duration? Use conditional indexing.
site <- c("Santa Cruz", "Santa Rosa", "San Miguel")
Instrument_durations <- instrument_recovered - instrument_deployed
