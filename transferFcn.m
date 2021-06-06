WH = tf(1, [tau 1]);
W2 = tf(np, [1 n11]);

% statik
Wz_statik_3 = feedback(kv1*WH*W2,1);

% astatik
W_integrator = tf(1, [1 0]);
W1H2 = W_integrator*WH*W2;

s=tf('s');
Woc = kvv*s;
% Woc = tf([kvv 0], [0.01 1]);
% Woc = tf(0);

Wp_astatik = feedback(W1H2, Woc);
Wz_astatik_3 = feedback(kv2*Wp_astatik, 1);

% bode(Wz_astatik_1, 'r', Wz_astatik_2, 'g', Wz_astatik_3,'b--'), legend('режим №1','режим №2', 'режим №3'), grid on

% step(Wz_astatik, 100)
% rlocus(Wp)
% step(Wz);
% bode(Wz_astatik), grid on
