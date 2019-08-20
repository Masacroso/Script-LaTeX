#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


; El script se inicia en modo suspendido gracias a la siguiente línea, para activarlo basta pulsar la tecla de pausa
; o la combinación Alt+Espacio

Suspend On



; Hotkeys

Pause::Suspend

!Space::Suspend

ç::Send {Right}{Right}

+ç::Send {Left}{Left}

^ç::Send {End}\\{Enter}

º::Send \

!-::Send _{{}{}}{left 1}

!`::Send {^}{{}{}}{left 1}



; El orden en el que aparecen las hotstrings en la siguiente lista importa: si una hotstring está contenida dentro de otra entonces la contenida siempre debe ir después

; A partir de aquí todos son hotstrings, y la siguiente línea define las opciones globales para todas ellas

#Hotstring c * ?



; Etiquetas del foro de rincónmatemático y de MSE

::tx::[tex][/tex]{left 6}

::Tx::[center][tex]\displaystyle{{}`n`n{}}[/tex][/center]{left 17}

::,,::$$`n`n$${left 3}



; Etiquetas de bbcode

::ibb::[i][/i]{left 4}

::bbb::[b][/b]{left 4}

::ubb::[url=][/url]{left 7}

::codbb::[code][/code]{left 7}

::colbb::[color=][/color]{left 9}



; Funciones comunes

::vsq¡::\sqrt[]{}}{}}{left 3}

::sq¡::\sqrt{}}{}}{left 1}

::fl¡::\lfloor{Space}{Space}\rfloor{left 8}

::cl¡::\lceil{Space}{Space}\rceil{left 7}

::ct¡::\cot{Space}

::cs¡::\cosec{Space}

::sec¡::\sec{Space}

::as¡::\arcsin{Space}

::ac¡::\arccos{Space}

::at¡::\arctan{Space}

::s¡::\sin{Space}

::c¡::\cos{Space}

::t¡::\tan{Space}

::sh¡::\sinh{Space}

::ch¡::\cosh{Space}

::th¡::\tanh{Space}

::vl¡::\log_{{}{}}{left 1}

::l¡::\ln{Space}

::e¡::\exp\left(\right){left 7}

::1¡::\mathbf{{}1{}}_{{}{}}{left 1}

::a¡::\left|\right|{left 7}

::n¡::\left\|\right\|{left 8}



; Notaciones de conjuntos matemáticos comunes

::RR::\Bbb R{Space}

::R+::\Bbb R_{{}\ge 0{}}{Space}

::R0::\Bbb R\setminus{{}0{}}{Space}

::CC::\Bbb C{Space}

::C0::\Bbb C\setminus{{}0{}}{Space}

::ZZ::\Bbb Z{Space}

::Z0::\Bbb Z\setminus{{}0{}}{Space}

::QQ::\Bbb Q{Space}

::Q0::\Bbb Q\setminus{{}0{}}{Space}

::NN::\Bbb N_{{}> 0{}}{Space}

::N0::\Bbb N_{{}\ge 0{}}{Space}

::PP::\Bbb P{Space}

::DD::\Bbb D{Space}

::BB::\Bbb B{Space}

::SS::\Bbb S{Space}



; Acentos y formatos similares

::ol'::\overline{{}{}}{left 1}

::ul'::\underline{{}{}}{left 1}

::wt'::\widetilde{{}{}}{left 1}

::t'::\tilde{Space}

::wh'::\widehat{{}{}}{left 1}

::h'::\hat{Space}

::ddd'::\dddot{Space}

::dd'::\ddot{Space}

::d'::\dot{Space}

::b'::\bar{Space}

::vv'::\overrightarrow{{}{}}{left 1} ; como variación de "\vec"

::v'::\vec{Space}

::c'::\check{Space}



; Letras griegas

::gañ::\alpha{Space}

::gbñ::\beta{Space}

::gBñ::\Beta{Space}

::ggñ::\gamma{Space}

::gGñ::\Gamma{Space}

::gdñ::\delta{Space}

::gDñ::\Delta{Space}

::vgeñ::\varepsilon{Space}

::geñ::\epsilon{Space}

::getñ::\eta{Space}

::gkñ::\kappa{Space}

::vgrñ::\varrho{Space}

::grñ::\rho{Space}

::vgthñ::\vartheta{Space}

::gthñ::\theta{Space}

::gThñ::\Theta{Space}

::gtñ::\tau{Space}

::vgfñ::\varphi{Space}

::gfñ::\phi{Space}

::gFñ::\Phi{Space}

::gzñ::\zeta{Space}

::glñ::\lambda{Space}

::gLñ::\Lambda{Space}

::gsñ::\sigma{Space}

::gSñ::\Sigma{Space}

::gcñ::\chi{Space}

::goñ::\omega{Space}

::gOñ::\Omega{Space}

::gpsñ::\psi{Space}

::gPsñ::\Psi{Space}

::vgpñ::\varpi{Space}

::gpñ::\pi{Space}

::gPñ::\Pi{Space}

::gxñ::\xi{Space}

::gXñ::\Xi{Space}

::gnñ::\nu{Space}

::gmñ::\mu{Space}

::guñ::\upsilon{Space}

::gUñ::\Upsilon{Space}



; Letras hebreas

::hañ::\aleph{Space}

::hbñ::\beth{Space}

::hgñ::\gimel{Space}

::hdñ::\dalet{Space}



; Entornos

::casñ::\begin{{}cases{}}\end{{}cases{}}{left 11}

::aliñ::\begin{{}align*{}}\end{{}align*{}}{left 12}

::bmñ::\begin{{}bmatrix{}}\end{{}bmatrix{}}{left 13}

::Bmñ::\begin{{}Bmatrix{}}\end{{}Bmatrix{}}{left 13}

::vmñ::\begin{{}vmatrix{}}\end{{}vmatrix{}}{left 13}

::Vmñ::\begin{{}Vmatrix{}}\end{{}Vmatrix{}}{left 13}

::pmñ::\begin{{}pmatrix{}}\end{{}pmatrix{}}{left 13}

::smñ::\begin{{}smallmatrix{}}\end{{}smallmatrix{}}{left 17}

::arrñ::\begin{{}array{}}{{}{}}{{}{}}\end{{}array{}}{left 14}



; Objetos matemáticos comunes

::0ñ::\emptyset{Space}

::ooñ::\infty{Space} ; por su forma semejante

::cdñ::\cdots{Space}

::ldñ::\ldots{Space}

::ddñ::\ddots{Space}

::vdñ::\vdots{Space}



; Delimitadores

::dpañ::\left(\{!}\{!}\left(\right)\{!}\{!}\right){left 18}

::pañ::\left(\right){left 7}

::dcoñ::\left[\{!}\{!}\left[\right]\{!}\{!}\right]{left 18} ; castellanizado

::coñ::\left[\right]{left 7} ; castellanizado

::dllñ::\left\{{}\{!}\{!}\left\{{}\right\{}}\{!}\{!}\right\{}}{left 20} ; castellanizado

::llñ::\left\{{}\right\{}}{left 8} ; castellanizado

::Anñ::\left\langle{Space}{Space}\right\rangle{left 14}

::anñ::\langle{Space}{Space}\rangle{left 8}



; Flechas

::lrañ::\longrightarrow{Space}

::toñ::\to{Space}

::lmtñ::\longmapsto{Space}

::mtñ::\mapsto{Space}

::lrañ::\Leftrightarrow{Space}

::iffñ::\iff{Space}

::Rañ::\Rightarrow{Space}

::impñ::\implies{Space}

::Lañ::\Leftarrow{Space}

::imbñ::\impliedby{Space}

::uañ::\uparrow{Space}

::dañ::\downarrow{Space}

::neañ::\nearrow{Space}

::seañ::\searrow{Space}

::hlañ::\hookleftarrow{Space}

::hrañ::\hookrightarrow{Space}



; Otros formatos

::vopñ::\operatorname*{{}{}}_{{}{}}{left 1}

::opñ::\operatorname{{}{}}{left 1}

::bbñ::\mathbb{{}{}}{left 1}

::sfñ::\mathsf{{}{}}{left 1}

::bfñ::\mathbf{{}{}}{left 1}

::rmñ::\mathrm{{}{}}{left 1}

::fkñ::\mathfrak{{}{}}{left 1}

::cañ::\mathcal{{}{}}{left 1}

::scñ::\mathscr{{}{}}{left 1}

::colñ::{{}\color{{}{}}{{}{}}{}}{left 4}

::ubñ::\underbrace{{}{}}{{}{}}{left 3}

::obñ::\overbrace{{}{}}{{}{}}{left 3}

::osñ::\overset{{}{}}{{}{}}{left 3}

::hlñ::\hline{Space}

::vlñ::\vline{Space}

::yyñ::{Space}&&{Space} ; castellanizado

::yñ::{Space}&{Space} ; castellanizado

::ltñ::\limits_{{}{}}{left 1}

::nlñ::\nolimits_{{}{}}{left 1}

::stñ::\substack{{}{}}{left 1}

::atñ::\atop{Space}

::qqñ::\qquad{Space}

::qñ::\quad{Space}

::tñ::\text{{}{Space}{Space}{}}{left 2}

::boxñ::\bbox[5px,border:2px solid]{{}{}}{left 1}



; Relaciones y lógica

::==::\equiv{Space}

::<=::\leqslant{Space}

::>=::\geqslant{Space}

::lyñ::\,\land\,{Space} ; castellanizado

::loñ::\,\lor\,{Space} ; castellanizado

::<ñ::\prec{Space}

::>ñ::\succ{Space}

::ssñ::\subset{Space}

::snñ::\subsetneq{Space}

::Ssñ::\supset{Space}

::vSnñ::\supsetneq{Space}

::n|ñ::\nmid{Space}

::|ñ::\mid{Space}

::ninñ::\notin{Space}

::inñ::\in{Space}

::apñ::\approx{Space}

::thñ::\therefore{Space}

::bcñ::\because{Space}

::fañ::\forall{Space}

::exñ::\exists{Space}

::nexñ::\nexists{Space}



; Operadores pequeños y otras funciones

::++::\oplus{Space}

::..::\cdot{Space}

::--::\setminus{Space}

::xx::\times{Space}

::nabñ::\nabla{Space}

::vpdñ::\frac{{}\mathrm{{}d{}}{}}{{}\mathrm{{}d{}}{}}{left 1}

::pdñ::\partial{Space}

::reñ::\operatorname{{}Re{}}

::imñ::\operatorname{{}Im{}}

::lñ::\lim_{{}{}}{left 1}

::vliñ::\varliminf_{{}{}}{left 1}

::liñ::\liminf_{{}{}}{left 1}

::vlsñ::\varlimsup_{{}{}}{left 1}

::lsñ::\limsup_{{}{}}{left 1}

::vuñ::\sqcup_{{}{}}{left 1}

::uñ::\cup_{{}{}}{left 1}

::nñ::\cap_{{}{}}{left 1} ; por su forma semejante

::Cñ::{^}\complement{Space}

::bxñ::\boxtimes{Space}

::oxñ::\otimes{Space}

::o.ñ::\odot{Space}

::cñ::\circ{Space}

::dñ::\,\mathrm d{Space}

::wpñ::\wp{Space}



; Operadores grandes

::sñ::\sum_{{}{}}{left 1}

::iiiñ::\iiint_{{}{}}{left 1}

::oiiñ::\oiint{Space}

::iiñ::\iint_{{}{}}{left 1}

::oiñ::\oint{Space}

::iñ::\int_{{}{}}{left 1}

::cpñ::\coprod_{{}{}}{left 1}

::pñ::\prod_{{}{}}{left 1}

::vUñ::\bigcup{Space}

::Uñ::\bigcup_{{}{}}{left 1}

::vNñ::\bigcap{Space}

::Nñ::\bigcap_{{}{}}{left 1}

::+ñ::\bigoplus_{{}{}}{left 1}

::bwñ::\bigwedge_{{}{}}{left 1}

::bvñ::\bigvee_{{}{}}{left 1}

::O.ñ::\bigodot_{{}{}}{left 1}

::Oxñ::\bigotimes_{{}{}}{left 1}



; Otras construcciones comunes

::fñ::\frac{{}{}}{{}{}}{left 3}

::bñ::\binom{{}{}}{{}{}}{left 3}