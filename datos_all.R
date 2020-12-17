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

########################################
######## LECTURA DE DATOS EDGAR ########
########################################
ob1_e_e_0 <- read.csv("C:/Users/Diego/Desktop/tesis_datos/tests_vision/algoritmo_edgar/degrees_0/esfera/objeto_1_esfera_0_e_limpio", sep="")
ob2_l_e_0 <- read.csv("C:/Users/Diego/Desktop/tesis_datos/tests_vision/algoritmo_edgar/degrees_0/lata/objeto_2_lata_0_e_limpio", sep="")
ob3_cu_e_0 <- read.csv("C:/Users/Diego/Desktop/tesis_datos/tests_vision/algoritmo_edgar/degrees_0/cubo/objeto_3_cubo_0_e_limpio", sep="")
ob4_ca_e_0 <- read.csv("C:/Users/Diego/Desktop/tesis_datos/tests_vision/algoritmo_edgar/degrees_0/caja/objeto_4_caja_0_e_limpio", sep="")

ob3_cu_e_m30 <- read.csv("C:/Users/Diego/Desktop/tesis_datos/tests_vision/algoritmo_edgar/degrees_m30/cubo/objeto_3_cubo_m30_e_limpio", sep="")
ob4_ca_e_m30 <- read.csv("C:/Users/Diego/Desktop/tesis_datos/tests_vision/algoritmo_edgar/degrees_m30/caja/objeto_4_caja_m30_e_limpio", sep="")

ob3_cu_e_p30 <- read.csv("C:/Users/Diego/Desktop/tesis_datos/tests_vision/algoritmo_edgar/degrees_p30/cubo/objeto_3_cubo_p30_e_limpio", sep="")
ob4_ca_e_p30 <- read.csv("C:/Users/Diego/Desktop/tesis_datos/tests_vision/algoritmo_edgar/degrees_p30/caja/objeto_4_caja_p30_e_limpio", sep="")

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

# Edgar
ob1_e_e_0_c <- ob1_e_e_0
ob2_l_e_0_c <- ob2_l_e_0
ob3_cu_e_0_c <- ob3_cu_e_0
ob4_ca_e_0_c <- ob4_ca_e_0

ob3_cu_e_m30_c <- ob3_cu_e_m30
ob4_ca_e_m30_c <- ob4_ca_e_m30

ob3_cu_e_p30_c <- ob3_cu_e_p30
ob4_ca_e_p30_c <- ob4_ca_e_p30

######################################
## Ajustando los valores del tiempo ##
######################################

# ORB
ob1_e_fo_0_c$time <- round(ob1_e_fo_0_c$time - ob1_e_fo_0_c$time[1])
ob2_l_fo_0_c$time <- round(ob2_l_fo_0_c$time - ob2_l_fo_0_c$time[1])
ob3_cu_fo_0_c$time <- round(ob3_cu_fo_0_c$time - ob3_cu_fo_0_c$time[1])
ob4_ca_fo_0_c$time <- round(ob4_ca_fo_0_c$time - ob4_ca_fo_0_c$time[1])

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
ob4_ca_b_p15_c$time <- round(as.numeric(ob4_ca_b_p15_c$time - ob4_ca_b_p15_c$time[1]))   ##Hay un mame

# Edgar
ob1_e_e_0_c$time <- round(ob1_e_e_0_c$time - ob1_e_e_0_c$time[1])
ob2_l_e_0_c$time <- round(ob2_l_e_0_c$time - ob2_l_e_0_c$time[1])
ob3_cu_e_0_c$time <- round(ob3_cu_e_0_c$time - ob3_cu_e_0_c$time[1])
ob4_ca_e_0_c$time <- round(ob4_ca_e_0_c$time - ob4_ca_e_0_c$time[1])

ob3_cu_e_m30_c$time <- round(ob3_cu_e_m30_c$time - ob3_cu_e_m30_c$time[1])
ob4_ca_e_m30_c$time <- round(ob4_ca_e_m30_c$time - ob4_ca_e_m30_c$time[1])

ob3_cu_e_p30_c$time <- round(ob3_cu_e_p30_c$time - ob3_cu_e_p30_c$time[1])
ob4_ca_e_p30_c$time <- round(ob4_ca_e_p30_c$time - ob4_ca_e_p30_c$time[1]) 

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

# Correciones en angulos
corz1 = -6.68
corz2 = 7.48
corz3 = 21.64
corz4 = -20.84

# Para algoritmo edgar
ye <- -0.00025

##############################################
#### Calculo de diferencias absolutas ORB ####
##############################################

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

######################################
#### Calculo de diferencias Edgar ####
######################################

# Cero grados
e1_0_diffx <- ob1_e_e_0_c$X - x1
e1_0_diffy <- ob1_e_e_0_c$Y - ye
e1_0_diffz <- ob1_e_e_0_c$Z - z1
e1_0_diffr <- ob1_e_e_0_c$roll - roll1
e1_0_diffp <- ob1_e_e_0_c$pitch - pitch1
e1_0_diffya <- ob1_e_e_0_c$yaw - yaw1

e2_0_diffx <- ob2_l_e_0_c$X - x2
e2_0_diffy <- ob2_l_e_0_c$Y - ye
e2_0_diffz <- ob2_l_e_0_c$Z - z2
e2_0_diffr <- ob2_l_e_0_c$roll - roll2
e2_0_diffp <- ob2_l_e_0_c$pitch - pitch2
e2_0_diffya <- ob2_l_e_0_c$yaw - yaw2

