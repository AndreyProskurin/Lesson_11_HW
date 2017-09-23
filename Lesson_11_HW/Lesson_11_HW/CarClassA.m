//
//  CarClassA.m
//  Lesson_11_HW
//
//  Created by Andrey Proskurin on 17.09.17.
//  Copyright © 2017 Andrey Proskurin. All rights reserved.
//

#import "CarClassA.h"
#import "CarConstants.h"

@implementation CarClassA

+ (BaseCar *)car {
    return [CarClassA carForClass:CarClass_A];
}

- (NSArray*)carsClassA {
    if (!_carsClassA) {
        _carsClassA = [CarClassA carModelsArray];
    }
    return _carsClassA;
}

//- (NSMutableArray *)aClassCarList {
//
//    if (!_aClassCarsList) {
//        _aClassCarsList = [[NSMutableArray alloc] init];
//
//        for (NSUInteger i = 0; i < [[CarClassA carNamesArray] count]; i++) {
//            [_aClassCarsList addObject:[CarClassA car]];
//        }
//    }
//
//    return _aClassCarsList;
//}

@end
