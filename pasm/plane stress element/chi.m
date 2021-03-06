function P=chi(X,rho)

r=rho(1);
s=rho(2);

x=translrotatetolocal(X);
R=rotation_matrix(X);

G=1/4*[X(1,1)+X(2,1)+X(3,1)+X(4,1);
       X(1,2)+X(2,2)+X(3,2)+X(4,2);
       X(1,3)+X(2,3)+X(3,3)+X(4,3)];

Pl(1)=1/4*(x(1,1)*(1+r)*(1+s)+x(2,1)*(1-r)*(1+s)...
    +x(3,1)*(1-r)*(1-s)+x(4,1)*(1+r)*(1-s));

Pl(2)=1/4*(x(1,2)*(1+r)*(1+s)+x(2,2)*(1-r)*(1+s)...
    +x(3,2)*(1-r)*(1-s)+x(4,2)*(1+r)*(1-s));

Pl(3)=0;

Pg=R*Pl';

P(1)=Pg(1)+G(1);
P(2)=Pg(2)+G(2);
P(3)=Pg(3)+G(3);

end
