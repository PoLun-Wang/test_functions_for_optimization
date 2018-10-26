%_________________________________________________________________________%
%  Whale Optimization Algorithm (WOA) source codes demo 1.0               %
%                                                                         %
%  Developed in MATLAB R2011b(7.13)                                       %
%                                                                         %
%  Author and programmer: Seyedali Mirjalili                              %
%                                                                         %
%         e-Mail: ali.mirjalili@gmail.com                                 %
%                 seyedali.mirjalili@griffithuni.edu.au                   %
%                                                                         %
%       Homepage: http://www.alimirjalili.com                             %
%                                                                         %
%   Main paper: S. Mirjalili, A. Lewis                                    %
%               The Whale Optimization Algorithm,                         %
%               Advances in Engineering Software , in press,              %
%               DOI: http://dx.doi.org/10.1016/j.advengsoft.2016.01.008   %
%                                                                         %
%_________________________________________________________________________%

% This function draw the benchmark functions

function func_plot(func_name)

[lb,ub,dim,fobj]=Get_Functions_details(func_name);
if length(lb) == 1
    x = linspace(lb, ub, 1000);
    y = x;
else
    x = linspace(lb(1), ub(1), 1000);
    y = linspace(lb(2), ub(2), 1000);
end

L=length(x);
f=[];

for i=1:L
    for j=1:L
        if strcmp(func_name,'F15')==1 || strcmp(func_name,'F21')==1 || strcmp(func_name,'F22')==1 || strcmp(func_name,'F23')==1 || strcmp(func_name,'F24')==1
            f(i,j)=fobj([x(i),y(j),0,0]);
        elseif strcmp(func_name,'F19')==1
            f(i,j)=fobj([x(i),y(j),0]);
        elseif strcmp(func_name,'F20')==1
            f(i,j)=fobj([x(i),y(j),0,0,0,0]);
        else
            f(i,j)=fobj([x(i),y(j)]);
        end          
    end
end

surfc(x,y,f,'LineStyle','none');

end

