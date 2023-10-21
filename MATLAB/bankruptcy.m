function [PROP, CEA, CEL, TAL] = bankruptcy(E, c)
%Proportional Solution (PROP) ---------------------------------------------
    PROP = prop(E, c);
%Constrained Equal Reward Solution (CEA) ----------------------------------
    CEA = cea(E, c);
%Constrained Equal Losses (CEL) -------------------------------------------
    CEL = cel(E, c);
%Talmud Solution (TAL) ----------------------------------------------------
    TAL = talmud(E, c);
end