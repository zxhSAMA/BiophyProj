function Hole_space
format long;
figure ('name','sir-binding:acetylation alpha=rou=1');
subplot(2,2,1);
hold on;
ezplot('(1-y)*(1-x)^1-0.05*y',[0,1],[0,1]);
ezplot('(1-x)*(1-y)*1-(0.15+0.6*y)*x',[0,1],[0,1]);
hold off;
subplot(2,2,2);
hold on;
ezplot('(1-y)*(1-x)^4-0.05*y',[0,1],[0,1]);
ezplot('(1-x)*(1-y)*1-(0.15+0.6*y)*x',[0,1],[0,1]);
hold off;
subplot(2,2,3);
hold on;
ezplot('(1-y)*(1-x)^4-0.1*y',[0,1],[0,1]);
ezplot('(1-x)*(1-y)*1-(0.15+0.6*y)*x',[0,1],[0,1]);
hold off;
subplot(2,2,4);
hold on;
ezplot('(1-y)*(1-x)^4-0.008*y',[0,1],[0,1]);
ezplot('(1-x)*(1-y)*1-(0.15+0.6*y)*x',[0,1],[0,1]);
hold off;
axes_handle = get(gcf, 'children');
axes(axes_handle(4));
title('A: ita/rou=0.05 n=1');
xlabel( 'Acetylation' );
ylabel( 'Sir complex binding' );
axes(axes_handle(3));
title('B: ita/rou=0.05 n=4');
xlabel( 'Acetylation' );
ylabel( 'Sir complex binding' );
axes(axes_handle(2));
title('C: ita/rou=0.1 n=4');
xlabel( 'Acetylation' );
ylabel( 'Sir complex binding' );
axes(axes_handle(1));
title('D: ita/rou=0.008 n=4');
xlabel( 'Acetylation' );
ylabel( 'Sir complex binding' );



