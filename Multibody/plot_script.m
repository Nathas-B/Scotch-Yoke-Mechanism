t = out.x_out.Time;
x = squeeze(out.x_out.Data); v = squeeze(out.v_out.Data); a = squeeze(out.a_out.Data);

fig = figure('Color','w','Position',[100 100 700 800]);
subplot(3,1,1); plot(t,x,'b','LineWidth',1.5); grid on
ylabel('x (mm)'); title('Position');
subplot(3,1,2); plot(t,v,'b','LineWidth',1.5); grid on
ylabel('v (mm/s)'); title('Velocity');
subplot(3,1,3); plot(t,a,'b','LineWidth',1.5); grid on
ylabel('a (mm/s^2)'); xlabel('t (s)'); title('Acceleration');
exportgraphics(fig,'kinematics.png','Resolution',300);

writetable(table(t,x,v,a),'kinematics.csv');
