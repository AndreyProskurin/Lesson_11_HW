//
//  CarClassF.m
//  Lesson_11_HW
//
//  Created by Andrey Proskurin on 17.09.17.
//  Copyright © 2017 Andrey Proskurin. All rights reserved.
//

#import "CarClassF.h"
#import "CarConstants.h"

@implementation CarClassF

+ (BaseCar *)car {
    return [CarClassF carForClass:CarClass_A];
}

- (NSArray*)carsClassF {
    if (!_carsClassF) {
        _carsClassF = [CarClassF carModelsArray];
    }
    return _carsClassF;
}

@end
