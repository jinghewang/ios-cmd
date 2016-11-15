//
//  main.m
//  cmd
//
//  Created by hbd on 16/11/14.
//  Copyright © 2016年 hbd. All rights reserved.
//

#import <Foundation/Foundation.h>


//枚举形状
typedef enum{
    kCircle,
    kRectangle,
    kEgg
} ShapeType;

//枚举颜色
typedef enum{
    kRed,
    kBlue,
    kGreen
} ShapeColor;

//定义图形属性
typedef struct{
    int x,y,width,height;
} ShapeRect;

//定义整体描述的形状
typedef struct{
    ShapeColor color;
    ShapeType type;
    ShapeRect bounds;
} Shape;


NSString *boolString(BOOL b){
    if(b == YES){
        return @"YES";
    }
    else{
        return @"NO";
    }
}


BOOL areIntsDifferent(int thing1,int thing2){
    if(thing1 == thing2){
        return NO;
    }
    else{
        return YES;
    }
}

void testFor(int num){
    for(int i=0;i<num;i++){
        NSLog(@"current:%d",i);
    }
}

void testChar(char *words[]){
    for (int j=0; j<4; j++) {
        NSLog(@"%s len is %lu",words[j],strlen(words[j]));
    }

}

void testCharFromFile(char *filename){
    FILE *file = fopen(filename, "r");
    if (file == NULL) {
        //return(0);
    }
    
    char word[100];
    while (fgets(word, 100, file)) {
        //统计的时候，要去掉后面的换行符 \n
         word[strlen(word)-1] = '\0';
         //去掉后面的换行符 \r
         word[strlen(word)-1] = '\0';
         NSLog(@"%s is %lu characters long", word, strlen(word));
    }
    
    fclose(file);
}





int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    
    BOOL areTheyDifferent;
    int v_thing1 = 5;
    int v_thing2 = 5;
    int v_thing3 = 6;
    
    //areIntsDifferent
    areTheyDifferent = areIntsDifferent(v_thing1,v_thing2);
    NSLog(@"Are %d and %d different? %@",v_thing1,v_thing2,boolString(areTheyDifferent));
    
    //areIntsDifferent2
    areTheyDifferent = areIntsDifferent(v_thing1,v_thing3);
    NSLog(@"Are %d and %d different? %@",v_thing1,v_thing3,boolString(areTheyDifferent));
    
    testFor(6);
    
    char *words[4] = {"about","above","apple","A \"Macbook pro\""};
    testChar(words);
    
    char *filename= "/Users/hbd/Documents/ios2/ios-cmd/files/test.txt";
    testCharFromFile(filename);
    
    //-------------------
    Shape shape[3];
    
    ShapeRect rect = {1,2,4,5};
    shape[0].bounds = rect;
    
    NSString *myString = @"This is a String!";
    NSString *anotherString = [NSString stringWithFormat:@"%@ is length: %lu",myString,(unsigned long)[myString length]];
    NSLog(@"%@",anotherString);
    
    NSString *path = @"astring.text";
    BOOL result = [anotherString writeToFile:path atomically:YES];
    NSLog(@"result is:%d",result);
    
    NSString *astring01 = @"This is a String!";
    NSString *astring02 = @"This is a String!";
    result = [astring01 isEqualToString:astring02];
    NSLog(@"result is:%d",result);

    
    return 0;
}




