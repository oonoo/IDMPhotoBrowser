//
//  IDMPhotoBrowser+AFNetworking.m
//  PhotoBrowserDemo
//
//  Created by Sibley on 10/27/13.
//
//

#import "IDMPhotoBrowser+AFNetworking.h"
#import "IDMPhoto+AFNetworking.h"

@implementation IDMPhotoBrowser (AFNetworking)

- (id)initWithPhotoURLs:(NSArray *)photoURLsArray {
    if ((self = [self init])) {
        NSArray *photosArray = [IDMPhoto photosWithURLs:photoURLsArray];
		_newPhotos = [[NSMutableArray alloc] initWithArray:photosArray];
	}
	return self;
}

- (id)initWithPhotoURLs:(NSArray *)photoURLsArray animatedFromView:(UIView*)view {
    if ((self = [self init])) {
        NSArray *photosArray = [IDMPhoto photosWithURLs:photoURLsArray];
		_newPhotos = [[NSMutableArray alloc] initWithArray:photosArray];
        _senderViewForAnimation = view;
	}
	return self;
}

@end
