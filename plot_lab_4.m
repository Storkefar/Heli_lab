load ..\data\lab4\kalmanfilter\r_move_q_I

time = measurements(1, :);
p_kal = measurements(2, :);
p_dot_kal = measurements(3, :); 
e_kal = measurements(4, :);
e_dot_kal = measurements(5, :);
lam_kal = measurements(6, :);
lam_dot_kal = measurements(7, :);

p_imu = measurements(8, :);
p_dot_imu = measurements(9, :); 
e_imu = measurements(10, :);
e_dot_imu = measurements(11, :);
lam_dot_imu = measurements(12, :);

p_encoder = measurements(13, :);
p_dot_encoder = measurements(14, :); 
e_encoder = measurements(15, :);
e_dot_encoder = measurements(16, :);
lam_encoder = measurements(17, :);
lam_dot_encoder = measurements(18, :);



plot(time, p_kal);
hold on
plot(time, p_dot_kal);
hold on
plot(time, e_kal);
hold on
plot(time, e_dot_kal);
hold on
plot(time, lam_kal);
hold on
plot(time, lam_dot_kal);
hold on

plot(time, p_imu);
hold on
plot(time, p_dot_imu);
hold on
plot(time, e_imu);
hold on
plot(time, e_dot_imu);
hold on
plot(time, lam_dot_imu);
hold on

plot(time, p_encoder);
hold on
plot(time, p_dot_encoder);
hold on
plot(time, e_encoder);
hold on
plot(time, e_dot_encoder);
hold on
plot(time, lam_encoder);
hold on
plot(time, lam_dot_encoder);
hold on

grid on
title('letssgo')
legend("pkal", "pdotkal", "ekal", "edotkal", "lamkal", "lamdotkal", "pimu", "pdotimu", "eimu", "edotimu", "lamdotimu", "pencoder", "pdotencoder", "eencoder", "edotencoder", "lamencoder", "lamdotencoder")
