library(ggplot2)
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

# Copias de seguridad para los datos
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

# Ajustando los valores del tiempo
ob1_e_fo_0_c$time <- round(ob1_e_fo_0_c$time - ob1_e_fo_0_c$time[1])
ob2_l_fo_0_c$time <- round(ob2_l_fo_0_c$time - ob2_l_fo_0_c$time[1])
ob3_cu_fo_0_c$time <- round(ob3_cu_fo_0_c$time - ob3_cu_fo_0_c$time[1])
ob4_ca_fo_0_c$time <- round(ob1_e_fo_0_c$time - ob1_e_fo_0_c$time[1])

ob1_e_fo_m30_c$time <- round(ob1_e_fo_m30_c$time - ob1_e_fo_m30_c$time[1])
ob2_l_fo_m30_c$time <- round(ob2_l_fo_m30_c$time - ob2_l_fo_m30_c$time[1])
ob3_cu_fo_m30_c$time <- round(ob3_cu_fo_m30_c$time - ob3_cu_fo_m30_c$time[1])
ob4_ca_fo_m20_c$time <- round(ob4_ca_fo_m20_c$time - ob4_ca_fo_m20_c$time[1])

ob1_e_fo_p10_c$time <- round(ob1_e_fo_p10_c$time - ob1_e_fo_p10_c$time[1])
ob2_l_fo_p30_c$time <- round(ob2_l_fo_p30_c$time - ob2_l_fo_p30_c$time[1])
ob3_cu_fo_p20_c$time <- round(ob3_cu_fo_p20_c$time - ob3_cu_fo_p20_c$time[1])
ob4_ca_fo_p30_c$time <- round(ob4_ca_fo_p30_c$time - ob4_ca_fo_p30_c$time[1])

############## Calculando las diferencias respecto a los valores reales ###########
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

# Calculo de diferencias
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

# Lista con los datos obtenidos para facilitar cáclulos
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

# Calculo de medias
av1_0 <- sapply(d1_0_net, mean)
av2_0 <- sapply(d2_0_net, mean)
av3_0 <- sapply(d3_0_net, mean)
av4_0 <- sapply(d4_0_net, mean)

av1_m30 <- sapply(d1_0_net, mean)
av2_m30 <- sapply(d2_0_net, mean)
av3_m30 <- sapply(d3_0_net, mean)
av4_m20 <- sapply(d4_0_net, mean)

av1_p10 <- sapply(d1_0_net, mean)
av2_p30 <- sapply(d2_0_net, mean)
av3_p20 <- sapply(d3_0_net, mean)
av4_p30 <- sapply(d4_0_net, mean)

# Calculo de desviciones estandar
st1_0 <- sapply(d1_0_net, sd)
st2_0 <- sapply(d2_0_net, sd)
st3_0 <- sapply(d3_0_net, sd)
st4_0 <- sapply(d4_0_net, sd)

st1_m30 <- sapply(d1_0_net, sd)
st2_m30 <- sapply(d2_0_net, sd)
st3_m30 <- sapply(d3_0_net, sd)
st4_m20 <- sapply(d4_0_net, sd)

st1_p10 <- sapply(d1_0_net, sd)
st2_p30 <- sapply(d2_0_net, sd)
st3_p20 <- sapply(d3_0_net, sd)
st4_p30 <- sapply(d4_0_net, sd)

###### Graficacion de los resultados
matplot(ob1_e_fo_0_c[2:4],type = "b",pch = 1)
