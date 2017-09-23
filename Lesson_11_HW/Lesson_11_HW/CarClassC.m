//
//  CarClassC.m
//  Lesson_11_HW
//
//  Created by Andrey Proskurin on 17.09.17.
//  Copyright © 2017 Andrey Proskurin. All rights reserved.
//

#import "CarClassC.h"
#import "CarConstants.h"

@implementation CarClassC

+ (BaseCar *)car {
    return [CarClassC carForClass:CarClass_A];
}

- (NSArray*)carsClassC {
    if (!_carsClassC) {
        _carsClassC = [CarClassC carModelsArray];
    }
    return _carsClassC;
}

@end
