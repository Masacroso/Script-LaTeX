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
; para activarlo basta pulsar la tecla de la cedilla

Suspend On


; Hotkeys

!ñ::
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

^ç::Send {End}\\[3ex]{Enter}

!-::Send _{{}{}}{left 1}

!`::Send {^}{{}{}}{left 1}



; El orden en el que aparecen las hotstrings en la siguiente lista importa: si una hotstring está contenida dentro de otra entonces la contenida siempre debe ir después

; A partir de aquí todos son hotstrings, y la siguiente línea define las opciones globales para todas ellas

#Hotstring c * ?

#Hotstring Endchars :$()[]{}`n `t



; Hotstrings para aplicaciones

::çç::[tex][/tex]{left 6} ; foro rincón matemático

::ññ::[center][tex]\displaystyle{{}`n`n{}}[/tex][/center]{left 17} ; foro rincón matemático

::,,::$$`n`n$${left 3} ; para MSE

::++::{^}{{}{}}{left 1}

::--::_{{}{}}{left 1}



; Etiquetas de bbcode comunes

::ibb::[i][/i]{left 4}

::bbb::[b][/b]{left 4}

::ubb::[url=][/url]{left 7}

::cbb::[code][/code]{left 7}

::sbb::[size=][/size]{left 8}

::colbb::[color=][/color]{left 9}

::spbb::[spoiler][/spoiler]{left 10}




; Funciones comunes

::ib¡::[]_\mathfrak{{}I{}}{left 14} ; Iverson bracket

::tr¡::\operatorname{{}tr{}}

::sig¡::\operatorname{{}sign{}}

::id¡::\operatorname{{}id{}}

::asq¡::\sqrt[]{{}{}}{left 3}

::p¡::\operatorname{{}proj{}}_{{}{}}{left 1}

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

::l¡::\log{Space}

::e¡::\exp\left(\right){left 7}

::chi¡::\chi_{{}{}}{left 1}

::1¡::\mathbf{{}1{}}_{{}{}}{left 1}

::a¡::\left|\right|{left 7}

::n¡::\left\|\right\|{left 8}

::di¡::\dim{Space}

::d¡::\det{Space}



; Notaciones de conjuntos matemáticos comunes

::Rñ::\mathbb{{}R{}}

::R2::\overline{{}\mathbb {{}R{}}{}}

::R1::\hat{{}\mathbb {{}R{}}{}}

::R+::\mathbb{{}R{}}_{{}\geqslant 0{}}

::R0::\mathbb R\setminus\{{}0\{}}

::Cñ::\mathbb C{Space}

::C1::\hat{{}\mathbb C{}}

::C0::\mathbb C\setminus\{{}0\{}}

::ZZ::\mathbb Z{Space}

::Z0::\mathbb Z\setminus\{{}0\{}}

::QQ::\mathbb Q{Space}

::Q0::\mathbb Q\setminus\{{}0\{}}

::NN::\mathbb N{Space}

::N+::\mathbb N\setminus\{{}0\{}}

::N0::\mathbb N\cup\{{}0\{}}

::N1::\mathbb N\cup\{{}\infty\{}}

::PP::\mathbb P{Space}

::DD::\mathbb D{Space}

::cB::\overline{{}\mathbb B{}}

::BB::\mathbb B{Space}

::HH::\mathbb H{Space}

::SS::\mathbb S{Space}

::KK::\mathbb K{Space}

::FF::\mathbb F{Space}



; Acentos y formatos similares

::opç::\overparen{{}{}}{left 1}

::upç::\underparen{{}{}}{left 1}

::olç::\overline{{}{}}{left 1}

::ulç::\underline{{}{}}{left 1}

::wtç::\widetilde{{}{}}{left 1}

::tç::\tilde{Space}

::whç::\widehat{{}{}}{left 1}

::hç::\hat{Space}

::dddç::\dddot{Space}

::ddç::\ddot{Space}

::dç::\dot{Space}

::avç::\overrightarrow{{}{}}{left 1}

::vç::\vec{Space}

::chç::\check{Space}



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

:*0:imm::\imath

::jmm::\jmath{Space}



; Entornos

::casñ::\begin{{}cases{}}`n`n\end{{}cases{}}{left 12}

::aliñ::\begin{{}align*{}}`n`n\end{{}align*{}}{left 13}

::bmñ::\begin{{}bmatrix{}}`n`n\end{{}bmatrix{}}{left 14}

::Bmñ::\begin{{}Bmatrix{}}`n`n\end{{}Bmatrix{}}{left 14}

::vmñ::\begin{{}vmatrix{}}`n`n\end{{}vmatrix{}}{left 14}

::Vmñ::\begin{{}Vmatrix{}}`n`n\end{{}Vmatrix{}}{left 14}

::pmñ::\begin{{}pmatrix{}}`n`n\end{{}pmatrix{}}{left 14}

::smñ::\left[\begin{{}smallmatrix{}}\end{{}smallmatrix{}}\right]{left 24}

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

::asqñ::\,\square\,{Space}

::sqñ::\square{Space}

::trñ::\triangle{Space}

::ddgñ::\ddagger{Space}

::dgñ::\dagger{Space}

::spñ::\spadesuit{Space}

::diñ::\diamondsuit{Space}

::heñ::\heartsuit{Space}

::clñ::\clubsuit{Space}



; Delimitadores

::(ñ::\left(\right){left 7}

::[ñ::\left[\right]{left 7}

::{{::\{{}\{}}{left 2}

::{ñ::\left\{{}\right\{}}{left 8}

::s<ñ::\left\langle{Space}{Space}\right\rangle{left 14}

::<<ñ::\langle\{!}\langle{Space}{Space}\rangle\{!}\rangle{left 17}

::<ñ::\langle{Space}{Space}\rangle{left 8}

::|ñ::\left .\right|_{{}{}}{left 1}

; ::|b::\bigg|_{{}{}}{left 1}

; ::|B::\Big|_{{}{}}{left 1}



; Flechas

::lrañ::\longrightarrow{Space}

::lmtñ::\longmapsto{Space}

::mtñ::\mapsto{Space}

::toñ::\to{Space}

::Lrañ::\Leftrightarrow{Space}

::ifñ::\iff{Space}

::Rañ::\Rightarrow{Space}

::impñ::\implies{Space}

::Lañ::\Leftarrow{Space}

::imbñ::\impliedby{Space}

::uañ::\uparrow{Space}

::dañ::\downarrow{Space}

::neañ::\nearrow{Space}

::seañ::\searrow{Space}

::incñ::\hookrightarrow{Space}

::injñ::\rightarrowtail{Space}

::bijñ::\leftrightarrow{Space}

::surñ::\twoheadrightarrow{Space}



; Otros formatos

::opñ::\operatorname{{}{}}{left 1}

::ttñ::\mathtt{{}{}}{left 1}

::bbñ::\mathbb{{}{}}{left 1}

::sfñ::\mathsf{{}{}}{left 1}

::bfñ::\mathbf{{}{}}{left 1}

::bsñ::\boldsymbol{{}{}}{left 1}

::rmñ::\mathrm{{}{}}{left 1}

::fkñ::\mathfrak{{}{}}{left 1}

::calñ::\mathcal{{}{}}{left 1}

::scrñ::\mathscr{{}{}}{left 1}

::colñ::{{}\color{{}{}}{{}{}}{}}{left 4}

::ubñ::\underbrace{{}{}}_{{}{}}{left 4}

::obñ::\overbrace{{}{}}{^}{{}{}}{left 4}

::osñ::\overset{{}{}}{{}{}}{left 3}

::stñ::\substack{{}{}}{left 1}

::atñ::\atop{Space}

::qqñ::\qquad{Space}

::qñ::\quad{Space}

::tñ::\text{{}{Space}{Space}{}}{left 2}

::boxñ::\bbox[5px,border:2px solid]{{}{}}{left 1}



; Relaciones y lógica

::/=::\neq{Space}

::iso1::\cong{Space}

::iso2::\simeq{Space}

::erñ::\sim{Space}

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

::appñ::\approx{Space}

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

::pd1::\frac{{}d{}}{{}dx{}}{left 1}

::pd2::\frac{{}\partial{}}{{}\partial x{}}{left 1}

::pd3::\partial{Space}

::Pñ::\Pr{Space}

::Eñ::\operatorname{{}E{}}

::reñ::\operatorname{{}Re{}}

::imñ::\operatorname{{}Im{}}

::mñ::\mid{Space}

::lñ::\lim_{{}{}}{left 1}

::Sñ::\sup_{{}{}}{left 1}

::Iñ::\inf_{{}{}}{left 1}

::vliñ::\varliminf_{{}{}}{left 1}

::liñ::\liminf_{{}\to\infty{}}{left 10}

::vlsñ::\varlimsup_{{}{}}{left 1}

::lsñ::\limsup_{{}\to\infty{}}{left 10}

::squñ::\sqcup{Space}

::uñ::\cup{Space}

::nñ::\cap{Space}

::coñ::{^}\complement{Space}

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

::asñ::\sum{Space}

::sñ::\sum_{{}{}}{left 1}

::oiñ::\oint{Space}

::aiñ::\int{Space}

::iñ::\int_{{}{}}{left 1}

::cpñ::\coprod_{{}{}}{left 1}

::pñ::\prod_{{}{}}{left 1}

::aUñ::\bigcup{Space}

::Uñ::\bigcup_{{}{}}{left 1}

::aNñ::\bigcap{Space}

::Nñ::\bigcap_{{}{}}{left 1}

::aWñ::\bigwedge{Space}

::Wñ::\bigwedge_{{}{}}{left 1}

::Vñ::\bigvee_{{}{}}{left 1}

::wñ::\wedge{Space}

::vñ::\vee{Space}



; Otras construcciones comunes

::f1::\frac1{{}{}}{left 1}

::tfñ::\tfrac{{}{}}{{}{}}{left 3}

::fñ::\frac{{}{}}{{}{}}{left 3}

::bñ::\binom{{}{}}{{}{}}{left 3}

::sN::\{{}\{}}_{{}n\in \mathbb N{}}{left 19}

::sZ::\{{}\{}}_{{}k\in \mathbb Z{}}{left 19}

; ::loo::\lim_{{}\to\infty{}}{left 10}

; ::too::\to\infty{Space}

; ::t0::\to 0{Space}

; ::d0::\searrow 0{Space}

::i0::\int_0{^}{{}{}}{left 1}

::s0::\sum_{{}\geqslant 0{}}{left 12}

::s1::\sum_{{}\geqslant 1{}}{left 12}

::qed::∎



; Listas

::1n::\in\{{}1,\ldots,n\{}}

::0n::\in\{{}0,\ldots,n\{}}

::pxL::\partial/\partial x{^}1,\ldots,\partial/\partial x{^}n

::pyL::\partial/\partial y{^}1,\ldots,\partial/\partial y{^}n

::dxL::dx{^}1,\ldots,dx{^}n

::dyL::dy{^}1,\ldots,dy{^}n

::axL::x_1,\ldots,x_n

::xL::x{^}1,\ldots,x{^}n

::yL::y{^}1,\ldots,y{^}n

::rL::r{^}1,\ldots,r{^}n

::aL::a_1,\ldots,a_n

::bL::b_1,\ldots,b_n

::cL::c_1,\ldots,c_n