e3_0_diffx <- ob3_cu_e_0_c$X - x3
e3_0_diffy <- ob3_cu_e_0_c$Y - ye
e3_0_diffz <- ob3_cu_e_0_c$Z - z3
e3_0_diffr <- ob3_cu_e_0_c$roll - roll3
e3_0_diffp <- ob3_cu_e_0_c$pitch - pitch3
e3_0_diffya <- ob3_cu_e_0_c$yaw - yaw3

e4_0_diffx <- ob4_ca_e_0_c$X - x4
e4_0_diffy <- ob4_ca_e_0_c$Y - ye
e4_0_diffz <- ob4_ca_e_0_c$Z - z4
e4_0_diffr <- ob4_ca_e_0_c$roll - roll4
e4_0_diffp <- ob4_ca_e_0_c$pitch - pitch4
e4_0_diffya <- ob4_ca_e_0_c$yaw - yaw4

# -30 grados
e3_m30_diffx <- ob3_cu_e_m30_c$X - x3
e3_m30_diffy <- ob3_cu_e_m30_c$Y - ye
e3_m30_diffz <- ob3_cu_e_m30_c$Z - z3
e3_m30_diffr <- ob3_cu_e_m30_c$roll - roll3
e3_m30_diffp <- ob3_cu_e_m30_c$pitch - pitch3
e3_m30_diffya <- ob3_cu_e_m30_c$yaw - yaw3

e4_m30_diffx <- ob4_ca_e_m30_c$X - x4
e4_m30_diffy <- ob4_ca_e_m30_c$Y - ye
e4_m30_diffz <- ob4_ca_e_m30_c$Z - z4
e4_m30_diffr <- ob4_ca_e_m30_c$roll - roll4
e4_m30_diffp <- ob4_ca_e_m30_c$pitch - pitch4
e4_m30_diffya <- ob4_ca_e_m30_c$yaw - yaw4

# +30 grados
e3_p30_diffx <- ob3_cu_e_p30_c$X - x3
e3_p30_diffy <- ob3_cu_e_p30_c$Y - ye
e3_p30_diffz <- ob3_cu_e_p30_c$Z - z3
e3_p30_diffr <- ob3_cu_e_p30_c$roll - roll3
e3_p30_diffp <- ob3_cu_e_p30_c$pitch - pitch3
e3_p30_diffya <- ob3_cu_e_p30_c$yaw - yaw3

e4_p30_diffx <- ob4_ca_e_p30_c$X - x4
e4_p30_diffy <- ob4_ca_e_p30_c$Y - ye
e4_p30_diffz <- ob4_ca_e_p30_c$Z - z4
e4_p30_diffr <- ob4_ca_e_p30_c$roll - roll4
e4_p30_diffp <- ob4_ca_e_p30_c$pitch - pitch4
e4_p30_diffya <- ob4_ca_e_p30_c$yaw - yaw4

###############################################
#### Errores relativos ORB (Solo en X,Y,Z) ####
###############################################

# 0 grados
er_d1_0_diffx <- 100 * abs(d1_0_diffx) / x1
er_d1_0_diffy <- 100 * abs(d1_0_diffy) / abs(y1)
er_d1_0_diffz <- 100 * abs(d1_0_diffz) / z1

er_d2_0_diffx <- 100 * abs(d2_0_diffx) / x2
er_d2_0_diffy <- 100 * abs(d2_0_diffy) / abs(y2)
er_d2_0_diffz <- 100 * abs(d2_0_diffz) / z2

er_d3_0_diffx <- 100 * abs(d3_0_diffx) / x3
er_d3_0_diffy <- 100 * abs(d3_0_diffy) / abs(y3)
er_d3_0_diffz <- 100 * abs(d3_0_diffz) / z3

er_d4_0_diffx <- 100 * abs(d4_0_diffx) / x4
er_d4_0_diffy <- 100 * abs(d4_0_diffy) / abs(y4)
er_d4_0_diffz <- 100 * abs(d4_0_diffz) / z4

# -30, -20 grados
er_d1_m30_diffx <- 100 * abs(d1_m30_diffx) / x1
er_d1_m30_diffy <- 100 * abs(d1_m30_diffy) / abs(y1)
er_d1_m30_diffz <- 100 * abs(d1_m30_diffz) / z1

er_d2_m30_diffx <- 100 * abs(d2_m30_diffx) / x2
er_d2_m30_diffy <- 100 * abs(d2_m30_diffy) / abs(y2)
er_d2_m30_diffz <- 100 * abs(d2_m30_diffz) / z2

er_d3_m30_diffx <- 100 * abs(d3_m30_diffx) / x3
er_d3_m30_diffy <- 100 * abs(d3_m30_diffy) / abs(y3)
er_d3_m30_diffz <- 100 * abs(d3_m30_diffz) / z3

er_d4_m20_diffx <- 100 * abs(d4_m30_diffx) / x4
er_d4_m20_diffy <- 100 * abs(d4_m30_diffy) / abs(y4)
er_d4_m20_diffz <- 100 * abs(d4_m30_diffz) / z4

# +10, 30, 20, 30 grados
er_d1_p10_diffx <- 100 * abs(d1_p10_diffx) / x1
er_d1_p10_diffy <- 100 * abs(d1_p10_diffy) / abs(y1)
er_d1_p10_diffz <- 100 * abs(d1_p10_diffz) / z1

