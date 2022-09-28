function [x,fval,exitflag,output,population,score] = GA(nvars,lb,ub)
%% This is an auto generated MATLAB file from Optimization Tool.

%% Start with the default options
options = gaoptimset;
%% Modify options setting
options = gaoptimset(options,'Display', 'off');
[x,fval,exitflag,output,population,score] = ...
ga(@GAfunc,nvars,[],[],[],[],lb,ub,[],[],options);
