

let operacion = prompt("Elija la operación (1=sumar 2= restar 3= multiplicar 4= dividir): ");

 switch (operacion) {
   case "1":
    let numero1 = parseIntprompt(numero1);
    let numero2 = parseIntprompt(numero2);
    //let numero1 = parseIntprompt("Ingrese Valor 1 ");
    //let numero2 = parseIntprompt("Ingrese Valor 2 ");
    
     console.log("La suma es " +  (numero1 + numero2));
     console.log(numero1+ numero2)
     break;
   case "2":
    let numero3 = prompt("Ingrese Valor 1 ");
    let numero4 = prompt("Ingrese Valor 2 ");
     console.log("La resta es " +  (numero3 - numero));
          break;
   case "3":
    let numero5 = prompt("Ingrese Valor 1 ");
    let numero6 = prompt("Ingrese Valor 2 ");
     console.log("La multiplicación es " + (numero5 * numero6));

     break;
   case "4":
    let numero7 = prompt("Ingrese Valor 1 ");
    let numero8 = prompt("Ingrese Valor 2 ");
     console.log("La dicisión es " + (numero7 / numero8));
          break;
   default:
     console.log("Ingrese una opción válida!");
 }