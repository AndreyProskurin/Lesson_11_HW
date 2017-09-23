//
//  CarClassD.m
//  Lesson_11_HW
//
//  Created by Andrey Proskurin on 17.09.17.
//  Copyright © 2017 Andrey Proskurin. All rights reserved.
//

#import "CarClassD.h"
#import "CarConstants.h"

@implementation CarClassD

+ (BaseCar *)car {
    return [CarClassD carForClass:CarClass_A];
}

- (NSArray*)carsClassD {
    if (!_carsClassD) {
        _carsClassD = [CarClassD carModelsArray];
    }
    return _carsClassD;
}

@end
