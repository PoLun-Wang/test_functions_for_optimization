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

% This function containts full information and implementations of the benchmark
% functions in Table 1, Table 2, and Table 3 in the paper

% lb is the lower bound: lb=[lb_1,lb_2,...,lb_d]
% up is the uppper bound: ub=[ub_1,ub_2,...,ub_d]
% dim is the number of variables (dimension of the problem)

function [lb,ub,dim,fobj,bestSol] = Get_Functions_details(F)

switch F
    case 'F1'
        fobj = @F1;
        lb=-100;
        ub=100;
        dim=100;
        bestSol = 0;
        
    case 'F2'
        fobj = @F2;
        lb=-10;
        ub=10;
        dim=100;
        bestSol = 0;
        
    case 'F3'
        fobj = @F3;
        lb=-100;
        ub=100;
        dim=100;
        bestSol = 0;
        
    case 'F4'
        fobj = @F4;
        lb=-100;
        ub=100;
        dim=100;
        bestSol = 0;
        
    case 'F5'
        fobj = @F5;
        lb=-30;
        ub=30;
        dim=100;
        bestSol = 0;
        
    case 'F6'
        fobj = @F6;
        lb=-100;
        ub=100;
        dim=100;
        bestSol = 0;
        
    case 'F7'
        fobj = @F7;
        lb=-1.28;
        ub=1.28;
        dim=100;
        bestSol = 0;
        
    case 'F8'
        fobj = @F8;
        lb=-500;
        ub=500;
        dim=100;
        bestSol = 0;
        
    case 'F9'
        fobj = @F9;
        lb=-5.12;
        ub=5.12;
        dim=100;
        bestSol = 0;
        
    case 'F10'
        fobj = @F10;
        lb=-32;
        ub=32;
        dim=100;
        bestSol = 0;
        
    case 'F11'
        fobj = @F11;
        lb=-600;
        ub=600;
        dim=100;
        bestSol = 0;
        
    case 'F12'
        fobj = @F12;
        lb=-50;
        ub=50;
        dim=100;
        bestSol = 0;
        
    case 'F13'
        fobj = @F13;
        lb=-50;
        ub=50;
        dim=100;
        bestSol = 0;
        
    case 'F14'
        fobj = @F14;
        lb = -100;
        ub = 100;
        dim = 100;
        bestSol = 0;
        
    case 'F15'
        fobj = @F15;
        lb = -100;
        ub = 100;
        dim = 100;
        bestSol = 0;
        
    case 'F16'
        fobj = @F16;
        lb = -100;
        ub = 100;
        dim = 100;
        bestSol = 0;
        
    case 'F17'
        fobj = @F17;
        lb = 0;
        ub = 10;
        dim = 100;
        bestSol = -100;
        
    case 'F18'
        fobj = @F18;
        lb = -100;
        ub = 100;
        dim = 100;
        bestSol = 0;
        
    case 'F19'
        fobj = @F19;
        lb = -500;
        ub = 500;
        dim = 100;
        bestSol = 0;
        
    case 'F20'
        fobj = @F20;
        lb = -500;
        ub = 500;
        dim = 100;
        bestSol = 0;
        
    case 'F21'
        fobj = @F21;
        lb = -1;
        ub = 1;
        dim = 100;
        bestSol = 0;
        
    case 'F22'
        fobj = @F22;
        lb = -10;
        ub = 10;
        dim = 100;
        bestSol = 0;
        
    case 'F23'
        fobj = @F23;
        lb = -100;
        ub = 100;
        dim = 100;
        bestSol = 0;
        
    case 'F24'
        fobj = @F24;
        lb = -5;
        ub = 5;
        dim = 100;
        bestSol = -39.16599*dim;
        
    case 'F25'
        fobj = @F25;
        lb = -5;
        ub = 5;
        dim = 100;
        bestSol = 0;
        
    case 'F26'
        fobj = @F26;
        lb = -10;
        ub = 10;
        dim = 100;
        bestSol = 0;
        
    case 'F27'
        fobj = @F27;
        lb=-65.536;
        ub=65.536;
        dim=2;
        bestSol = 1;
        
    case 'F28'
        fobj = @F28;
        lb=-5;
        ub=5;
        dim=4;
        bestSol = 0.0003;
        
    case 'F29'
        fobj = @F29;
        lb=-5;
        ub=5;
        dim=2;
        bestSol = -1.0316;
        
    case 'F30'
        fobj = @F30;
        lb=[-5,0];
        ub=[10,15];
        dim=2;
        bestSol = 0.398;
        
    case 'F31'
        fobj = @F31;
        lb=-2;
        ub=2;
        dim=2;
        bestSol = 3;
        
    case 'F32'
        fobj = @F32;
        lb=0;
        ub=1;
        dim=3;
        bestSol = -3.86;
        
    case 'F33'
        fobj = @F33;
        lb=0;
        ub=1;
        dim=6;
        bestSol = -3.32;
        
    case 'F34'
        fobj = @F34;
        lb=0;
        ub=10;
        dim=4;
        bestSol = -10.1532;
        
    case 'F35'
        fobj = @F35;
        lb=0;
        ub=10;
        dim=4;
        bestSol = -10.4028;
        
    case 'F36'
        fobj = @F36;
        lb=0;
        ub=10;
        dim=4;
        bestSol = -10.5363;
        
    case 'F37'
        fobj = @F37;
        lb = 0;
        ub = 10;
        dim = 4;
        bestSol = 0;
        
    case 'F38'
        fobj = @F38;
        lb = -10;
        ub = 10;
        dim = 2;
        bestSol = -2.06261218;
        
