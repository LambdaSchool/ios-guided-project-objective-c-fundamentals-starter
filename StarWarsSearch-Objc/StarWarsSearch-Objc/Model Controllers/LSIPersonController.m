//
//  LSIPersonController.m
//  StarWarsSearch-Objc
//
//  Created by morse on 1/21/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import "LSIPersonController.h"

@implementation LSIPersonController

static NSString * const baseURLString = @"https://swapi.co/api/people";

- (void)searchForPeopleWithSearchTerm:(NSString *)searchTerm
                           completion:(void (^)(NSArray *people, NSError *error))completion {
    
    NSURL *baseURL = [NSURL URLWithString:baseURLString];
    NSURLComponents *components = [NSURLComponents componentsWithURL:baseURL resolvingAgainstBaseURL:YES];
    
    NSURLQueryItem *searchItem = [NSURLQueryItem queryItemWithName:@"search" value:searchTerm];
    
    [components setQueryItems:@[searchItem]];
    
    NSURL *url = components.URL;
    
    [[[NSURLSession sharedSession] dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        if (error) {
            completion(nil, error);
            return;
        }
        
        NSError *jsonError = nil;
        NSDictionary *dictionary = [NSJSONSerialization JSONObjectWithData:data options:0 error:&jsonError];
        if (jsonError) {
            completion(nil, jsonError);
            return;
        }
        
        // Data is not a Dictionary, maybe we have an error API JSON response
        if (![dictionary isKindOfClass:[NSDictionary class]]) {
            NSLog(@"JSON was not a Dictionary as expected");
            completion(nil, [[NSError alloc] init]); // TODO: pupulate error details
            return;
        }
        
        
    }] resume];
    
    
    
}

@end
