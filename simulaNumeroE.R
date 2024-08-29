# Esta funcion realiza el calculo y grafica de la aproximacion de numero e con t 
# como argumento de entrada 

simulaNumeroE=function(nTotal){
  VA=1
  i=1

  t=1:nTotal
  tablaNumeroe=data.frame(
    t=t,
    VF=VA*((1+(i/t))^t)
  )
  objetoLista1=list(
    tablaE=tablaNumeroe,
    valorActual=VA,
    tasaInteres=i,
    periodosSimulados=nTotal
  )      
  plot(x=tablaNumeroe$t,y=tablaNumeroe$VF,type="l",col="purple")
  
  return(objetoLista1)
 
}