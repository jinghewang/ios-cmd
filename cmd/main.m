//
//  main.m
//  cmd
//
//  Created by hbd on 16/11/14.
//  Copyright © 2016年 hbd. All rights reserved.
//

#import <Foundation/Foundation.h>


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
    
    
    return 0;
}


