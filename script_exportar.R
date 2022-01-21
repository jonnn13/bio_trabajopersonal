library(MLDataR)

tir = MLDataR::thyroid_disease

write.csv(tir, file = "dataset_tiroides.csv")


# Inofrmacion de la sesion 
sessionInfo()


# order --> es para ordenar (como sort pero sort para vectores, order para bases de datos )
head(tir)

sort(tir$patient_age)

tir2= tir[order(tir$patient_age),]

tir_completo = tir[complete.cases(tir),] # complete.cases--> para quitar todos los pacientes que tengan informacion misses

# aggregate --> paar agurpar por grupos y hacer calculos estadísticos 
edad_tyr = aggregate(tir_completo$patient_age, list(tir_completo$ThryroidClass), mean)

names(edad_tyr)= c("Tiroides", "Media")

aggregate(tir_completo$patient_age, list(tir_completo$ThryroidClass, tir_completo$patient_gender), mean)
