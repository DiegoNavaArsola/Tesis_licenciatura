library(ggplot2)

##################################################
########### LECTURA DE DATOS FAST-ORB ############
##################################################

# Lectura de los datos para el algoritmo orb 0°
ob1_e_fo_0 <- read.csv("C:/Users/Diego/Desktop/tesis_datos/tests_vision/fast_orb/degrees_0/objeto_1_esfera_limpio", sep="")
ob2_l_fo_0 <- read.csv("C:/Users/Diego/Desktop/tesis_datos/tests_vision/fast_orb/degrees_0/objeto_2_lata_limpio", sep="")
ob3_cu_fo_0 <- read.csv("C:/Users/Diego/Desktop/tesis_datos/tests_vision/fast_orb/degrees_0/objeto_3_cubo_limpio", sep="")
ob4_ca_fo_0 <- read.csv("C:/Users/Diego/Desktop/tesis_datos/tests_vision/fast_orb/degrees_0/objeto_4_caja_limpio", sep="")

# Lectura de los datos para el algoritmo orb -30°
ob1_e_fo_m30 <- read.csv("C:/Users/Diego/Desktop/tesis_datos/tests_vision/fast_orb/degrees_m30/objeto_1_esfera_m30_limpio", sep="")
ob2_l_fo_m30 <- read.csv("C:/Users/Diego/Desktop/tesis_datos/tests_vision/fast_orb/degrees_m30/objeto_2_lata_m30_limpio", sep="")
ob3_cu_fo_m30 <- read.csv("C:/Users/Diego/Desktop/tesis_datos/tests_vision/fast_orb/degrees_m30/objeto_3_cubo_m30_limpio", sep="")
ob4_ca_fo_m20 <- read.csv("C:/Users/Diego/Desktop/tesis_datos/tests_vision/fast_orb/degrees_m30/objeto_4_caja_m20_limpio", sep="")

# Lectura de los datos para el algoritmo orb +10° (esfera), 20° (cubo), 30°
ob1_e_fo_p10 <- read.csv("C:/Users/Diego/Desktop/tesis_datos/tests_vision/fast_orb/degrees_p30/objeto_1_esfera_p10_limpio", sep="")
ob2_l_fo_p30 <- read.csv("C:/Users/Diego/Desktop/tesis_datos/tests_vision/fast_orb/degrees_p30/objeto_2_lata_p30_limpio", sep="")
ob3_cu_fo_p20 <- read.csv("C:/Users/Diego/Desktop/tesis_datos/tests_vision/fast_orb/degrees_p30/objeto_3_cubo_p20_limpio", sep="")
ob4_ca_fo_p30 <- read.csv("C:/Users/Diego/Desktop/tesis_datos/tests_vision/fast_orb/degrees_p30/objeto_4_caja_p30_limpio", sep="")

###############################################
########### LECTURA DE DATOS BRISK ############
###############################################

# Lectura de los datos para el algoritmo BRISK 0°
ob1_e_b_0 <- read.csv("C:/Users/Diego/Desktop/tesis_datos/tests_vision/brisk/degrees_0/objeto_1_esfera_0_b_limpio", sep="")
ob2_l_b_0 <- read.csv("C:/Users/Diego/Desktop/tesis_datos/tests_vision/brisk/degrees_0/objeto_2_lata_0_b_limpio", sep="")
ob3_cu_b_0 <- read.csv("C:/Users/Diego/Desktop/tesis_datos/tests_vision/brisk/degrees_0/objeto_3_cubo_0_b_limpio", sep="")
ob4_ca_b_0 <- read.csv("C:/Users/Diego/Desktop/tesis_datos/tests_vision/brisk/degrees_0/objeto_4_caja_0_b_limpio", sep="")

#Lectura de los datos para el algoritmo BRISK -15°,-10°
ob2_l_b_m15 <- read.csv("C:/Users/Diego/Desktop/tesis_datos/tests_vision/brisk/degrees_m15/objeto_2_lata_m15_b_limpio", sep="")
ob3_cu_b_m15 <- read.csv("C:/Users/Diego/Desktop/tesis_datos/tests_vision/brisk/degrees_m15/objeto_3_cubo_m15_b_limpio", sep="")
ob4_ca_b_m10 <- read.csv("C:/Users/Diego/Desktop/tesis_datos/tests_vision/brisk/degrees_m15/objeto_4_caja_m10_b_limpio", sep="")

