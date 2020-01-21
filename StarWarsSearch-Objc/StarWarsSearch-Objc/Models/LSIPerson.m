//
//  LSIPerson.m
//  StarWarsSearch-Objc
//
//  Created by morse on 1/21/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import "LSIPerson.h"

@implementation LSIPerson

- (instancetype)initWithDictionary:(NSDictionary *)dictionary {
    
    // 2. Pull out the data from the dictionary
    
    NSString *name = dictionary[@"name"];
    NSString *height = dictionary[@"height"];
    NSString *birthYear = dictionary[@"birth_year"];
    NSString *eyeColor = dictionary[@"eye_color"];
    
    
    return [self initWithName:name birthYear:birthYear height:height eyeColor:eyeColor];
}

- (instancetype)initWithName:(NSString *)name
                   birthYear:(NSString *)birthYear
                      height:(NSString *)height
                    eyeColor:(NSString *)eyeColor {
    self = [super init];
    if (self != nil) {
        
        // Always use the _instanceVariable to do the assignment
        // so you don't have any side eddects from custom setters
        
        _name = name;
        _birthYear = birthYear;
        _height = height;
        _eyeColor = eyeColor;
    }
    return self;
}

- (void)helperFunction {
    // Use self.name in non-init methods
    self.name = @"Bob";
}


@end