er_d2_p30_diffx <- 100 * abs(d2_p30_diffx) / x2
er_d2_p30_diffy <- 100 * abs(d2_p30_diffy) / abs(y2)
er_d2_p30_diffz <- 100 * abs(d2_p30_diffz) / z2

er_d3_p20_diffx <- 100 * abs(d3_p20_diffx) / x3
er_d3_p20_diffy <- 100 * abs(d3_p20_diffy) / abs(y3)
er_d3_p20_diffz <- 100 * abs(d3_p20_diffz) / z3

er_d4_p30_diffx <- 100 * abs(d4_p30_diffx) / x4
er_d4_p30_diffy <- 100 * abs(d4_p30_diffy) / abs(y4)
er_d4_p30_diffz <- 100 * abs(d4_p30_diffz) / z4

#################################################
#### Errores relativos BRISK (Solo en X,Y,Z) ####
#################################################

# 0 grados
er_b1_0_diffx <- 100 * abs(b1_0_diffx) / x1
er_b1_0_diffy <- 100 * abs(b1_0_diffy) / abs(y1)
er_b1_0_diffz <- 100 * abs(b1_0_diffz) / z1

er_b2_0_diffx <- 100 * abs(b2_0_diffx) / x2
er_b2_0_diffy <- 100 * abs(b2_0_diffy) / abs(y2)
er_b2_0_diffz <- 100 * abs(b2_0_diffz) / z2

er_b3_0_diffx <- 100 * abs(b3_0_diffx) / x3
er_b3_0_diffy <- 100 * abs(b3_0_diffy) / abs(y3)
er_b3_0_diffz <- 100 * abs(b3_0_diffz) / z3

er_b4_0_diffx <- 100 * abs(b4_0_diffx) / x4
er_b4_0_diffy <- 100 * abs(b4_0_diffy) / abs(y4)
er_b4_0_diffz <- 100 * abs(b4_0_diffz) / z4

# -15, -10 grados
er_b2_m15_diffx <- 100 * abs(b2_m15_diffx) / x2
er_b2_m15_diffy <- 100 * abs(b2_m15_diffy) / abs(y2)
er_b2_m15_diffz <- 100 * abs(b2_m15_diffz) / z2

er_b3_m15_diffx <- 100 * abs(b3_m15_diffx) / x3
er_b3_m15_diffy <- 100 * abs(b3_m15_diffy) / abs(y3)
er_b3_m15_diffz <- 100 * abs(b3_m15_diffz) / z3

er_b4_m10_diffx <- 100 * abs(b4_m10_diffx) / x4
er_b4_m10_diffy <- 100 * abs(b4_m10_diffy) / abs(y4)
er_b4_m10_diffz <- 100 * abs(b4_m10_diffz) / z4

# +15 grados
er_b2_p15_diffx <- 100 * abs(b2_p15_diffx) / x2
er_b2_p15_diffy <- 100 * abs(b2_p15_diffy) / abs(y2)
er_b2_p15_diffz <- 100 * abs(b2_p15_diffz) / z2

er_b3_p20_diffx <- 100 * abs(b3_p15_diffx) / x3
er_b3_p20_diffy <- 100 * abs(b3_p15_diffy) / abs(y3)
er_b3_p20_diffz <- 100 * abs(b3_p15_diffz) / z3

er_b4_p30_diffx <- 100 * abs(b4_p15_diffx) / x4
er_b4_p30_diffy <- 100 * abs(b4_p15_diffy) / abs(y4)
er_b4_p30_diffz <- 100 * abs(b4_p15_diffz) / z4

##########################################################
#### Errores relativos con RANSAC-PCA (Solo en X,Y,Z) ####
##########################################################

# 0 grados
er_e1_0_diffx <- 100 * abs(e1_0_diffx) / x1
er_e1_0_diffy <- 100 * abs(e1_0_diffy) / abs(y1)
er_e1_0_diffz <- 100 * abs(e1_0_diffz) / z1

er_e2_0_diffx <- 100 * abs(e2_0_diffx) / x2
er_e2_0_diffy <- 100 * abs(e2_0_diffy) / abs(y2)
er_e2_0_diffz <- 100 * abs(e2_0_diffz) / z2

er_e3_0_diffx <- 100 * abs(e3_0_diffx) / x3
er_e3_0_diffy <- 100 * abs(e3_0_diffy) / abs(y3)
er_e3_0_diffz <- 100 * abs(e3_0_diffz) / z3

er_e4_0_diffx <- 100 * abs(e4_0_diffx) / x4
er_e4_0_diffy <- 100 * abs(e4_0_diffy) / abs(y4)
er_e4_0_diffz <- 100 * abs(e4_0_diffz) / z4

# -30
er_e3_m30_diffx <- 100 * abs(e3_m30_diffx) / x3
er_e3_m30_diffy <- 100 * abs(e3_m30_diffy) / abs(y3)
er_e3_m30_diffz <- 100 * abs(e3_m30_diffz) / z3

er_e4_m30_diffx <- 100 * abs(e4_m30_diffx) / x4
er_e4_m30_diffy <- 100 * abs(e4_m30_diffy) / abs(y4)
er_e4_m30_diffz <- 100 * abs(e4_m30_diffz) / z4

