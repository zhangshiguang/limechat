// LimeChat is copyrighted free software by Satoshi Nakagawa <psychs AT limechat DOT net>.
// You can redistribute it and/or modify it under the terms of the GPL version 2 (see the file GPL.txt).

#import "KeyRecorderCell.h"
#import "KeyRecorder.h"


@implementation KeyRecorderCell

- (id)init
{
    self = [super init];
    if (self) {
    }
    return self;
}

- (NSBezierPath*)borderPathForBounds:(NSRect)r
{
    //r = NSInsetRect(r, 0.5, 0.5);
    CGFloat radius = r.size.height / 2;
    return [NSBezierPath bezierPathWithRoundedRect:r xRadius:radius yRadius:radius];
}

- (void)drawInteriorWithFrame:(NSRect)rect inView:(NSView*)contentView
{
    [NSGraphicsContext saveGraphicsState];

    if ([self showsFirstResponder]) {
        NSSetFocusRingStyle(NSFocusRingOnly);
        [[self borderPathForBounds:rect] fill];
    }

    [NSGraphicsContext restoreGraphicsState];
}

@end
