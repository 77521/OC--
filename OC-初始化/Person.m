//
//  Person.m
//  OC-初始化
//
//  Created by qingyun on 16/4/8.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "Person.h"
#define defaulName @"婴儿"
#define defaultAge 0
#define defaultSex @"男"

@implementation Person
-(void)setName:(NSString *)name
{
    _name=name;
}
-(void)setAge:(int)age
{
    _age=age;
}
-(void)setSex:(NSString *)sex
{
    _sex=sex;
}
//重写
-(NSString *)description
{
    return [NSString stringWithFormat:@"%@,%d,%@",_name,_age,_sex];
}
-(instancetype)init
{
//    //版本一 不考虑对象是否分配内存了
//    [self setName:defaulName];//设置默认
//    [self setAge:defaultAge];
//    [self setSex:defaultSex];
    
//    //版本二
//    if (self)
//    {
//        [self setName:defaulName];//设置默认
//        [self setAge:defaultAge];
//        [self setSex:defaultSex];
//    }
    
//    //如果有父类的属性需要继承
//    self=[super init];
//    //版本三
//    if (self)
//    {
//        [self setName:defaulName];//设置默认
//        [self setAge:defaultAge];
//        [self setSex:defaultSex];
//    }
    //优化
    if (self=[super init])
    {
        [self setName:defaulName];//设置默认
        [self setAge:defaultAge];
        [self setSex:defaultSex];
    }
    return self;//返回对象
}
-(instancetype)initWithName:(NSString *)name
{
    if (self=[super init])
    {
        _name=name;//等同于[self setName:name];
    }
    return self;
}
-(instancetype)initWithName:(NSString *)name andAge:(int)age
{
    if (self=[super init])
    {
        _name=name;//等同于 [self setName:name]; 等同于 self=[self initWithName:name];
        _age=age;
    }
    return self;
}
-(instancetype)initWithName:(NSString *)name andAge:(int)age andSex:(NSString *)sex
{
    if (self=[super init])
    {
//        _name=name;
//        _age=age;
        self=[self initWithName:name andAge:age];
        _sex=sex;
    }
    return self;
}
-(void)dealloc //析构函数：用来管理内存的函数
{
    NSLog(@"%@被释放了...",_name);
}
@end
