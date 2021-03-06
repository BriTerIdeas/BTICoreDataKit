//
//  BTIKit -- [https://github.com/BriTerIdeas/BTIKit]
//  v1.6
//
//  Created by Brian Slick. Copyright (c) 2015 BriTer Ideas LLC. All rights reserved.
//

#import "BTIManagerCollectionViewController.h"

// Libraries

// Other Global
#import "BTIMacros.h"

// Categories

// Models

// View Controllers

// Views

// Private Constants

@interface BTIManagerCollectionViewController ()

// Private Properties
@property (nonnull, nonatomic, strong) BTITableContentsManager *mainContentsManager;

@end

@implementation BTIManagerCollectionViewController

#pragma mark - Synthesized Properties


#pragma mark - Dealloc and Memory Methods


#pragma mark - Initialization and UI Creation Methods


#pragma mark - Custom Getters and Setters

- (nonnull BTITableContentsManager *)mainContentsManager
{
    if (_mainContentsManager == nil)
    {
        _mainContentsManager = [[BTITableContentsManager alloc] init];
    }
    
    return _mainContentsManager;
}

#pragma mark - UIViewController Overrides


#pragma mark - BTIViewController Overrides


#pragma mark - BTITableViewController Overrides


#pragma mark - Notification Handlers


#pragma mark - UI Response Methods


#pragma mark - Misc Methods

- (nullable BTITableContentsManager *)contentsManagerForCollectionView:(nullable UICollectionView *)collectionView
{
    //BTITrackingLog(@">>> Entering <%p> %s <<<", self, __PRETTY_FUNCTION__);
    
    BTITableContentsManager *manager = nil;
    
    if (collectionView == [self collectionView])
    {
        manager = [self mainContentsManager];
    }
    
    //BTITrackingLog(@"<<< Leaving  <%p> %s >>>", self, __PRETTY_FUNCTION__);
    return manager;
}

- (nullable BTITableSectionInfo *)sectionInfoInCollectionView:(nullable UICollectionView *)collectionView
                                                      atIndex:(NSUInteger)index
{
    //BTITrackingLog(@">>> Entering <%p> %s <<<", self, __PRETTY_FUNCTION__);
    
    BTITableContentsManager *manager = [self contentsManagerForCollectionView:collectionView];
    
    //BTITrackingLog(@"<<< Leaving  <%p> %s >>>", self, __PRETTY_FUNCTION__);
    return [manager sectionInfoAtIndex:index];
}

- (nullable BTITableRowInfo *)rowInfoInCollectionView:(nullable UICollectionView *)collectionView
                                          atIndexPath:(nullable NSIndexPath *)indexPath
{
    //BTITrackingLog(@">>> Entering <%p> %s <<<", self, __PRETTY_FUNCTION__);
    
    BTITableContentsManager *manager = [self contentsManagerForCollectionView:collectionView];
    
    //BTITrackingLog(@"<<< Leaving  <%p> %s >>>", self, __PRETTY_FUNCTION__);
    return [manager rowInfoAtIndexPath:indexPath];
}

- (nullable id)representedObjectInCollectionView:(nullable UICollectionView *)collectionView
                                     atIndexPath:(nullable NSIndexPath *)indexPath
{
    //BTITrackingLog(@">>> Entering <%p> %s <<<", self, __PRETTY_FUNCTION__);
    
    BTITableContentsManager *manager = [self contentsManagerForCollectionView:collectionView];
    
    //BTITrackingLog(@"<<< Leaving  <%p> %s >>>", self, __PRETTY_FUNCTION__);
    return [manager representedObjectAtIndexPath:indexPath];
}

#pragma mark - UICollectionViewDataSource Methods

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    //BTITrackingLog(@">>> Entering <%p> %s <<<", self, __PRETTY_FUNCTION__);
    
    BTITableContentsManager *manager = [self contentsManagerForCollectionView:collectionView];
    
    //BTITrackingLog(@"<<< Leaving  <%p> %s >>>", self, __PRETTY_FUNCTION__);
    return [manager numberOfSections];
}

- (NSInteger)collectionView:(UICollectionView *)collectionView
     numberOfItemsInSection:(NSInteger)section
{
    //BTITrackingLog(@">>> Entering <%p> %s <<<", self, __PRETTY_FUNCTION__);
    
    BTITableContentsManager *manager = [self contentsManagerForCollectionView:collectionView];
    
    //BTITrackingLog(@"<<< Leaving  <%p> %s >>>", self, __PRETTY_FUNCTION__);
    return [manager numberOfRowsInSection:section];
}

#pragma mark - UICollectionViewDelegate Methods

@end
