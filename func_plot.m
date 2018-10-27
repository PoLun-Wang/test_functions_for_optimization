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

switch func_name 
    case 'F1' 
        x=-100:2:100; y=x; %[-100,100]
        
    case 'F2' 
        x=-100:2:100; y=x; %[-10,10]
        
    case 'F3' 
        x=-100:2:100; y=x; %[-100,100]
        
    case 'F4' 
        x=-100:2:100; y=x; %[-100,100]
    case 'F5' 
        x=-200:2:200; y=x; %[-5,5]
    case 'F6' 
        x=-100:2:100; y=x; %[-100,100]
    case 'F7' 
        x=-1:0.03:1;  y=x  %[-1,1]
    case 'F8' 
        x=-500:10:500;y=x; %[-500,500]
    case 'F9' 
        x=-5:0.1:5;   y=x; %[-5,5]    
    case 'F10' 
        x=-20:0.5:20; y=x;%[-500,500]
    case 'F11' 
        x=-500:10:500; y=x;%[-0.5,0.5]
    case 'F12' 
        x=-10:0.1:10; y=x;%[-pi,pi]
    case 'F13' 
        x=-5:0.08:5; y=x;%[-3,1]
    case 'F14' 
        x=-100:2:100; y=x;%[-100,100]
    case 'F15' 
        x=-5:0.1:5; y=x;%[-5,5]
    case 'F16' 
        x=-1:0.01:1; y=x;%[-5,5]
    case 'F17' 
        x=-5:0.1:5; y=x;%[-5,5]
    case 'F18' 
        x=-5:0.06:5; y=x;%[-5,5]
    case 'F19' 
        x=-5:0.1:5; y=x;%[-5,5]
    case 'F20' 
        x=-5:0.1:5; y=x;%[-5,5]        
    case 'F21' 
        x=-5:0.1:5; y=x;%[-5,5]
    case 'F22' 
        x=-5:0.1:5; y=x;%[-5,5]     
    case 'F23' 
        x=-5:0.1:5; y=x;%[-5,5]  
    case 'F24'
        x = 0:0.05:4; y = x;%[0, 4]
    case 'F25'
        x = -10:0.1:10; y = x;%[-10, 10]
    case 'F26'
        x = -10:0.1:10; y = x;%[-10, 10]
    case 'F27'
        x = -2:0.01:2; y = x;%[-2, 2]
    case 'F28'
        x = 0:0.1:10; y = x;%[-1, 1]
    case 'F29'
        x = -0.5:0.005:0.5; y = x;%[-10, 10]
    case 'F30'
        x=-500:2:500; y=x; %[-500,500]
    case 'F31'
        x=-10.24:0.01:10.24; y=x;%[-10.24,10.24]
    case 'F32'
        x=-1:0.01:1; y=x;%[-1,1]
    case 'F33'
        x=-10:0.01:10; y=x;%[-10,10]
    case 'F34'
        x = -4:0.05:4; y=x;
    case 'F35'
        x = -5:0.05:5; y=x;
    case 'F36'
        x = -5:0.05:5; y=x;
    case 'F37'
        x = -10:0.1:10; y=x;
    case 'F38'
        x = -10:0.1:10; y=x;
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

