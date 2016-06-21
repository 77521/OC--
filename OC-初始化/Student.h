//
//  Student.h
//  OC-初始化
//
//  Created by qingyun on 16/4/8.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

@interface Student : Person
{
    NSString *_stuID;
}
-(instancetype)initWithStuID:(NSString *)ID;
@end
