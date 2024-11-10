A_obs = [0 1 0 0 0;
         0 0 0 0 0;
         0 0 0 1 0;
         0 0 0 0 0;
         K3 0 0 0 0];
 
B_obs = [0 0;
     0 K1;
     0 0;
     K2 0;
     0 0];
 
 C_obs = [1 0 0 0 0;
          0 1 0 0 0;
          0 0 1 0 0;
          0 0 0 1 0;
          0 0 0 0 1];

Rad = 15;
p = [-Rad*exp(-1i*pi/4) -Rad*exp(-1i*pi/8) -Rad -Rad*exp(1i*pi/8) -Rad*exp(1i*pi/4)];
 

L = place(A_obs', C_obs', p)'