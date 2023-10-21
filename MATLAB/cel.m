function [CEL] = cel(E, c)
    n = size(c, 2);
    C = sum(c);
    
    if(E > C)
        CEL = c;
        return;
    end  
    
    if(E < eps)
        CEL = zeros(1, n);
        return;
    end
    C_temp = C;
    c_temp = c;
    while (C_temp - E > 10^(-6))
        beta = (C_temp - E) / n;
        c_temp = max(0, c_temp - beta);
        C_temp = sum(c_temp);
    end
    CEL = c_temp;
    new_c = c - CEL;
    new_E = E - sum(CEL);
    CEL = CEL + cel(new_E, new_c);
end