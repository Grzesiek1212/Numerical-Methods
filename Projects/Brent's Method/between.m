function czy = between(x,a,b)
    if b > a
        czy = (x>= a && x <= b);
    else
        czy = (x<= a && x >= b);
    end