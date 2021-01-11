library(dplyr)
library(rgl)
library(plot3D)

data_calib <- read.delim("calib.dat",header = TRUE,sep = " ")

avg_diff <- mean(data_calib$diff_c_m)

regresion <- lm(data_calib$computed_depth ~ data_calib$measured_depth)
summary(regresion)

# Nivel de confianza: 95%
# Margen de error: 1%
muestra <- data_calib %>%
  sample_n(size = 9475,replace = FALSE)

head(muestra)

plot(muestra$measured_depth,muestra$computed_depth,
     main = "Distancia calculada vs Distancia medida",
     xlab = "Distancia medida [m]",
     ylab = "Distancia calculada [m]",
     col = "black")
abline(reg = lm(muestra$computed_depth ~ muestra$measured_depth),col="red")
abline(a = 0, b = 1, col = "green")

reg_muestra <- lm(muestra$measured_depth ~ muestra$computed_depth)
summary(reg_muestra)

plot(muestra$X,muestra$diff_c_m,
     main = "Diferencia calculada/medida sobre X",
     xlab = "X",
     ylab = "Diferencia en X",
     col = "black"
     )
abline(h = median(muestra$diff_c_m),col="red")

plot(muestra$Y,muestra$diff_c_m,
     main = "Diferencia calculada/medida sobre Y",
     xlab = "Y",
     ylab = "Diferencia en Y",
     col = "black"
)
abline(h = median(muestra$diff_c_m),col="red")

open3d()
plot3d(muestra$X,muestra$Y,muestra$diff_c_m,col = "red",xlab = "Puntos en X",ylab = "Puntos en Y",zlab = "Diferencia [m]")

scatter3D(muestra$X,muestra$Y,muestra$diff_c_m,
          clab = c("Diferencia","[m]"),
          main = "Diferencia medido/calculada en el plano",
          xlab = "X",
          ylab = "Y",
          zlab = "Diff",
          theta = -120,
          phi = 0,
          bty ="b2",
          pch = 18,
          ticktype = "detailed")
