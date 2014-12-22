//
//  NSFetchedResultsController+BTICoreDataKitAdditions.h
//  BTICoreDataKit
//  v1.1
//
//  Created by Brian Slick in April 2014
//  Copyright (c) 2014 BriTer Ideas LLC. All rights reserved.
//  https://github.com/BriTerIdeas/BTICoreDataKit
//

// Libraries
@import CoreData;

@interface NSFetchedResultsController (BTICoreDataKitAdditions)

/** Passes directly through to performFetch:
 */
- (BOOL)performFetchBTI;

@end
