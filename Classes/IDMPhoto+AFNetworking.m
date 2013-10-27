//
//  IDMPhoto+AFNetworking.m
//  PhotoBrowserDemo
//
//  Created by Sibley on 10/27/13.
//
//

#import "IDMPhoto+AFNetworking.h"

@implementation IDMPhoto (AFNetworking)

#pragma mark Class Methods

+ (IDMPhoto *)photoWithURL:(NSURL *)url {
	return [[IDMPhoto alloc] initWithURL:url];
}

+ (NSArray *)photosWithURLs:(NSArray *)urlsArray {
    NSMutableArray *photos = [NSMutableArray arrayWithCapacity:urlsArray.count];

    for (id url in urlsArray) {
        if ([url isKindOfClass:[NSURL class]]) {
            IDMPhoto *photo = [IDMPhoto photoWithURL:url];
            [photos addObject:photo];
        }
        else if ([url isKindOfClass:[NSString class]]) {
            IDMPhoto *photo = [IDMPhoto photoWithURL:[NSURL URLWithString:url]];
            [photos addObject:photo];
        }
    }

    return photos;
}

#pragma mark Init

- (id)initWithURL:(NSURL *)url {
	if ((self = [super init])) {
		self.photoURL = [url copy];
	}
	return self;
}

@end
