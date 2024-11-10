A = [0 1 0 0 0 0;
     0 0 0 0 0 0;
     0 0 0 1 0 0;
     0 0 0 0 0 0;
     0 0 0 0 0 1;
     K3 0 0 0 0 0;];

B = [0 0;
     K1 0;
     0 0;
     0 K2;
     0 0;
     0 0];

Cd = [1 0 0 0 0 0;
      0 1 0 0 0 0;
      0 0 1 0 0 0;
      0 0 0 1 0 0;
      0 0 0 0 0 1]  ;

Dd = [0];

%J = jordan(A);

T = 0.002;

% The biggest jordan miniblock is 4x4, the minimal characteristical
% polynomial therefore becomes A^4 = 0
% Can therefore express the taylor expansion for e^AT as:

Ad = eye(6) + T*A + 1/factorial(2)*T^2*A^2 + 1/factorial(3)*T^3*A^3;

% taking the same approach to finding Bd:

Bd = (T*eye(6) + 1/factorial(2)*A*T^2 + 1/factorial(3)*A^2*T^3 + 1/factorial(4)*A^3*T^4)*B;

load ..\data\lab4\Rd_data\Rd_stable

data_move = measurements(2:6, 10/0.002:45/0.002);
%size(data_move)
%move = zeros(6, 45/0.002-10/0.002 +1);
%size(move)
%move(1:5, :) = data_move;

Rd_move = cov(data_move');

load ..\data\lab4\Rd_data\Rd_on_ground

data_still = measurements(2:6, :);
Rd_still = cov(data_still');

Qd = 1000*eye(6);

x_init = zeros(6, 1);
P_init = zeros(6);





