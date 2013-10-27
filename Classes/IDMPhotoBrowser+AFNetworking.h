//
//  IDMPhotoBrowser+AFNetworking.h
//  PhotoBrowserDemo
//
//  Created by Sibley on 10/27/13.
//
//

#import "IDMPhotoBrowser.h"

@interface IDMPhotoBrowser (AFNetworking)

// Init with NSURL objects
- (id)initWithPhotoURLs:(NSArray *)photoURLsArray;

// Init with NSURL objects (animated)
- (id)initWithPhotoURLs:(NSArray *)photoURLsArray animatedFromView:(UIView*)view;

@end
