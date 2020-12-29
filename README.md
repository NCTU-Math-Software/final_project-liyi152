# 題目:任意給定平面上三點, 判斷原點是否在這三點所圍成的三角形內。

## 作法:
input: X(輸入的三點所呈矩陣) e.g. X=([1 0; 0 1; -1 -1])
output: 原點的位置並畫出來 e.g. '在內部'以及三角形和原點的相對圖

### step 1: 計算三角形ABC(A,B,C為輸入的三點)面積
#### step 2: 計算三角形ABO,ACO,BCO(O為原點)面積

計算面積的方法:
在平面上給定兩向量a=(a1,a2),b=(b1,b2)
則兩向量構成的三角形=1/2*|a1*b2-a2*b1|(證明參考:https://youtu.be/n-S63_goDFg)

step 3: 判斷三點是否可呈三角形
平面上三點的關係:
1.共點: A=B or A=C or B=C
2.共線: abs(ab/norm(ab))==abs(ac/norm(ac)) (ab是指A跟B點所呈向量,同理ac)
3.呈三角形

step 4: 利用面積關係求出原點位置
面積關係的情況:
1.原點在內部: ABO+ACO+BCO=ABC
2.原點在外部: ABO+ACO+BCO>ABC
3.原點在邊界上: ABO, ACO, or BCO 其中一個面積為0

step 5: 畫出圖