# +30
er_e3_p30_diffx <- 100 * abs(e3_p30_diffx) / x3
er_e3_p30_diffy <- 100 * abs(e3_p30_diffy) / abs(y3)
er_e3_p30_diffz <- 100 * abs(e3_p30_diffz) / z3

er_e4_p30_diffx <- 100 * abs(e4_p30_diffx) / x4
er_e4_p30_diffy <- 100 * abs(e4_p30_diffy) / abs(y4)
er_e4_p30_diffz <- 100 * abs(e4_p30_diffz) / z4

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

#Edgar
e1_0_net <- list(e1_0_diffx,e1_0_diffy,e1_0_diffz,e1_0_diffr,e1_0_diffp,e1_0_diffya)
e2_0_net <- list(e2_0_diffx,e2_0_diffy,e2_0_diffz,e2_0_diffr,e2_0_diffp,e2_0_diffya)
e3_0_net <- list(e3_0_diffx,e3_0_diffy,e3_0_diffz,e3_0_diffr,e3_0_diffp,e3_0_diffya)
e4_0_net <- list(e4_0_diffx,e4_0_diffy,e4_0_diffz,e4_0_diffr,e4_0_diffp,e4_0_diffya)

e3_m30_net <- list(e3_m30_diffx,e3_m30_diffy,e3_m30_diffz,e3_m30_diffr,e3_m30_diffp,e3_m30_diffya)
e4_m30_net <- list(e4_m30_diffx,e4_m30_diffy,e4_m30_diffz,e4_m30_diffr,e4_m30_diffp,e4_m30_diffya)

e3_p30_net <- list(e3_p30_diffx,e3_p30_diffy,e3_p30_diffz,e3_p30_diffr,e3_p30_diffp,e3_p30_diffya)
e4_p30_net <- list(e4_p30_diffx,e4_p30_diffy,e4_p30_diffz,e4_p30_diffr,e4_p30_diffp,e4_p30_diffya)

#######################
## Calculo de medias ##
#######################

# ORB
ao1_0 <- sapply(d1_0_net, mean)
ao2_0 <- sapply(d2_0_net, mean)
ao3_0 <- sapply(d3_0_net, mean)
ao4_0 <- sapply(d4_0_net, mean)

ao1_m30 <- sapply(d1_m30_net, mean)
ao2_m30 <- sapply(d2_m30_net, mean)
ao3_m30 <- sapply(d3_m30_net, mean)
ao4_m20 <- sapply(d4_m20_net, mean)

ao1_p10 <- sapply(d1_p10_net, mean)
ao2_p30 <- sapply(d2_p30_net, mean)
ao3_p20 <- sapply(d3_p20_net, mean)
ao4_p30 <- sapply(d4_p30_net, mean)

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

#Edgar
ae1_0 <- sapply(e1_0_net, mean)
ae2_0 <- sapply(e2_0_net, mean)
ae3_0 <- sapply(e3_0_net, mean)
ae4_0 <- sapply(e4_0_net, mean)

ae3_m30 <- sapply(e3_m30_net, mean)
ae4_m30 <- sapply(e4_m30_net, mean)

ae3_p30 <- sapply(e3_p30_net, mean)
ae4_p30 <- sapply(e4_p30_net, mean)

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

#Edgar
ste1_0 <- sapply(e1_0_net, sd)
ste2_0 <- sapply(e2_0_net, sd)
ste3_0 <- sapply(e3_0_net, sd)
ste4_0 <- sapply(e4_0_net, sd)

ste3_m30 <- sapply(e3_m30_net, sd)
ste4_m30 <- sapply(e4_m30_net, sd)

ste3_p30 <- sapply(e3_p30_net, sd)
ste4_p30 <- sapply(e4_p30_net, sd)

###############################################
## Creacion de nuevos df con todos los datos ##
###############################################
#o1_0deg <- rbind(ob1_e_fo_0_c,ob1_e_b_0_c)
#o1_0deg$algorithm <- "FAST-ORB"
#o1_0deg[104:205,8] <- "BRISK"


#################################################
#### Dataframes de diferencias para comparar ####
#################################################

#ORB
d1_0_df <- data.frame(time = ob1_e_fo_0_c$time, dx = d1_0_diffx, dy = d1_0_diffy, dz = d1_0_diffz, dr = d1_0_diffr, dp = d1_0_diffp, dya = d1_0_diffya, alg = "FAST-ORB") 
d2_0_df <- data.frame(time = ob2_l_fo_0_c$time, dx = d2_0_diffx, dy = d2_0_diffy, dz = d2_0_diffz, dr = d2_0_diffr, dp = d2_0_diffp, dya = d2_0_diffya, alg = "FAST-ORB") 
d3_0_df <- data.frame(time = ob3_cu_fo_0_c$time, dx = d3_0_diffx, dy = d3_0_diffy, dz = d3_0_diffz, dr = d3_0_diffr, dp = d3_0_diffp, dya = d3_0_diffya, alg = "FAST-ORB") 
d4_0_df <- data.frame(time = ob4_ca_fo_0_c$time, dx = d4_0_diffx, dy = d4_0_diffy, dz = d4_0_diffz, dr = d4_0_diffr, dp = d4_0_diffp, dya = d4_0_diffya, alg = "FAST-ORB") 

