//
//  Student.m
//  OC-初始化
//
//  Created by qingyun on 16/4/8.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "Student.h"

@implementation Student
-(instancetype)initWithStuID:(NSString *)ID
{
    if (self=[super init])//必须调用
    {
        _stuID=ID;
    }
    return self;
}
-(NSString *)description
{
//    return [NSString stringWithFormat:@"%@,%@",[super description],_stuID];
    return [NSString stringWithFormat:@"%@,%d,%@,%@",_name,_age,_sex,_stuID];
}
-(void)dealloc
{
    NSLog(@"%@被释放了...",_stuID);
    //ARC默认在这加载[super dealloc]
}
@end
