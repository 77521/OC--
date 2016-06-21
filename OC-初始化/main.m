//
//  main.m
//  OC-初始化
//
//  Created by qingyun on 16/4/8.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p1=[Person new];//new=[alloc init]初始化单一  new也会走init方法
        NSLog(@"p1=%p,%@",p1,p1);
        
        Person *p2=[Person alloc];
        NSLog(@"p2=%p,%@",p2,p2);
        p2=[p2 init];
        NSLog(@"p2=%p,%@",p2,p2);
        
        //alloc init尽量不要分开写，因为单一的alloc容易出现野指针
        Person *p3=[[Person alloc] init];
        NSLog(@"p3=%p,%@",p3,p3);
        [p3 setAge:1];
        NSLog(@"p3=%p,%@",p3,p3);
        
        //调用自己的构造函数进行初始化
        Person *p4=[[Person alloc] initWithName:@"大梦"];
        NSLog(@"p4=%p,%@",p4,p4);
        Person *p5=[[Person alloc] initWithName:@"大熊" andAge:1];
        NSLog(@"p5=%p,%@",p5,p5);
        Person *p6=[[Person alloc] initWithName:@"熊二" andAge:1 andSex:@"男"];
        NSLog(@"p6=%p,%@",p6,p6);
        
//        id obj=p4;
//        NSLog(@"obj=%p,%@",obj,obj);
//        instancetype obj2=p5;
//        总结：对于返回值来说 id和instancetype没区别，但是id还可以作为变量的类型去接受变量，但是instancetype只能用于方法的返回值类型
        
        //继承中的初始化
        Student *s1=[[Student alloc]initWithStuID:@"1603101"];
        [s1 setName:@"光头强"];
        NSLog(@"s1=%p,%@",s1,s1);
        
    }
    return 0;
}
