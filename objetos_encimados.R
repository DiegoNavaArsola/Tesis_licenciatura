library(ggplot2)

#######################
## OBJETOS ENCIMADOS ##
#######################

# ORB
ob4_cu_ca_o_centro <- read.csv("C:/Users/Diego/Desktop/tesis_datos/Pruebas 2/objetos_encimados/ORB/cu_ca/objeto_4_cu_ca_centro_limpio", sep="")
ob4_cu_ca_o_parder <- read.csv("C:/Users/Diego/Desktop/tesis_datos/Pruebas 2/objetos_encimados/ORB/cu_ca/objeto_4_cu_ca_parder_limpio", sep="")
ob4_cu_ca_o_parizq <- read.csv("C:/Users/Diego/Desktop/tesis_datos/Pruebas 2/objetos_encimados/ORB/cu_ca/objeto_4_cu_ca_parizq_limpio", sep="")

# BRISK
ob4_cu_ca_b_centro <- read.csv("C:/Users/Diego/Desktop/tesis_datos/Pruebas 2/objetos_encimados/BRISK/cu_ca/objeto_4_cu_ca_centro_limpio", sep="")
ob4_cu_ca_b_parder <- read.csv("C:/Users/Diego/Desktop/tesis_datos/Pruebas 2/objetos_encimados/BRISK/cu_ca/objeto_4_cu_ca_parder_limpio", sep="")
ob4_cu_ca_b_parizq <- read.csv("C:/Users/Diego/Desktop/tesis_datos/Pruebas 2/objetos_encimados/BRISK/cu_ca/objeto_4_cu_ca_parizq_limpio", sep="")

#############################
#### Copias de seguridad ####
#############################

#ORB
ob4_cu_ca_o_centro_c <- ob4_cu_ca_o_centro
ob4_cu_ca_o_parder_c <- ob4_cu_ca_o_parder
ob4_cu_ca_o_parizq_c <- ob4_cu_ca_o_parizq

# BRISK
ob4_cu_ca_b_centro_c <- ob4_cu_ca_b_centro
ob4_cu_ca_b_parder_c <- ob4_cu_ca_b_parder
ob4_cu_ca_b_parizq_c <- ob4_cu_ca_b_parizq

##########################
#### Ajustando tiempo ####
##########################

# ORB
ob4_cu_ca_o_centro_c$time <- round(ob4_cu_ca_o_centro_c$time - ob4_cu_ca_o_centro_c$time[1])
ob4_cu_ca_o_parder_c$time <- round(ob4_cu_ca_o_parder_c$time - ob4_cu_ca_o_parder_c$time[1])
ob4_cu_ca_o_parizq_c$time <- round(ob4_cu_ca_o_parizq_c$time - ob4_cu_ca_o_parizq_c$time[1])

# BRISK
ob4_cu_ca_b_centro_c$time <- round(ob4_cu_ca_b_centro_c$time - ob4_cu_ca_b_centro_c$time[1])
ob4_cu_ca_b_parder_c$time <- round(ob4_cu_ca_b_parder_c$time - ob4_cu_ca_b_parder_c$time[1])
ob4_cu_ca_b_parizq_c$time <- round(ob4_cu_ca_b_parizq_c$time - ob4_cu_ca_b_parizq_c$time[1])

########################
#### Valores reales ####
########################
x_oe <- 0.854
z_oe <- 0.787
y_oe_pi <- -0.03125
y_oe_pd <- 0.03075
y_oe_c <- -0.00025

##########################################
#### Calculo de diferencias absolutas ####
##########################################

# ORB
error_o_centro_x <- x_oe - ob4_cu_ca_o_centro_c$X
error_o_centro_y <- y_oe_c - ob4_cu_ca_o_centro_c$Y
error_o_centro_z <- z_oe - ob4_cu_ca_o_centro_c$Z

error_o_parder_x <- x_oe - ob4_cu_ca_o_parder_c$X
error_o_parder_y <- y_oe_pd - ob4_cu_ca_o_parder_c$Y
error_o_parder_z <- z_oe - ob4_cu_ca_o_parder_c$Z

error_o_parizq_x <- x_oe - ob4_cu_ca_o_parizq_c$X
error_o_parizq_y <- y_oe_pi - ob4_cu_ca_o_parizq_c$Y
error_o_parizq_z <- z_oe - ob4_cu_ca_o_parizq_c$Z

#BRISK
error_b_centro_x <- x_oe - ob4_cu_ca_b_centro_c$X
error_b_centro_y <- y_oe_c - ob4_cu_ca_b_centro_c$Y
error_b_centro_z <- z_oe - ob4_cu_ca_b_centro_c$Z

error_b_parder_x <- x_oe - ob4_cu_ca_b_parder_c$X
error_b_parder_y <- y_oe_pd - ob4_cu_ca_b_parder_c$Y
error_b_parder_z <- z_oe - ob4_cu_ca_b_parder_c$Z

error_b_parizq_x <- x_oe - ob4_cu_ca_b_parizq_c$X
error_b_parizq_y <- y_oe_pi - ob4_cu_ca_b_parizq_c$Y
error_b_parizq_z <- z_oe - ob4_cu_ca_b_parizq_c$Z

###########################
#### Errores relativos ####
###########################

# ORB
rel_o_centro_x <- 100 * abs(error_o_centro_x) / x_oe
rel_o_centro_y <- 100 * abs(error_o_centro_y) / y_oe_c
rel_o_centro_z <- 100 * abs(error_o_centro_z) / z_oe

rel_o_parder_x <- 100 * abs(error_o_parder_x) / x_oe
rel_o_parder_y <- 100 * abs(error_o_parder_y) / y_oe_pd
rel_o_parder_z <- 100 * abs(error_o_parder_z) / z_oe

rel_o_parizq_x <- 100 * abs(error_o_parizq_x) / x_oe
rel_o_parizq_y <- 100 * abs(error_o_parizq_y) / y_oe_pi
rel_o_parizq_z <- 100 * abs(error_o_parizq_z) / z_oe

# BRISK
rel_b_centro_x <- 100 * abs(error_b_centro_x) / x_oe
rel_b_centro_y <- 100 * abs(error_b_centro_y) / y_oe_c
rel_b_centro_z <- 100 * abs(error_b_centro_z) / z_oe

rel_b_parder_x <- 100 * abs(error_b_parder_x) / x_oe
rel_b_parder_y <- 100 * abs(error_b_parder_y) / y_oe_pd
rel_b_parder_z <- 100 * abs(error_b_parder_z) / z_oe

rel_b_parizq_x <- 100 * abs(error_b_parizq_x) / x_oe
rel_b_parizq_y <- 100 * abs(error_b_parizq_y) / y_oe_pi
rel_b_parizq_z <- 100 * abs(error_b_parizq_z) / z_oe

##############################################
#### Creacion de listas para los calculos ####
##############################################
error_o_centro_net <- list(error_o_centro_x,error_o_centro_y,error_o_centro_z)

