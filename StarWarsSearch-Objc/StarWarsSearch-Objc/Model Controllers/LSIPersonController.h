//
//  LSIPersonController.h
//  StarWarsSearch-Objc
//
//  Created by morse on 1/21/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LSIPersonController : NSObject

- (void)searchForPeopleWithSearchTerm:(NSString *)searchTerm
                           completion:(void (^)(NSArray *people, NSError *error))completion;

@end
