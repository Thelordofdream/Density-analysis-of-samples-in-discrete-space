//
//  main.c
//  Min
//
//  Created by 张铭杰 on 16/4/22.
//  Copyright © 2016年 张铭杰. All rights reserved.
//

#include <stdio.h>
#define num 10
int main(int argc, const char * argv[]) {
    // insert code here...
    float matrix[num][num]={0,0,0,0,0,0,0,0,0,0,
                            0,1,1,1,0,0,0,0,0,0,
                            0,1,1,1,0,0,0,0,0,0,
                            0,1,1,1,0,0,0,0,0,0,
                            0,0,0,0,0,0,0,0,0,0,
                            0,0,0,0,0,0,0,0,0,0,
                            0,0,0,0,0,0,1,1,1,0,
                            0,0,0,0,0,0,1,1,1,0,
                            0,0,0,0,0,0,1,1,1,0,
                            0,0,0,0,0,0,0,0,0,0};
    int row,column;
    int i,j;
    double value=0.0;
    int distance=0;
    for(row=0;row<num;row++)
    {
        for(column=0;column<num;column++)
        {
            value=0.0;
            for(i=0;i<num;i++)
            {
                for(j=0;j<num;j++)
                {
                    distance=0;
                    if(matrix[i][j]==1)
                    {
                        distance = abs(row-i)+1>abs(column-j)+1?abs(row-i)+1:abs(column-j)+1;
                        value += 1.0/distance;
                    }
                    //printf("%d",distance);
                }
                //printf("\n");
            }
            //printf("\n");
            printf("%.2f ",value);
        }
        printf("\n\n");
    }
    
    return 0;
}