d1_m30_df <- data.frame(time = ob1_e_fo_m30_c$time, dx = d1_m30_diffx, dy = d1_m30_diffy, dz = d1_m30_diffz, dr = d1_m30_diffr, dp = d1_m30_diffp, dya = d1_m30_diffya, alg = "FAST-ORB") 
d2_m30_df <- data.frame(time = ob2_l_fo_m30_c$time, dx = d2_m30_diffx, dy = d2_m30_diffy, dz = d2_m30_diffz, dr = d2_m30_diffr, dp = d2_m30_diffp, dya = d2_m30_diffya, alg = "FAST-ORB") 
d3_m30_df <- data.frame(time = ob3_cu_fo_m30_c$time, dx = d3_m30_diffx, dy = d3_m30_diffy, dz = d3_m30_diffz, dr = d3_m30_diffr, dp = d3_m30_diffp, dya = d3_m30_diffya, alg = "FAST-ORB") 
d4_m20_df <- data.frame(time = ob4_ca_fo_m20_c$time, dx = d4_m20_diffx, dy = d4_m20_diffy, dz = d4_m20_diffz, dr = d4_m20_diffr, dp = d4_m20_diffp, dya = d4_m20_diffya, alg = "FAST-ORB")

d1_p10_df <- data.frame(time = ob1_e_fo_p10_c$time, dx = d1_p10_diffx, dy = d1_p10_diffy, dz = d1_p10_diffz, dr = d1_p10_diffr, dp = d1_p10_diffp, dya = d1_p10_diffya, alg = "FAST-ORB") 
d2_p30_df <- data.frame(time = ob2_l_fo_p30_c$time, dx = d2_p30_diffx, dy = d2_p30_diffy, dz = d2_p30_diffz, dr = d2_p30_diffr, dp = d2_p30_diffp, dya = d2_p30_diffya, alg = "FAST-ORB") 
d3_p20_df <- data.frame(time = ob3_cu_fo_p20_c$time, dx = d3_p20_diffx, dy = d3_p20_diffy, dz = d3_p20_diffz, dr = d3_p20_diffr, dp = d3_p20_diffp, dya = d3_p20_diffya, alg = "FAST-ORB") 
d4_p30_df <- data.frame(time = ob4_ca_fo_p30_c$time, dx = d4_p30_diffx, dy = d4_p30_diffy, dz = d4_p30_diffz, dr = d4_p30_diffr, dp = d4_p30_diffp, dya = d4_p30_diffya, alg = "FAST-ORB")

#BRISK
b1_0_df <- data.frame(time = ob1_e_b_0_c$time, dx = b1_0_diffx, dy = b1_0_diffy, dz = b1_0_diffz, dr = b1_0_diffr, dp = b1_0_diffp, dya = b1_0_diffya, alg = "BRISK") 
b2_0_df <- data.frame(time = ob2_l_b_0_c$time, dx = b2_0_diffx, dy = b2_0_diffy, dz = b2_0_diffz, dr = b2_0_diffr, dp = b2_0_diffp, dya = b2_0_diffya, alg = "BRISK") 
b3_0_df <- data.frame(time = ob3_cu_b_0_c$time, dx = b3_0_diffx, dy = b3_0_diffy, dz = b3_0_diffz, dr = b3_0_diffr, dp = b3_0_diffp, dya = b3_0_diffya, alg = "BRISK") 
b4_0_df <- data.frame(time = ob4_ca_b_0_c$time, dx = b4_0_diffx, dy = b4_0_diffy, dz = b4_0_diffz, dr = b4_0_diffr, dp = b4_0_diffp, dya = b4_0_diffya, alg = "BRISK") 

b2_m15_df <- data.frame(time = ob2_l_b_m15_c$time, dx = b2_m15_diffx, dy = b2_m15_diffy, dz = b2_m15_diffz, dr = b2_m15_diffr, dp = b2_m15_diffp, dya = b2_m15_diffya, alg = "BRISK") 
b3_m15_df <- data.frame(time = ob3_cu_b_m15_c$time, dx = b3_m15_diffx, dy = b3_m15_diffy, dz = b3_m15_diffz, dr = b3_m15_diffr, dp = b3_m15_diffp, dya = b3_m15_diffya, alg = "BRISK") 
b4_m10_df <- data.frame(time = ob4_ca_b_m10_c$time, dx = b4_m10_diffx, dy = b4_m10_diffy, dz = b4_m10_diffz, dr = b4_m10_diffr, dp = b4_m10_diffp, dya = b4_m10_diffya, alg = "BRISK") 

b2_p15_df <- data.frame(time = ob2_l_b_p15_c$time, dx = b2_p15_diffx, dy = b2_p15_diffy, dz = b2_p15_diffz, dr = b2_p15_diffr, dp = b2_p15_diffp, dya = b2_p15_diffya, alg = "BRISK") 
b3_p15_df <- data.frame(time = ob3_cu_b_p15_c$time, dx = b3_p15_diffx, dy = b3_p15_diffy, dz = b3_p15_diffz, dr = b3_p15_diffr, dp = b3_p15_diffp, dya = b3_p15_diffya, alg = "BRISK") 
b4_p15_df <- data.frame(time = ob4_ca_b_p15_c$time, dx = b4_p15_diffx, dy = b4_p15_diffy, dz = b4_p15_diffz, dr = b4_p15_diffr, dp = b4_p15_diffp, dya = b4_p15_diffya, alg = "BRISK") 

