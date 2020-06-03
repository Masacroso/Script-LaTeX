Script de sustitución de tecleos diseñado para escribir código de LaTeX muy rápidamente. El diseño de los scripts tiene en consideración la distribución del teclado que se utiliza comúnmente en España e Hispanoamérica. 

Hay tres versiones del script, cada una diseñada para un sistema de scripting diferente pero esencialmente todas las versiones tienen la misma funcionalidad, hay una versión para el sistema de scripting de autohotkey, otra para el sistema de scripting de autokey, y una última para el sistema de scripting de espanso.

## Script para autohotkey:

Autohotkey es un programa para correr scripts de sustitución de cadenas de texto y definir hotkeys entre otras cosas, y sólo está disponible para sistemas windows.

El archivo TeX.ahk es el archivo de texto que contiene las sustituciones de cadenas de texto y hotkeys que se han definido, no hace falta descargarlo simplemente se puede utilizar como referencia o modelo. Para usar el script simplemente hay que descargar y descomprimir el archivo TeX.zip y ejecutar el archivo TeX.exe.

Cuando el script se ha iniciado aparecerá un icono de color verde en la barra de tareas que indica que el programa está en ejecución pero inactivo (es decir que no realiza sustituciones). Para activarlo (o volverlo a desactivar) hay que presionar la combinación de teclas `Alt+Ñ`. Cuando el programa está activo (es decir, que hace sustituciones de cadenas de texto) el icono pasará a tener color rojo.

## Script para autokey:

Autokey es un programa para correr scripts de sustitución de cadenas de texto y definir hotkeys entre otras cosas, y sólo está disponible para sistemas linux. 

Para utilizar esta versión del script hay que instalar autokey en el sistema y luego descomprimir el archivo latex.zip en la carpeta donde autokey guarda las definiciones de las sustituciones y scripts, la cual se puede abrir desde la interfaz del programa (y en distribuciones tipo ubuntu es `$HOME/.config/autokey/data/latex/`).

## Script para espanso:

Espanso es otro porgrama para definir y ejecutar scripts de sustituciones de cadenas de texto, y aunque no puede definir hotkeys como los programas anteriores su ventaja radica en que funciona en cualquier sistema operativo. 

Para utilizar el script hay que instalar espanso en el sistema y una vez hecho esto colocar el archivo TeX.yml en la carpeta `/user` donde espanso guarda los scripts. Dependiendo del sistema operativo esta carpeta se encuentra en diferentes lugares, para saber dónde está se debe ejecutar el comando `espanso path` en una terminal del sistema (por ejemplo en sistemas como ubuntu se encuentra en `$HOME/.config/espanso/user/`).

Para pasar de modo activo a inactivo (o viceversa) hay que pulsar dos veces seguidas la tecla ALT.
