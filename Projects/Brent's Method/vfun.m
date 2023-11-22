function odp = vfun(l,b,c,bk,bk1,bk2,info)
    odp = [0,0];
    h = hfun(b,c);
    m = mfun(b,c);
    war1b = abs(b*eps);
    war2 = l-bk;
    war3 = (between(l,h,m));

    if info == 0 && abs(bk-bk1)>war1b && war2 < abs(bk-bk1)/2 && war3
       odp(1) = l;
       odp(2) = 1;
    elseif abs(l-b)<= war1b
       odp(1) = h;
       odp(2) = 1;
    else
       odp(1) = m;
       odp(2) = 0;
    end

    if info == 1 && abs(bk1-bk2)>war1b && war2 < abs(bk1-bk2)/2 && war3
       odp(1) = l;
       odp(2) = 1;
    elseif abs(l-b)<= war1b
       odp(1) = h;
       odp(2) = 1;
    else
       odp(1) = m;
       odp(2) = 0;
    end