end
end

% F1 : Sphere Function

function o = F1(x)
o=sum(x.^2, 2);
end

% F2 : Schwefel Function 2.22

function o = F2(x)
o=sum(abs(x), 2)+prod(abs(x), 2);
end

% F3 : Schwefel Function 1.2

function o = F3(x)
dim = size(x,2);
o = 0;
for i=1:dim
    o = o + sum(x(:, 1:i), 2).^2;
end
end

% F4 : Schwefel Function 2.21

function o = F4(x)
o = max(abs(x), [], 2);
end

% F5 : Rosenbrock Function

function o = F5(x)
dim = size(x, 2);
o = sum(100*(x(:, 2:dim)-(x(:, 1:dim-1).^2)).^2+(x(:, 1:dim-1)-1).^2, 2);
end

% F6 :  Step Function

function o = F6(x)
o = sum(floor(x+.5).^2, 2);
end

% F7 : Quartic Function

function o = F7(x)
dim = size(x,2);
nData = size(x, 1);
o = sum((1:dim).*(x.^4), 2)+rand(nData, 1);
end

% F8 : Schwefel Function

function o = F8(x)
d = size(x, 2);
o = 418.9829*d - sum(x .* sin(sqrt(abs(x))), 2);
end

% F9 : Rastrigin Function

function o = F9(x)
dim = size(x,2);
o = sum(x.^2-10*cos(2*pi.*x), 2)+10*dim;
end

% F10 : Ackley Function

function o = F10(x)
dim = size(x,2);
o = -20 * exp(-0.2*sqrt(sum(x.^2, 2)/dim)) - exp(sum(cos(2*pi.*x), 2)/dim) + 20 + exp(1);
end

% F11 : Griewank Function

function o = F11(x)
dim = size(x,2);
o = sum(x.^2, 2)/4000-prod(cos(x./sqrt((1:dim))), 2)+1;
end

% F12 : Penalized 1 Function

function o = F12(x)
dim=size(x,2);
y = 1+(x+1)./4;
o = pi/dim .* (10*sin(pi.*y(:, 1)).^2 + sum((y(:, 1:end-1)-1).^2 .* (1+10.*sin(pi.*y(:, 2:end)).^2), 2) + (y(:, end)-1).^2) + ...
    sum(Ufun(x, 10, 100, 4), 2);
end

% F13 : Penalized 2 Function

function o = F13(x)
dim = size(x,2);
o = 0.1 .* (sin(3*pi*x(:, 1)).^2 + sum((x(:, 1:dim-1)-1).^2 .* (1+sin(3.*pi.*x(:, 2:dim)).^2), 2)+...
    ((x(:, dim)-1).^2) .* (1+sin(2*pi*x(:, dim)).^2)) + sum(Ufun(x,5,100,4), 2);
end

function o=Ufun(x,a,k,m)
o = k.*((x-a).^m).*(x>a)+k.*((-x-a).^m).*(x<(-a));
end

% F14: Zakharov Function

function o = F14(x)
dim = size(x, 2);
sum1 = sum(x.^2, 2);
sum2 = sum(0.5.*(1:dim).*x, 2);
o = sum1+sum2.^2+sum2.^4;
end

% F15: Matyas

function o = F15(x)
term1 = sum(x.^2, 2);
term2 = abs(prod(x, 2));
o = 0.26 .* term1 + 0.48 .* term2;
end

% F16: Perm Function d, beta

function o = F16(x)
b = 0.5;
dim = size(x, 2);
nData = size(x, 1);
o = zeros(nData, 1);

