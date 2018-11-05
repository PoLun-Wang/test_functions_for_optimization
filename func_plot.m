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

[~,~,~,fobj]=Get_Functions_details(func_name);

switch func_name
    case 'F1'
        x=-100:2:100; y=x;
        
    case 'F2'
        x=-100:2:100; y=x;
        
    case 'F3'
        x=-100:2:100; y=x;
        
    case 'F4'
        x=-100:2:100; y=x;
        
    case 'F5'
        x=-200:2:200; y=x;
        
    case 'F6'
        x=-10:0.1:10; y=x;
        
    case 'F7'
        x=-1:0.03:1;  y=x;
        
    case 'F8'
        x=-500:10:500;y=x;
        
    case 'F9'
        x=-5:0.1:5;   y=x;
        
    case 'F10'
        x=-20:0.5:20; y=x;
        
    case 'F11'
        x=-500:10:500; y=x;
        
    case 'F12'
        x=-10:0.1:10; y=x;
        
    case 'F13'
        x=-5:0.08:5; y=x;
        
    case 'F14'
        x = -10:0.1:10; y = x;
        
    case 'F15'
        x = -10:0.1:10; y = x;
        
    case 'F16'
        x = 0:0.01:1; y = x;
        
    case 'F17'
        x = 0:0.1:10; y = x;
        
    case 'F18'
        x = -20:0.1:20; y = x;
        
    case 'F19'
        x=-2:0.01:2; y=x;
        
    case 'F20'
        x=0:0.01:2; y=x;
        
    case 'F21'
        x=-1:0.01:1; y=x;
        
    case 'F22'
        x=-10:0.1:10; y=x;
        
    case 'F23'
        x = -4:0.05:4; y=x;
        
    case 'F24'
        x = -5:0.05:5; y=x;
        
    case 'F25'
        x = -5:0.05:5; y=x;
        
    case 'F26'
        x = -10:0.1:10; y=x;
        
    case 'F27'
        x=-100:2:100; y=x;
        
    case 'F28'
        x=-5:0.1:5; y=x;
        
    case 'F29'
        x=-1:0.01:1; y=x;
        
    case 'F30'
        x=-5:0.1:5; y=x;
        
    case 'F31'
        x=-2:0.06:2; y=x;
        
    case 'F32'
        x=-5:0.1:5; y=x;
        
    case 'F33'
        x=-5:0.1:5; y=x;
        
    case 'F34'
        x=-5:0.1:5; y=x;
        
    case 'F35'
        x=-5:0.1:5; y=x;
        
    case 'F36'
        x=-5:0.1:5; y=x;
        
    case 'F37'
        x = 0:0.05:4; y = x;
        
    case 'F38'
        x = -10:0.1:10; y=x;
        
end

L=length(x);
f=[];
for i=1:L
    for j=1:L
        if strcmp(func_name,'F28')==1 || strcmp(func_name,'F34')==1 || strcmp(func_name,'F35')==1 || strcmp(func_name,'F36')==1 || strcmp(func_name,'F37')==1
            f(i,j)=fobj([x(i),y(j),0,0]);
        elseif strcmp(func_name,'F32')==1
            f(i,j)=fobj([x(i),y(j),0]);
        elseif strcmp(func_name,'F33')==1
            f(i,j)=fobj([x(i),y(j),0,0,0,0]);
        else
            f(i,j)=fobj([x(i),y(j)]);
        end
    end
end

surfc(x,y,f,'LineStyle','none');

end

