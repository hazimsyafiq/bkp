tau=1;
A2=3;
% mid1
n11_1=0.12;
np_1=0.019;
% mid2
n11_2=0.019;
np_2=0.021;

% oblast astatik
kv1_oblast = [];
kvv1_oblast = [];
kv2_oblast = [];
kvv2_oblast = [];
kv3_oblast = [];
kvv3_oblast = [];
w_oblast = [];

for w = 0:.01:1
    kv1_calc = w^3*tau/np_1;
    kvv1_calc = (A2*w^2*tau-n11_1)/np_1;
    kv2_calc = w^3*tau/np_2;
    kvv2_calc = (A2*w^2*tau-n11_2)/np_2;
%     kv3_calc = w^3*tau/np_3;
%     kvv3_calc = (A2*w^2*tau-n11_3)/np_3; 
%     w_oblast = [w_oblast; w];
    kv1_oblast = [kv1_oblast; kv1_calc];
    kvv1_oblast = [kvv1_oblast; kvv1_calc];
    kv2_oblast = [kv2_oblast; kv2_calc];
    kvv2_oblast = [kvv2_oblast; kvv2_calc];
%     kv3_oblast = [kv3_oblast; kv3_calc];
%     kvv3_oblast = [kvv3_oblast; kvv3_calc];
end
% hold on
plot(kv1_oblast, kvv1_oblast, kv2_oblast, kvv2_oblast)
% plot(kv3_oblast, kvv3_oblast)
grid on
% hold on
% plot(w_oblast, kv_oblast)
% plor(w_oblast, kvv_oblast)
ylim([0 50])
xlabel('kv')
ylabel("kv'")
legend('режим №1', 'режим №2')
title('Област устойчивости')
