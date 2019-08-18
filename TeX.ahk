#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

Pause::Suspend

#Hotstring c * ?

; rincónmatemático

::tx::[tex][/tex]{left 6}

::Tx::[center][tex]\displaystyle{{}`n`n{}}[/tex][/center]{left 17}



; bbcode

::ibb::[i][/i]{left 4}

::bbb::[b][/b]{left 4}

::ubb::[url=][/url]{left 7}

::codbb::[code][/code]{left 7}

::colbb::[color=][/color]{left 9}



; entornos comunes

::casñ::\begin{{}cases{}}\end{{}cases{}}{left 11}

::aliñ::\begin{{}align*{}}\end{{}align*{}}{left 12}

::bmñ::\begin{{}bmatrix{}}\end{{}bmatrix{}}{left 13}

::pmñ::\begin{{}pmatrix{}}\end{{}pmatrix{}}{left 13}

::smñ::\begin{{}smallmatrix{}}\end{{}smallmatrix{}}{left 17}

::arrñ::\begin{{}array{}}{{}{}}{{}{}}\end{{}array{}}{left 14}



; símbolos comunes

::0ñ::\emptyset{Space}

::ooñ::\infty{Space}



; letras de conjuntos

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



; letras griegas

::gañ::\alpha{Space}

::gbñ::\beta{Space}

::gBñ::\Beta{Space}

::ggñ::\gamma{Space}

::gGñ::\Gamma{Space}

::gdñ::\delta{Space}

::gDñ::\Delta{Space}

::geñ::\epsilon{Space}

::getñ::\eta{Space}

::gkñ::\kappa{Space}

::grñ::\rho{Space}

::gvrñ::\varrho{Space}

::gthñ::\theta{Space}

::gThñ::\Theta{Space}

::gtñ::\tau{Space}

::gfñ::\phi{Space}

::gvfñ::\varphi{Space}

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

::gpñ::\pi{Space}

::gPñ::\Pi{Space}

::gxñ::\xi{Space}

::gXñ::\Xi{Space}

::gnñ::\nu{Space}

::gmñ::\mu{Space}



; letras hebreas

::hañ::\aleph{Space}

::hbñ::\beth{Space}



; delimitadores

::Pañ::\left(\{!}\{!}\left(\right)\{!}\{!}\right){left 18}

::pañ::\left(\right){left 7}

::Coñ::\left[\{!}\{!}\left[\right]\{!}\{!}\right]{left 18}

::coñ::\left[\right]{left 7}

::Llñ::\left\{{}\{!}\{!}\left\{{}\right\{}}\{!}\{!}\right\{}}{left 20}

::llñ::\left\{{}\right\{}}{left 8}

::anñ::\langle{Space}{Space}\rangle{left 8}

::Anñ::\left\langle{Space}{Space}\right\rangle{left 14}

::flñ::\lfloor{Space}{Space}\rfloor{left 8}

::clñ::\lceil{Space}{Space}\rceil{left 7}

::abñ::\left|\right|{left 7}

::Abñ::\left\|\right\|{left 8}



; flechas

::toñ::\to{Space}

::Toñ::\longrightarrow{Space}

::mtñ::\mapsto{Space}

::ssiñ::\iff{Space}

::Ssiñ::\Leftrightarrow{Space}

::impñ::\implies{Space}

::Impñ::\Rightarrow{Space}

::imbñ::\impliedby{Space}

::Imbñ::\Leftarrow{Space}



; formato

::opñ::\operatorname{{}{}}{left 1}

::bfñ::\mathbf{{}{}}{left 1}

::rmñ::\mathrm{{}{}}{left 1}

::fkñ::\mathfrak{{}{}}{left 1}

::cañ::\mathcal{{}{}}{left 1}

::scñ::\mathscr{{}{}}{left 1}

::ulñ::\underline{{}{}}{left 1}

::colñ::{{}\color{{}{}}{{}{}}{}}{left 4}  ; debe ir antes de olñ

::olñ::\overline{{}{}}{left 1}

::ubñ::\underbrace{{}{}}{{}{}}{left 3}

::obñ::\overbrace{{}{}}{{}{}}{left 3}

::osñ::\overset{{}{}}{{}{}}{left 3}

::bbñ::\bbox[5px,border:2px solid]{{}{}}{left 1}



; construcciones comunes

::fñ::\frac{{}{}}{{}{}}{left 3}

::biñ::\binom{{}{}}{{}{}}{left 3}

::atñ::\atop{Space}

::,ñ::,\,{Space}

::spñ::\,{Space}

::qqñ::\qquad{Space}

::,qñ::,\quad{Space}

::qñ::\quad{Space} ; debe ir después de qqñ y ,qñ

::ññ::\text{{}{Space}{Space}{}}{left 2}

::cdñ::\cdots{Space}

::ldñ::\ldots{Space}

::ddñ::\ddots{Space}

::ltñ::\limits_{{}{}}{left 1}

::nlñ::\nolimits_{{}{}}{left 1}



; relaciones

::lyñ::\,\land\,{Space}

::loñ::\,\lor\,{Space}

::==::\equiv{Space}

::<ñ::\leqslant{Space}

::>ñ::\geqslant{Space}

::ssñ::\subset{Space}

::snñ::\subsetneq{Space}

::Ssñ::\supset{Space}

::Snñ::\supsetneq{Space}

::ndñ::\nmid{Space} ; debe ir antes de dñ

::dñ::\mid{Space}



; operadores pequeños

::ppñ::\partial{Space}

::++::\oplus{Space}

::..::\cdot{Space}

::reñ::\operatorname{{}Re{}}

::imñ::\operatorname{{}Im{}}

::lñ::\lim_{{}{}}{left 1}

::liñ::\liminf_{{}{}}{left 1}

::lsñ::\limsup_{{}{}}{left 1}

::uñ::\cup_{{}{}}{left 1}

::nñ::\cap_{{}{}}{left 1}

::--::\setminus{Space}

::cc::{^}\complement{Space}

::fañ::\forall{Space}

::exñ::\exists{Space}

::nexñ::\nexists{Space}

::xx::\times{Space}



; operadores grandes

::sñ::\sum_{{}{}}{left 1}

::iñ::\int_{{}{}}{left 1}

::pñ::\prod_{{}{}}{left 1}

::Uñ::\bigcup_{{}{}}{left 1}

::Nñ::\bigcap_{{}{}}{left 1}

::+ñ::\bigoplus_{{}{}}{left 1}



; otros

::yñ::{Space}&{Space}

::yy::{Space}&&{Space}

ç::
Send {Right}{Right}
Hotstring("Reset")
return

+ç::
Send {Left}{Left}
Hotstring("Reset")
return

^ç::
Send {End}\\{Enter}
Hotstring("Reset")
return

º::\

$_::
Send _{{}{}}{left 1}
Hotstring("Reset")
return

$^::
Send {^}{{}{}}{left 1}
Hotstring("Reset")
return