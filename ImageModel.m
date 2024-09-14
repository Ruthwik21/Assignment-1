//
//  ImageModel.m
//  Assignment 1
//
//  Created by Lyle Dev, Loaner on 9/5/24.
//


#import "ImageModel.h"

@implementation ImageModel
@synthesize imageNames = _imageNames;

+(ImageModel*)sharedInstance{
    static ImageModel* _sharedInstance = nil;
    static dispatch_once_t predicate;
    
    dispatch_once(&predicate, ^{
        _sharedInstance = [[ImageModel alloc] init];
    } );
    return _sharedInstance;
}

-(NSArray*) imageNames{
    if(!_imageNames)
        _imageNames = @[@"Abhinav", @"Ruthwik", @"Manish",@"Abhinav1",@"Ruthwik1",@"Manish1"];
    
    return _imageNames;
}
-(UIImage*)getImageWithName:(NSString*)name{
    UIImage* image = nil;
    
    image = [UIImage imageNamed:name];
    
    return image;
}


@end
