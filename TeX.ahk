#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

Menu, Tray, Icon, %A_ScriptDir%\inactivo.png,,1

; El siguiente bloque de código será utilizado posteriormente
; para generar un borde que nos avisa que los reemplazos están activos

SysGet, m1, Monitor, 1
CustomColor = blue
Gui,  -DPIScale +LastFound +AlwaysOnTop -Caption +ToolWindow
Gui, Color, %CustomColor%
WinSet, TransColor, %CustomColor% 180
WinSet, ExStyle, +0x80020
Gui, Add, Picture, X0 Y0 w%A_ScreenWidth% h%A_ScreenHeight%, %A_ScriptDir%\barras.png


; El script se inicia en modo suspendido gracias a la siguiente línea, 
; para activarlo basta pulsar la tecla de pausa o Alt+Espacio

Suspend On


; Hotkeys

ç::
Suspend
if (A_IsSuspended) {
Gui, Hide
Menu, Tray, Icon, %A_ScriptDir%\inactivo.png,,1
}
else {
Gui, Show, NoActivate
Menu, Tray, Icon, %A_ScriptDir%\activo.png,,1
}
return



!ç::Send {End}\\{Enter}

!-::Send _{{}{}}{left 1}

!`::Send {^}{{}{}}{left 1}



; El orden en el que aparecen las hotstrings en la siguiente lista importa: si una hotstring está contenida dentro de otra entonces la contenida siempre debe ir después

; A partir de aquí todos son hotstrings, y la siguiente línea define las opciones globales para todas ellas

#Hotstring c * ?

#Hotstring Endchars :$()[]{}`n `t



; Hotstrings para aplicaciones

::++::[tex][/tex]{left 6} ; foro rincón matemático

::ññ::[center][tex]\displaystyle{{}`n`n{}}[/tex][/center]{left 17} ; foro rincón matemático

::,,::$$`n`n$${left 3} ; para MSE



; Etiquetas de bbcode comunes

::ibb::[i][/i]{left 4}

::bbb::[b][/b]{left 4}

::ubb::[url=][/url]{left 7}

::cbb::[code][/code]{left 7}

::sbb::[size=][/size]{left 8}

::colbb::[color=][/color]{left 9}



; Funciones comunes

::sig¡::\operatorname{{}sign{}}{Space}

::id¡::\operatorname{{}id{}}{Space}

::vsq¡::\sqrt[]{{}{}}{left 3}

::sq¡::\sqrt{{}{}}{left 1}

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

::v1¡::\chi_{{}{}}{left 1}

::1¡::\mathbf{{}1{}}_{{}{}}{left 1}

::a¡::\left|\right|{left 7}

::n¡::\left\|\right\|{left 8}



; Notaciones de conjuntos matemáticos comunes

::Rñ::\Bbb R{Space}

::RR2::\overline{{}\Bbb R{}}{Space}

::RR1::\hat{{}\Bbb R{}}{Space}

::R+::\Bbb R_{{}\geqslant 0{}}{Space}

::R0::\Bbb R\setminus\{{}0\{}}{Space}

::CCñ::\Bbb C{Space}

::CC1::\hat{{}\Bbb C{}}{Space}

::C0::\Bbb C\setminus\{{}0\{}}{Space}

::ZZ::\Bbb Z{Space}

::Z0::\Bbb Z\setminus\{{}0\{}}{Space}

::QQ::\Bbb Q{Space}

::Q0::\Bbb Q\setminus\{{}0\{}}{Space}

::NN::\Bbb N{Space}

::N+::\Bbb N\setminus\{{}0\{}}{Space}

::N0::\Bbb N\cup\{{}0\{}}{Space}

::N1::\Bbb N\cup\{{}\infty\{}}{Space}

::PP::\Bbb P{Space}

::DD::\Bbb D{Space}

::BB::\Bbb B{Space}

::HH::\Bbb H{Space}

::SS::\Bbb S{Space}

::KK::\Bbb K{Space}

::FF::\Bbb F{Space}



; Acentos y formatos similares

::op'::\overparen{{}{}}{left 1}

::up'::\underparen{{}{}}{left 1}

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

::vv'::\overrightarrow{{}{}}{left 1} ; como variación de v'

::v'::\vec{Space}

::c'::\check{Space}



; Letras griegas

::agg::\alpha{Space}

::bgg::\beta{Space}

::Bgg::\Beta{Space}

::ggg::\gamma{Space}

::Ggg::\Gamma{Space}

::dgg::\delta{Space}

::igg::\iota{Space}

::Dgg::\Delta{Space}

::vegg::\varepsilon{Space}

::egg::\epsilon{Space}

::etgg::\eta{Space}

::kgg::\kappa{Space}

::vrgg::\varrho{Space}

::rgg::\rho{Space}

::vthgg::\vartheta{Space}

::thgg::\theta{Space}

::Thgg::\Theta{Space}

::tgg::\tau{Space}

::vfgg::\varphi{Space}

::fgg::\phi{Space}

::Fgg::\Phi{Space}

::zgg::\zeta{Space}

::lgg::\lambda{Space}

::Lgg::\Lambda{Space}

::psgg::\psi{Space}

::Psgg::\Psi{Space}

::sgg::\sigma{Space}

::Sgg::\Sigma{Space}

::cgg::\chi{Space}

::ogg::\omega{Space}

::Ogg::\Omega{Space}

::vpgg::\varpi{Space}

::pgg::\pi{Space}

::Pgg::\Pi{Space}

::xgg::\xi{Space}

::Xgg::\Xi{Space}

::ngg::\nu{Space}

::mgg::\mu{Space}

::ugg::\upsilon{Space}

::Ugg::\Upsilon{Space}



; Letras hebreas

::ahh::\aleph{Space}

::bhh::\beth{Space}

::ghh::\gimel{Space}

::dhh::\dalet{Space}



; Otras letras

::pmm::\wp{Space}

::lmm::\ell{Space}

:*0:imm::\imath{Space}

::jmm::\jmath{Space}



; Entornos

::casñ::\begin{{}cases{}}`n`n\end{{}cases{}}{left 12}

::aliñ::\begin{{}align*{}}`n`n\end{{}align*{}}{left 13}

::bmñ::\begin{{}bmatrix{}}`n`n\end{{}bmatrix{}}{left 14}

::Bmñ::\begin{{}Bmatrix{}}`n`n\end{{}Bmatrix{}}{left 14}

::vmñ::\begin{{}vmatrix{}}`n`n\end{{}vmatrix{}}{left 14}

::Vmñ::\begin{{}Vmatrix{}}`n`n\end{{}Vmatrix{}}{left 14}

::pmñ::\begin{{}pmatrix{}}`n`n\end{{}pmatrix{}}{left 14}

::smñ::\begin{{}smallmatrix{}}\end{{}smallmatrix{}}{left 17}

::arrñ::\begin{{}array{}}{{}{}}`n`n\end{{}array{}}{left 14}

::CDñ::\require{{}AMScd{}}`n\begin{{}CD{}}`n{Space}@>>>{Space}\\`n@VVV{Space}@VVV\\`n@>>>`n\end{{}CD{}}{left 37}



