h1=openfig('Trian_1_test.fig','reuse');
h2=openfig('Trian_1_valid.fig','reuse');
figure

s1=subplot(211);
copyobj(get(get(h1,'Children'),'Children'),s1)
s2=subplot(212);
copyobj(get(get(h2,'Children'),'Children'),s2)