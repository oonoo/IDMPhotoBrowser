//
//  IDMPhoto+AFNetworking.h
//  PhotoBrowserDemo
//
//  Created by Sibley on 10/27/13.
//
//

#import "IDMPhoto.h"

@interface IDMPhoto (AFNetworking)

// Class
+ (IDMPhoto *)photoWithURL:(NSURL *)url;
+ (NSArray *)photosWithURLs:(NSArray *)urlsArray;

// Init
- (id)initWithURL:(NSURL *)url;

@end
