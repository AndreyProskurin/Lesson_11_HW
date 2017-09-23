//
//  CarClassE.m
//  Lesson_11_HW
//
//  Created by Andrey Proskurin on 17.09.17.
//  Copyright © 2017 Andrey Proskurin. All rights reserved.
//

#import "CarClassE.h"
#import "CarConstants.h"

@implementation CarClassE

+ (BaseCar *)car {
    return [CarClassE carForClass:CarClass_A];
}

- (NSArray*)carsClassE {
    if (!_carsClassE) {
        _carsClassE = [CarClassE carModelsArray];
    }
    return _carsClassE;
}

@end
