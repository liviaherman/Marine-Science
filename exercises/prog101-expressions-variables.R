# What do the following expressions do?
temp_F <- temp_C * 9/5 - 32
#Convert Fahrenheit to Celsius
rect_area <- rect_length * rect_width
#Finding the area of a rectangle
# Fill in the question marks to complete these expressions
triangle_area <- 1/2 * base * height
cylinder_volume <- pi * radius^2 * height

  # What are the errors in these expressions?
speed_m_s <- distance_m * time_s
#Speed is the distance divided by time
acceleration_m_s2 <- speed_m_s / time_s
#Must add an underscore, for example acceleration_m_s2
force_N <- mass * acceleration_m_s2
#should be force_N <- mass * acceleration_m_s2

# The energy density of market squid is 4850 joules per gram[1]. If a 225 kg
# Risso's dolphin needs 5 million joules of energy per day[2] and a typical
# market squid is 35 g[1], then how many squid does a Risso's dolphin need to
# eat each day? Solve the above word problem in R. Consider how many variables
# you need to create, what to name them to make the code readable, and how to
# combine them into expressions.
squid_energy_density <- 4850
mass_squid <- 35
energy_squid <- energy_density * mass_squid
energy_squid <- 169750
energy_dolphin_need <- 5000000
number_squid <- energy_dolphin_need / energy_squid



# [1] Price et al. 2024 https://doi.org/10.3389/fmars.2023.1345525
# [2] Barlow et al. 2008 https://doi.org/10.3354/meps07695

