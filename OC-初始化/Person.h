//
//  Person.h
//  OC-初始化
//
//  Created by qingyun on 16/4/8.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    NSString *_name;
    int _age;
    NSString *_sex;
}

-(void)setName:(NSString *)name;
-(void)setAge:(int)age;
-(void)setSex:(NSString *)sex;
//自己写构造函数(构造函数：就是用来做初始化，格式:initWith.....)
-(id)initWithName:(NSString *)name;
-(instancetype)initWithName:(NSString *)name andAge:(int)age;
-(instancetype)initWithName:(NSString *)name andAge:(int)age andSex:(NSString *)sex;
@end
