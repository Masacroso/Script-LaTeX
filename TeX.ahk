#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; el orden de las secuencias importa: si una secuencia está contenida dentro de otra entonces la contenida siempre debe ir después

Suspend On

Pause::Suspend

!Space::Suspend

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

::Bmñ::\begin{{}Bmatrix{}}\end{{}Bmatrix{}}{left 13}

::vmñ::\begin{{}vmatrix{}}\end{{}vmatrix{}}{left 13}

::Vmñ::\begin{{}Vmatrix{}}\end{{}Vmatrix{}}{left 13}

::pmñ::\begin{{}pmatrix{}}\end{{}pmatrix{}}{left 13}

::smñ::\begin{{}smallmatrix{}}\end{{}smallmatrix{}}{left 17}

::arrñ::\begin{{}array{}}{{}{}}{{}{}}\end{{}array{}}{left 14}



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



; letras hebreas

::hañ::\aleph{Space}

::hbñ::\beth{Space}

::hgñ::\gimel{Space}

::hdñ::\dalet{Space}



; símbolos comunes

::0ñ::\emptyset{Space}

::ooñ::\infty{Space}

::psñ::\wp{Space}

::1ñ::\mathbf{{}1{}}_{{}{}}{left 1}



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

::mTñ::\longmapsto{Space}

::ssiñ::\iff{Space}

::Ssiñ::\Leftrightarrow{Space}

::impñ::\implies{Space}

::Impñ::\Rightarrow{Space}

::imbñ::\impliedby{Space}

::Imbñ::\Leftarrow{Space}

::upñ::\uparrow{Space}

::doñ::\downarrow{Space}

::neañ::\nearrow{Space}

::seañ::\searrow{Space}

::hlañ::\hookleftarrow{Space}

::hrañ::\hookrightarrow{Space}



; formato

::opñ::\operatorname{{}{}}{left 1}

::bbñ::\mathbb{{}{}}{left 1}

::sfñ::\mathsf{{}{}}{left 1}

::bfñ::\mathbf{{}{}}{left 1}

::rmñ::\mathrm{{}{}}{left 1}

::fkñ::\mathfrak{{}{}}{left 1}

::cañ::\mathcal{{}{}}{left 1}

::scñ::\mathscr{{}{}}{left 1}

::ulñ::\underline{{}{}}{left 1}

::colñ::{{}\color{{}{}}{{}{}}{}}{left 4}

::olñ::\overline{{}{}}{left 1}

::ubñ::\underbrace{{}{}}{{}{}}{left 3}

::obñ::\overbrace{{}{}}{{}{}}{left 3}

::osñ::\overset{{}{}}{{}{}}{left 3}

::boxñ::\bbox[5px,border:2px solid]{{}{}}{left 1}



; acentos

::wt'::\widetilde{{}{}}{left 1}

::t'::\tilde{Space}

::wh'::\widehat{{}{}}{left 1}

::h'::\hat{Space}

::ddd'::\dddot{Space}

::dd'::\ddot{Space}

::d'::\dot{Space}

::b'::\bar{Space}

::vv'::\overrightarrow{{}{}}{left 1}

::v'::\vec{Space}

::c'::\check{Space}



; construcciones comunes

::fñ::\frac{{}{}}{{}{}}{left 3}

::vsqñ::\sqrt[]{}}{}}{left 3}

::sqñ::\sqrt{}}{}}{left 1}

::biñ::\binom{{}{}}{{}{}}{left 3}

::atñ::\atop{Space}

::spñ::\,{Space}

::qqñ::\qquad{Space}

::qñ::\quad{Space}

::ññ::\text{{}{Space}{Space}{}}{left 2}

::cdñ::\cdots{Space}

::ldñ::\ldots{Space}

::ddñ::\ddots{Space}

::vdñ::\vdots{Space}

::ltñ::\limits_{{}{}}{left 1}

::nlñ::\nolimits_{{}{}}{left 1}

::stñ::\substack{{}{}}{left 1}


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

::n/ñ::\nmid{Space}

::/ñ::\mid{Space}

::ninñ::\notin{Space}

::inñ::\in{Space}

::apñ::\approx{Space}

::thñ::\therefore{Space}

::bcñ::\because{Space}



; operadores pequeños

::nabñ::\nabla{Space}

::vpdñ::\frac{{}\mathrm{{}d{}}{}}{{}\mathrm{{}d{}}{}}{left 1}

::pdñ::\partial{Space}

::++::\oplus{Space}

::..::\cdot{Space}

::reñ::\operatorname{{}Re{}}

::imñ::\operatorname{{}Im{}}

::lñ::\lim_{{}{}}{left 1}

::vliñ::\varliminf_{{}{}}{left 1}

::liñ::\liminf_{{}{}}{left 1}

::vlsñ::\varlimsup_{{}{}}{left 1}

::lsñ::\limsup_{{}{}}{left 1}

::vuñ::\sqcup_{{}{}}{left 1}

::uñ::\cup_{{}{}}{left 1}

::nñ::\cap_{{}{}}{left 1}

::--::\setminus{Space}

::cc::{^}\complement{Space}

::fañ::\forall{Space}

::exñ::\exists{Space}

::nexñ::\nexists{Space}

::xx::\times{Space}

::bxñ::\boxtimes{Space}

::oxñ::\otimes{Space}

::o.ñ::\odot{Space}

::cñ::\circ{Space}



; operadores grandes

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

::lYñ::\bigwedge_{{}{}}{left 1}

::lOñ::\bigvee_{{}{}}{left 1}

::O.ñ::\bigodot_{{}{}}{left 1}

::Oxñ::\bigotimes_{{}{}}{left 1}



; otros

::,,::$$`n`n$${left 3}

::hhñ::\hline{Space}

::vvñ::\vline{Space}

::yñ::{Space}&{Space}

::yy::{Space}&&{Space}

ç::Send {Right}{Right}

+ç::Send {Left}{Left}

^ç::Send {End}\\{Enter}

º::Send \

!-::Send _{{}{}}{left 1}

!`::Send {^}{{}{}}{left 1}