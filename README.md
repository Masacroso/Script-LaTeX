Scripts diversos para escribir más rápido código de LaTeX. Básicamente estos scripts sustituyen el tecleo de algunas cadenas de caracteres por otras. Están diseñados para escribir LaTeX muy rápido y esencialmente hacen lo mismo aunque hay pequeñas diferencias.

## Script para autohotkey:

Autohotkey es un programa para correr scripts de sustitución de cadenas de texto y definir hotkeys entre otras cosas, y sólo está disponible para sistemas windows.

El archivo TeX.ahk es el archivo de texto que contiene las sustituciones de cadenas de texto y hotkeys que se han definido, y se puede utilizar sin necesidad de compilarlo en un ejecutable si se tiene instalado autohotkey en el sistema. Para usar el script sin necesidad de tener autohotkey instalado se puede utilizar el script compilado en forma de ejecutable que está contenido en el archivo TeX.zip, simplemente hay que descomprimir este archivo a alguna carpeta y ejecutar el archivo TeX.exe, aparecerá un icono de color verde en la barra de tareas que indica que el programa está en ejecución pero desactivado, para activarlo (o volverlo a desactivar) hay que presionar Alt+Ñ en el teclado. Cuando el programa está activo (es decir, que hace sustituciones de cadenas de texto) el icono pasará a tener color rojo.

## Script para autokey:

Autokey es un programa para correr scripts de sustitución de cadenas de texto y definir hotkeys entre otras cosas, y sólo está disponible para sistemas linux. El archivo latex.zip contiene una carpeta que define un script para autokey. Debe descomprimirse en la carpeta donde autokey guarda las definiciones de las sustituciones y scripts, la cual se puede abrir desde la interfaz del programa y en distribuciones tipo ubuntu es "$HOME/.config/autokey/data/latex/"

## Script para espanso:

Espanso es otro porgrama para definir y ejecutar scripts de sustituciones de cadenas de texto, y aunque no puede definir hotkeys como los programas anteriores su ventaja radica en que funciona en cualquier sistema operativo. Para utilizarlo hay que colocar el archivo TeX.yml en la carpeta "/user" donde espanso guarda los scripts, en sistemas como ubuntu se encuentra en "$HOME/.config/espanso/user/"

En sistemas linux para activar el programa hay que ejecutar el comando "espanso start" en la consola, y para pasar de modo activo a inactivo hay que pulsar dos veces seguidas la tecla ALT.
