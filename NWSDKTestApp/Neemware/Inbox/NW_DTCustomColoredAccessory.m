//
//  NW_DTCustomColoredAccessory.m
//  NWSDKTestApp
//
//  Created by Erik Stromlund (Neemware) on 8/10/12.
//  Copyright (c) 2013 Neemware, Inc. All rights reserved.
//
//  From: http://www.cocoanetics.com/2010/10/custom-colored-disclosure-indicators/

#import "NW_DTCustomColoredAccessory.h"

@implementation NW_DTCustomColoredAccessory

@synthesize accessoryColor = _accessoryColor;
@synthesize highlightedColor = _highlightedColor;

- (id)initWithFrame:(CGRect)frame {
    if ((self = [super initWithFrame:frame])) {
		self.backgroundColor = [UIColor clearColor];
    }
    return self;
}

+ (NW_DTCustomColoredAccessory *)accessoryWithColor:(UIColor *)color
{
	NW_DTCustomColoredAccessory *ret = [[NW_DTCustomColoredAccessory alloc] initWithFrame:CGRectMake(0, 0, 11.0, 15.0)];
	ret.accessoryColor = color;
    
	return ret;
}

- (void)drawRect:(CGRect)rect
{
	// (x,y) is the tip of the arrow
	CGFloat x = CGRectGetMaxX(self.bounds) - 3.0;;
	CGFloat y = CGRectGetMidY(self.bounds);
	const CGFloat R = 4.5;
	CGContextRef ctxt = UIGraphicsGetCurrentContext();
	CGContextMoveToPoint(ctxt, x-R, y-R);
	CGContextAddLineToPoint(ctxt, x, y);
	CGContextAddLineToPoint(ctxt, x-R, y+R);
	CGContextSetLineCap(ctxt, kCGLineCapSquare);
	CGContextSetLineJoin(ctxt, kCGLineJoinMiter);
	CGContextSetLineWidth(ctxt, 3);
    
	if (self.highlighted)
	{
		[self.highlightedColor setStroke];
	}
	else
	{
		[self.accessoryColor setStroke];
	}
    
	CGContextStrokePath(ctxt);
}

- (void)setHighlighted:(BOOL)highlighted
{
	[super setHighlighted:highlighted];
    
	[self setNeedsDisplay];
}

- (UIColor *)accessoryColor
{
	if (!_accessoryColor)
	{
		return [UIColor blackColor];
	}
    
	return _accessoryColor;
}

- (UIColor *)highlightedColor
{
	if (!_highlightedColor)
	{
		return [UIColor whiteColor];
	}
    
	return _highlightedColor;
}

@end