void main(List<String> args) {
  // Un gimnasio ofrece un descuento del 20% si el cliente paga la anualidad completa (monto > 500.000), de lo contrario el descuento es del 5%. Calcular el total a pagar

  //Definicion de variables
  double Anualidad=400000,Descuento1,Descuento2, TotalPagar1,TotalPagar2;

//Condicional - Salida
  if (Anualidad>500000){
 Descuento1= (Anualidad*0.20);
 TotalPagar1= Anualidad-Descuento1;
 print("El total a pagar es de: $TotalPagar1 y se aplicó un descuento del 20% por pagar la anualidad mayor a 500.000");
  } else if (Anualidad<500000){
 Descuento2=(Anualidad*0.05);
 TotalPagar2 = Anualidad-Descuento2;
 print("El total a pagar es de: $TotalPagar2 y se aplicó un descuento del 5%");
  }

}