---
title: "Semana 3 (10 al 14  de noviembre)"
description: "Introducción a la programación con php"
weight: 1
icon: "fas fa-calendar-week"
draft: false
---

{{< line color="blue" >}}

## 🗓 Diario de clases — Semana 3



{{< diario fecha="10/11/2025" tema="Sintaxis básica: Escritura" >}}

### Conceptos vistos
Ultimar el laberinto programa de scratch 
Presentación del tema de la programación y la web que va a contener los contenidos
Conceptos básicos de programación 
Análisis Diseño Implementación
Ejemplo ecuaciones de segundo grado haciendo un análisis y un diseño
{{</diario>}}

{{< diario fecha="11/11/2025" tema="Sintaxis básica: Escritura" >}}

Instalación del sistema (apache, php con apt install y phpstrom desde snap)
PhpStorm como edi para programar
Concepto de la programación al lado del servidor (Por un lado programa en el servidor y por otro recurso que recibimos)

{{</diario>}}

{{< diario fecha="12/11/2025" tema="Sintaxis básica: Escritura" >}}


### Conceptos vistos
* echo y print
* comillas dobles
* secuencias de escape y etiquetas HTML.


#### echo y print 
Son instrucciones del lenguaje para escribir texto

{{< highlight php >}}
<?php
echo "Hola compañeros, me gusta el php";   
print "Hola compañeros, me gusta el php";   
?>
{{< /highlight >}}

**Peculiaridades de estas instrucciones**

{{< highlight php >}}
<?php
echo "Hola", " mundo";   // echo admite varios argumentos
print "Hola mundo";      // print solo un argumento

$valor = print "Hola";    // print devuelve 1
// $valor = echo "Hola";  // ERROR: echo no devuelve valor
?>
{{< /highlight >}}

echo:
- No devuelve valor.
- Permite varios argumentos.
- Es el más usado.
- Sintaxis corta: <?= $variable ?> equivale a <?php echo $variable ?>

print:
- Solo acepta un argumento.
- Devuelve 1, por eso puede asignarse a una variable.

---

#### Comillas dobles

{{< highlight php >}}
<?php
$nombre = "Juan";

echo "Hola, $nombre"; // Las comillas dobles interpretan variables
echo "Línea 1\nLínea 2"; // Interpretan secuencias de escape como \n
?>
{{< /highlight >}}

Puntos clave:
- Las comillas dobles permiten insertar variables directamente dentro del texto.
- También interpretan secuencias de escape.

---

#### Secuencias de escape (solo en comillas dobles)

Las más importantes que usamos:

- \" → comilla doble
- \\ → barra invertida
- \n → salto de línea
- \t → tabulación
- \$ → símbolo $

{{< highlight php >}}
<?php
echo "Ella dijo: \"Hola\"";
echo "Línea 1\nLínea 2";
echo "Precio: \$15";
?>
{{< /highlight >}}

---

#### Insertar HTML dentro de echo

{{< highlight php >}}
<?php
echo "<h1>Título en HTML</h1>";
echo "<p>Este texto <strong>tiene formato</strong></p>";
?>
{{< /highlight >}}

Ideas clave:
- echo puede imprimir cualquier texto, incluyendo etiquetas HTML.
- PHP envía el string; el navegador es quien interpreta el HTML.

{{</diario>}}

