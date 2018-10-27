# README: Test functions for optimization
This is a program that can calculate result of  optimization functions. And this program is built on a program that is the paper's example code. The paper is called "The Whale Optimization Algorithm."

This is the website of author who published WOA: http://www.alimirjalili.com/WOA.html

## Purpose
We only copied and modified 2 programs from original version:
- Get_Functions_details.m
- func_plot.m

The main purpose of these modification is extend multidimensional test functions.

## Collected Functions
1. Sphere Function (F1)
    ![](https://i.imgur.com/eszo4QM.png)
    $f(\textbf{x}) = f(x_1, x_2, ..., x_n) = {\sum_{i=1}^{n} x_i^{2}}$
2. Schwefel Function 2.22 (F2)
    ![](https://i.imgur.com/AIfd951.png)
    $f(\mathbf{x})=f(x_1, ..., x_n)=\sum_{i=1}^{n}|x_i|+\prod_{i=1}^{n}|x_i|$
3. Schwefel Function 1.2 (F3)
4. Schwefel Function 2.21 (F4)
    ![](https://i.imgur.com/23EZYhZ.png)
    $f(\mathbf{x})=f(x_1, ..., x_n)=\max_{i=1,...,n}|x_i| $
5. Rosenbrock Function (F5)
    ![](https://i.imgur.com/mMcwbey.png)
    $f(x, y)=\sum_{i=1}^{n}[b (x_{i+1} - x_i^2)^ 2 + (a - x_i)^2]$
6. Step Function (F6)
7. Quartic Function (F7)
    ![](https://i.imgur.com/oBDx0yX.png)
    $f(\mathbf{x})=f(x_1,...,x_n)=\sum_{i=1}^{n}ix_i^4+\text{random}[0,1)$
8. Schwefel Function (F8)
    ![](https://i.imgur.com/yLjoRde.png)
    $f(\textbf{x}) = f(x_1, x_2, ..., x_n) = 418.9829d -{\sum_{i=1}^{n} x_i sin(\sqrt{|x_i|})}$
9. Rastrigin Function (F9)
    ![](https://i.imgur.com/dompxzf.png)
    $f(x, y)=10n + \sum_{i=1}^{n}(x_i^2 - 10cos(2\pi x_i))$
10. Ackley Function (F10)
    ![](https://i.imgur.com/U7Orb8u.png)
    $f(\textbf{x}) = f(x_1, ..., x_n)= -a.exp(-b\sqrt{\frac{1}{n}\sum_{i=1}^{n}x_i^2})-exp(\frac{1}{n}\sum_{i=1}^{n}cos(cx_i))+ a + exp(1)$
11. Griewank Function (F11)
    ![](https://i.imgur.com/p0HM7Nt.png)
    $f(\textbf{x}) = f(x_1, ..., x_n) = 1 + \sum_{i=1}^{n} \frac{x_i^{2}}{4000} - \prod_{i=1}^{n}cos(\frac{x_i}{\sqrt{i}})$
12. Penalized 1 Function (F12)
13. Penalized 2 Function (F13)
14. Shekel's Foxholes Function (F14)
15. Kowalik's Function (F15)
16. Six-Hump Camel-Back Function (F16)
17. Branin Function (F17)
    ![](https://i.imgur.com/sQuYu39.png)
    ![](https://i.imgur.com/VTUujhj.png)
    $a=1, b=\frac{5.1}{4\pi ^2}, c=\frac{5}{\pi}, r=6, s = 10, t = \frac{1}{8\pi}$
18. Goldstein-Price Function (F18)
    ![](https://i.imgur.com/BMeVtOB.png)
    $f(x,y)=[1 + (x + y + 1)^2(19 − 14x+3x^2− 14y + 6xy + 3y^2)][30 + (2x − 3y)^2(18 − 32x + 12x^2 + 4y − 36xy + 27y^2)]$
19. Hartman's Family (F19)
20. Hartman's Family (F20)
21. Shekel's Family (F21)
22. Shekel's Family (F22)
23. Shekel's Family (F23)
24. Power Sum Function (F24)
	![](https://i.imgur.com/Ix1Wh4X.png)
	$dim = 4$
	$b = [8, 18, 44, 114]$
	$global\ minima\rightarrow x^*=[1, 2, 2, 3]的所有排列組合$
	$f(x^*)=0$

25. Zakharov Function (F25)
	![](https://i.imgur.com/iZf0f2l.png)
	$global\ minima\rightarrow x^*=[0, ..., 0]$
	$f(x^*)=0$

26. Matyas Function (F26)
	![](https://i.imgur.com/Cx7wlvo.png)
	$global\ minima\rightarrow x^*=[0, ..., 0]$
	$f(x^*)=0$

27. Perm Function d, beta (F27)
	![](https://i.imgur.com/yJ4OFO6.png)

28. Vincent Function (F28)
	![](https://i.imgur.com/i0HUKhy.png)
	$f(x)=\sum_{i=1}^n \sin(10 \log(x))$
	
29. Levy03 Function(F29)
	![](https://i.imgur.com/M12DEDT.png)
	$f(x)=\sin^2(\pi y_1)+\sum_{i=1}^{n-1}(y_i-1)^2[1+10\sin^2(\pi y_{i+1})]+(y_n-1)^2$
    
30. Qing Function (F30)
	![](https://i.imgur.com/PXzom1N.png)
    - $f(x)=f(x_1,x_2,...,x_n)=\sum_{i=1}^{n}(x^2-i)^2$
    - n-dimension
    - $b=(\pm\sqrt{i},\pm\sqrt{i},...,\pm\sqrt{i})$
	
31. (F31)
32. (F32)
33. (F33)
34. Salomon Function (F34)
    ![](https://i.imgur.com/NYQRgKO.png)
    $f(\mathbf x)=f(x_1, ..., x_n)=1-cos(2\pi\sqrt{\sum_{i=1}^{D}x_i^2})+0.1\sqrt{\sum_{i=1}^{D}x_i^2}$
35. Styblinski-Tank Function (F35)
    ![](https://i.imgur.com/Ino4VJx.png)
    $f(\textbf{x}) = f(x_1, ..., x_n)= \frac{1}{2}\sum_{i=1}^{n} (x_i^4 -16x_i^2+5x_i)$
36. Xin-She Yang Function (F36)
    ![](https://i.imgur.com/4Zvpd81.png)
    $f(\mathbf x)=f(x_1, ...,x_n)=\sum_{i=1}^{n}\epsilon_i|x_i|^i$
37. Shubert Function (F37)
    ![](https://i.imgur.com/AeYEKHG.png)
    $f(\mathbf{x})=f(x_1, ...,x_n)=\prod_{i=1}^{n}{\left(\sum_{j=1}^5{ cos((j+1)x_i+j)}\right)}$
38. Levy Function (F38)
    ![](https://i.imgur.com/EQ1eIQp.png)
    $f(x)=sin^2(\pi w_1)+\sum^{d-1}_{i=1}(w_i-1)^2[1+10sin^2(\pi w_i+1)]+(w_d-1)^2[1+sin^2(2\pi w_d)]$, where $w_i=1+\frac{x_i-1}{4}$, for all $i=1,\dots,d$
39. (F39)