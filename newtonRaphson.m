function [resultado] = newtonRaphson(pol,iter, error,x0)
if iter == 0
    resultado = x0;
    return
end

newPol = polyder(pol);
f = polyval(pol,x0);
diffF = polyval(newPol, x0);
x1 = x0-(f/diffF)
actualError = abs((x1-x0)/x0)
if actualError < error
    resultado = x0;
    return
end

resultado = newtonRaphson(newPol, iter-1, error,x1);


