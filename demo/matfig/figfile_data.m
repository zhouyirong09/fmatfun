%% fetch the values of lines from the .fig file; ��.figͼ����ȡ���ߵ�ֵ
y = cumsum(randn(1,1000));
fig_line = figure; plot(1:1000,y);
saveas(fig_line,'rline.fig','fig');
[line_data] = fig2mat_line('rline.fig');
%% fetch the values of image from the .fig file; �� figure ͼ����ȡ��άͼ���ֵ
img = randn(500,500);
fig_image = figure; imagesc(abs(img));
saveas(fig_image,'rimg.fig','fig');
[Xdata, Ydata, Cdata]= fig2mat_image('rimg.fig');