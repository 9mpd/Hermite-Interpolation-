Copyright (c) 2021, 9mpd
All rights reserved.

This source code is licensed under the MIT license found in the
LICENSE file in the root directory of this source tree.

function Ai = Herm_A(T, i, N)
% A supporting function to calculate Hermite interpolating polynomaial
    syms x A(x) Li(x) Diff(x)
    
    Li(x) = LagPoly(T, i, N);
    Diff(x) = diff(Li(x));
    Di = subs(Diff(x),x,T{i,1});
    A(x) = (1 - 2*(x - T{i,1})*Di)*Li(x)*Li(x)*T{i,2};
    Ai = A(x);
end