#Lectura de los datos para el algoritmo BRISK +15°,+10°
ob2_l_b_p15 <- read.csv("C:/Users/Diego/Desktop/tesis_datos/tests_vision/brisk/degrees_p15/objeto_2_lata_p15_b_limpio", sep="")
ob3_cu_b_p15 <- read.csv("C:/Users/Diego/Desktop/tesis_datos/tests_vision/brisk/degrees_p15/objeto_3_cubo_p15_b_limpio", sep="")
ob4_ca_b_p15 <- read.csv("C:/Users/Diego/Desktop/tesis_datos/tests_vision/brisk/degrees_p15/objeto_4_caja_p15_b_limpio", sep="")


##########################################
### Copias de seguridad para los datos ###
##########################################

# ORB
ob1_e_fo_0_c <- ob1_e_fo_0
ob2_l_fo_0_c <- ob2_l_fo_0
ob3_cu_fo_0_c <- ob3_cu_fo_0
ob4_ca_fo_0_c <- ob4_ca_fo_0

ob1_e_fo_m30_c <- ob1_e_fo_m30
ob2_l_fo_m30_c <- ob2_l_fo_m30
ob3_cu_fo_m30_c <- ob3_cu_fo_m30
ob4_ca_fo_m20_c <- ob4_ca_fo_m20

ob1_e_fo_p10_c <- ob1_e_fo_p10
ob2_l_fo_p30_c <- ob2_l_fo_p30
ob3_cu_fo_p20_c <- ob3_cu_fo_p20
ob4_ca_fo_p30_c <- ob4_ca_fo_p30

# BRISK
ob1_e_b_0_c <- ob1_e_b_0
ob2_l_b_0_c <- ob2_l_b_0
ob3_cu_b_0_c <- ob3_cu_b_0
ob4_ca_b_0_c <- ob4_ca_b_0

ob2_l_b_m15_c <- ob2_l_b_m15
ob3_cu_b_m15_c <- ob3_cu_b_m15
ob4_ca_b_m10_c <- ob4_ca_b_m10

ob2_l_b_p15_c <- ob2_l_b_p15
ob3_cu_b_p15_c <- ob3_cu_b_p15
ob4_ca_b_p15_c <- ob4_ca_b_p15

######################################
## Ajustando los valores del tiempo ##
######################################

# ORB
ob1_e_fo_0_c$time <- round(ob1_e_fo_0_c$time - ob1_e_fo_0_c$time[1])
ob2_l_fo_0_c$time <- round(ob2_l_fo_0_c$time - ob2_l_fo_0_c$time[1])
ob3_cu_fo_0_c$time <- round(ob3_cu_fo_0_c$time - ob3_cu_fo_0_c$time[1])
ob4_ca_fo_0_c$time <- round(ob1_e_fo_0_c$time - ob4_e_fo_0_c$time[1])

ob1_e_fo_m30_c$time <- round(ob1_e_fo_m30_c$time - ob1_e_fo_m30_c$time[1])
ob2_l_fo_m30_c$time <- round(ob2_l_fo_m30_c$time - ob2_l_fo_m30_c$time[1])
ob3_cu_fo_m30_c$time <- round(ob3_cu_fo_m30_c$time - ob3_cu_fo_m30_c$time[1])
ob4_ca_fo_m20_c$time <- round(ob4_ca_fo_m20_c$time - ob4_ca_fo_m20_c$time[1])

ob1_e_fo_p10_c$time <- round(ob1_e_fo_p10_c$time - ob1_e_fo_p10_c$time[1])
ob2_l_fo_p30_c$time <- round(ob2_l_fo_p30_c$time - ob2_l_fo_p30_c$time[1])
ob3_cu_fo_p20_c$time <- round(ob3_cu_fo_p20_c$time - ob3_cu_fo_p20_c$time[1])
ob4_ca_fo_p30_c$time <- round(ob4_ca_fo_p30_c$time - ob4_ca_fo_p30_c$time[1])

# BRISK
ob1_e_b_0_c$time <- round(ob1_e_b_0_c$time - ob1_e_b_0_c$time[1])
ob2_l_b_0_c$time <- round(ob2_l_b_0_c$time - ob2_l_b_0_c$time[1])
ob3_cu_b_0_c$time <- round(ob3_cu_b_0_c$time - ob3_cu_b_0_c$time[1])
ob4_ca_b_0_c$time <- round(ob4_ca_b_0_c$time - ob4_ca_b_0_c$time[1])

