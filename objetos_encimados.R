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
error_o_centro_r <- 0 - ob4_cu_ca_o_centro_c$roll
error_o_centro_p <- 0 - ob4_cu_ca_o_centro_c$pitch
error_o_centro_ya <- 0 - ob4_cu_ca_o_centro_c$yaw

error_o_parder_x <- x_oe - ob4_cu_ca_o_parder_c$X
error_o_parder_y <- y_oe_pd - ob4_cu_ca_o_parder_c$Y
error_o_parder_z <- z_oe - ob4_cu_ca_o_parder_c$Z
error_o_parder_r <- 0 - ob4_cu_ca_o_parder_c$roll
error_o_parder_p <- 0 - ob4_cu_ca_o_parder_c$pitch
error_o_parder_ya <- 0 - ob4_cu_ca_o_parder_c$yaw

error_o_parizq_x <- x_oe - ob4_cu_ca_o_parizq_c$X
error_o_parizq_y <- y_oe_pi - ob4_cu_ca_o_parizq_c$Y
error_o_parizq_z <- z_oe - ob4_cu_ca_o_parizq_c$Z
error_o_parizq_r <- 0 - ob4_cu_ca_o_parizq_c$roll
error_o_parizq_p <- 0 - ob4_cu_ca_o_parizq_c$pitch
error_o_parizq_ya <- 0 - ob4_cu_ca_o_parizq_c$yaw

#BRISK
error_b_centro_x <- x_oe - ob4_cu_ca_b_centro_c$X
error_b_centro_y <- y_oe_c - ob4_cu_ca_b_centro_c$Y
error_b_centro_z <- z_oe - ob4_cu_ca_b_centro_c$Z
error_b_centro_r <- 0 - ob4_cu_ca_b_centro_c$roll
error_b_centro_p <- 0 - ob4_cu_ca_b_centro_c$pitch
error_b_centro_ya <- 0 - ob4_cu_ca_b_centro_c$yaw

error_b_parder_x <- x_oe - ob4_cu_ca_b_parder_c$X
error_b_parder_y <- y_oe_pd - ob4_cu_ca_b_parder_c$Y
error_b_parder_z <- z_oe - ob4_cu_ca_b_parder_c$Z
error_b_parder_r <- 0 - ob4_cu_ca_b_parder_c$roll
error_b_parder_p <- 0 - ob4_cu_ca_b_parder_c$pitch
error_b_parder_ya <- 0 - ob4_cu_ca_b_parder_c$yaw

error_b_parizq_x <- x_oe - ob4_cu_ca_b_parizq_c$X
error_b_parizq_y <- y_oe_pi - ob4_cu_ca_b_parizq_c$Y
error_b_parizq_z <- z_oe - ob4_cu_ca_b_parizq_c$Z
error_b_parizq_r <- 0 - ob4_cu_ca_b_parizq_c$roll
error_b_parizq_p <- 0 - ob4_cu_ca_b_parizq_c$pitch
error_b_parizq_ya <- 0 - ob4_cu_ca_b_parizq_c$yaw

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
# ORB
error_o_centro_net <- list(error_o_centro_x,error_o_centro_y,error_o_centro_z,error_o_centro_r,error_o_centro_p,error_o_centro_ya)
error_o_parder_net <- list(error_o_parder_x,error_o_parder_y,error_o_parder_z,error_o_parder_r,error_o_parder_p,error_o_parder_ya)
error_o_parizq_net <- list(error_o_parizq_x,error_o_parizq_y,error_o_parizq_z,error_o_parizq_r,error_o_parizq_p,error_o_parizq_ya)

# BRISK
error_b_centro_net <- list(error_b_centro_x,error_b_centro_y,error_b_centro_z,error_b_centro_r,error_b_centro_p,error_b_centro_ya)
error_b_parder_net <- list(error_b_parder_x,error_b_parder_y,error_b_parder_z,error_b_parder_r,error_b_parder_p,error_b_parder_ya)
error_b_parizq_net <- list(error_b_parizq_x,error_b_parizq_y,error_b_parizq_z,error_b_parizq_r,error_b_parizq_p,error_b_parizq_ya)

