

function z=ELD40(x)
[~, D2] = size(x);
  
x(:,1:D2)=x(:,1:D2)*10000;

x=round(x);
x(:,1:D2)=x(:,1:D2)/10000;

% % %   %%%%%%%%%%%%%%40-unit system
aa=[0.00690 0.00690 0.02028 0.00942 0.0114 0.01142 0.00357 0.00492 0.00573 0.00605 0.00515 0.00569 0.00421 0.00752 0.00708 0.00708 0.00313  0.00313 0.00313 0.00313 0.00298  0.00298   0.00284   0.00284 0.00277 0.00277 0.52124 0.52124  0.52124 0.0114  0.0016  0.0016 0.0016  0.0001 0.0001  0.0001  0.0161  0.0161 0.0161  0.00313 ];
bb=[ 6.73 6.73  7.07 8.18  5.35  8.05 8.03  6.99 6.6  12.9  12.9 12.8 12.5 8.84 9.15  9.15  7.97   7.95  7.97  7.97  6.63  6.63  6.66  6.66 7.1 7.1  3.33  3.33 3.33   5.35 6.43 6.43  6.43 8.95  8.62 8.62 5.88  5.88  5.88    7.97 ];
cc=[94.705 94.705  309.54 369.03  148.89  222.33  287.71  391.98  455.76  722.82  635.2  654.69 913.4 1760.4  1728.3  1728.3  647.85  649.69  647.83  647.81   785.96 785.96  794.53  794.53 801.32  801.32  1055.1  1055.1  1055.1  148.89  222.92 222.92 222.92   107.87  116.58  116.58 307.45  307.45   307.45  647.83];
ee=[100 100 100 150 120 100 200 200 200 200 200 200 300 300 300 300 300 300 300 300 300 300 300 300 300 300 120 120 120 120 150 150 150 200 200 200 80 80 80 300];
ff=[0.084 0.084 0.084 0.063 0.077 0.084 0.042 0.042 0.042 0.042 0.042 0.042 0.035 0.035 0.035 0.035 0.035 0.035 0.035 0.035 0.035 0.035 0.035 0.035 0.035 0.035 0.077 0.077 0.077 0.077 0.063 0.063 0.063 0.042 0.042 0.042 0.098 0.098 0.098 0.035];
min=[ 36  36 60 80 47 68 110 135 135 130 94 94 125 125 125 125 220 220 242 242 254 254 254 254 254 254  10 10 10 47 60 60 60 90 90 90 25 25 25 242];
max=[114 114 120 190 97 140 300 300 300 300 375 375 500 500 500 500 500 500 550 550 550 550 550 550 550 550 150 150 150 97 190 190 190 200 200 200 110 110 110 550];
for ii=1:D2
    FF(ii)=(aa(ii)*x(ii)^2)+(bb(ii)*x(ii))+(cc(ii))+abs(ee(ii)*(sin(ff(ii)*(min(ii)-x(ii)))));
end
  F=(sum(FF));
  X=(10500-sum(x));
  kk=0;
  
  z=(F)+100.552*abs(X);
 end
