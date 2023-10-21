function [PROP] = prop(E, c)
    n = size(c, 2);
    C = sum(c); 

    if(E > C)
        PROP = c;
        return;
    end     

    if(E < eps)
        PROP = zeros(1, n);
        return;
    end
    
    PROP = zeros(1, n);
    PROP(:) = (E/C) * c(:);
end