function zeros = deker(x0,x1,f)
    
    fxp = f(x0);
    fx = f(x1);
    if(abs(fx)<= abs(fxp))
        b = x1;
        c = x0;
        a = c;
        fa = fxp;
        fb = fx;
    else
        b = x0;
        c = x1;
        a = c;
        fa = fx;
        fb = fxp;
    end

    xk = x0;
    fxk = fxp;
    x = x1;
    info = 0;
    xp = x1;
    if abs(x-xk) < 2
            d = eps * abs(x-xk)/2;
        else
            d = eps;
    end
    while abs(b-c) > 1000 * d
        lam = lfun(b,a,fb,fa); % nowa wartosc z siecznych
        xp1 = xp;
        xp = x;
        r = vfun(lam, b ,c,x,xp,xp1,info);
        x = r(1);
        info = r(2);
        fxp = fx;
        fx = f(x);
        if fxp*fx <= 0
            xk = xp;
            fxk = fxp;
        end
        if(abs(fx) <= abs(fxk))
            a = b;
            b = x;
            c = xk;
            fa = fb;
            fb = fx;
        else
            b = xk;
            c = x;
            a = c;
            fa = fx;
            fb = fxk;
        end

        if abs(x) < 1 % aktualizujemy warunek stopu
                d = eps * abs(x);
            else
                d = eps;
        end
    end
    zeros = b;