; Objetos matemáticos comunes y otros símbolos

::btñ::\bullet{Space}

::0ñ::\emptyset{Space} ; por su forma semejante

::ooñ::\infty{Space} ; por su forma semejante

::cdñ::\cdots{Space}

::ldñ::\ldots{Space}

::ddñ::\ddots{Space}

::vdñ::\vdots{Space}

::vsqñ::\,\square\,{Space}

::sqñ::\square{Space}

::trñ::\triangle{Space}

::dagñ::\dagger{Space}

::ddagñ::\ddagger{Space}

::spñ::\spadesuit{Space}

::diñ::\diamondsuit{Space}

::heñ::\heartsuit{Space}

::clñ::\clubsuit{Space}



; Delimitadores

::((ñ::\left(\{!}\{!}\left(\right)\{!}\{!}\right){left 18}

::b(ñ::\big(\big){left 5}

::(ñ::\left(\right){left 7}

::[[ñ::\left[\{!}\{!}\left[\right]\{!}\{!}\right]{left 18}

::b[ñ::\big[\big]{left 5}

::[ñ::\left[\right]{left 7}

::{{ñ::\left\{{}\{!}\{!}\left\{{}\right\{}}\{!}\{!}\right\{}}{left 20}

::b{ñ::\big\{{}\big\{}}{left 6}

::v{ñ::\{{}\{}}{left 2}

::{ñ::\left\{{}\right\{}}{left 8}

::b<ñ::\left\langle{Space}{Space}\right\rangle{left 14}

::<ñ::\langle{Space}{Space}\rangle{left 8}



; Flechas

::lrañ::\longrightarrow{Space}

::lmtoñ::\longmapsto{Space}

::mtoñ::\mapsto{Space}

::toñ::\to{Space}

::Lrañ::\Leftrightarrow{Space}

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

::vopñ::\operatorname*{{}{}}_{{}{}}{left 4}

::opñ::\operatorname{{}{}}{left 1}

::ttñ::\mathtt{{}{}}{left 1}

::bbñ::\mathbb{{}{}}{left 1}

::sfñ::\mathsf{{}{}}{left 1}

::bfñ::\mathbf{{}{}}{left 1}

::bsñ::\boldsymbol{{}{}}{left 1}

::rmñ::\mathrm{{}{}}{left 1}

::fkñ::\mathfrak{{}{}}{left 1}

::cañ::\mathcal{{}{}}{left 1}

::scñ::\mathscr{{}{}}{left 1}

::colñ::{{}\color{{}{}}{{}{}}{}}{left 4}

::ubñ::\underbrace{{}{}}_{{}{}}{left 4}

::obñ::\overbrace{{}{}}{^}{{}{}}{left 3}

::osñ::\overset{{}{}}{{}{}}{left 3}

::stñ::\substack{{}{}}{left 1}

::atñ::\atop{Space}

::qqñ::\qquad{Space}

::qñ::\quad{Space}

::tñ::\text{{}{Space}{Space}{}}{left 2}

::boxñ::\bbox[5px,border:2px solid]{{}{}}{left 1}



; Relaciones y lógica

::=ñ::\neq{Space}

::==::\equiv{Space}

::<=::\leqslant{Space}

::>=::\geqslant{Space}

::lañ::\,\land\,{Space}

::loñ::\,\lor\,{Space}

::ssñ::\subset{Space}

::snñ::\subsetneq{Space}

::Ssñ::\supset{Space}

::Snñ::\supsetneq{Space}

::niñ::\notin{Space}

::inñ::\in{Space}

::apñ::\approx{Space}

::thñ::\therefore\quad{Space}

::bcñ::\because\quad{Space}

::fañ::\forall{Space}

::neñ::\nexists{Space}

::exñ::\exists{Space}

::Tñ::\top{Space}

::Fñ::\bot{Space}



; Operadores pequeños y otras funciones

::..ñ::\cdot{Space}

::*ñ::\star{Space}

::-ñ::\setminus{Space}

::sdñ::\,\triangle\,{Space} ; representación de la diferencia simétrica

::xx::\times{Space}

::nbñ::\nabla{Space}

::vpdñ::\frac{{}\mathrm{{}d{}}{}}{{}\mathrm{{}d{}}{}}{left 1}

::pdñ::\partial{Space}

::reñ::\operatorname{{}Re{}}

::imñ::\operatorname{{}Im{}}

::mñ::\mid{Space}

::lñ::\lim_{{}{}}{left 1}

::Sñ::\sup_{{}{}}{left 1}

::Iñ::\inf_{{}{}}{left 1}

::vliñ::\varliminf_{{}{}}{left 1}

::liñ::\liminf_{{}{}}{left 1}

::vlsñ::\varlimsup_{{}{}}{left 1}

::lsñ::\limsup_{{}{}}{left 1}

::vuñ::\sqcup{Space}

::uñ::\cup{Space} ; por su forma semejante

::nñ::\cap{Space} ; por su forma semejante

::Cñ::{^}\complement{Space}

::bxñ::\boxtimes{Space}

::b+ñ::\boxplus{Space}

::b-ñ::\boxminus{Space}

::b.ñ::\boxdot{Space}

::o+ñ::\oplus{Space}

::oxñ::\otimes{Space}

::o-ñ::\ominus{Space}

::o.ñ::\odot{Space}

::cñ::\circ{Space}

::dñ::\mathop{{}{}}\{!}d{Space}

::ppñ::\perp{Space}



; Operadores grandes

::O+ñ::\bigoplus_{{}{}}{left 1}

::O.ñ::\bigodot_{{}{}}{left 1}

::Oxñ::\bigotimes_{{}{}}{left 1}

::vsñ::\sum{Space}

::sñ::\sum_{{}{}}{left 1}

::oiñ::\oint{Space}

::viñ::\int{Space}

::iñ::\int_{{}{}}{left 1}

::cpñ::\coprod_{{}{}}{left 1}

::pñ::\prod_{{}{}}{left 1}

::vUñ::\bigcup{Space}

::Uñ::\bigcup_{{}{}}{left 1}

::vNñ::\bigcap{Space}

::Nñ::\bigcap_{{}{}}{left 1}

::bwñ::\bigwedge_{{}{}}{left 1}

::bvñ::\bigvee_{{}{}}{left 1}

::wñ::\wedge{Space}

::vñ::\vee{Space}



; Otras construcciones comunes

::vfñ::\frac1{{}{}}{left 1}

::tfñ::\tfrac{{}{}}{{}{}}{left 3}

::fñ::\frac{{}{}}{{}{}}{left 3}

::bñ::\binom{{}{}}{{}{}}{left 3}

::SPñ::\operatorname{{}span{}}{Space}

::NLñ::\operatorname{{}null{}}{Space}

::vLñ::x^1,\ldots,x^n{Space}{left 15}

::Lñ::x_1,\ldots,x_n{Space}{left 15}

::Hñ::$\Box$

::r1ñ::$\mathrm{{}(1){}}${Space}

::r2ñ::$\mathrm{{}(2){}}${Space}

::r3ñ::$\mathrm{{}(3){}}${Space}

::r4ñ::$\mathrm{{}(4){}}${Space}

::r5ñ::$\mathrm{{}(5){}}${Space}

::r6ñ::$\mathrm{{}(6){}}${Space}

::r7ñ::$\mathrm{{}(7){}}${Space}

::r8ñ::$\mathrm{{}(8){}}${Space}

::r9ñ::$\mathrm{{}(9){}}${Space}