ob2_l_b_m15_c$time <- round(ob2_l_b_m15_c$time - ob2_l_b_m15_c$time[1])
ob3_cu_b_m15_c$time <- round(ob3_cu_b_m15_c$time - ob3_cu_b_m15_c$time[1])
ob4_ca_b_m10_c$time <- round(ob4_ca_b_m10_c$time - ob4_ca_b_m10_c$time[1])

ob2_l_b_p15_c$time <- round(ob2_l_b_p15_c$time - ob2_l_b_p15_c$time[1])
ob3_cu_b_p15_c$time <- round(ob3_cu_b_p15_c$time - ob3_cu_b_p15_c$time[1])
ob4_ca_b_p15_c$time <- round(ob4_ca_b_p15_c$time - ob4_ca_b_p15_c$time[1])

####################
## Valores reales ##
####################

# Objeto 1 (Esfera)
x1 <- 0.963
y1 <- -0.07105
z1 <- 0.7695
roll1 <- 0
pitch1 <- 0
yaw1 <- 0

# Objeto 2 (Lata)
x2 <- 0.9655
y2 <- 0.07055
z2 <- 0.796
roll2 <- 0
pitch2 <- 0
yaw2 <- 0

# Objeto 3 (Cubo)
x3 <- 0.9615
y3 <- 0.21215
z3 <- 0.7625
roll3 <- 0
pitch3 <- 0
yaw3 <- 0

# Objeto 4 (Caja)
x4 <- 0.954
y4 <- -0.21265
z4 <- 0.787
roll4 <- 0
pitch4 <- 0
yaw4 <- 0

corz1 = -6.68
corz2 = 7.48
corz3 = 21.64
corz4 = -20.84

####################################
#### Calculo de diferencias ORB ####
####################################

# Cero grados
d1_0_diffx <- ob1_e_fo_0_c$X - x1
d1_0_diffy <- ob1_e_fo_0_c$Y - y1
d1_0_diffz <- ob1_e_fo_0_c$Z - z1
d1_0_diffr <- ob1_e_fo_0_c$roll - roll1
d1_0_diffp <- ob1_e_fo_0_c$pitch - pitch1
d1_0_diffya <- ob1_e_fo_0_c$yaw - yaw1

d2_0_diffx <- ob2_l_fo_0_c$X - x2
d2_0_diffy <- ob2_l_fo_0_c$Y - y2
d2_0_diffz <- ob2_l_fo_0_c$Z - z2
d2_0_diffr <- ob2_l_fo_0_c$roll - roll2
d2_0_diffp <- ob2_l_fo_0_c$pitch - pitch2
d2_0_diffya <- ob2_l_fo_0_c$yaw - yaw2

d3_0_diffx <- ob3_cu_fo_0_c$X - x3
d3_0_diffy <- ob3_cu_fo_0_c$Y - y3
d3_0_diffz <- ob3_cu_fo_0_c$Z - z3
d3_0_diffr <- as.numeric(ob3_cu_fo_0_c$roll) - roll3
d3_0_diffp <- as.numeric(ob3_cu_fo_0_c$pitch) - pitch3
d3_0_diffya <- ob3_cu_fo_0_c$yaw - yaw3

d4_0_diffx <- ob4_ca_fo_0_c$X - x4
d4_0_diffy <- ob4_ca_fo_0_c$Y - y4
d4_0_diffz <- ob4_ca_fo_0_c$Z - z4
d4_0_diffr <- ob4_ca_fo_0_c$roll - roll4
d4_0_diffp <- ob4_ca_fo_0_c$pitch - pitch4
d4_0_diffya <- ob4_ca_fo_0_c$yaw - yaw4

# -30 grados
d1_m30_diffx <- ob1_e_fo_m30_c$X - x1
d1_m30_diffy <- ob1_e_fo_m30_c$Y - y1
d1_m30_diffz <- ob1_e_fo_m30_c$Z - z1
d1_m30_diffr <- ob1_e_fo_m30_c$roll - roll1
d1_m30_diffp <- ob1_e_fo_m30_c$pitch - pitch1
d1_m30_diffya <- ob1_e_fo_m30_c$yaw - yaw1 - 30

