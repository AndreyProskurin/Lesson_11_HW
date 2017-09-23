//
//  BaseCar.m
//  Lesson_11_HW
//
//  Created by Andrey Proskurin on 17.09.17.
//  Copyright © 2017 Andrey Proskurin. All rights reserved.
//

#import "BaseCar.h"
#import "CarConstants.h"

@interface BaseCar ()

@property (strong, nonatomic) NSString *carName;
@property (assign, nonatomic) CarClassType carClass;

@end

@implementation BaseCar

- (instancetype)initWithName:(NSString *)carName carClass:(NSInteger)carClass {
    self = [super init];
    if (self) {
        self.carName = carName;
        self.carClass = carClass;
    }
    return self;
}

+ (NSArray *)carNamesArray {
    
    NSMutableArray *carNamesArray = [NSMutableArray array];
    
    for (NSInteger i = 0; i < 30; i++) {
        [carNamesArray addObject:[NSString stringWithFormat:@"Car %lu", i+1]];
    }
    
    return carNamesArray;
}


+ (NSArray*)carModelsArray {
    
    NSMutableArray *carModelsArray = [[NSMutableArray alloc] init];
    
    for (NSInteger i = 0; i < 5; i++) {
        [carModelsArray addObject:[self car]];
    }
    
    return carModelsArray;
}

//+ (NSArray *)carNamesArray {
//    return @[];
//}

- (NSString*)descripeTheCar {
    
    NSString *carDescription;

    switch (self.carClass) {
        case CarClass_A:
            carDescription = [NSString stringWithFormat:@"%@: desc of A-class car", self.carName];
            break;
        case CarClass_B:
            carDescription = [NSString stringWithFormat:@"%@: desc of B-class car", self.carName];
            break;
        case CarClass_C:
            carDescription = [NSString stringWithFormat:@"%@: desc of C-class car", self.carName];
            break;
        case CarClass_D:
            carDescription = [NSString stringWithFormat:@"%@: desc of D-class car", self.carName];
            break;
        case CarClass_E:
            carDescription = [NSString stringWithFormat:@"%@: desc of E-class car", self.carName];
            break;
        case CarClass_F:
            carDescription = [NSString stringWithFormat:@"%@: desc of F-class car", self.carName];
            break;
        default:
            break;
    }
    
    return carDescription;
}

+ (BaseCar*)carForClass:(NSInteger)carClass {
    
    NSArray *carNamesArray = [self carNamesArray];
    
    BaseCar *car = [[BaseCar alloc] initWithName:[carNamesArray objectAtIndex:arc4random() % 30] carClass:carClass];
    return car;
}

+ (BaseCar*)car {
    BaseCar *car = [BaseCar carForClass:-1];
    return car;
}


@end
