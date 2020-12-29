function origin(X) %X為三個點的矩陣
%取出三個點A,B,C
A=X(1,1:2); 
B=X(2,1:2);
C=X(3,1:2);

%取某兩點向量
ab=B-A;
ac=C-A;

area_abc=1/2*abs(ab(1)*ac(2)-ab(2)*ac(1)); %三角形ABC的面積
area_abo=1/2*abs(A(1)*B(2)-A(2)*B(1)); %三角形ABO面積(O為原點)
area_aco=1/2*abs(A(1)*C(2)-A(2)*C(1)); %三角形ACO面積
area_bco=1/2*abs(B(1)*C(2)-B(2)*C(1)); %三角形BCO面積

check=0; 
%判斷三點是否呈三角形
if(A==B|A==C|B==C)
    disp('共點');
    check=1;
end
if(abs(ab/norm(ab))==abs(ac/norm(ac)))
    disp('共線');
    check=1;
end
if(check==0)
    %判斷原點相對位置
    if(area_abo+area_aco+area_bco>area_abc)
        disp('在外部');
    else
        if(area_abo>0&&area_aco>0&&area_bco>0)
            disp('在內部');
        else
            disp('在邊界上');
        end
    end
end
%作圖
M=X(:,1);
N=X(:,2);
fill(M,N,'w');
hold on
plot(0,0,'o',M,N,'o');
end
