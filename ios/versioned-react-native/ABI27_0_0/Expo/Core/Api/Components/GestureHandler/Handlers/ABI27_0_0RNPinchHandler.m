//
//  ABI27_0_0RNPinchHandler.m
//  ABI27_0_0RNGestureHandler
//
//  Created by Krzysztof Magiera on 12/10/2017.
//  Copyright © 2017 Software Mansion. All rights reserved.
//

#import "ABI27_0_0RNPinchHandler.h"

@implementation ABI27_0_0RNPinchGestureHandler

- (instancetype)initWithTag:(NSNumber *)tag
{
    if ((self = [super initWithTag:tag])) {
        _recognizer = [[UIPinchGestureRecognizer alloc] initWithTarget:self action:@selector(handleGesture:)];
    }
    return self;
}

- (ABI27_0_0RNGestureHandlerEventExtraData *)eventExtraData:(UIPinchGestureRecognizer *)recognizer
{
    return [ABI27_0_0RNGestureHandlerEventExtraData
            forPinch:recognizer.scale
            withFocalPoint:[recognizer locationInView:recognizer.view]
            withVelocity:recognizer.velocity
            withNumberOfTouches:recognizer.numberOfTouches];
}

@end