d2_m30_diffx <- ob2_l_fo_m30_c$X - x2
d2_m30_diffy <- ob2_l_fo_m30_c$Y - y2
d2_m30_diffz <- ob2_l_fo_m30_c$Z - z2
d2_m30_diffr <- ob2_l_fo_m30_c$roll - roll2
d2_m30_diffp <- ob2_l_fo_m30_c$pitch - pitch2
d2_m30_diffya <- ob2_l_fo_m30_c$yaw - yaw2 - 30

d3_m30_diffx <- ob3_cu_fo_m30_c$X - x3
d3_m30_diffy <- ob3_cu_fo_m30_c$Y - y3
d3_m30_diffz <- ob3_cu_fo_m30_c$Z - z3
d3_m30_diffr <- ob3_cu_fo_m30_c$roll - roll3
d3_m30_diffp <- ob3_cu_fo_m30_c$pitch - pitch3
d3_m30_diffya <- ob3_cu_fo_m30_c$yaw - yaw3 - 30

d4_m20_diffx <- ob4_ca_fo_m20_c$X - x4
d4_m20_diffy <- ob4_ca_fo_m20_c$Y - y4
d4_m20_diffz <- ob4_ca_fo_m20_c$Z - z4
d4_m20_diffr <- ob4_ca_fo_m20_c$roll - roll4
d4_m20_diffp <- ob4_ca_fo_m20_c$pitch - pitch4
d4_m20_diffya <- ob4_ca_fo_m20_c$yaw - yaw4 - 20

# +10,20,30 grados
d1_p10_diffx <- ob1_e_fo_p10_c$X - x1
d1_p10_diffy <- ob1_e_fo_p10_c$Y - y1
d1_p10_diffz <- ob1_e_fo_p10_c$Z - z1
d1_p10_diffr <- ob1_e_fo_p10_c$roll - roll1
d1_p10_diffp <- ob1_e_fo_p10_c$pitch - pitch1
d1_p10_diffya <- ob1_e_fo_p10_c$yaw - yaw1 - 30

d2_p30_diffx <- ob2_l_fo_p30_c$X - x2
d2_p30_diffy <- ob2_l_fo_p30_c$Y - y2
d2_p30_diffz <- ob2_l_fo_p30_c$Z - z2
d2_p30_diffr <- ob2_l_fo_p30_c$roll - roll2
d2_p30_diffp <- ob2_l_fo_p30_c$pitch - pitch2
d2_p30_diffya <- ob2_l_fo_p30_c$yaw - yaw2 - 30

d3_p20_diffx <- ob3_cu_fo_p20_c$X - x3
d3_p20_diffy <- ob3_cu_fo_p20_c$Y - y3
d3_p20_diffz <- ob3_cu_fo_p20_c$Z - z3
d3_p20_diffr <- ob3_cu_fo_p20_c$roll - roll3
d3_p20_diffp <- ob3_cu_fo_p20_c$pitch - pitch3
d3_p20_diffya <- ob3_cu_fo_p20_c$yaw - yaw3 - 30

d4_p30_diffx <- ob4_ca_fo_p30_c$X - x4
d4_p30_diffy <- ob4_ca_fo_p30_c$Y - y4
d4_p30_diffz <- ob4_ca_fo_p30_c$Z - z4
d4_p30_diffr <- ob4_ca_fo_p30_c$roll - roll4
d4_p30_diffp <- ob4_ca_fo_p30_c$pitch - pitch4
d4_p30_diffya <- ob4_ca_fo_p30_c$yaw - yaw4 - 20

######################################
#### Calculo de diferencias BRISK ####
######################################

# Cero grados
b1_0_diffx <- ob1_e_b_0_c$X - x1
b1_0_diffy <- ob1_e_b_0_c$Y - y1
b1_0_diffz <- ob1_e_b_0_c$Z - z1
b1_0_diffr <- ob1_e_b_0_c$roll - roll1
b1_0_diffp <- ob1_e_b_0_c$pitch - pitch1
b1_0_diffya <- ob1_e_b_0_c$yaw - yaw1

b2_0_diffx <- ob2_l_b_0_c$X - x2
b2_0_diffy <- ob2_l_b_0_c$Y - y2
b2_0_diffz <- ob2_l_b_0_c$Z - z2
b2_0_diffr <- ob2_l_b_0_c$roll - roll2
b2_0_diffp <- ob2_l_b_0_c$pitch - pitch2
b2_0_diffya <- ob2_l_b_0_c$yaw - yaw2

