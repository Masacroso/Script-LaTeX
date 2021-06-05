Script de sustitución de tecleos diseñado para escribir código de LaTeX muy rápidamente. El diseño de los scripts tiene en consideración la distribución del teclado que se utiliza comúnmente en España e Hispanoamérica. 

Hay dos versiones del script, cada uno para un sistema de scripting diferente pero esencialmente ambos scripts tienen la misma funcionalidad, hay una versión para el sistema de scripting de espanso y otra para autohotkey. Actualmente uso únicamente la versión de espanso, ya que puedo utilizarla en varios sistemas operativos diferentes.

***

# Versiones:

## Script para espanso:

[Espanso](https://espanso.org/) es un programa para definir y ejecutar scripts de sustituciones de cadenas de texto, y aunque no puede definir hotkeys como el script de autohotkey su ventaja radica en que funciona en cualquier sistema operativo para ordenadores de sobremesa. 

Para utilizar el script hay que instalar espanso en el sistema operativo y una vez hecho esto colocar el archivo TeX.yml en la carpeta `/user` donde espanso guarda los scripts. Dependiendo del sistema operativo esta carpeta se encuentra en diferentes lugares, para saber dónde está se puede ejecutar el comando `espanso path` en una terminal del sistema (por ejemplo en sistemas como ubuntu se encuentra en `$HOME/.config/espanso/user/`).

Para pasar de modo activo a inactivo (o viceversa) hay que pulsar dos veces seguidas la tecla ALT. Es recomendable editar el archivo TeX.yml colocando arriba de todo una lista de palabras clave que hacen que espanso sólo esté activo cuando determinadas ventanas (con determinadas palabras clave en sus títulos) estén activas, como la ventana de un editor de texto como Typora, o una pestaña del explorador Firefox con un título que contenga la palabra "matemáticas", etc. Para más información consultar [aquí](https://espanso.org/docs/configuration/#application-specific-configurations).

## Script para autohotkey:

[Autohotkey](https://www.autohotkey.com/) es un programa para correr scripts de sustitución de cadenas de texto y definir hotkeys, entre otras cosas, y sólo está disponible para sistemas operativos windows.

El archivo TeX.ahk es el archivo de texto que contiene las sustituciones de cadenas de texto y hotkeys que se han definido, no hace falta descargarlo simplemente se puede utilizar como referencia o modelo. Para usar el script simplemente hay que descargar y descomprimir el archivo TeX.zip y ejecutar el archivo TeX.exe.

Cuando el script se ha iniciado aparecerá un icono de color verde en la barra de tareas que indica que el programa está en ejecución pero inactivo (es decir que no realiza sustituciones). Para activarlo (o volverlo a desactivar) hay que presionar la combinación de teclas `Alt+Ñ`. Cuando el programa está activo (es decir, que hace sustituciones de cadenas de texto) el icono pasará a tener color rojo.

Por comodidad, si se va a usar a diario, es recomendable hacer que el script se active al inicio de sesión, lo cual se puede hacer programando una tarea.

***

# Funcionamiento básico del script y ejemplos:

El script lo que hace es sustituir una cadena de tecleos por otros, por ejemplo si se teclea "agg" entonces esa cadena de texto es sustituida por "\alpha", si se teclea "sñ" esa cadena de texto es sustituida por "\sum_{}" (dejando el cursor entre los corchetes). Entonces los archivos del script lo que contienen es un diccionario que traducen unas pequeñas cadenas de texto por construcciones comunes de LaTeX.

He ido variando el diccionario con el tiempo según he visto que una cadena de sustitución es mejor que otra o más usada, etc. El diccionario es largo, para conocer qué sustituciones se han definido lo mejor es consultar el contenido de cada archivo de la versión del script que estemos usando (el archivo TeX.yml si usamos la versión de espanso o el archivo TeX.ahk si estamos usando la versión de autohotkey, ambos archivos se pueden abrir con cualquier editor de texto) que es donde están contenidas las sustituciones (el contenido de cada archivo puede verse directamente aquí en GitHub, sólo hay que clickear sobre el archivo del que queramos ver su contenido).

El script no pretende ser exhaustivo sino un modelo para que cada usuario se construya el suyo propio, haciendo las modificaciones que quiera. Su funcionamiento es sencillo, para saber cómo modificar cada diccionario (o hacer un script desde cero) hay que consultar la información sobre el funcionamiento de las [sustituciones en espanso](https://espanso.org/docs/matches/) o cómo funcionan los [hotstrings en autohotkey](https://lexikos.github.io/v2/docs/Hotstrings.htm), dependiendo de la versión del script que vayamos a usar.
