using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Portafolio_ErickM
{
    public class Operar
    {
        public string realizarOp(double n1, double n2, string opcion)
        {
            string resultadoOp;

            switch (opcion)
            {
                case "Sumar":
                    resultadoOp = (n1 + n2).ToString();
                    return resultadoOp;
                case "Restar":
                    resultadoOp = (n1 - n2).ToString();
                    return resultadoOp;
                case "Multiplicar":
                    resultadoOp = (n1 * n2).ToString();
                    return resultadoOp;
                case "Dividir":
                    if (n2 == 0)
                        resultadoOp = "No es posible dividir en 0";
                    else
                        resultadoOp = (n1 / n2).ToString();
                    return resultadoOp;
                default:
                    return "";
            }
        }
    }
}