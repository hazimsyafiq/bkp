tau=1;
% tau_d=1;
% tau=tau_d/tau_a;

d=1;

%statik
w1=(1+n11*tau)/(2*d*tau);
kv1=(tau*w1^2-n11)/np;

%astatik
A1=3;
A2=A1;

w2=(1+n11*tau)/(A1*tau);
kv2=(w2^3*tau)/np;
kvv=(A2*w2^2*tau-n11)/np;

% kvv_min=-n11/np;
% syms kv
% kv2_max = vpa((n11*tau+1)*(np*kv+n11)/(np*tau));
% kv2_max = n11*(n11*tau+1)/(np*tau);
