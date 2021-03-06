//
//  BTICoreDataKit -- [https://github.com/BriTerIdeas/BTICoreDataKit]
//  v1.3
//
//  Created by Brian Slick. Copyright (c) 2015 BriTer Ideas LLC. All rights reserved.
//

#import "NSManagedObjectContext+BTICoreDataKitAdditions.h"

// Libraries

// Other Global
#import "BTIMacros.h"

// Categories

// Models

// Private Constants

@implementation NSManagedObjectContext (BTICoreDataKitAdditions)

- (NSUInteger)countForFetchRequestBTI:(NSFetchRequest *)fetchRequest
{
    //BTITrackingLog(@">>> Entering <%p> %s <<<", self, __PRETTY_FUNCTION__);
    
    NSError *error = nil;
    NSUInteger count = [self countForFetchRequest:fetchRequest
                                            error:&error];
    if (count == NSNotFound)
    {
        NSLog(@"BTI ERROR: Fetch Request Count: %@", [error localizedDescription]);
    }
    
    //BTITrackingLog(@"<<< Leaving  <%p> %s >>>", self, __PRETTY_FUNCTION__);
    return count;
}

- (NSArray *)executeFetchRequestBTI:(NSFetchRequest *)fetchRequest
{
    //BTITrackingLog(@">>> Entering <%p> %s <<<", self, __PRETTY_FUNCTION__);
    
    NSError *error = nil;
    NSArray *objects = [self executeFetchRequest:fetchRequest
                                           error:&error];
    if (objects == nil)
    {
        NSLog(@"BTI ERROR: Fetch Request: %@", [error localizedDescription]);
    }
    
    //BTITrackingLog(@"<<< Leaving  <%p> %s >>>", self, __PRETTY_FUNCTION__);
    return objects;
}

- (BOOL)saveBTI
{
    //BTITrackingLog(@">>> Entering <%p> %s <<<", self, __PRETTY_FUNCTION__);
    
    // http://stackoverflow.com/questions/1283960/iphone-core-data-unresolved-error-while-saving
    
    NSError *error = nil;
    BOOL isSaveSuccessful = [self save:&error];
    if (!isSaveSuccessful)
    {
        NSLog(@"BTI ERROR: Failed to save to data store: %@", [error localizedDescription]);
        NSArray *detailedErrors = [[error userInfo] objectForKey:NSDetailedErrorsKey];
        if (detailedErrors != nil && [detailedErrors count] > 0)
        {
            for (__unused NSError *detailedError in detailedErrors)
            {
                NSLog(@"  DetailedError: %@", [detailedError userInfo]);
            }
        }
        else
        {
            NSLog(@"  %@", [error userInfo]);
        }
    }
    
    //BTITrackingLog(@"<<< Leaving  <%p> %s >>>", self, __PRETTY_FUNCTION__);
    return isSaveSuccessful;
}
@end
