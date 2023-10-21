function [CEA] = cea(E, c)
    n = size(c, 2);
    C = sum(c);
    CEA = zeros(1,n);
    if(E > C)
        CEA = c;
        return;
    end  
    
    if(E < eps)
        CEA = zeros(1, n);
        return;
    end    

    alpha = E / n;
    CEA(:) = min(c(:), alpha);
    new_c = c - CEA;
    new_E = E - sum(CEA);
    CEA = CEA + cea(new_E, new_c);
end