num=10;
[X, Y] = meshgrid(1:num, 1:num);
matrix=[5,4,0,0,0,0,0,0,0,0;
        4,3,2,1,0,0,0,0,0,0;
        0,2,1,1,0,0,0,0,0,0;
        0,1,1,1,1,0,0,0,0,0;
        0,0,0,1,1,1,0,0,0,0;
        0,0,0,0,1,1,1,0,0,0;
        0,0,0,0,0,1,1,1,1,0;
        0,0,0,0,0,0,1,1,2,0;
        0,0,0,0,0,0,1,2,3,4;
        0,0,0,0,0,0,0,0,4,5];
value=0.0;
valuemap=zeros(num,num);
distance=0;
for row=1:num
    for column=1:num
        
        value=0.0;
        for i=1:num
            for j=1:num
                distance=0;
                if matrix(i,j)~=0
                    distance = max(abs(row-i)+1,abs(column-j)+1);
                    value = value + matrix(i,j)*1.0/distance;
                end        
            end
        end
        valuemap(row,column)=value;
     
    end
end

figure(1),bar3(matrix),title('Space Distribution');
figure(2),bar3(valuemap),title('Density Distribution');