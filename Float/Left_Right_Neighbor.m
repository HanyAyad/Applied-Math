%Right

a=2;
t=5;
g_val= 21/128;
[b,ex] = float2bin(g_val,t);
right_neighbor = g_val + a^(ex-t);

%Left 
a=2;
t=5;
g_val= 21/128;
[b,ex] = float2bin(g_val,t);
left_neighbor = g_val - a^(ex-t);


%Distance
a=2;
t=4;
g_val=9/1024;
[b,ex] = float2bin(g_val,t);
distance = a^(ex-t)
