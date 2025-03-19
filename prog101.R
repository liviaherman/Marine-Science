##########################################################################
## Driver: (Name) (GitHub Handle)                                       ##
## Navigator: (Name) (GitHub Handle)                                    ##
## Date: (YYYY-MM-DD)                                                   ##
##########################################################################

library(marinecs100b)

# Guiding questions -------------------------------------------------------

# What does KEFJ stand for?
KEFJ <- Kenai Fjords
# How was temperature monitored?
#Temperature was monitored by placing HOBO V2 temperature loggers at each site
# What's the difference between absolute temperature and temperature anomaly?
#absolute temperature is measurement recorded while the temperature anomaly is the
# deviation of temperature from a reference average.

# Begin exploring ---------------------------------------------------------

# How many kefj_* vectors are there?
?kefj
6 vectors

# How long are they?
1295038


# What do they represent?
Temperature, site, datetime, tidelevel, exposure air/water/transition, season

# Link to sketch

Aialik_datetime <- kefj_datetime[kefj_site == "Aialik"]
most_common_interval <- Aialik_datetime[2:(length(kefj_datetime))] - Aialik_datetime[1:(length(kefj_datetime)-1)]
table(most_common_interval)

# most common interval was 30 minutes

# Problem decomposition ---------------------------------------------------

# When and where did the hottest and coldest air temperature readings happen?
which.min(kefj_temperature)
as.POSIXct(63809)
which.max(kefj_temperature)
as.POSIXct(158962)
# Link to sketch

# Plot the hottest day


hottest_idx <- which.max(kefj_temperature)
hottest_time <- kefj_datetime[hottest_idx]
hottest_site <- kefj_site[hottest_idx]
hotday_start <- as.POSIXct("2018-07-03 00:00", tz = "Etc/GMT+8")
hotday_end <- as.POSIXct("2018-07-03 23:59", tz = "Etc/GMT+8")
hotday_idx <- kefj_site == hottest_site &
  kefj_datetime >= hotday_start &
  kefj_datetime <= hotday_end
hotday_datetime <- kefj_datetime[hotday_idx]
hotday_temperature <- kefj_temperature[hotday_idx]
hotday_exposure <- kefj_exposure[hotday_idx]
plot_kefj(hotday_datetime, hotday_temperature, hotday_exposure)

# Repeat for the coldest day

# What patterns do you notice in time, temperature, and exposure? Do those
# patterns match your intuition, or do they differ?

# How did Traiger et al. define extreme temperature exposure?

# Translate their written description to code and calculate the extreme heat
# exposure for the hottest day.

# Compare your answer to the visualization you made. Does it look right to you?

# Repeat this process for extreme cold exposure on the coldest day.


# Putting it together -----------------------------------------------------

# Link to sketch

# Pick one site and one season. What were the extreme heat and cold exposure at
# that site in that season?

# Repeat for a different site and a different season.

# Optional extension: Traiger et al. (2022) also calculated water temperature
# anomalies. Consider how you could do that. Make a sketch showing which vectors
# you would need and how you would use them. Write code to get the temperature
# anomalies for one site in one season in one year.
