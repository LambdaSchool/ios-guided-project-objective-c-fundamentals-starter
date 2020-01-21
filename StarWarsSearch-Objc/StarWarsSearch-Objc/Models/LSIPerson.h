//
//  LSIPerson.h
//  StarWarsSearch-Objc
//
//  Created by morse on 1/21/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LSIPerson : NSObject

@property NSString *name; // creates a setter, a getter, and an instance variable.
@property NSString *birthYear;
@property NSString *height;
@property NSString *eyeColor;

// Parsing from JSON
// 1. Create initializer that can setup object from NSDictionary (NS = NextStep)


- (instancetype)initWithDictionary:(NSDictionary *)dictionary;

- (instancetype)initWithName:(NSString *)name
                   birthYear:(NSString *)birthYear
                      height:(NSString *)height
                    eyeColor:(NSString *)eyeColor;



@end

NS_ASSUME_NONNULL_END
