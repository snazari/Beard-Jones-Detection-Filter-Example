%% Quick hacked up example of a BJDF using the White Speyer eigensystem 
%  assignment appraoch.
A = [0 3 4;
    1 2 3;
    0 2 5]
B = [1;1;1]
C = [0 1 0;0 0 1]
k = place(A,B,[-10,-11,-12])
f1= [-3 1 0]'
f2= [1 -1/2 1/2]'
D = [9 18;7 6;2 9] % Computed by hand using White Speyer approach from 1985 thesis.
pf1 = [1;0]*inv([1;0]'*[1;0])*[1;0]'
pf2 = [-1/2;1/2]*inv([-1/2;1/2]'*[-1/2;1/2])*[-1/2;1/2]'
[V E] = eig(A-D*C)
CV=C*V
pCV=CV*inv(CV'*CV)*CV'
% CF = C*[f1 f2]
% pCF = CF*inv(CF'*CF)*CF'
f = 10
sim('simpleTest')