square_dim = (1:dim).^((1:dim)');
temp_x = x ./ (1:dim);

for i = 1:nData
    tx = temp_x(i, :);
    inner = sum((square_dim + b) .* (tx .^((1:dim)')-1), 2)';
    o(i) = sum(inner .^2);
end
end

% F17: Vincent Function

function o = F17(x)
o = -sum(sin(10.*log2(x)), 2);
end

% F18: SineEnvelope Function

function o = F18(x)
dim = size(x, 2);
sum_x = x(:, 2:dim).^2 + x(:, 1:dim-1).^2;
o = sum((sin(sqrt(sum_x)).^2 - 0.5) ./ (0.001*sum_x + 1).^2 + 0.5, 2);
end

% F19: Qing Function

function o = F19(x)
n = size(x, 2);
x2 = x .^2;

scores = 0;
for i = 1:n
    scores = scores + (x2(:, i) - i) .^ 2;
end
o = scores;
end

% F20: Trigonometric02 Function

function o = F20(x)

temp_x = (x - 0.9).^2;

o = 1 + sum( 8*sin(7*temp_x).^2 + 6*sin(14*temp_x).^2 + temp_x,2);

end

% F21: Csendes Function

function o = F21(x)
cost = 0;
n = size(x, 2);
for i = 1:n
    cost = cost + (x(:, i).^6.*(2+sin(1./x(:, i))));
end
o = cost;
end

% F22: Zero Sum Function

function o = F22(x)

zeroSum = sum(x, 2);
if zeroSum == 0
    cost = 0;
else
    cost = 1+(10000*abs(zeroSum)).^0.5;
end
o = cost;

end

% F23: Salomon Function

function o = F23(x)
x2 = x .^ 2;
sumx2 = sum(x2, 2);
sqrtsx2 = sqrt(sumx2);

scores = 1 - cos(2 .* pi .* sqrtsx2) + (0.1 * sqrtsx2);

o = scores;
end

% F24: Styblinski-Tank Function

function o = F24(x)
n = size(x, 2);
scores = 0;
for i = 1:n
    scores = scores + ((x(:, i) .^4) - (16 * x(:, i) .^ 2) + (5 * x(:, i)));
end
scores = 0.5 * scores;

o = scores;
end

% F25: Xin-She Yang Function

function o = F25(x)
n = size(x, 2);

scores = 0;
for i = 1:n
    scores = scores + rand * (abs(x(:, i)) .^ i);
end

o = scores;
end

% F26: Levy Function

function o = F26(x)
d = size(x, 2);

for ii = 1:d
    w(:, ii) = 1 + (x(:, ii) - 1)./4;
end

term1 = (sin(pi*w(:, 1))).^2;
term3 = (w(:, d)-1).^2 .* (1+(sin(2*pi*w(:, d))).^2);

sum = 0;
for ii = 1:(d-1)
    wi = w(:, ii);
    new = (wi-1).^2 .* (1+10*(sin(pi*wi+1)).^2);
    sum = sum + new;
end

o = term1 + sum + term3;
end

% F27 : Shekel's Foxholes Function

function o = F27(x)
aS=[-32 -16 0 16 32 -32 -16 0 16 32 -32 -16 0 16 32 -32 -16 0 16 32 -32 -16 0 16 32;,...
    -32 -32 -32 -32 -32 -16 -16 -16 -16 -16 0 0 0 0 0 16 16 16 16 16 32 32 32 32 32];

for j=1:25
    bS(:, j)=j + sum((x-aS(:,j)').^6, 2);
end
o=(1/500+sum(1./bS, 2)).^(-1);
end

% F28 : Kowalik's Function

function o = F28(x)
aK=[.1957 .1947 .1735 .16 .0844 .0627 .0456 .0342 .0323 .0235 .0246];
bK=[.25 .5 1 2 4 6 8 10 12 14 16];bK=1./bK;
o=sum((aK-((x(:, 1).*(bK.^2+x(:, 2).*bK)) ./ (bK.^2+x(:, 3).*bK+x(:, 4)))).^2, 2);
end

% F29 : Six-Hump Camel-Back Function

function o = F29(x)
o=4.*(x(:, 1) .^ 2) - 2.1*(x(:, 1) .^ 4)+(x(:, 1) .^ 6) ./ 3 + x(:, 1) .* x(:, 2) - 4.*(x(:, 2) .^ 2) + 4.*(x(:, 2).^4);
end

% F30 : Branin Function

function o = F30(x)
o=(x(:, 2) - x(:, 1).^2 .* (5.1/(4*(pi^2))) + 5/pi .* x(:, 1) - 6) .^ 2 + 10*(1-1/(8*pi)) .* cos(x(:, 1))+10;
end

% F31 : Goldstein-Price Function

function o = F31(x)
o=(1+(x(:, 1)+x(:, 2)+1).^2 .* (19-14.*x(:, 1)+3.*x(:, 1).^2-14.*x(:, 2)+6.*x(:, 1).*x(:, 2)+3.*x(:, 2).^2)) .* ...
    (30+(2.*x(:, 1)-3.*x(:, 2)).^2 .* (18-32.*x(:, 1)+12.*(x(:, 1).^2)+48.*x(:, 2)-36.*x(:, 1).*x(:, 2)+27*(x(:, 2).^2)));
end

% F32 : Hartman's Family

function o = F32(x)
aH=[3 10 30;
    .1 10 35;
    3 10 30;
    .1 10 35];
cH=[1 1.2 3 3.2];
pH=[.3689 .117 .2673;
    .4699 .4387 .747;
    .1091 .8732 .5547;
    .03815 .5743 .8828];
o=0;
for i=1:4
    o=o-cH(i).*exp(-(sum(aH(i,:).*((x-pH(i,:)).^2), 2)));
end
end

% F33 : Hartman's Family

function o = F33(x)
aH=[10 3 17 3.5 1.7 8;.05 10 17 .1 8 14;3 3.5 1.7 10 17 8;17 8 .05 10 .1 14];
cH=[1 1.2 3 3.2];
pH=[.1312 .1696 .5569 .0124 .8283 .5886;.2329 .4135 .8307 .3736 .1004 .9991;...
    .2348 .1415 .3522 .2883 .3047 .6650;.4047 .8828 .8732 .5743 .1091 .0381];
o=0;
for i=1:4
    o=o-cH(i).*exp(-(sum(aH(i,:).*((x-pH(i,:)).^2), 2)));
end
end

% F34 : Shekel's Family

function o = F34(x)
aSH=[4 4 4 4;1 1 1 1;8 8 8 8;6 6 6 6;3 7 3 7;2 9 2 9;5 5 3 3;8 1 8 1;6 2 6 2;7 3.6 7 3.6];
cSH=[.1 .2 .2 .4 .4 .6 .3 .7 .5 .5];

nData = size(x,1);

o=zeros(nData,1);
for j = 1:nData
    tempx = x(j,:);
    for i=1:5
        o(j)=o(j)-((tempx-aSH(i,:)) * (tempx-aSH(i,:))'+cSH(i))^(-1);
    end
end
end

% F35 : Shekel's Family

function o = F35(x)
aSH=[4 4 4 4;1 1 1 1;8 8 8 8;6 6 6 6;3 7 3 7;2 9 2 9;5 5 3 3;8 1 8 1;6 2 6 2;7 3.6 7 3.6];
cSH=[.1 .2 .2 .4 .4 .6 .3 .7 .5 .5];


nData = size(x,1);

o=zeros(nData,1);
for j = 1:nData
    tempx = x(j,:);
    for i=1:7
        o(j)=o(j)-((tempx-aSH(i,:)) * (tempx-aSH(i,:))'+cSH(i))^(-1);
    end
end
end

% F36 : Shekel's Family

function o = F36(x)
aSH=[4 4 4 4;1 1 1 1;8 8 8 8;6 6 6 6;3 7 3 7;2 9 2 9;5 5 3 3;8 1 8 1;6 2 6 2;7 3.6 7 3.6];
cSH=[.1 .2 .2 .4 .4 .6 .3 .7 .5 .5];


nData = size(x,1);

o=zeros(nData,1);
for j = 1:nData
    tempx = x(j,:);
    for i=1:10
        o(j)=o(j)-((tempx-aSH(i,:)) * (tempx-aSH(i,:))'+cSH(i))^(-1);
    end
end
end

% F37: Power Sum Function

function o = F37(x)
dim = size(x, 2);
nData = size(x, 1);
b = [8, 18, 44, 114];
o = zeros(nData, 1);
for i = 1:nData
    temp_x = repmat(x(i, :), dim , 1);
    inner = sum(temp_x .^ repmat((1:dim)', 1, dim), 2)';
    o(i) = sum(inner - b).^2;
end
end

% F38: Cross-in-Tray Function

function o = F38(x)
n = size(x, 2);
X = x(:, 1);
Y = x(:, 2);
expcomponent = abs(100 - (sqrt(X .^2 + Y .^2) / pi));
o = -0.0001 * ((abs(sin(X) .* sin(Y) .* exp(expcomponent)) + 1) .^ 0.1);
end