#EDGAR
e1_0_df <- data.frame(time = ob1_e_e_0_c$time, dx = e1_0_diffx, dy = e1_0_diffy, dz = e1_0_diffz, dr = e1_0_diffr, dp = e1_0_diffp, dya = e1_0_diffya, alg = "RANSAC-PCA") 
e2_0_df <- data.frame(time = ob2_l_e_0_c$time, dx = e2_0_diffx, dy = e2_0_diffy, dz = e2_0_diffz, dr = e2_0_diffr, dp = e2_0_diffp, dya = e2_0_diffya, alg = "RANSAC-PCA") 
e3_0_df <- data.frame(time = ob3_cu_e_0_c$time, dx = e3_0_diffx, dy = e3_0_diffy, dz = e3_0_diffz, dr = e3_0_diffr, dp = e3_0_diffp, dya = e3_0_diffya, alg = "RANSAC-PCA") 
e4_0_df <- data.frame(time = ob4_ca_e_0_c$time, dx = e4_0_diffx, dy = e4_0_diffy, dz = e4_0_diffz, dr = e4_0_diffr, dp = e4_0_diffp, dya = e4_0_diffya, alg = "RANSAC-PCA") 

e3_m30_df <- data.frame(time = ob3_cu_e_m30_c$time, dx = e3_m30_diffx, dy = e3_m30_diffy, dz = e3_m30_diffz, dr = e3_m30_diffr, dp = e3_m30_diffp, dya = e3_m30_diffya, alg = "RANSAC-PCA") 
e4_m30_df <- data.frame(time = ob4_ca_e_m30_c$time, dx = e4_m30_diffx, dy = e4_m30_diffy, dz = e4_m30_diffz, dr = e4_m30_diffr, dp = e4_m30_diffp, dya = e4_m30_diffya, alg = "RANSAC-PCA") 

e3_p30_df <- data.frame(time = ob3_cu_e_p30_c$time, dx = e3_p30_diffx, dy = e3_p30_diffy, dz = e3_p30_diffz, dr = e3_p30_diffr, dp = e3_p30_diffp, dya = e3_p30_diffya, alg = "RANSAC-PCA") 
e4_p30_df <- data.frame(time = ob4_ca_e_p30_c$time, dx = e4_p30_diffx, dy = e4_p30_diffy, dz = e4_p30_diffz, dr = e4_p30_diffr, dp = e4_p30_diffp, dya = e4_p30_diffya, alg = "RANSAC-PCA") 

###############################
#### Combinando dataframes ####
###############################

# Cero grados
o1_0 <- rbind.data.frame(d1_0_df,b1_0_df,e1_0_df)
  o1_0 <- o1_0[-c(179),] #Outlier de los datos. Eliminado por motivos de graficacion
o2_0 <- rbind.data.frame(d2_0_df,b2_0_df,e2_0_df)
  o2_0 <- o2_0[-c(200,317),]
o3_0 <- rbind.data.frame(d3_0_df,b3_0_df,e3_0_df)
o4_0 <- rbind.data.frame(d4_0_df,b4_0_df,e4_0_df)

# m grados
o1_m <- d1_m30_df
o2_m <- rbind.data.frame(d2_m30_df,b2_m15_df)
o3_m <- rbind.data.frame(d3_m30_df,b3_m15_df,e3_m30_df)
o4_m <- rbind.data.frame(d4_m20_df,b4_m10_df,e4_m30_df)

# p grados
o1_p <- d1_p10_df
o2_p <- rbind.data.frame(d2_p30_df,b2_p15_df)
o3_p <- rbind.data.frame(d3_p20_df,b3_p15_df,e3_p30_df)
o4_p <- rbind.data.frame(d4_p30_df,b4_p15_df,e4_p30_df)


###########################################
###### Graficacion de los resultados ######
###########################################
### Si hay prblemas -> dev.off()

# Funcion para graficar los datos en X Y Z
grafica <- function(dataframe,X,Y,deg,wrt,m_orb,m_brisk,m_pca,numero,objeto) {
  ggplot(dataframe, aes(x=X,y=Y) )+
    geom_point(aes(color = alg)) +
    theme_bw()+
    scale_y_continuous(breaks = seq(-1, 1, by = 0.01))+
    geom_hline(yintercept = 0,linetype = "dashed",color = "black",size = 1.2)+
    geom_hline(yintercept = mean(m_orb),linetype = "solid",color = "orange",size = 0.3)+
    geom_hline(yintercept = mean(m_brisk),linetype = "solid",color = "green",size = 0.3)+
    geom_hline(yintercept = mean(m_pca),linetype = "solid",color = "blue",size = 0.3)+
    labs(title = paste("Objeto",numero,":",objeto,"a",deg,"° en ",wrt),
         subtitle = "Respecto al robot",
         x = "Tiempo [s]",
         y = paste("Distancia en",wrt,"[m]"),
         color = "Algoritmo")
}

# Funcion para graficar los datos en roll, pitch, yaw
grafica_deg <- function(dataframe,X,Y,deg,wrt,m_orb,m_brisk,m_pca,numero,objeto) {
  ggplot(dataframe, aes(x=X,y=Y) )+
    geom_point(aes(color = alg)) +
    theme_bw()+
    scale_y_continuous(breaks = seq(-360, 360, by = 15))+
    geom_hline(yintercept = 0,linetype = "dashed",color = "black",size = 1.2)+
    geom_hline(yintercept = mean(m_orb),linetype = "solid",color = "orange",size = 0.3)+
    geom_hline(yintercept = mean(m_brisk),linetype = "solid",color = "green",size = 0.3)+
    geom_hline(yintercept = mean(m_pca),linetype = "solid",color = "blue",size = 0.3)+
    labs(title = paste("Objeto",numero,":",objeto,"a",deg,"° (",wrt,")"),
         subtitle = "Respecto al robot",
         x = "Tiempo [s]",
         y = paste("Giro en",wrt,"[°]"),
         color = "Algoritmo")
}
#############################
#### Graficas a 0 grados ####
#############################

