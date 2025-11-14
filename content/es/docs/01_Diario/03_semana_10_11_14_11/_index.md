---
title: "Semana 1 (29 al 31 de octubre)"
description: "Introducción al entorno web y programación"
weight: 1
icon: "fas fa-calendar-week"
draft: false
---

{{< line color="blue" >}}

## 🗓 Diario de clases — Semana 1


{{< diario fecha="30/10/2025" tema="Introducción a la programación web" >}}

### Conceptos vistos
- **URL:** texto que escribimos en el navegador. Consta de varias partes: protocolo, dominio y recurso solicitado.(http://maquina_con_app_servidor/recurso_solicitado)
- **Red:** conjunto de nodos interconectados.
- **IP:** identificador único en la red. 
- **Servidor web (Apache):** Programa que implementa el protocolo http y atiende las peticiones del navegador cuando le solicitan un recurso.
> Instalar en linux
```bash
 sudo apt install apache2
```  
- **DocumentRoot:** Directorio dónde apache va a ir a buscar los recursos cuando se le soliciten
    - Linux → `/var/www/html`
    - Windows → `C:\Xampp\htdocs`
- **Archivo `hosts`: fichero de texto que ** resuelve nombres de dominio a IP** . Necesito tener privilegios para  modificarlo.
    - Linux → `/etc/hosts`
    - Windows → `C:\Windows\System32\drivers\etc\hosts`

### 💻 Comandos de Linux
| Comando | Descripción                                                                      | Ejemplo |
|----------|----------------------------------------------------------------------------------|---------|
| `ls -l` | Lista el contenido del directorio actual. Parámetro **-l**  muestra con detalles | `ls -l /var/www` |
| `cd` | Cambiar directorio                                                               | `cd /var/www/html` |
| `sudo` | Ejecutar como superusuario                                                       | `sudo apt update` |
| `gedit` | Editor de texto gráfico. Si quiero que se ejecute en backgroun con &             | `gedit index.html &` |
| `apt install` | Instalar paquetes (Advanced Packaging Tool). Necesita privilegios                | `sudo apt install apache2` |
| `chown` | Cambiar propietario. Necesita privilegios                                        | `sudo chown usuario:grupo archivo` |

###  Práctica realizada
* Se instala apache
```bash
sudo apt install apache2
 ```
* Se prueba con la ip de cada equipo (Verificamos que la url funciona poniendo la ip). Para ello usamos el comando **ifconfig**. Para disponer de él, necesitamos instalar el programa **net-tools** 
 ```bash
sudo apt install net-tools
ifconfig
```
* Modificamos los permisos en de la carpeta **html** para que el usuario **alumno** pueda escribir en ella (es propiedad de root)
 ```bash
sudo chown alumno:alumno /var/www/html
```
 * Observa la direrencia de una ruta absoluta (**comienza por /**) o relativa que sería respecto a la carpeta dónde me encuentro
* Se escribe una página en /var/www/html con una etiqueta  **h1** para probar . Ubicado en /var/www/html podemos escribir
 ```bash
gedit 1.html
```
* Probamos con la ip del profesor
* Modificamos el host añadiendo una entrada _ip del profesor nombre_
```bash
172.16.24.50 manuel.com
```
* Se prueba y verifica que funciona

## Programación
###  Conceptos fundamentales

- **Programa:** conjunto de instrucciones ordenadas que indican al ordenador qué hacer.
- **Instrucción:** orden o acción concreta.
    - **Declaración:** crear una variable o estructura.
    - **Asignación:** dar un valor a una variable.
    - **Estructuras de control:** condicionales (`if`, `else`), bucles (`for`, `while`).
    - **Invocación:** llamada a funciones o procedimientos.
    - **Entrada/Salida:** leer o escribir datos (por teclado, pantalla, fichero…).
    - **Control de excepciones:** detectar y gestionar errores en tiempo de ejecución.

---

###  Algoritmo
Un **algoritmo** es un conjunto **finito y ordenado de pasos** que permiten resolver un problema.  
Debe ser:
1. **Preciso:** cada paso tiene sentido claro.
2. **Ordenado:** sigue una secuencia lógica.
3. **Finito:** termina tras un número limitado de pasos.
4. **Eficiente:** usa los mínimos recursos necesarios.

**Ejemplo simple (pseudocódigo):**

```text
Inicio
  Leer edad
  Si edad ≥ 18 entonces
      Escribir "Eres mayor de edad"
  Sino
      Escribir "Eres menor de edad"
Fin
```
### ️ Tipos de lenguajes de programación

| **Nivel** | **Descripción** | **Ejemplos** | **Traducción / Ejecución** |
|------------|-----------------|---------------|-----------------------------|
| **Bajo nivel** | Cercanos al código máquina, usan nemotécnicos. | Ensamblador | No necesita compilador; se traduce casi directamente a binario. |
| **Alto nivel** | Más cercanos al lenguaje humano, más fáciles de leer y escribir. | PHP, JavaScript, Pascal, Python, C, C++ | Requieren **intérprete** o **compilador**. |

---

###  Intérprete vs Compilador

| **Tipo** | **Qué hace** | **Ejemplos** | **Resultado / Características** |
|-----------|--------------|---------------|--------------------------------|
| **Intérprete** | Traduce y ejecuta el código línea a línea. | PHP, Python, JavaScript | Más flexible, pero más lento. |
| **Compilador** | Traduce todo el programa antes de ejecutarlo. | C, C++, Pascal | Más rápido en ejecución. |
| **Semicompilado (Java)** | El código fuente se compila a *bytecode* y se ejecuta en la JVM. | Java | Portabilidad entre sistemas; equilibrio entre interpretación y compilación. |


 {{</diario>}}


{{< diario fecha="31/10/2025" tema="Programación con scratch 1" >}}

#### 💡 Conceptos principales

- **Programar** es **resolver un problema** mediante un conjunto de **instrucciones** que el ordenador ejecuta paso a paso para alcanzar un objetivo.
- **Programar** implica **traducir un algoritmo** (una solución lógica) a un **lenguaje que el ordenador pueda interpretar o compilar**.
- **Un programa** es un **conjunto de instrucciones** que siguen un orden lógico y permiten resolver un problema concreto.

{{< line color="blue" with="3px" >}}


#### Tipos de instrucciones en un programa

1. **Secuenciales** → se ejecutan una tras otra.
2. **Selectivas** → se ejecutan si se cumple una condición (`if`, `else`).
3. **Repetitivas** → se repiten mientras se cumpla una condición (`while`, `for`).

También existen:
- **Declaraciones de variables** (creación de datos).
- **Asignaciones** (dar valores).
- **Invocaciones** (llamadas a funciones o subprogramas).
- **Entrada/salida** (leer o mostrar información).

{{< line color="blue" with="3px" >}}


####  ¿Qué es un algoritmo?

Un **algoritmo** es una secuencia **finita, concreta, determinística y bien definida** de pasos que permiten resolver un problema.

Características:
- **Finito:** debe terminar.
- **Concreto:** los pasos deben ser claros.
- **Determinístico:** mismo resultado con las mismas entradas.
- **Bien definido:** sin ambigüedades.

Ejemplo cotidiano: lavarse los dientes, cruzar la calle, preparar un café.

{{< line color="blue" with="3px" >}}


####  Etapas del proceso de programación

1. **Análisis** 
    - Comprender el problema.
    - Definir claramente **qué queremos hacer** y **qué información necesitamos**.

2. **Diseño** 🧭
    - Elaborar un **algoritmo o plan de acción**.
    - Decidir **cómo se resolverá el problema** y **cómo organizo la información ** (estructura de datos que usaremos).

3. **Implementación** ⚙️
    - Traducir el algoritmo a un lenguaje de programación concreto.
    - Probar, corregir y mejorar el código.

> 💬 *Analizar, diseñar e implementar* son las tres fases esenciales para pasar de una idea a un programa funcional.

{{< line color="blue" with="3px" >}}


#### 🔍 Reflexión

- **Programar** es una forma de **pensar de manera estructurada y lógica**.
- En la vida cotidiana aplicamos algoritmos sin darnos cuenta; la programación nos enseña a **formalizar ese pensamiento**.
- Todo programa comienza con una **pregunta:**
  > **¿Qué quiero hacer? ¿Cómo lo voy a hacer? ¡Pues vamos a hacerlo!**

{{< line color="blue" with="3px" >}}


####  Idea clave

> La **programación** es el proceso de **analizar un problema**, **diseñar una solución algorítmica**, e **implementarla mediante un conjunto de instrucciones** que el ordenador puede ejecutar.


### 2.- Introducción a Scratch

**Scratch** es un lenguaje de programación visual, pensado para aprender los fundamentos de la **lógica y estructura de los programas** sin necesidad de escribir código.

####  Objetivos
- Comprender qué es un **entorno de ejecución**: el lugar donde el programa se crea y se ejecuta.
- Conocer la interfaz de Scratch y sus bloques básicos.
- Identificar los tres tipos principales de estructuras:
    - **Secuenciales:** las acciones se ejecutan una detrás de otra.
    - **Selectivas:** permiten tomar decisiones (`si... entonces`).
    - **Repetitivas o bucles:** repiten una acción mientras se cumpla una condición.

####  Acceso
Scratch funciona desde el navegador:  
 [https://scratch.mit.edu](https://scratch.mit.edu)

No requiere instalación (aunque existe una versión de escritorio).  
El usuario programa **arrastrando bloques** que representan instrucciones, facilitando el aprendizaje de los conceptos de **algoritmo**, **control** y **ejecución**.

{{< line color="blue" with="3px" >}}


>  **Idea clave:** Scratch es una herramienta para **entender cómo piensa un programa**: analizar, diseñar e implementar soluciones de manera visual y divertida.
####  Actividad práctica
Creamos un pequeño juego donde **el gato persigue al ratón**:

1. **Evento inicial** → al presionar una tecla (`flecha arriba`, `abajo`, `izquierda`, `derecha`).
2. **Movimiento** → usar bloques `mover 10 pasos` y `apuntar en dirección X`.
3. **Cambio de apariencia** → al girar o moverse, cambiar el disfraz del gato (`next costume`) para simular animación.
4. **Control** → repetir continuamente (`por siempre`) mientras se ejecuta el juego.
5. **Interacción** → el gato se orienta hacia el ratón (`apuntar hacia ratón`) y lo sigue por el escenario.



####  Conceptos trabajados
- **Eventos** → acciones que inician la ejecución (teclas, clic, etc.).
- **Bucles** → repetir acciones indefinidamente.
- **Condicionales** → decidir qué hacer según una situación.
- **Ejes y coordenadas (x, y)** → movimiento en el escenario.
- **Paralelismo** → varios scripts pueden ejecutarse al mismo tiempo (uno para cada tecla o acción).

---

>  **Idea clave:** cada bloque de Scratch representa una **instrucción** del programa.  
> Combinándolos, aplicamos el ciclo completo: **análisis → diseño → implementación → prueba** de una solución concreta.

{{</diario>}}