############################
#### Calculos de medias ####
############################
# ORB
m_o_centro <- sapply(error_o_centro_net, mean)
m_o_parder <- sapply(error_o_parder_net, mean)
m_o_parizq <- sapply(error_o_parizq_net, mean)

# BRISK
m_b_centro <- sapply(error_b_centro_net, mean)
m_b_parder <- sapply(error_b_parder_net, mean)
m_b_parizq <- sapply(error_b_parizq_net, mean)

###########################################
#### Calculos de desviaciones estandar ####
###########################################
# ORB
sd_o_centro <- sapply(error_o_centro_net, sd)
sd_o_parder <- sapply(error_o_parder_net, sd)
sd_o_parizq <- sapply(error_o_parizq_net, sd)

# BRISK
sd_b_centro <- sapply(error_b_centro_net, sd)
sd_b_parder <- sapply(error_b_parder_net, sd)
sd_b_parizq <- sapply(error_b_parizq_net, sd)


############################################################
#### Crecion de dataframes de diferencias para comparar ####
############################################################
# ORB
df_o_centro <- data.frame(time = ob4_cu_ca_o_centro_c$time, dx = error_o_centro_x, dy = error_o_centro_y, dz = error_o_centro_z, dr = error_o_centro_r, dp = error_o_centro_p, dya = error_o_centro_ya, alg = "FAST-ORB")
df_o_parder <- data.frame(time = ob4_cu_ca_o_parder_c$time, dx = error_o_parder_x, dy = error_o_parder_y, dz = error_o_parder_z, dr = error_o_parder_r, dp = error_o_parder_p, dya = error_o_parder_ya, alg = "FAST-ORB")
df_o_parizq <- data.frame(time = ob4_cu_ca_o_parizq_c$time, dx = error_o_parizq_x, dy = error_o_parizq_y, dz = error_o_parizq_z, dr = error_o_parizq_r, dp = error_o_parizq_p, dya = error_o_parizq_ya, alg = "FAST-ORB")

# BRISK
df_b_centro <- data.frame(time = ob4_cu_ca_b_centro_c$time, dx = error_b_centro_x, dy = error_b_centro_y, dz = error_b_centro_z, dr = error_b_centro_r, dp = error_b_centro_p, dya = error_b_centro_ya, alg = "BRISK")
df_b_parder <- data.frame(time = ob4_cu_ca_b_parder_c$time, dx = error_b_parder_x, dy = error_b_parder_y, dz = error_b_parder_z, dr = error_b_parder_r, dp = error_b_parder_p, dya = error_b_parder_ya, alg = "BRISK")
df_b_parizq <- data.frame(time = ob4_cu_ca_b_parizq_c$time, dx = error_b_parizq_x, dy = error_b_parizq_y, dz = error_b_parizq_z, dr = error_b_parizq_r, dp = error_b_parizq_p, dya = error_b_parizq_ya, alg = "BRISK")

# Union de dataframes
df_centro <- rbind.data.frame(df_o_centro,df_b_centro)
df_parder <- rbind.data.frame(df_o_parder,df_b_parder)
df_parizq <- rbind.data.frame(df_o_parizq,df_b_parizq)


##################
#### Graficas ####
##################

# Funcion para graficar los datos en X Y Z
grafica_oe <- function(dataframe,X,Y,wrt,m_orb,m_brisk,pos) {
  ggplot(dataframe, aes(x=X,y=Y) )+
    geom_point(aes(color = alg)) +
    theme_bw()+
    scale_y_continuous(breaks = seq(-1, 1, by = 0.01))+
    geom_hline(yintercept = 0,linetype = "dashed",color = "black",size = 1)+
    geom_hline(yintercept = mean(m_orb),linetype = "solid",color = "orange",size = 0.3)+
    geom_hline(yintercept = mean(m_brisk),linetype = "solid",color = "blue",size = 0.3)+
    labs(title = paste("Objeto 4 (Caja) atrás con objeto 3 (cubo) enfrente en",wrt,"posición",pos),
         subtitle = "Respecto al robot",
         x = "Tiempo [s]",
         y = paste("Distancia en",wrt,"[m]"),
         color = "Algoritmo")
}

