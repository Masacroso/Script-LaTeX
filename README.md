Script de sustitución de tecleos diseñado para escribir código de [TeX](https://es.wikipedia.org/wiki/TeX) muy rápidamente. El diseño de los scripts tiene en consideración la distribución del teclado que se utiliza comúnmente en España e Hispanoamérica. 

Hay dos versiones del script, cada uno para un sistema de scripting diferente pero esencialmente ambos scripts tienen la misma funcionalidad. Una versión es para el sistema de scripting de [espanso](https://espanso.org/) y otra para [autohotkey](https://www.autohotkey.com/). Actualmente sólo mantengo la versión de espanso, ya que puedo utilizarla en varios sistemas operativos diferentes y es la que utilizo.

***

# Versiones e instalación:

## Script para espanso:

[Espanso](https://espanso.org/) es un programa para definir y ejecutar scripts de sustituciones de cadenas de texto y funciona en sistemas operativos Windows, MacOS y Linux (pero de momento no en android). 

Para utilizar el script primero hay que instalar espanso 0.7.3 en el sistema operativo. Una vez hecho esto colocamos el archivo TeX.yml en la carpeta `/user` donde espanso guarda los scripts, que dependiendo del sistema operativo esta carpeta se encuentra en diferentes lugares (para saber dónde está se puede ejecutar el comando `espanso path` en una terminal del sistema, por ejemplo en sistemas como ubuntu se encuentra en `$HOME/.config/espanso/`). Una vez hecho esto espanso se reiniciará y el script estará activo. Si fuese necesario, espanso puede desactivarse pulsando dos veces seguidas la tecla ALT, y se puede volver a activar volviendo a pulsar dos evces la tecla ALT.

En este archivo TeX.yml es donde se encuentra el diccionario que define las sustituciones. Por otra aprte es conveniente añadir al inicio del archivo TeX.yml una lista de palabras clave que hacen que espanso sólo esté activo en programas cuyas ventanas activas contengan alguna de estas palabras clave en su título. Por ejemplo se pueden poner nombres de editores de texto que soporten TeX como Typora, o palabras "matemáticas" las cuales se encuentran presente en el título de diversas páginas web con soporte para TeX, etc. Para más información consultar [aquí](https://espanso.org/docs/configuration/#application-specific-configurations).

## Script para autohotkey:

[Autohotkey](https://www.autohotkey.com/) es un programa para ejecutar scripts de sustitución de cadenas de texto y definir hotkeys, entre otras cosas, y sólo está disponible para sistemas operativos Windows.

El archivo TeX.ahk es el archivo de texto que contiene las sustituciones de cadenas de texto y hotkeys que se han definido, no hace falta descargarlo simplemente se puede utilizar como referencia o modelo. Para usar el script simplemente hay que descargar y descomprimir el archivo TeX.zip y ejecutar el archivo TeX.exe.

Cuando el script se ha iniciado aparecerá un icono de color verde en la barra de tareas que indica que el programa está en ejecución pero inactivo (es decir que no realiza sustituciones). Para activarlo (o volverlo a desactivar) hay que presionar la combinación de teclas `Alt+Ñ`. Cuando el programa está activo (es decir, que hace sustituciones de cadenas de texto) el icono pasará a tener color rojo.

Por comodidad, si se va a usar a diario, es recomendable hacer que el script se active al inicio de sesión, lo cual se puede hacer con el programador de tareas de windows.

***

# Funcionamiento básico del script y ejemplos:

El script lo que hace es sustituir una cadena de tecleos por otros, abajo hay unos cuantos ejemplos del tipo de sustituciones que hace. Los archivos del script lo que contienen es un "diccionario" que traducen unas pequeñas cadenas de texto por construcciones comunes de LaTeX.

He ido variando el diccionario con el tiempo según he visto que una cadena de sustitución es mejor que otra o más usada, etc. El diccionario es largo, para conocer qué sustituciones se han definido lo mejor es consultar el contenido de cada archivo de la versión del script que estemos usando (el archivo TeX.yml si usamos la versión de espanso o el archivo TeX.ahk si estamos usando la versión de autohotkey, ambos archivos se pueden abrir con cualquier editor de texto). Además el contenido de dichos archivos también puede verse directamente en el repositorio de GitHub, sólo hay que clickear sobre el archivo del que queramos ver su contenido.

El script no pretende ser exhaustivo sino un modelo para que cada usuario se construya el suyo propio, haciendo las modificaciones que considere. Su funcionamiento es sencillo, para saber cómo modificar cada diccionario (o hacer un script desde cero) hay que consultar la información sobre el funcionamiento de las [sustituciones en espanso](https://espanso.org/docs/matches/) o cómo funcionan los [hotstrings en autohotkey](https://lexikos.github.io/v2/docs/Hotstrings.htm), dependiendo de la versión del script que vayamos a usar.

A continuación unos ejemplos de los tipos de reemplazo que hace el script:

## Letras griegas y hebreas:

Para escribir letras griegas el intercambio es una letra seguido del sufijo gg, por ejemplo, la cadena agg es intercambiada por \alpha seguido de un espacio, es decir, el símbolo de alfa (minúscula) escrito en LaTeX y luego seguido de un espacio (no un espacio de LaTeX sino una pulsación de la tecla espaciadora).

Las letras mayúsculas van en mayúsculas, es decir que Ggg es intercambiada por \Gamma, etc... Además si una letra tiene una variación ésta se escribe colocando una v delante de la cadena, es decir que vfgg se intercambia por \varphi (seguido de un espacio).

He añadido además algunas letras hebreas de uso común, éstas se escriben con el sufijo hh en vez de gg, es decir que ahh deja el texto \aleph seguido de un espacio.

## Operadores y relaciones:

En general son dos o tres letras (generalmente letras significativas del texto en LaTeX al que reemplazan) seguidas de ñ, por ejemplo la cadena lñ es sustituida por \lim_{} con el cursor entre los corchetes. O por ejemplo sñ que sustituye a \sum_{} dejando el cursor entre el par de corchetes, o iñ que es reemplazada por \int_{} dejando de nuevo el cursor entre los corchetes.

Otros tipos de operadores son por ejemplo cadenas como xx que es sustituida por \times seguido de un espacio, == por \equiv seguido de un espacio, etc... Lo he ido configurando a mi gusto de tal forma que me resulte sencillo recordar los reemplazos y sea rápido de teclear.

## Otro tipo de construcciones:

Por ejemplo los símbolos comúnmente asociados a conjuntos comunes siguen el patrón de letra en mayúsculas repetida, por ejemplo NN por \mathbb{N} o SS por \mathbb{S}, etc... Otras letras comunes de conjuntos no siguen este patrón, por ejemplo Rñ se sustituye por \mathbb{R} y Cñ por \mathbb{C}, eso es para evitar que cadenas como RR o CC que formen parte de palabras comunes en castellano o inglés sean remplazadas.

Funciones comunes utilizan el sufijo ¡ (un signo de exclamación) en vez de ñ, por ejemplo s¡ sustituye a \sin seguido de un espacio, y l¡ sustituye a \log seguido de un espacio, o por ejemplo 1¡ es reemplazado por \mathbf{1}_{} donde el cursor se queda entre los corchetes, otro ejemplo sería fl¡ que sustituye a \lfloor  \rfloor quedando el cursor entre medias. Etc...

También hay sustituciones para construcciones comunes como fñ que es reemplazada por \frac{}{} (con el cursor entre el primer par de corchetes), bñ es remplazada por \binom{}{}, pxL que es sustituida por \partial/\partial x^1,\ldots,\partial/\partial x^n, que representa una base local para campos vectoriales, etc...

También hay sustituciones para etiquetas de bbcode de uso común que se utilizan con el sufijo bb, como por ejemplo bbb que sustituye a [b][/b] o colbb que sustituye [color=][/color], etc. Hay algunas sustituciones específicas para determinadas páginas web como es el foro de rincón matemático: çç para [tex][/tex] (colocándose el cursor entre las etiquetas), y ññ para una sustitución similar para escribir matemáticas en modo \display y centrado.
