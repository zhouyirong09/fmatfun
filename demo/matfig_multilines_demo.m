%% Plot multiple lines and zoom in of the figure
% ����������ͼ��ͼ��Ŵ�
%% Plot multiple lines;����������ͼ
% Use random number to simulate the lines;�������ģ���������
rng(0);
M = 3; N = 1000;
x = 1:N;
y = cumsum(randn(M,N),2);
% All points of the lines are plotted with marker (too dense, the apperance will not look good !!!)
% ���ߵ�ÿһ�㶼���ϱ�� (̫���ˣ�Ӱ��ͼ�������ԣ�������
[fig_rndlines,~,~,plines] = plotfig(x,y,x,y);  % ע��x,y������һάά����ͬ
xlabel('index'); ylabel('amplitude');
legend(plines,{'line 1','line 2','line 3'});
set_fig_fontsize(fig_rndlines,14);

% 1/15 points will be marked; ��ȡ1/15�ĵ���ϱ��
[fig_rndlines,~,~,plines] = plotfig(x,y,x(1:15:end),y(:,1:15:end)); 
xlabel('index'); ylabel('amplitude');
legend(plines,{'line 1','line 2','line 3'});
set_fig_fontsize(fig_rndlines,14);

% Change the line type, marker,color, width; �������͡���ǡ���ɫ���߿�
[fig_rndlines,~,~,plines] = plotfig(x,y,[],[],{'-','-','-'},{'none','o','*'},{[0.0 0.447 0.741],[0.85 0.325 0.098],[0 0 0]},{1.0});
xlabel('index'); ylabel('amplitude');
legend(plines,{'line 1','line 2','line 3'});
set_fig_fontsize(fig_rndlines,14);

%% Zoom in the figure; ��ͼ�ľֲ����зŴ�
% �������ģ��������ñȽϽ�������
rng(0);
M = 3; N = 1500;
x = 1:N;
y = cumsum(rand(M,N),2);
[fig_rndlines,~,~,plines] = plotfig(x,y);
xlabel('index'); ylabel('amplitude');
legend(plines,{'line 1','line 2','line 3'});
set_fig_fontsize(fig_rndlines,14);
% Zoom in and plot in the same figure; �Ŵ���ʾ��ͬһ��ͼ��
copy_and_zoom_ax(fig_rndlines,[],[0.2 0.6 0.35 0.30],[400 600],[200 300],'rectangle','-');

% Zoom in and plot in a new figure; �Ŵ���ʾ���µ�ͼ��
rng(0);
M = 3; N = 1500;
x = 1:N;
y = cumsum(rand(M,N),2);
[fig_rndlines,~,~,plines] = plotfig(x,y);
xlabel('index'); ylabel('amplitude');
legend(plines,{'line 1','line 2','line 3'});
set_fig_fontsize(fig_rndlines,14);
fig_rndlines_new = figure;
copy_and_zoom_ax(fig_rndlines,fig_rndlines_new,[],[400 600],[200 300],'rectangle','-');