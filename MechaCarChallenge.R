library(dplyr)
Mecha_Car <-read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

#create linear regression model
mc_lm <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle +ground_clearance + AWD, data = Mecha_Car)

# Determine p-value & r-squared value
summary(mc_lm)



suspension_coil <-read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

total_summary <- suspension_coil %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups ='keep')


t.test(suspension_coil$PSI, mu =1500)


t.test(subset(suspension_coil, Manufacturing_Lot=='Lot1')$PSI, mu = 1500)
t.test(subset(suspension_coil, Manufacturing_Lot=="Lot2")$PSI, mu = 1500)
t.test(subset(suspension_coil, Manufacturing_Lot=="Lot3")$PSI, mu = 1500)
