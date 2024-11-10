load data\imu_against_encoder\pitch_offset_with_travel_rate\elevationrate_imu_encoder

time = data(1, :);
imu_elevation_rate = data(2, :);
encoder_elevation_rate = data(3, :);

load data\imu_against_encoder\pitch_offset_with_travel_rate\pitchrate_imu_encoder

imu_pitch_rate = data(2, :);
encoder_pitch_rate = data(3, :);

load data\imu_against_encoder\pitch_offset_with_travel_rate\lambda_imu_encoder

imu_lambda_rate = data(2, :);
encoder_lambda_rate = data(3, :);

figure;
subplot(2, 1, 1)
plot(time, imu_pitch_rate, 'Color', [0, 0.4470, 0.7410]);
hold on
plot(time, encoder_pitch_rate, 'Color', [0.8500, 0.3250, 0.0980]);
grid on
legend('imu\_pitch\_rate', 'encoder\_pitch\_rate')

figure;
subplot(2, 1, 1)
plot(time, imu_lambda_rate, 'Color', [0, 0.4470, 0.7410]);
hold on
plot(time, encoder_lambda_rate, 'Color', [0.8500, 0.3250, 0.0980]);
grid on
legend('imu\_elambda\_rate', 'encoder\_lambda\_rate')