b3_0_diffx <- ob3_cu_b_0_c$X - x3
b3_0_diffy <- ob3_cu_b_0_c$Y - y3
b3_0_diffz <- ob3_cu_b_0_c$Z - z3
b3_0_diffr <- ob3_cu_b_0_c$roll - roll3
b3_0_diffp <- ob3_cu_b_0_c$pitch - pitch3
b3_0_diffya <- ob3_cu_b_0_c$yaw - yaw3

b4_0_diffx <- ob4_ca_b_0_c$X - x4
b4_0_diffy <- ob4_ca_b_0_c$Y - y4
b4_0_diffz <- ob4_ca_b_0_c$Z - z4
b4_0_diffr <- ob4_ca_b_0_c$roll - roll4
b4_0_diffp <- ob4_ca_b_0_c$pitch - pitch4
b4_0_diffya <- ob4_ca_b_0_c$yaw - yaw4

# -15,-10 grados
b2_m15_diffx <- ob2_l_b_m15_c$X - x2
b2_m15_diffy <- ob2_l_b_m15_c$Y - y2
b2_m15_diffz <- ob2_l_b_m15_c$Z - z2
b2_m15_diffr <- ob2_l_b_m15_c$roll - roll2
b2_m15_diffp <- ob2_l_b_m15_c$pitch - pitch2
b2_m15_diffya <- ob2_l_b_m15_c$yaw - yaw2 - 15

b3_m15_diffx <- ob3_cu_b_m15_c$X - x3
b3_m15_diffy <- ob3_cu_b_m15_c$Y - y3
b3_m15_diffz <- ob3_cu_b_m15_c$Z - z3
b3_m15_diffr <- ob3_cu_b_m15_c$roll - roll3
b3_m15_diffp <- ob3_cu_b_m15_c$pitch - pitch3
b3_m15_diffya <- ob3_cu_b_m15_c$yaw - yaw3 - 15

b4_m10_diffx <- ob4_ca_b_m10_c$X - x4
b4_m10_diffy <- ob4_ca_b_m10_c$Y - y4
b4_m10_diffz <- ob4_ca_b_m10_c$Z - z4
b4_m10_diffr <- ob4_ca_b_m10_c$roll - roll4
b4_m10_diffp <- ob4_ca_b_m10_c$pitch - pitch4
b4_m10_diffya <- ob4_ca_b_m10_c$yaw - yaw4 -10

# +15 grados
b2_p15_diffx <- ob2_l_b_p15_c$X - x2
b2_p15_diffy <- ob2_l_b_p15_c$Y - y2
b2_p15_diffz <- ob2_l_b_p15_c$Z - z2
b2_p15_diffr <- ob2_l_b_p15_c$roll - roll2
b2_p15_diffp <- ob2_l_b_p15_c$pitch - pitch2
b2_p15_diffya <- ob2_l_b_p15_c$yaw - yaw2 + 15

b3_p15_diffx <- ob3_cu_b_p15_c$X - x3
b3_p15_diffy <- ob3_cu_b_p15_c$Y - y3
b3_p15_diffz <- ob3_cu_b_p15_c$Z - z3
b3_p15_diffr <- ob3_cu_b_p15_c$roll - roll3
b3_p15_diffp <- ob3_cu_b_p15_c$pitch - pitch3
b3_p15_diffya <- ob3_cu_b_p15_c$yaw - yaw3 + 15

b4_p15_diffx <- ob4_ca_b_p15_c$X - x4
b4_p15_diffy <- ob4_ca_b_p15_c$Y - y4
b4_p15_diffz <- ob4_ca_b_p15_c$Z - z4
b4_p15_diffr <- ob4_ca_b_p15_c$roll - roll4
b4_p15_diffp <- ob4_ca_b_p15_c$pitch - pitch4
b4_p15_diffya <- ob4_ca_b_p15_c$yaw - yaw4 + 15

###########################################################
## Lista con los datos obtenidos para facilitar cáclulos ##
###########################################################

# ORB
d1_0_net <- list(d1_0_diffx,d1_0_diffy,d1_0_diffz,d1_0_diffr,d1_0_diffp,d1_0_diffya)
d2_0_net <- list(d2_0_diffx,d2_0_diffy,d2_0_diffz,d2_0_diffr,d2_0_diffp,d2_0_diffya)
d3_0_net <- list(d3_0_diffx,d3_0_diffy,d3_0_diffz,d3_0_diffr,d3_0_diffp,d3_0_diffya)
d4_0_net <- list(d4_0_diffx,d4_0_diffy,d4_0_diffz,d4_0_diffr,d4_0_diffp,d4_0_diffya)