# Funcion para graficar los datos en roll, pitch, yaw
grafica_oe_deg <- function(dataframe,X,Y,wrt,m_orb,m_brisk,pos) {
  ggplot(dataframe, aes(x=X,y=Y) )+
    geom_point(aes(color = alg)) +
    theme_bw()+
    scale_y_continuous(breaks = seq(-360, 360, by = 15))+
    geom_hline(yintercept = 0,linetype = "dashed",color = "black",size = 1)+
    geom_hline(yintercept = mean(m_orb),linetype = "solid",color = "orange",size = 0.3)+
    geom_hline(yintercept = mean(m_brisk),linetype = "solid",color = "blue",size = 0.3)+
    labs(title = paste("Objeto 4 (Caja) atrás con objeto 3 (cubo) enfrente en",wrt,"posición",pos),
         subtitle = "Respecto al robot",
         x = "Tiempo [s]",
         y = paste("Giro en",wrt,"[°]"),
         color = "Algoritmo")
}

# Centro
g_centro_x <- grafica_oe(df_centro,df_centro$time,df_centro$dx,"X",df_o_centro$dx,df_b_centro$dx,"central")
g_centro_y <- grafica_oe(df_centro,df_centro$time,df_centro$dy,"Y",df_o_centro$dy,df_b_centro$dy,"central")
g_centro_z <- grafica_oe(df_centro,df_centro$time,df_centro$dz,"Z",df_o_centro$dz,df_b_centro$dz,"central")
g_centro_r <- grafica_oe_deg(df_centro,df_centro$time,df_centro$dr,"roll",df_o_centro$dr,df_b_centro$dr,"central")
g_centro_p <- grafica_oe_deg(df_centro,df_centro$time,df_centro$dp,"pitch",df_o_centro$dp,df_b_centro$dp,"central")
g_centro_ya <- grafica_oe_deg(df_centro,df_centro$time,df_centro$dya,"yaw",df_o_centro$dya,df_b_centro$dya,"central")

# Derecha
g_parder_x <- grafica_oe(df_parder,df_parder$time,df_parder$dx,"X",df_o_parder$dx,df_b_parder$dx,"parcial derecha")
g_parder_y <- grafica_oe(df_parder,df_parder$time,df_parder$dy,"Y",df_o_parder$dy,df_b_parder$dy,"parcial derecha")
g_parder_z <- grafica_oe(df_parder,df_parder$time,df_parder$dz,"Z",df_o_parder$dz,df_b_parder$dz,"parcial derecha")
g_parder_r <- grafica_oe_deg(df_parder,df_parder$time,df_parder$dr,"roll",df_o_parder$dr,df_b_parder$dr,"parcial derecha")
g_parder_p <- grafica_oe_deg(df_parder,df_parder$time,df_parder$dp,"pitch",df_o_parder$dp,df_b_parder$dp,"parcial derecha")
g_parder_ya <- grafica_oe_deg(df_parder,df_parder$time,df_parder$dya,"yaw",df_o_parder$dya,df_b_parder$dya,"parcial derecha")

# Izquierda
g_parizq_x <- grafica_oe(df_parizq,df_parizq$time,df_parizq$dx,"X",df_o_parizq$dx,df_b_parizq$dx,"parcial izquerda")
g_parizq_y <- grafica_oe(df_parizq,df_parizq$time,df_parizq$dy,"Y",df_o_parizq$dy,df_b_parizq$dy,"parcial izquerda")
g_parizq_z <- grafica_oe(df_parizq,df_parizq$time,df_parizq$dz,"Z",df_o_parizq$dz,df_b_parizq$dz,"parcial izquerda")
g_parizq_r <- grafica_oe_deg(df_parizq,df_parizq$time,df_parizq$dr,"roll",df_o_parizq$dr,df_b_parizq$dr,"parcial izquerda")
g_parizq_p <- grafica_oe_deg(df_parizq,df_parizq$time,df_parizq$dp,"pitch",df_o_parizq$dp,df_b_parizq$dp,"parcial izquerda")
g_parizq_ya <- grafica_oe_deg(df_parizq,df_parizq$time,df_parizq$dya,"yaw",df_o_parizq$dya,df_b_parizq$dya,"parcial izquerda")