#Objeto 1
g_o1_0d_x <- grafica(o1_0,o1_0$time,o1_0$dx,"0","X",d1_0_df$dx,b1_0_df$dx,e1_0_df$dx,"1","Esfera")
g_o1_0d_y <- grafica(o1_0,o1_0$time,o1_0$dy,"0","Y",d1_0_df$dy,b1_0_df$dy,e1_0_df$dy,"1","Esfera")
g_o1_0d_z <- grafica(o1_0,o1_0$time,o1_0$dz,"0","Z",d1_0_df$dz,b1_0_df$dz,e1_0_df$dz,"1","Esfera")
g_o1_0d_r <- grafica_deg(o1_0,o1_0$time,o1_0$dr,"0","roll",d1_0_df$dr,b1_0_df$dr,e1_0_df$dr,"1","Esfera")
g_o1_0d_p <- grafica_deg(o1_0,o1_0$time,o1_0$dp,"0","pitch",d1_0_df$dp,b1_0_df$dp,e1_0_df$dp,"1","Esfera")
g_o1_0d_ya <- grafica_deg(o1_0,o1_0$time,o1_0$dya,"0","yaw",d1_0_df$dya,b1_0_df$dya,e1_0_df$dya,"1","Esfera")

#Objeto 2
g_o2_0d_x <- grafica(o2_0,o2_0$time,o2_0$dx,"0","X",d2_0_df$dx,b2_0_df$dx,e2_0_df$dx,"2","Lata")
g_o2_0d_y <- grafica(o2_0,o2_0$time,o2_0$dy,"0","Y",d2_0_df$dy,b2_0_df$dy,e2_0_df$dy,"2","Lata")
g_o2_0d_z <- grafica(o2_0,o2_0$time,o2_0$dz,"0","Z",d2_0_df$dz,b2_0_df$dz,e2_0_df$dz,"2","Lata")
g_o2_0d_r <- grafica_deg(o2_0,o2_0$time,o2_0$dr,"0","roll",d2_0_df$dr,b2_0_df$dr,e2_0_df$dr,"2","Lata")
g_o2_0d_p <- grafica_deg(o2_0,o2_0$time,o2_0$dp,"0","pitch",d2_0_df$dp,b2_0_df$dp,e2_0_df$dp,"2","Lata")
g_o2_0d_ya <- grafica_deg(o2_0,o2_0$time,o2_0$dya,"0","yaw",d2_0_df$dya,b2_0_df$dya,e2_0_df$dya,"2","Lata")

#Objeto 3
g_o3_0d_x <- grafica(o3_0,o3_0$time,o3_0$dx,"0","X",d3_0_df$dx,b3_0_df$dx,e3_0_df$dx,"3","Cubo")
g_o3_0d_y <- grafica(o3_0,o3_0$time,o3_0$dy,"0","Y",d3_0_df$dy,b3_0_df$dy,e3_0_df$dy,"3","Cubo")
g_o3_0d_z <- grafica(o3_0,o3_0$time,o3_0$dz,"0","Z",d3_0_df$dz,b3_0_df$dz,e3_0_df$dz,"3","Cubo")
g_o3_0d_r <- grafica_deg(o3_0,o3_0$time,o3_0$dr,"0","roll",d3_0_df$dr,b3_0_df$dr,e3_0_df$dr,"3","Cubo")
g_o3_0d_p <- grafica_deg(o3_0,o3_0$time,o3_0$dp,"0","pitch",d3_0_df$dp,b3_0_df$dp,e3_0_df$dp,"3","Cubo")
g_o3_0d_ya <- grafica_deg(o3_0,o3_0$time,o3_0$dya,"0","yaw",d3_0_df$dya,b3_0_df$dya,e3_0_df$dya,"3","Cubo")

#Objeto 4
g_o4_0d_x <- grafica(o4_0,o4_0$time,o4_0$dx,"0","X",d4_0_df$dx,b4_0_df$dx,e4_0_df$dx,"4","Caja")
g_o4_0d_y <- grafica(o4_0,o4_0$time,o4_0$dy,"0","Y",d4_0_df$dy,b4_0_df$dy,e4_0_df$dy,"4","Caja")
g_o4_0d_z <- grafica(o4_0,o4_0$time,o4_0$dz,"0","Z",d4_0_df$dz,b4_0_df$dz,e4_0_df$dz,"4","Caja")
g_o4_0d_r <- grafica_deg(o4_0,o4_0$time,o4_0$dr,"0","roll",d4_0_df$dr,b4_0_df$dr,e4_0_df$dr,"4","Caja")
g_o4_0d_p <- grafica_deg(o4_0,o4_0$time,o4_0$dp,"0","pitch",d4_0_df$dp,b4_0_df$dp,e4_0_df$dp,"4","Caja")
g_o4_0d_ya <- grafica_deg(o4_0,o4_0$time,o4_0$dya,"0","yaw",d4_0_df$dya,b4_0_df$dya,e4_0_df$dya,"4","Caja")

