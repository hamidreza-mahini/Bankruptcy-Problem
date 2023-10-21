function [TAL] = talmud(E, c)
    n = size(c, 2);
    C = sum(c);
    TAL = zeros(1, n);
    if(E > C)
        TAL = c;
        return;
    end  
    
    if(E < eps)
        TAL = zeros(1, n);
        return;
    end
    
    if(E <= C/2)
        TAL = cea(E, c/2);
    else
        CEL = cel(E - C/2, c/2);
        TAL(:) = c(:)/2 + CEL(:);
    end
    
end