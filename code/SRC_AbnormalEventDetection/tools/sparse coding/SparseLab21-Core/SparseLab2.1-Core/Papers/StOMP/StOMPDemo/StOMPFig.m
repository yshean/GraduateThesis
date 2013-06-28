function StOMPFig(num)% StOMPFig -- callback implementing functions of StOMPDemoglobal StOMPFIGNUMStOMPInitif 2 <= num & num <= 18 ,    nihil = ~exist('StOMPFIGNUM');    if ~nihil,        empty = isempty(StOMPFIGNUM);    else        empty = 1;    end    if ~empty,        nil   = StOMPFIGNUM == 0;    else        nil   = 1;    end    if nil,        StOMPInit    end    figname = sprintf('StOMPFigure%g',num);    clc; home; help(figname);    eval(figname);    RegisterPlot(figname,'{R}');    drawnow;    StOMPFIGNUM = num;elseif num==19,   % change default settings    clc; home    disp('There Are No Defaults to CHANGE');elseif num==20,   %run all figures    StOMPInit    for num=2:18,        figname = sprintf('StOMPFigure%g',num);        eval(figname);        RegisterPlot(figname,'{R}');        clc; home; help(figname);        drawnow;        StOMPFIGNUM = num;    endelse    disp('Bizarre argument in StOMPFig')    disp(sprintf('num =%g',num))end    %% Copyright (c) 2006. Victoria Stodden and David Donoho%  %% Part of SparseLab Version:100% Created Tuesday March 28, 2006% This is Copyrighted Material% For Copying permissions see COPYING.m% Comments? e-mail sparselab@stanford.edu%