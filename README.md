[Espanso](https://espanso.org/) es un programa para definir y ejecutar scripts de sustituciones de cadenas de texto y funciona en sistemas operativos Windows, MacOS y Linux. Con él he diseñado un script para escribir código [TeX](https://es.wikipedia.org/wiki/TeX) muy rápidamente. El diseño del script tiene en consideración la distribución del teclado que se utiliza comúnmente en España e Hispanoamérica.

# Instalación:

En sistemas operativos, excepto en Android, para utilizar el script primero hay que instalar espanso 2.1.8 o posterior en el sistema operativo. Una vez instalado espanso ejecutamos en una terminal del sistema operativo `espanso path`, lo que nos mostrará una pequeña lista de directorios. Vamos al primer directorio de la lista y una vez allí ponemos el archivo TeX.yml de este repositorio en la subcarpeta `/matches` para finalizar la instalación.

En Android se puede usar el script a través de la aplicación [TextToolsPro](https://github.com/lochidev/TextToolsPro).

# Funcionamiento básico del script y ejemplos:

El script está activo por defecto para toda aplicación pero también se puede limitar para que sólo esté activo en determinadas aplicaciones o páginas web, [aquí](https://espanso.org/docs/configuration/app-specific-configurations/) está la documentación detallada para limitar la acción del script. En cualquier caso presionando dos veces seguidas la tecla ALT pausará (o reactivará) espanso, deteniendo o reactivando cualquier script de espanso.

El script lo que hace es sustituir unas cadenas de texto por otras, es decir, un texto que tecleemos es reemplazado por otro, y es en el archivo TeX.yml donde se encuentra el diccionario que define esas sustituciones. Podemos abrir el archivo con cualquier editor de texto y ver lo que contiene para entender qué sustituciones se han definido (después de leer la documentación sobre [definición de sustituciones](https://espanso.org/docs/matches/basics/#static-matches)), o también podemos activar la [barra buscadora de espanso](https://espanso.org/docs/configuration/options/#customizing-the-search-bar) para buscar activamente algún comando de TeX y ver qué secuencia la introduce. Además el contenido del archivo también puede verse directamente en el repositorio de GitHub, sólo hay que clickear sobre él.

El script no pretende ser exhaustivo sino un modelo para que cada usuario se construya el suyo propio, haciendo las modificaciones que considere. Su funcionamiento es sencillo, para saber cómo modificar el diccionario (o hacer un script desde cero) hay que consultar la información sobre [sustituciones](https://espanso.org/docs/matches/basics/).

A continuación unos ejemplos de los tipos de reemplazo que hace el script:

## Letras griegas y hebreas:

Para escribir letras griegas el intercambio es una letra seguido del sufijo `gg`, por ejemplo, la cadena `agg` es intercambiada por `\alpha `, es decir, el símbolo de alfa (minúscula) escrito en TeX y luego seguido de un espacio (no un espacio de TeX sino una pulsación de la tecla espaciadora).

Las letras mayúsculas van en mayúsculas, es decir que `Ggg` es intercambiada por `\Gamma `, etc... Además si una letra tiene una variación ésta se escribe colocando una `v` delante de la cadena, es decir que `vfgg` se intercambia por `\varphi `.

He añadido además algunas letras hebreas de uso común, éstas se escriben con el sufijo `hh` en vez de `gg`, es decir que `ahh` deja el texto `\aleph `.

## Operadores y relaciones:

En general son dos o tres letras (generalmente letras significativas del texto en TeX al que reemplazan) seguidas de `ñ`, por ejemplo la cadena `lñ` es sustituida por `\lim_{}` y deja el cursor entre los corchetes. O por ejemplo `sñ` que sustituye a `\sum_{}`, o `iñ` que es reemplazada por `\int_{}`, etc. Otros tipos de operadores son por ejemplo cadenas como `xx` que es sustituida por `\times `, `==` por `\equiv `, `<=` se transforma en `\leqslant `, `uñ` pasa a ser `\cup `, `Uñ` pasa a ser `\bigcup_{}` dejando el cursor entre los corchetes, etc. En general el cursor queda en la posición óptima para continuar escribiendo.

## Otro tipo de construcciones:

Pulsar `++` produce `^{}` (para insertar superíndices) y `--` produce `_{}` (para insertar subíndices), o pulsar `{{` produce `\{  \}` dejando el cursor en medio, y `<ñ` produce `\langle   \rangle` dejando de nuevo el cursor en medio, etc.

Símbolos comúnmente asociados a conjuntos comunes siguen el patrón de letra en mayúsculas repetida, por ejemplo `NN` por `\mathbb{N}` o `QQ` por `\mathbb{Q}`. Otras letras comunes de conjuntos no siguen este patrón, por ejemplo `RR ` (nótese el espacio al final) se sustituye por `\mathbb{R}` y `CC ` por `\mathbb{C}`, eso es para evitar que cadenas como `RR` o `CC` que formen parte de palabras comunes en castellano o inglés sean remplazadas.

Funciones comunes utilizan el sufijo `¡` (un signo de exclamación) en vez de `ñ`, por ejemplo `s¡` sustituye a `\sin `, y `l¡` sustituye a `\log `, o por ejemplo `1¡` es reemplazado por `\mathbf{1}_{}`, otro ejemplo sería `fl¡` que sustituye a `\lfloor  \rfloor `, etc... También hay sustituciones para construcciones comunes como `fñ` que es reemplazada por `\frac{}{}`, `bñ` es remplazada por `\binom{}{}`, `sN` que genera `\{ _n\}_{n\in\mathbb{N}}` dejando el cursor justo antes del primer guión bajo (tal construcción se usa para denotar sucesiones), etc...

Estos son sólo algunos ejemplos.