#############################
#### Graficas a m grados ####
#############################

#Objeto 3
g_o3_md_x <- grafica(o3_m,o3_m$time,o3_m$dx,"-30°, -15°, -30","X",d3_m30_df$dx,b3_m15_df$dx,e3_m30_df$dx,"3","Cubo")
g_o3_md_y <- grafica(o3_m,o3_m$time,o3_m$dy,"-30°, -15°, -30","Y",d3_m30_df$dy,b3_m15_df$dy,e3_m30_df$dy,"3","Cubo")
g_o3_md_z <- grafica(o3_m,o3_m$time,o3_m$dz,"-30°, -15°, -30","Z",d3_m30_df$dz,b3_m15_df$dz,e3_m30_df$dz,"3","Cubo")
g_o3_md_r <- grafica_deg(o3_m,o3_m$time,o3_m$dr,"-30°, -15°, -30","roll",d3_m30_df$dr,b3_m15_df$dr,e3_m30_df$dr,"3","Cubo")
g_o3_md_p <- grafica_deg(o3_m,o3_m$time,o3_m$dp,"-30°, -15°, -30","pitch",d3_m30_df$dp,b3_m15_df$dp,e3_m30_df$dp,"3","Cubo")
g_o3_md_ya <- grafica_deg(o3_m,o3_m$time,o3_m$dya,"-30°, -15°, -30","yaw",d3_m30_df$dya,b3_m15_df$dya,e3_m30_df$dya,"3","Cubo")

#Objeto 4
g_o4_md_x <- grafica(o4_0,o4_0$time,o4_0$dx,"0","X",d4_m20_df$dx,b4_m10_df$dx,e4_m30_df$dx,"4","Caja")
g_o4_md_y <- grafica(o4_0,o4_0$time,o4_0$dy,"0","Y",d4_m20_df$dy,b4_m10_df$dy,e4_m30_df$dy,"4","Caja")
g_o4_md_z <- grafica(o4_0,o4_0$time,o4_0$dz,"0","Z",d4_m20_df$dz,b4_m10_df$dz,e4_m30_df$dz,"4","Caja")
g_o4_md_r <- grafica_deg(o4_0,o4_0$time,o4_0$dr,"0","roll",d4_m20_df$dr,b4_m10_df$dr,e4_m30_df$dr,"4","Caja")
g_o4_md_p <- grafica_deg(o4_0,o4_0$time,o4_0$dp,"0","pitch",d4_m20_df$dp,b4_m10_df$dp,e4_m30_df$dp,"4","Caja")
g_o4_md_ya <- grafica_deg(o4_0,o4_0$time,o4_0$dya,"0","yaw",d4_m20_df$dya,b4_m10_df$dya,e4_m30_df$dya,"4","Caja")

#############################
#### Graficas a p grados ####
#############################

#Objeto 3
g_o3_pd_x <- grafica(o3_p,o3_p$time,o3_p$dx,"0","X",d3_p20_df$dx,b3_p15_df$dx,e3_p30_df$dx,"3","Cubo")
g_o3_pd_y <- grafica(o3_p,o3_p$time,o3_p$dy,"0","Y",d3_p20_df$dy,b3_p15_df$dy,e3_p30_df$dy,"3","Cubo")
g_o3_pd_z <- grafica(o3_p,o3_p$time,o3_p$dz,"0","Z",d3_p20_df$dz,b3_p15_df$dz,e3_p30_df$dz,"3","Cubo")
g_o3_pd_r <- grafica_deg(o3_p,o3_p$time,o3_p$dr,"0","roll",d3_p20_df$dr,b3_p15_df$dr,e3_p30_df$dr,"3","Cubo")
g_o3_pd_p <- grafica_deg(o3_p,o3_p$time,o3_p$dp,"0","pitch",d3_p20_df$dp,b3_p15_df$dp,e3_p30_df$dp,"3","Cubo")
g_o3_pd_ya <- grafica_deg(o3_p,o3_p$time,o3_p$dya,"0","yaw",d3_p20_df$dya,b3_p15_df$dya,e3_p30_df$dya,"3","Cubo")

#Objeto 4
g_o4_pd_x <- grafica(o4_p,o4_p$time,o4_p$dx,"0","X",d4_p30_df$dx,b4_p15_df$dx,e4_p30_df$dx,"4","Caja")
g_o4_pd_y <- grafica(o4_p,o4_p$time,o4_p$dy,"0","Y",d4_p30_df$dy,b4_p15_df$dy,e4_p30_df$dy,"4","Caja")
g_o4_pd_z <- grafica(o4_p,o4_p$time,o4_p$dz,"0","Z",d4_p30_df$dz,b4_p15_df$dz,e4_p30_df$dz,"4","Caja")
g_o4_pd_r <- grafica_deg(o4_p,o4_p$time,o4_p$dr,"0","roll",d4_p30_df$dr,b4_p15_df$dr,e4_p30_df$d,"4","Caja")
g_o4_pd_p <- grafica_deg(o4_p,o4_p$time,o4_p$dp,"0","pitch",d4_p30_df$dp,b4_p15_df$dp,e4_p30_df$dp,"4","Caja")
g_o4_pd_ya <- grafica_deg(o4_p,o4_p$time,o4_p$dya,"0","yaw",d4_p30_df$dya,b4_p15_df$dya,e4_p30_df$dya,"4","Caja")


## 48 graficas