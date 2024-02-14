nuevo_dir <- "C:/practicaEstDescriptivaR"
setwd(nuevo_dir)

"Práctica 1"

#1
vector_x <- c(1,2,3,4,5)
vector_y <- c(9.1,2.4,7.5,1.3,3.4)

"Explicación: Un vector es la forma más sencilla de recopilar datos del mismo tipo en R, en cambio la lista es heterogénea ya que sus datos pueden ser de distintos tipos.
             Estos vectores tienen una logitud de 5 cada uno. Integer es para números enteros y, double para datos decimales. Los datos doubles gastan más memoria computacional que los integer."
#2
-SUMA: vector_x+vector_y
-RESTA: vector_x-vector_y
-MULTIPLICACIÓN: vector_x*vector_y
-DIVISIÓN: vector_x/vector_y
-POTENCIA: vector_x^vector_y
#3
vector_y^2
#4
vector_y*10
#5
vector_y+25
#6
max(vector_y)
#7
min(vector_y)
#8
abs(vector_y)
#9
sqrt(vector_y)
#10
sum(vector_y)
#11
list<-list(c(vector_x,vector_y))
"EXPLICACIÓN: Este nuevo objeto tiene una longitud compuesta de los dos vectores, por lo que es 10. Utiliza valores doubles. Los valores de x se están coercionando a los de y, si fuera al revés se perdería información numérica"
#12
is.na(list)
#13
vector_z <- c(29,NA,12,46,73)
#14
mean(vector_z)
mean(vector_z, na.rm = TRUE)
"EXPLICACIÓN: Arroja un resultado NA, ya que no todos los valores no son númericos. La solución es hacer la media con una función excluyendo este caracter"
#15
matriz <- matrix(c(24,69,3,90,23,56,1,63,87,21,77,19), 
                 nrow =4, ncol =3, 
                 byrow = F)
"EXPLICACIÓN: La matriz se ordena por columnas por defecto"
#16
matriz_filas <- matrix(c(24,69,3,90,23,56,1,63,87,21,77,19), 
                       nrow =4, ncol =3, 
                       byrow = T)
#17
matrizA <- matrix(c(1,2,3,4,5,6,7,8,9), 
                  nrow =3, ncol =3, 
                  byrow = T)
matrizB <- matrix(c(10,11,12,13,14,15,16,17,18), 
                  nrow =3, ncol =3, 
                  byrow = T)
#18
suma_matriz <- matrizA+matrizB
resta_matriz <- matrizA-matrizB
"EXPLICACIÓN: Los resultados a la hora de restas es -9 ya que es el resultado de restar cada valor de la matriz A por su homólogo de la matriz B"
#19
t(matriz)
#20
matriz*9
#21
matrizA*matrizB
#22
matriz_mult=matrizA*matrizB
matriz_mult[2,3]
matriz_mult[2,]
matriz_mult[,3]

"Práctica 2"

#1
 set.seed(69)
num_cuentas <- round(rnorm(100, mean = 50, sd = 10))
#2
mean(num_cuentas)
#3
median(num_cuentas)
#4
mode <- function(num_cuentas) {
  return(as.numeric(names(which.max(table(num_cuentas)))))
}
mode(num_cuentas)
#5
range(num_cuentas)
#6 #7
quantile(num_cuentas, lenght = 100)
"Primer quartil= 42.75%"
"Percentil 75= 55%"
#8
var(num_cuentas)
#9
sd(num_cuentas)
#10
hist( num_cuentas, col= "pink")
#11
boxplot(num_cuentas, horizontal = T, col= "black")
#12
density(num_cuentas)
plot(density(num_cuentas))
lines(density(num_cuentas), col="blue")
#13
barplot(num_cuentas, col = "red")
#14
tipo_artefacto <- c("Hacha","Bifaz","Collar")
material <- c("Piedra","Metal","Cerámica")
periodo_cultural <- c("Prehistoria","Clásico","Actuall")
estado_conservación <- c("Bueno","Muy malo","Malo","Muy malo")
ubicacion <- c("Sevilla","Santiponce","Italia")

set.seed(143)
muestra_tipo_artefacto <- sample(tipo_artefacto, 10, replace = TRUE)
muestra_material <- sample(material, 10, replace = TRUE)
muestra_periodo_cultural <- sample(periodo_cultural, 10, replace = TRUE)
muestra_estado_conservación <- sample(estado_conservación, 10, replace = TRUE)
muestra_ubicacion <- sample(ubicacion, 10, replace = TRUE)

tabla_freq_tip_art <- table(muestra_tipo_artefacto)
tabla_freq_mat <- table(muestra_material)
tabla_freq_per_cul <- table(muestra_periodo_cultural)
tabla_freq_est_con <- table(estado_conservación)
tabla_freq_ubi <- table(muestra_ubicacion)
