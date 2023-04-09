function createfigure(XData1, YData1, XData2, YData2, YData3, XData3, YData4, XData4, YData5, XData5, YData6, YData7, XData6, YData8, YData9)
%CREATEFIGURE(XData1, YData1, XData2, YData2, YData3, XData3, YData4, XData4, YData5, XData5, YData6, YData7, XData6, YData8, YData9)
%  XDATA1:  line xdata
%  YDATA1:  line ydata
%  XDATA2:  line xdata
%  YDATA2:  line ydata
%  YDATA3:  line ydata
%  XDATA3:  line xdata
%  YDATA4:  line ydata
%  XDATA4:  line xdata
%  YDATA5:  line ydata
%  XDATA5:  line xdata
%  YDATA6:  line ydata
%  YDATA7:  line ydata
%  XDATA6:  line xdata
%  YDATA8:  line ydata
%  YDATA9:  line ydata

%  由 MATLAB 于 14-Mar-2023 12:02:34 自动生成

% 创建 figure
figure1 = figure;

% 创建 axes
axes1 = axes('Parent',figure1,...
    'Position',[0.142517882689557 0.11 0.762482117310443 0.789696356275304]);

% 创建 line
line(XData1,YData1,'Visible','off','Parent',axes1);

% 创建 hggroup
hggroup1 = hggroup('DisplayName','Valida2 (y1)','Parent',axes1);

% 创建 line
line(XData2,YData2,'Tag','y1','Parent',hggroup1,'LineWidth',2,...
    'Color',[0.941176470588235 0.941176470588235 0.941176470588235]);

% 创建 hggroup
hggroup2 = hggroup('DisplayName','nlarx2: -24.48%','Parent',axes1);

% 创建 line
line(XData2,YData3,'Parent',hggroup2,'LineWidth',2,...
    'Color',[1 0.411764705882353 0.16078431372549]);

% 创建 ylabel
ylabel('y1','HitTest','off','Color',[0.4 0.4 0.4]);

% 取消以下行的注释以保留坐标区的 X 范围
% xlim(axes1,[5000 6000]);
% 取消以下行的注释以保留坐标区的 Y 范围
% ylim(axes1,[-0.015 0.015]);
box(axes1,'on');
% 设置其余坐标区属性
set(axes1,'ContextMenu','XColor',[0.4 0.4 0.4],'YColor',[0.4 0.4 0.4]);
% 创建 legend
legend1 = legend(axes1,'show');
set(legend1,...
    'Position',[0.626490220514208 0.781460852944134 0.2428469277929 0.0923583015256566],...
    'LineWidth',1);

% 创建 axes
axes2 = axes('Parent',figure1,'Position',[0.13 0.11 0.775 0.815]);
axis off

% 创建 line
line(XData3,YData4,'Visible','off','Parent',axes2);

% 创建 hggroup
hggroup3 = hggroup('DisplayName','Valida2 (u1)','Parent',axes2);

% 创建 line
line(XData4,YData5,'Tag','u1','Parent',hggroup3,'LineWidth',2,...
    'Color',[0.941176470588235 0.941176470588235 0.941176470588235]);

% 取消以下行的注释以保留坐标区的 X 范围
% xlim(axes2,[5000 6000]);
% 取消以下行的注释以保留坐标区的 Y 范围
% ylim(axes2,[0 1]);
box(axes2,'on');
% 设置其余坐标区属性
set(axes2,'ContextMenu','XColor',[0.4 0.4 0.4],'YColor',[0.4 0.4 0.4]);
% 创建 axes
axes3 = axes('Parent',figure1,'Position',[0.13 0.11 0.775 0.815]);
axis off

% 创建 line
line(XData5,YData6,'Visible','off','Parent',axes3);

% 创建 hggroup
hggroup4 = hggroup('DisplayName','Valida2 (u2)','Parent',axes3);

% 创建 line
line(XData4,YData7,'Tag','u2','Parent',hggroup4,'LineWidth',2,...
    'Color',[0.941176470588235 0.941176470588235 0.941176470588235]);

% 取消以下行的注释以保留坐标区的 X 范围
% xlim(axes3,[5000 6000]);
% 取消以下行的注释以保留坐标区的 Y 范围
% ylim(axes3,[0 1]);
box(axes3,'on');
% 设置其余坐标区属性
set(axes3,'ContextMenu','XColor',[0.4 0.4 0.4],'YColor',[0.4 0.4 0.4]);
% 创建 axes
axes4 = axes('Parent',figure1,'Position',[0.13 0.11 0.775 0.815]);
axis off

% 创建 line
line(XData6,YData8,'Visible','off','Parent',axes4);

% 创建 hggroup
hggroup5 = hggroup('DisplayName','Valida2 (u3)','Parent',axes4);

% 创建 line
line(XData4,YData9,'Tag','u3','Parent',hggroup5,'LineWidth',2,...
    'Color',[0.941176470588235 0.941176470588235 0.941176470588235]);

% 取消以下行的注释以保留坐标区的 X 范围
% xlim(axes4,[5000 6000]);
% 取消以下行的注释以保留坐标区的 Y 范围
% ylim(axes4,[0 1]);
box(axes4,'on');
% 设置其余坐标区属性
set(axes4,'ContextMenu','XColor',[0.4 0.4 0.4],'YColor',[0.4 0.4 0.4]);
% 创建 ylabel
ylabel('振幅','HitTest','off','Units','pixels','HorizontalAlignment','center',...
    'FontSize',11,...
    'Visible','on');

% 创建 xlabel
xlabel('时间 (秒)','HitTest','off','Units','pixels',...
    'HorizontalAlignment','center',...
    'FontSize',11,...
    'Visible','on');

% 创建 title
title('Simulated Response Comparison','HitTest','off','Units','pixels',...
    'HorizontalAlignment','center',...
    'FontSize',11);