d1_m30_net <- list(d1_m30_diffx,d1_m30_diffy,d1_m30_diffz,d1_m30_diffr,d1_m30_diffp,d1_m30_diffya)
d2_m30_net <- list(d2_m30_diffx,d2_m30_diffy,d2_m30_diffz,d2_m30_diffr,d2_m30_diffp,d2_m30_diffya)
d3_m30_net <- list(d3_m30_diffx,d3_m30_diffy,d3_m30_diffz,d3_m30_diffr,d3_m30_diffp,d3_m30_diffya)
d4_m20_net <- list(d4_m20_diffx,d4_m20_diffy,d4_m20_diffz,d4_m20_diffr,d4_m20_diffp,d4_m20_diffya)

d1_p10_net <- list(d1_p10_diffx,d1_p10_diffy,d1_p10_diffz,d1_p10_diffr,d1_p10_diffp,d1_p10_diffya)
d2_p30_net <- list(d2_p30_diffx,d2_p30_diffy,d2_p30_diffz,d2_p30_diffr,d2_p30_diffp,d2_p30_diffya)
d3_p20_net <- list(d3_p20_diffx,d3_p20_diffy,d3_p20_diffz,d3_p20_diffr,d3_p20_diffp,d3_p20_diffya)
d4_p30_net <- list(d4_p30_diffx,d4_p30_diffy,d4_p30_diffz,d4_p30_diffr,d4_p30_diffp,d4_p30_diffya)

#BRISK
b1_0_net <- list(b1_0_diffx,b1_0_diffy,b1_0_diffz,b1_0_diffr,b1_0_diffp,b1_0_diffya)
b2_0_net <- list(b2_0_diffx,b2_0_diffy,b2_0_diffz,b2_0_diffr,b2_0_diffp,b2_0_diffya)
for (i in c(1:6)) {
  b2_0_net[[i]] <- na.exclude(b2_0_net[[i]])
}  
b3_0_net <- list(b3_0_diffx,b3_0_diffy,b3_0_diffz,b3_0_diffr,b3_0_diffp,b3_0_diffya)
b4_0_net <- list(b4_0_diffx,b4_0_diffy,b4_0_diffz,b4_0_diffr,b4_0_diffp,b4_0_diffya)

b2_m15_net <- list(b2_m15_diffx,b2_m15_diffy,b2_m15_diffz,b2_m15_diffr,b2_m15_diffp,b2_m15_diffya)
b3_m15_net <- list(b3_m15_diffx,b3_m15_diffy,b3_m15_diffz,b3_m15_diffr,b3_m15_diffp,b3_m15_diffya)
b4_m10_net <- list(b4_m10_diffx,b4_m10_diffy,b4_m10_diffz,b4_m10_diffr,b4_m10_diffp,b4_m10_diffya)

b2_p15_net <- list(b2_p15_diffx,b2_p15_diffy,b2_p15_diffz,b2_p15_diffr,b2_p15_diffp,b2_p15_diffya)
b3_p15_net <- list(b3_p15_diffx,b3_p15_diffy,b3_p15_diffz,b3_p15_diffr,b3_p15_diffp,b3_p15_diffya)
b4_p15_net <- list(b4_p15_diffx,b4_p15_diffy,b4_p15_diffz,b4_p15_diffr,b4_p15_diffp,b4_p15_diffya)

#######################
## Calculo de medias ##
#######################

# ORB
av1_0 <- sapply(d1_0_net, mean)
av2_0 <- sapply(d2_0_net, mean)
av3_0 <- sapply(d3_0_net, mean)
av4_0 <- sapply(d4_0_net, mean)

av1_m30 <- sapply(d1_m30_net, mean)
av2_m30 <- sapply(d2_m30_net, mean)
av3_m30 <- sapply(d3_m30_net, mean)
av4_m20 <- sapply(d4_m20_net, mean)

av1_p10 <- sapply(d1_m10_net, mean)
av2_p30 <- sapply(d2_m30_net, mean)
av3_p20 <- sapply(d3_m20_net, mean)
av4_p30 <- sapply(d4_m30_net, mean)

