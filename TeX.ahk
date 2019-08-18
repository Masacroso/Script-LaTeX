#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

Pause::Suspend

#Hotstring c * ?

; rincónmatemático

::rtt::[tex][/tex]{left 6}

::Rtt::[center][tex]\displaystyle{{}`n`n{}}[/tex][/center]{left 17}



; bbcode

::bbi::[i][/i]{left 4}

::bbb::[b][/b]{left 4}

::bbu::[url=][/url]{left 7}

::bbc::[code][/code]{left 7}

::bbr::[color=][/color]{left 9}



; entornos comunes

::..ca::\begin{{}cases{}}\end{{}cases{}}{left 11}

::..al::\begin{{}align*{}}\end{{}align*{}}{left 12}

::..bm::\begin{{}bmatrix{}}\end{{}bmatrix{}}{left 13}

::..pm::\begin{{}pmatrix{}}\end{{}pmatrix{}}{left 13}

::..sm::\begin{{}smallmatrix{}}\end{{}smallmatrix{}}{left 18}

::..ar::\begin{{}array{}}{{}{}}{{}{}}\end{{}array{}}{left 14}



; operadores grandes

::..s::\sum_{{}{}}{left 1}

::..i::\int_{{}{}}{left 1}

::..pr::\prod_{{}{}}{left 1}

::..u::\bigcup_{{}{}}{left 1}

::..n::\bigcap_{{}{}}{left 1}

::..+::\bigoplus_{{}{}}{left 1} ; debe ir antes de .+



; operadores pequeños

::.pd::\partial{Space}

::.+::\oplus{Space}

::.*::\cdot{Space}

::.re::\operatorname{{}Re{}}

::.im::\operatorname{{}Im{}}

::.lm::\lim_{{}{}}{left 1}

::.li::\liminf_{{}{}}{left 1}

::.ls::\limsup_{{}{}}{left 1}

::.un::\cup_{{}{}}{left 1}

::.in::\cap_{{}{}}{left 1}

::.-::\setminus{Space}

::.CC::{^}\complement{Space}

::.fa::\forall{Space}

::.ex::\exists{Space}

::.ne::\nexists{Space}

::.x::\times{Space}



; relaciones

::.ly::\,\land\,

::.lo::\,\lor\,

::.=::\equiv{Space}

::.<::\leqslant{Space}

::.>::\geqslant{Space}

::.ss::\subset{Space}

::.sn::\subsetneq{Space}

::.Ss::\supset{Space}

::.Sn::\supsetneq{Space}

::.di::\mid{Space}

::.nd::\nmid{Space}



; construcciones comunes

::.fr::\frac{{}{}}{{}{}}{left 3}

::.bi::\binom{{}{}}{{}{}}{left 3}

::.at::\atop{Space}

::.sp::,\,{Space}

::.q::,\quad{Space}

::.tt::\text{{}{Space}{Space}{}}{left 2}

::.cd::\cdots{Space}

::.ld::\ldots{Space}

::.dd::\ddots{Space}

::.lt::\limits_{{}{}}{left 1}

::.nl::\nolimits_{{}{}}{left 1}



; símbolos comunes

::.es::\emptyset{Space}

::.oo::\infty{Space}



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

::gga::\alpha{Space}

::ggb::\beta{Space}

::ggB::\Beta{Space}

::ggg::\gamma{Space}

::ggG::\Gamma{Space}

::ggd::\delta{Space}

::ggD::\Delta{Space}

::gge::\epsilon{Space}

::ggh::\eta{Space}

::ggk::\kappa{Space}

::ggr::\rho{Space}

::gvr::\varrho{Space}

::ggt::\theta{Space}

::ggT::\Theta{Space}

::gt::\tau{Space} ; esta línea debe ir después de ggt

::ggf::\phi{Space}

::gvf::\varphi{Space}

::ggF::\Phi{Space}

::ggz::\zeta{Space}

::ggl::\lambda{Space}

::ggL::\Lambda{Space}

::ggs::\sigma{Space}

::ggS::\Sigma{Space}

::ggc::\chi{Space}

::ggo::\omega{Space}

::ggO::\Omega{Space}

::ggp::\psi{Space}

::ggP::\Psi{Space}

::gp::\pi{Space} ; esta línea debe ir después de ggp

::gP::\Pi{Space} ; esta línea debe ir después de ggP

::ggx::\xi{Space}

::ggX::\Xi{Space}

::ggn::\nu{Space}

::ggm::\mu{Space}



; letras hebreas

::hha::\aleph{Space}

::hhb::\beth{Space}



; delimitadores

::.pa::\left(\right){left 7}

::.Pa::\left(\{!}\{!}\left(\right)\{!}\{!}\right){left 18}

::.co::\left[\right]{left 7}

::.Co::\left[\{!}\{!}\left[\right]\{!}\{!}\right]{left 18}

::.ll::\left\{{}\right\{}}{left 8}

::.Ll::\left\{{}\{!}\{!}\left\{{}\right\{}}\{!}\{!}\right\{}}{left 20}

::.an::\langle{Space}{Space}\rangle{left 8}

::.An::\left\langle{Space}{Space}\right\rangle{left 14}

::.fl::\lfloor{Space}{Space}\rfloor{left 8}

::.cl::\lceil{Space}{Space}\rceil{left 7}

::.ab::\left|\right|{left 7}

::.Ab::\left\|\right\|{left 8}



; flechas

::.to::\to{Space}

::.To::\longrightarrow{Space}

::.mt::\mapsto{Space}

::.ii::\iff{Space}

::.Ii::\Leftrightarrow{Space}

::.ip::\implies{Space}

::.Ip::\Rightarrow{Space}

::.ib::\impliedby{Space}

::.Ib::\Leftarrow{Space}



; formato

::.op::\operatorname{{}{}}{left 1}

::.bf::\mathbf{{}{}}{left 1}

::.rm::\mathrm{{}{}}{left 1}

::.fk::\mathfrak{{}{}}{left 1}

::.ca::\mathcal{{}{}}{left 1}

::.sc::\mathscr{{}{}}{left 1}

::.ul::\underline{{}{}}{left 1}

::.ol::\overline{{}{}}{left 1}

::.ub::\underbrace{{}{}}{{}{}}{left 3}

::.ob::\overbrace{{}{}}{{}{}}{left 3}

::.os::\overset{{}{}}{{}{}}{left 3}

::.cc::{{}\color{{}{}}{{}{}}{}}{left 4}

::.bb::\bbox[5px,border:2px solid]{{}{}}{left 1}



; otros

::yy::\,&\,{Space}

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