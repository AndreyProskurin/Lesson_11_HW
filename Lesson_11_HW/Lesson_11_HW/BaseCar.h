//
//  BaseCar.h
//  Lesson_11_HW
//
//  Created by Andrey Proskurin on 17.09.17.
//  Copyright © 2017 Andrey Proskurin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BaseCar : NSObject

- (instancetype)initWithName:(NSString*)carName carClass:(NSInteger)carClass;
- (NSString*)descripeTheCar;
+ (BaseCar*)carForClass:(NSInteger)carClass;
+ (BaseCar*)car;

+ (NSArray *)carModelsArray;
+ (NSArray *)carNamesArray;

@end
