clc
clear all
close all
set(0, 'DefaultLineLineWidth', 2); %set thickness of all the lines = 2

exp_data %load the experimental data

% wl_exp=experiment_data(:,1)/1000;
% exp_T_fv1=experiment_data(:,2);
% exp_T_fv2=experiment_data(:,3);
% exp_T_fv5=experiment_data(:,4);
% exp_T_fv10=experiment_data(:,5);
% exp_T_fv14=experiment_data(:,6);

figure('Renderer', 'painters', 'Position', [500 300 428 420]) % starting point and height - width of the frame

set(gca, 'ColorOrder', [0 0 0;0 0 1; 1 0 0;0 0.5 0;0.75, 0.75, 0], 'NextPlot', 'replacechildren');% color of lines in the plot with the given order. remember it is periodic

hAx=gca;
plot(wl_exp,exp_T_fv1,wl_exp,exp_T_fv2,wl_exp,exp_T_fv5,wl_exp,exp_T_fv10,wl_exp,exp_T_fv14)
hAx.XColor = [0 0 0];
hAx.YColor = [0 0 0];
hAx.LineWidth = 1.5;
axis square
hLg=legend('f_v = 1%','f_v = 2%','f_v = 5%','f_v = 10%','f_v = 14%','Location','southeast');
hLg.LineWidth=1.5;
hLg.EdgeColor = [0 0 0];
xlabel('Wavelength, \lambda [nm]')
ylh=ylabel('Transmittance, T_n_h [%]');
ylh.VerticalAlignment	= 'middle'; %if it is not alligned well, try 'top' and 'bottom' too
xlim([300 900])
ylim([40 100] )
set(gca,'FontSize',13)
set(gca,'XMinorTick','on','YMinorTick','on')
box on
saveas(gcf,'fig.png')
saveas(gcf,'fig.emf')
saveas(gcf,'fig.fig')
