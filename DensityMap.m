function y=DensityMap(matrix,ROW,COLUMN)
valuemap=zeros(ROW,COLUMN);
for row=1:ROW
    for column=1:COLUMN
        value=0.0;
        for i=1:ROW
            for j=1:COLUMN
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
y=valuemap;