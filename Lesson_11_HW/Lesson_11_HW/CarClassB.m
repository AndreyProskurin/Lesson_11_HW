//
//  CarClassB.m
//  Lesson_11_HW
//
//  Created by Andrey Proskurin on 17.09.17.
//  Copyright © 2017 Andrey Proskurin. All rights reserved.
//

#import "CarClassB.h"
#import "CarConstants.h"

@implementation CarClassB

+ (BaseCar *)car {
    return [CarClassB carForClass:CarClass_A];
}

- (NSArray*)carsClassB {
    if (!_carsClassB) {
        _carsClassB = [CarClassB carModelsArray];
    }
    return _carsClassB;
}

@end