# BRISK
ab1_0 <- sapply(b1_0_net, mean)
ab2_0 <- sapply(b2_0_net, mean)
ab3_0 <- sapply(b3_0_net, mean)
ab4_0 <- sapply(b4_0_net, mean)

ab2_m15 <- sapply(b2_m15_net, mean)
ab3_m15 <- sapply(b3_m15_net, mean)
ab4_m10 <- sapply(b4_m10_net, mean)

ab2_p15 <- sapply(b2_p15_net, mean)
ab3_p15 <- sapply(b3_p15_net, mean)
ab4_p15 <- sapply(b4_p15_net, mean)

#####################################
## Calculo de desviciones estandar ##
#####################################

# ORB
st1_0 <- sapply(d1_0_net, sd)
st2_0 <- sapply(d2_0_net, sd)
st3_0 <- sapply(d3_0_net, sd)
st4_0 <- sapply(d4_0_net, sd)

st1_m30 <- sapply(d1_m30_net, sd)
st2_m30 <- sapply(d2_m30_net, sd)
st3_m30 <- sapply(d3_m30_net, sd)
st4_m20 <- sapply(d4_m20_net, sd)

st1_p10 <- sapply(d1_p10_net, sd)
st2_p30 <- sapply(d2_p30_net, sd)
st3_p20 <- sapply(d3_p20_net, sd)
st4_p30 <- sapply(d4_p10_net, sd)

# BRISK
stb1_0 <- sapply(b1_0_net, sd)
stb2_0 <- sapply(b2_0_net, sd)
stb3_0 <- sapply(b3_0_net, sd)
stb4_0 <- sapply(b4_0_net, sd)

stb_m15 <- sapply(b2_m15_net, sd)
stb_m15 <- sapply(b3_m15_net, sd)
stb_m10 <- sapply(b4_m10_net, sd)

stb_p15 <- sapply(b2_p15_net, sd)
stb_p15 <- sapply(b3_p15_net, sd)
stb_p15 <- sapply(b4_p15_net, sd)

###############################################
## Creacion de nuevos df con todos los datos ##
###############################################
o1_0deg <- rbind(ob1_e_fo_0_c,ob1_e_b_0_c)
o1_0deg$algorithm <- "FAST-ORB"
o1_0deg[104:205,8] <- "BRISK"

###########################################
###### Graficacion de los resultados ######
###########################################
### Si hay prblemas -> dev.off()

g_o1_0d_x <- 
  ggplot(o1_0deg,aes(x=time,y=X))+
  geom_point(aes(color = algorithm)) +
  theme_bw()+
  scale_y_continuous(breaks = seq(0.8, 1.3, by = 0.01))+
  geom_hline(yintercept = x1,linetype = "dashed",color = "green",size = 1.2)+
  geom_hline(yintercept = mean(o1_0deg$X[1:103]),linetype = "dashed",color = "blue",size = 1.1)+
  geom_hline(yintercept = mean(o1_0deg$X[104:205]),linetype = "dashed",color = "orange",size = 1.1)+
  labs(title = "Objeto 1: Esfera a 0° en X",
       subtitle = "Respecto al robot",
       x = "Tiempo [s]",
       y = "Distancia en X [m]",
       color = "Algoritmo")

g_o1_0d_y <- 
  ggplot(o1_0deg,aes(x=time,y=Y))+
  geom_point(aes(color = algorithm)) +
  theme_bw()+
  scale_y_continuous(breaks = seq(-1.8, 1.3, by = 0.02))+
  geom_hline(yintercept = y1,linetype = "dashed",color = "green")+
  labs(title = "Objeto 1: Esfera a 0° en Y",
       subtitle = "Respecto al robot",
       x = "Tiempo [s]",
       y = "Distancia en Y [m]",
       color = "Algoritmo")

g_o1_0d_z <- 
  ggplot(o1_0deg,aes(x=time,y=Z))+
  geom_point(aes(color = algorithm)) +
  theme_bw()+
  scale_y_continuous(breaks = seq(0.5, 1.8, by = 0.02))+
  geom_hline(yintercept = z1,linetype = "dashed",color = "green")+
  labs(title = "Objeto 1: Esfera a 0° en Z",
       subtitle = "Respecto al robot",
       x = "Tiempo [s]",
       y = "Distancia en Z [m]",
       color = "Algoritmo")
