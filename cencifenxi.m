disp('������׼����жϾ���A(n��)');
A=input('A=');
[n,n]=size(A);
[V,D]=eig(A);%�����������������ֵ
            %����������ֵ��������Ӧ����������
tempNum=D(1,1);
pos=1;
for h=1:n
    if D(h,h)>tempNum
        tempNum=D(h,h);
        pos=h;
    end
end    
w=abs(V(:,pos));
w=w/sum(w);
t=D(pos,pos);
disp('׼�����������w=');disp(w);disp('׼������������t=');disp(t);
         %������һ���Լ���
CI=(t-n)/(n-1);RI=[0 0 0.52 0.89 1.12 1.26 1.36 1.41 1.46 1.49 1.52 1.54 1.56 1.58 1.59 1.60 1.61 1.615 1.62 1.63];
CR=CI/RI(n);
if CR<0.10
    disp('�˾����һ���Կ��Խ���!');
    disp('CI=');disp(CI);
    disp('CR=');disp(CR);
else disp('�˾����һ������֤ʧ�ܣ������½�������!');
end


disp('�����뷽��������ض�׼��������Ȩ�صĳɶԱȽ���');
for i=1:n
    disp('�������');disp(i);disp('��׼������ص��жϾ���B');disp(i);
end