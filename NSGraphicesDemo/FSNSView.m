//
//  FSNSView.m
//  NSGraphicesDemo
//
//  Created by apple on 14-1-16.
//  Copyright (c) 2014年 fengsh. All rights reserved.
//

#import "FSNSView.h"

@implementation FSNSView

- (id)initWithFrame:(NSRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code here.
    }
    return self;
}

- (void)drawRect:(NSRect)dirtyRect
{
	[super drawRect:dirtyRect];
	
    [[NSColor yellowColor]set];
    NSRectFill(dirtyRect);
    
    /*
    [self test];
    
    [self test2:dirtyRect];
    
    [self test3:dirtyRect];
    
    [self test4:dirtyRect];

    //多边形
    NSBezierPath*	bezierN = [NSBezierPath bezierPath];
    bezierN = [self makePolygonPath:bezierN polygonNumber:8 origin:NSMakePoint(350, 300) radius:45];
    [bezierN stroke];
    
    */
    
    /*
    NSBezierPath*	bezier = [NSBezierPath bezierPath];
    //bezier = [self makeRectPath:bezier withRect:NSMakeRect(50, 50, 200, 400) corner:20];
    
    //bezier = [self makeBubble:bezier withBubbleRect:NSMakeRect(300, 50, 200, 40) corner:15];
    bezier = [self makeBubble:bezier withBubbleRect:NSMakeRect(300, 50, 100, 60) corner:5 atPostion:1];

    [[NSColor greenColor]set];
    [bezier fill];

    [[NSColor redColor]set];
    [bezier stroke];
     */
    
    
    [self bubbleTestLeftTop];
    
    [self bubbleTestRightTop];
    
    [self bubbleTestLeftBottom];
    
    [self bubbleTestRightBottom];
     
    
    /*
    NSString *text = @"fdasfdsafdafdsafdasfdafdsafdasfdsafdsaf革在左城革在左城革在左城革在左城革在左城革在左城革在左城革在左城革在左城革在左城革在左城革在左城革在左城革在左城革在左城革在左城革在左城革在左城革在左城革在左城革在左城革在左城革在左城革在左城革在左城革在左城革在左城革在左城革在左城革在左城革在左城革在左城革在左城革在左城革在左城革在左城革在左城革在左城革在左城革在左城革在左城革在左城革在左城革在左城革在左城革在左城革在左城革在左城革在左城革在左城革在左城革在左城革在左城革在左城革在左城革在左城革在左城革在左城革在左城革在左城革在左城革在左城革在左城革在左城革在左城革在左城革在左城革在左城革在左城革在左城革在左城革在左城革在左城革在左城革在左城革在左城革在左城革在左城";
    
    text = @"fdasfdsafdafdsafdasfdafdsafdasfdsafdsaffdasfdsafdafdsafdasfdafdsafdasfdsafdsaffdasfdsafdafdsafdasfdafdsafdasfdsafdsaffdasfdsafdafdsafdasfdafdsafdasfdsafdsaffdasfdsafdafdsafdasfdafdsafdasfdsafdsaffdasfdsafdafdsafdasfdafdsafdasfdsafdsaffdasfdsafdafdsafdasfdafdsafdasfdsafdsaffdasfdsafdafdsafdasfdafdsafdasfdsafdsaffdasfdsafdafdsafdasfdafdsafdasfdsafdsaffdasfdsafdafdsafdasfdafdsafdasfdsafdsaffdasfdsafdafdsafdasfdafdsafdasfdsafdsaffdasfdsafdafdsafdasfdafdsafdasfdsafdsaffdasfdsafdafdsafdasfdafdsafdasfdsafdsaffdasfdsafdafdsafdasfdafdsafdasfdsafdsaffdasfdsafdafdsafdasfdafdsafdasfdsafdsaffdasfdsafdafdsafdasfdafdsafdasfdsafdsaffdasfdsafdafdsafdasfdafdsafdasfdsafdsaffdasfdsafdafdsafdasfdafdsafdasfdsafdsaf革";
    

    NSMutableParagraphStyle *ps = [[NSParagraphStyle defaultParagraphStyle] mutableCopy];
    [ps setLineBreakMode:NSLineBreakByCharWrapping];
    ps.alignment = NSJustifiedTextAlignment;
    NSDictionary* primaryTextAttributes = [NSDictionary dictionaryWithObjectsAndKeys: [NSColor blackColor], NSForegroundColorAttributeName,
                                           [NSFont fontWithName:@"Helvetica" size:13], NSFontAttributeName,
                                           NSParagraphStyleAttributeName,ps,nil];
    
    NSRect rect = [text boundingRectWithSize:NSMakeSize(300, 4000) options:NSStringDrawingUsesLineFragmentOrigin attributes:primaryTextAttributes];
    
    rect.origin.x = 100;
    rect.origin.y = 100;
    [[NSColor redColor]set];
    NSRectFill(rect);
    [text drawInRect:rect  withAttributes:primaryTextAttributes];
     */
}

- (void)bubbleTestLeftTop
{
    NSBezierPath*	bezier = [NSBezierPath bezierPath];
    
    //在直线上会角
    bezier = [self makeBubble:bezier withBubbleRect:NSMakeRect(50, self.frame.size.height - 70, 100, 30) corner:5 atPostion:1];
    
    [[NSColor greenColor]set];
    [bezier fill];
    
    [[NSColor redColor]set];
    [bezier stroke];

    bezier = [self makeBubble:bezier withBubbleRect:NSMakeRect(50, self.frame.size.height - 140, 100, 60) corner:5 atPostion:1];
    
    [[NSColor greenColor]set];
    [bezier fill];
    
    [[NSColor redColor]set];
    [bezier stroke];
    
    //尖角为40度
    bezier = [self makeBubble:bezier withBubbleRect:NSMakeRect(50, self.frame.size.height - 180, 100, 30) corner:10 atPostion:1];
    
    [[NSColor greenColor]set];
    [bezier fill];
    
    [[NSColor redColor]set];
    [bezier stroke];
    
    bezier = [self makeBubble:bezier withBubbleRect:NSMakeRect(50, self.frame.size.height - 250, 100, 60) corner:15 atPostion:1];
    
    [[NSColor greenColor]set];
    [bezier fill];
    
    [[NSColor redColor]set];
    [bezier stroke];
    
    bezier = [self makeBubble:bezier withBubbleRect:NSMakeRect(50, self.frame.size.height - 290, 100, 30) corner:15 atPostion:1];

    [[NSColor greenColor]set];
    [bezier fill];
    
    [[NSColor redColor]set];
    [bezier stroke];
    
    bezier = [self makeBubble:bezier withBubbleRect:NSMakeRect(50, self.frame.size.height - 360, 100, 60) corner:20 atPostion:1];
    
    [[NSColor greenColor]set];
    [bezier fill];
    
    [[NSColor redColor]set];
    [bezier stroke];
    
    bezier = [self makeBubble:bezier withBubbleRect:NSMakeRect(170, self.frame.size.height - 360, 30, 320) corner:5 atPostion:1];
    
    [[NSColor greenColor]set];
    [bezier fill];
    
    [[NSColor redColor]set];
    [bezier stroke];
    
    bezier = [self makeBubble:bezier withBubbleRect:NSMakeRect(220, self.frame.size.height - 360, 30, 320) corner:10 atPostion:1];
    
    [[NSColor greenColor]set];
    [bezier fill];
    
    [[NSColor redColor]set];
    [bezier stroke];
    
    bezier = [self makeBubble:bezier withBubbleRect:NSMakeRect(270, self.frame.size.height - 360, 30, 320) corner:15 atPostion:1];
    
    [[NSColor greenColor]set];
    [bezier fill];
    
    [[NSColor redColor]set];
    [bezier stroke];
}

- (void)bubbleTestRightTop
{
    NSBezierPath*	bezier = [NSBezierPath bezierPath];
    
    //在直线上会角
    bezier = [self makeBubble:bezier withBubbleRect:NSMakeRect(340, self.frame.size.height - 70, 100, 30) corner:5 atPostion:3];
    
    [[NSColor blueColor]set];
    [bezier fill];
    
    [[NSColor redColor]set];
    [bezier stroke];
    
    bezier = [self makeBubble:bezier withBubbleRect:NSMakeRect(340, self.frame.size.height - 140, 100, 60) corner:5 atPostion:3];
    
    [[NSColor blueColor]set];
    [bezier fill];
    
    [[NSColor redColor]set];
    [bezier stroke];
    
    //尖角为40度
    bezier = [self makeBubble:bezier withBubbleRect:NSMakeRect(340, self.frame.size.height - 180, 100, 30) corner:10 atPostion:3];
    
    [[NSColor blueColor]set];
    [bezier fill];
    
    [[NSColor redColor]set];
    [bezier stroke];
    
    bezier = [self makeBubble:bezier withBubbleRect:NSMakeRect(340, self.frame.size.height - 250, 100, 60) corner:15 atPostion:3];
    
    [[NSColor blueColor]set];
    [bezier fill];
    
    [[NSColor redColor]set];
    [bezier stroke];
    
    bezier = [self makeBubble:bezier withBubbleRect:NSMakeRect(340, self.frame.size.height - 290, 100, 30) corner:15 atPostion:3];
    
    [[NSColor blueColor]set];
    [bezier fill];
    
    [[NSColor redColor]set];
    [bezier stroke];
    
    bezier = [self makeBubble:bezier withBubbleRect:NSMakeRect(340, self.frame.size.height - 360, 100, 60) corner:20 atPostion:3];
    
    [[NSColor blueColor]set];
    [bezier fill];
    
    [[NSColor redColor]set];
    [bezier stroke];
    
    bezier = [self makeBubble:bezier withBubbleRect:NSMakeRect(470, self.frame.size.height - 360, 30, 320) corner:5 atPostion:3];
    
    [[NSColor blueColor]set];
    [bezier fill];
    
    [[NSColor redColor]set];
    [bezier stroke];
    
    bezier = [self makeBubble:bezier withBubbleRect:NSMakeRect(520, self.frame.size.height - 360, 30, 320) corner:10 atPostion:3];
    
    [[NSColor blueColor]set];
    [bezier fill];
    
    [[NSColor redColor]set];
    [bezier stroke];
    
    bezier = [self makeBubble:bezier withBubbleRect:NSMakeRect(570, self.frame.size.height - 360, 30, 320) corner:15 atPostion:3];
    
    [[NSColor blueColor]set];
    [bezier fill];
    
    [[NSColor redColor]set];
    [bezier stroke];
}

- (void)bubbleTestLeftBottom
{
    NSBezierPath*	bezier = [NSBezierPath bezierPath];
    
    //在直线上会角
    bezier = [self makeBubble:bezier withBubbleRect:NSMakeRect(50, self.frame.size.height - 400, 100, 30) corner:5 atPostion:2];
    
    [[NSColor whiteColor]set];
    [bezier fill];
    
    [[NSColor redColor]set];
    [bezier stroke];
    
    bezier = [self makeBubble:bezier withBubbleRect:NSMakeRect(50, self.frame.size.height - 470, 100, 60) corner:5 atPostion:2];
    
    [[NSColor whiteColor]set];
    [bezier fill];
    
    [[NSColor redColor]set];
    [bezier stroke];
    
    //尖角为40度
    bezier = [self makeBubble:bezier withBubbleRect:NSMakeRect(50, self.frame.size.height - 510, 100, 30) corner:10 atPostion:2];
    
    [[NSColor whiteColor]set];
    [bezier fill];
    
    [[NSColor redColor]set];
    [bezier stroke];
    
    bezier = [self makeBubble:bezier withBubbleRect:NSMakeRect(50, self.frame.size.height - 580, 100, 60) corner:15 atPostion:2];
    
    [[NSColor whiteColor]set];
    [bezier fill];
    
    [[NSColor redColor]set];
    [bezier stroke];
    
    bezier = [self makeBubble:bezier withBubbleRect:NSMakeRect(50, self.frame.size.height - 620, 100, 30) corner:15 atPostion:2];
    
    [[NSColor whiteColor]set];
    [bezier fill];
    
    [[NSColor redColor]set];
    [bezier stroke];
    
    bezier = [self makeBubble:bezier withBubbleRect:NSMakeRect(50, self.frame.size.height - 690, 100, 60) corner:20 atPostion:2];
    
    [[NSColor whiteColor]set];
    [bezier fill];
    
    [[NSColor redColor]set];
    [bezier stroke];
    
    bezier = [self makeBubble:bezier withBubbleRect:NSMakeRect(170, self.frame.size.height - 690, 30, 320) corner:5 atPostion:2];
    
    [[NSColor whiteColor]set];
    [bezier fill];
    
    [[NSColor redColor]set];
    [bezier stroke];
    
    bezier = [self makeBubble:bezier withBubbleRect:NSMakeRect(220, self.frame.size.height - 690, 30, 320) corner:10 atPostion:2];
    
    [[NSColor whiteColor]set];
    [bezier fill];
    
    [[NSColor redColor]set];
    [bezier stroke];
    
    bezier = [self makeBubble:bezier withBubbleRect:NSMakeRect(270, self.frame.size.height - 690, 30, 320) corner:15 atPostion:2];
    
    [[NSColor whiteColor]set];
    [bezier fill];
    
    [[NSColor redColor]set];
    [bezier stroke];
    
}

- (void)bubbleTestRightBottom
{
    NSBezierPath*	bezier = [NSBezierPath bezierPath];
    
    //在直线上会角
    bezier = [self makeBubble:bezier withBubbleRect:NSMakeRect(340, self.frame.size.height - 400, 100, 30) corner:5 atPostion:4];
    
    [[NSColor cyanColor]set];
    [bezier fill];
    
    [[NSColor redColor]set];
    [bezier stroke];
    
    bezier = [self makeBubble:bezier withBubbleRect:NSMakeRect(340, self.frame.size.height - 470, 100, 60) corner:5 atPostion:4];
    
    [[NSColor cyanColor]set];
    [bezier fill];
    
    [[NSColor redColor]set];
    [bezier stroke];
    
    //尖角为40度
    bezier = [self makeBubble:bezier withBubbleRect:NSMakeRect(340, self.frame.size.height - 510, 100, 30) corner:10 atPostion:4];
    
    [[NSColor cyanColor]set];
    [bezier fill];
    
    [[NSColor redColor]set];
    [bezier stroke];
    
    bezier = [self makeBubble:bezier withBubbleRect:NSMakeRect(340, self.frame.size.height - 580, 100, 60) corner:15 atPostion:4];
    
    [[NSColor cyanColor]set];
    [bezier fill];
    
    [[NSColor redColor]set];
    [bezier stroke];
    
    bezier = [self makeBubble:bezier withBubbleRect:NSMakeRect(340, self.frame.size.height - 620, 100, 30) corner:15 atPostion:4];
    
    [[NSColor cyanColor]set];
    [bezier fill];
    
    [[NSColor redColor]set];
    [bezier stroke];
    
    bezier = [self makeBubble:bezier withBubbleRect:NSMakeRect(340, self.frame.size.height - 690, 100, 60) corner:20 atPostion:4];
    
    [[NSColor cyanColor]set];
    [bezier fill];
    
    [[NSColor redColor]set];
    [bezier stroke];
    
    bezier = [self makeBubble:bezier withBubbleRect:NSMakeRect(470, self.frame.size.height - 690, 30, 320) corner:5 atPostion:4];
    
    [[NSColor cyanColor]set];
    [bezier fill];
    
    [[NSColor redColor]set];
    [bezier stroke];
    
    bezier = [self makeBubble:bezier withBubbleRect:NSMakeRect(520, self.frame.size.height - 690, 30, 320) corner:10 atPostion:4];
    
    [[NSColor cyanColor]set];
    [bezier fill];
    
    [[NSColor redColor]set];
    [bezier stroke];
    
    bezier = [self makeBubble:bezier withBubbleRect:NSMakeRect(570, self.frame.size.height - 690, 30, 320) corner:15 atPostion:4];
    
    [[NSColor cyanColor]set];
    [bezier fill];
    
    [[NSColor redColor]set];
    [bezier stroke];
}



/*
    贝塞尔曲线，控制点
 */
- (void)test
{
    NSBezierPath*	bezier = [NSBezierPath bezierPath];

    [[NSColor blackColor] set];
    [bezier moveToPoint:NSMakePoint(20, 20)];
    [bezier curveToPoint:NSMakePoint(80, 20)
           controlPoint1:NSMakePoint(40, 80)
           controlPoint2:NSMakePoint(60, 80)];
    
    [bezier stroke];
}

- (void)test2:(NSRect)dirtyRect
{
    NSPoint	point = {
        dirtyRect.size.width / 2,
        dirtyRect.size.height / 2 };
    int		i;
    int		increment = 5;
    int		diff = increment;
    
    NSBezierPath*	bezier = [NSBezierPath bezierPath];
    [bezier moveToPoint:point];
    
    [[NSColor greenColor]set];
    
    for(i = 0; i < 6; i++) {
        point.x += diff; point.y += diff;
        diff += increment;
        [bezier lineToPoint:point];
        point.x += diff; point.y -= diff;
        diff += increment;
        [bezier lineToPoint:point];
        point.x -= diff; point.y -= diff;
        diff += increment;
        [bezier lineToPoint:point];
        point.x -= diff; point.y += diff;
        diff += increment;
        [bezier lineToPoint:point];
    }
    
    
    [bezier stroke];
}

- (void)test3:(NSRect)dirtyRect
{
    NSPoint	point0 = {
        dirtyRect.size.width / 4,
        dirtyRect.size.height / 2 };
    NSPoint	point1;
    NSRect	rect;
    int		i;
    int		divide = 16;
    NSSize	rectSize = { 50, 40 };
    
    for(i = 1; i <= divide; i++) {
        point1.x = 100 * cos((2 * M_PI / divide) * i)
        + point0.x;
        point1.y = 100 * sin((2 * M_PI / divide) * i)
        + point0.y;
        
        rect.origin.x = point1.x - rectSize.width / 2;
        rect.origin.y = point1.y - rectSize.height / 2;
        rect.size = rectSize;
        
        [NSBezierPath strokeRect:rect];
        [[NSColor greenColor]set];
        [NSBezierPath fillRect:rect];
    }
}

- (void)test4:(NSRect)dirtyRect
{
    NSPoint	point0 = {
        dirtyRect.size.width / 2,
        dirtyRect.size.height / 2 };
    NSPoint	point1;
    int		i;
    int		divide = 16;
    
    for(i = 1; i <= divide; i++) {
        point1.x = 100 * cos((2 * M_PI / divide) * i)
        + point0.x;
        point1.y = 100 * sin((2 * M_PI / divide) * i)
        + point0.y;
        
        [NSBezierPath strokeLineFromPoint:point0 toPoint:point1];
    }
}

-(void)test5
{
    /*
     // Drawing code here.
     NSRect imgRect = NSMakeRect(0.0, 0.0, 100.0, 100.0);
     NSSize imgSize = imgRect.size;
     
     NSBitmapImageRep *offscreenRep = [[[NSBitmapImageRep alloc]
     initWithBitmapDataPlanes:NULL
     pixelsWide:imgSize.width
     pixelsHigh:imgSize.height
     bitsPerSample:8
     samplesPerPixel:4
     hasAlpha:YES
     isPlanar:NO
     colorSpaceName:NSDeviceRGBColorSpace
     bitmapFormat:NSAlphaFirstBitmapFormat
     bytesPerRow:0
     bitsPerPixel:0] autorelease];
     
     // set offscreen context
     NSGraphicsContext *g = [NSGraphicsContext graphicsContextWithBitmapImageRep:offscreenRep];
     [NSGraphicsContext setCurrentContext:g];
     
     NSImage *img = [[[NSImage alloc] initWithSize:imgSize] autorelease];
     
     CGContextRef ctx = [g graphicsPort];
     
     // lock and draw
     [img lockFocus];
     
     // draw first stroke with Cocoa. this works!
     NSPoint p1 = NSMakePoint(NSMaxX(imgRect), NSMinY(imgRect));
     NSPoint p2 = NSMakePoint(NSMinX(imgRect), NSMaxY(imgRect));
     [NSBezierPath strokeLineFromPoint:p1 toPoint:p2];
     
     // draw second stroke with Core Graphics. This doesn't work!
     CGContextBeginPath(ctx);
     CGContextMoveToPoint(ctx, 0.0, 0.0);
     CGContextAddLineToPoint(ctx, imgSize.width, imgSize.height);
     CGContextClosePath(ctx);
     CGContextStrokePath(ctx);
     
     [img unlockFocus];
     
     */
    
    
    /*
     NSRect imgRect = NSMakeRect(0.0, 0.0, 100.0, 100.0);
     NSSize imgSize = imgRect.size;
     
     NSBitmapImageRep *offscreenRep = [[[NSBitmapImageRep alloc]
     initWithBitmapDataPlanes:NULL
     pixelsWide:imgSize.width
     pixelsHigh:imgSize.height
     bitsPerSample:8
     samplesPerPixel:4
     hasAlpha:YES
     isPlanar:NO
     colorSpaceName:NSDeviceRGBColorSpace
     bitmapFormat:NSAlphaFirstBitmapFormat
     bytesPerRow:0
     bitsPerPixel:0] autorelease];
     
     // set offscreen context
     NSGraphicsContext *g = [NSGraphicsContext graphicsContextWithBitmapImageRep:offscreenRep];
     [NSGraphicsContext saveGraphicsState];
     
     [NSGraphicsContext setCurrentContext:g];
     
     // draw first stroke with Cocoa
     NSPoint p1 = NSMakePoint(NSMaxX(imgRect), NSMinY(imgRect));
     NSPoint p2 = NSMakePoint(NSMinX(imgRect), NSMaxY(imgRect));
     
     [NSBezierPath strokeLineFromPoint:p1 toPoint:p2];
     
     // draw second stroke with Core Graphics
     CGContextRef ctx = [g graphicsPort];
     CGContextBeginPath(ctx);
     CGContextMoveToPoint(ctx, 0.0, 0.0);
     CGContextAddLineToPoint(ctx, imgSize.width, imgSize.height);
     CGContextClosePath(ctx);
     CGContextStrokePath(ctx);
     //CGContextSetRGBFillColor(ctx,0.5,0.5,0.5,1);
     
     // done drawing, so set the current context back to what it was
     [NSGraphicsContext restoreGraphicsState];
     
     // create an NSImage and add the rep to it
     NSImage *img = [[[NSImage alloc] initWithSize:imgSize] autorelease];
     [img addRepresentation:offscreenRep];
     
     // then go on to save or view the NSImage
     
     [img drawAtPoint:NSMakePoint(40, 40) fromRect:dirtyRect operation:NSCompositeCopy fraction:0.5f];
     */
}

//多边形路径
- (NSBezierPath*)makePolygonPath:(NSBezierPath*)bezierPath
                   polygonNumber:(int)polyNum
                          origin:(NSPoint)origin
                          radius:(float)radius
{
    int	i;
    
    for(i = 0; i <= polyNum; i++) {
        NSPoint	tmpPoint = origin;
        tmpPoint.x += radius *
        cos(M_PI_2 + 2 * M_PI * (i / (float)polyNum));
        tmpPoint.y += radius *
        sin(M_PI_2 + 2 * M_PI * (i / (float)polyNum));
        
        if(i == 0) {
            [bezierPath moveToPoint:tmpPoint];
        }
        else {
            [bezierPath lineToPoint:tmpPoint];
        }
    }
    
    [bezierPath closePath];
    
    return bezierPath;
}

//矩形路径
- (NSBezierPath *)makeRectPath:(NSBezierPath *)bezierPath
                      withRect:(NSRect)rect
                        corner:(CGFloat) corner
{
    CGFloat rw = CGRectGetWidth(rect);
    CGFloat rh = CGRectGetHeight(rect);
    
    CGFloat minDiameter = rw > rh ? rh : rw;
    
    CGFloat radius = 0;
    if (corner > 0)
    {
        radius = corner > minDiameter / 2 ? minDiameter / 2 : corner;
    }
    
    NSPoint rightTopCenter =NSMakePoint(CGRectGetMaxX(rect) - radius,CGRectGetMaxY(rect) - radius);
    NSPoint leftTopCenter =NSMakePoint(CGRectGetMinX(rect) + radius,CGRectGetMaxY(rect) - radius);
    NSPoint leftBottomCenter =NSMakePoint(CGRectGetMinX(rect) + radius,CGRectGetMinY(rect) + radius);
    NSPoint rightBottomCenter =NSMakePoint(CGRectGetMaxX(rect) - radius,CGRectGetMinY(rect) + radius);
    
    //左下半圆
    [bezierPath appendBezierPathWithArcWithCenter:leftBottomCenter radius:radius
                                   startAngle:-90
                                     endAngle:-180
                                    clockwise:YES];
    
    //左上半圆
    [bezierPath appendBezierPathWithArcWithCenter:leftTopCenter radius:radius
                                   startAngle:180 //or -180
                                     endAngle:90  // or - 270
                                    clockwise:YES];
    
    //右上半圆
    [bezierPath appendBezierPathWithArcWithCenter:rightTopCenter radius:radius
                                   startAngle:90
                                     endAngle:0
                                    clockwise:YES];
    
    //右下半圆
    [bezierPath appendBezierPathWithArcWithCenter:rightBottomCenter radius:radius
                                       startAngle:0
                                         endAngle:270
                                        clockwise:YES];
    
    [bezierPath closePath];
    
    return bezierPath;
}

/*
  聊天气泡路径
 */
- (NSBezierPath *)makeBubble:(NSBezierPath *)bezierPath
              withBubbleRect:(NSRect)rect
                      corner:(CGFloat)corner
{

    //矩形的宽和高
    //CGFloat rw = CGRectGetWidth(rect);
    //CGFloat rh = CGRectGetHeight(rect);
    
    CGFloat radius = corner; //半径
    
    //在下解坐标，
    //NSPoint leftBottom      = NSMakePoint(CGRectGetMinX(rect), CGRectGetMinY(rect));
    //NSPoint leftBottomX     = NSMakePoint(leftBottom.x + radius, leftBottom.y);
   // NSPoint leftBottomY     = NSMakePoint(leftBottom.x, leftBottom.y + radius);
    
    NSPoint rightBottom     = NSMakePoint(CGRectGetMaxX(rect), CGRectGetMinY(rect));
    NSPoint rightBottomX    = NSMakePoint(rightBottom.x - radius, rightBottom.y);
    NSPoint rightBottomY    = NSMakePoint(rightBottom.x, rightBottom.y + radius);
    
    //NSPoint rightTop = NSMakePoint(CGRectGetMaxX(rect), CGRectGetMaxY(rect));
    //NSPoint rightTopX = NSMakePoint(rightTop.x - radius, rightTop.y);
    //NSPoint rightTopY = NSMakePoint(rightTop.x, rightTop.y - radius);
    
    
    //NSPoint leftTop = NSMakePoint(CGRectGetMinX(rect), CGRectGetMaxY(rect));
    //NSPoint leftTopX = NSMakePoint(leftTop.x + radius, leftTop.y);
    //NSPoint leftTopY = NSMakePoint(leftTop.x, leftTop.y - radius);
    //左下解为起始点
    //NSPoint statrPoint = NSMakePoint(leftBottomX.x, leftBottomX.y);
    
    NSPoint rightTopCenter =NSMakePoint(CGRectGetMaxX(rect) - radius,CGRectGetMaxY(rect) - radius);
    NSPoint leftTopCenter =NSMakePoint(CGRectGetMinX(rect) + radius,CGRectGetMaxY(rect) - radius);
    NSPoint leftBottomCenter =NSMakePoint(CGRectGetMinX(rect) + radius,CGRectGetMinY(rect) + radius);
    NSPoint rightBottomCenter =NSMakePoint(CGRectGetMaxX(rect) - radius,CGRectGetMinY(rect) + radius);
    
    //顺时针绘制
    
    CGFloat x = radius * cos(40*M_PI/180);
    CGFloat y = radius * sin(40*M_PI/180);
    
    //右下角三角
    NSPoint A = NSMakePoint(rightBottomX.x + x, rightBottomY.y - y);
    //NSPoint B = NSMakePoint(rightBottomX.x + y, rightBottomY.y - x);
    
    [bezierPath moveToPoint:A];
    [bezierPath lineToPoint:NSMakePoint(rightBottom.x + 10,rightBottom.y)];
    
    
    
    [bezierPath appendBezierPathWithArcWithCenter:rightBottomCenter radius:radius
                                   startAngle:-50
                                     endAngle:-90
                                    clockwise:YES];
    
    //左下半圆
    [bezierPath appendBezierPathWithArcWithCenter:leftBottomCenter radius:radius
                                   startAngle:-90
                                     endAngle:-180
                                    clockwise:YES];
    
    //左上半圆
    [bezierPath appendBezierPathWithArcWithCenter:leftTopCenter radius:radius
                                   startAngle:180 //or -180
                                     endAngle:90  // or - 270
                                    clockwise:YES];
    
    //右上半圆
    [bezierPath appendBezierPathWithArcWithCenter:rightTopCenter radius:radius
                                   startAngle:90
                                     endAngle:0
                                    clockwise:YES];
    
    //右下半圆
    //    [bezierPath appendBezierPathWithArcWithCenter:rightBottomCenter radius:radius
    //                                   startAngle:0
    //                                     endAngle:270
    //                                    clockwise:YES];
    
    
    [bezierPath appendBezierPathWithArcWithCenter:rightBottomCenter radius:radius
                                   startAngle:0
                                     endAngle:-40
                                    clockwise:YES];
    
    
    [bezierPath closePath];
    
    return bezierPath;

}

/*
    支持微调气泡
 atPostion:是指小尖角位置，左上 = 1，左下 = 2，右上 = 3，右下 = 4
 */
- (NSBezierPath *)makeBubble:(NSBezierPath *) bezierPath
              withBubbleRect:(NSRect)rect
                      corner:(CGFloat)corner
                   atPostion:(NSInteger)pos
{
    //基本偏角40度,正好是引出小三解的位置
    CGFloat baseAngle = 40;
    
    CGFloat cornetOffWidth  = 10;
//    CGFloat cornetOffHeight = 5;
    
    //注angle只设定三个值0, 10，40
    /*
        0: 说明现在小三角相对于矩开来说，已看不出来了，这里直接用直角
        10:说明此时的小三解效果效好
        40:说明此时的矩开和小三角太小，需要调到40度有有效果。
        这三个值会自动的根据外部 corner 参数进行调整
     */
    CGFloat angle = 10;
    
    BOOL midCorner = NO;
    
    //矩形的宽和高
    CGFloat rw = CGRectGetWidth(rect);
    CGFloat rh = CGRectGetHeight(rect);
    
    //最小长度
    CGFloat minDiameter = rw > rh ? rh : rw;

    CGFloat radius = 0;//半径
    if (corner > 0)
    {
        radius = corner > minDiameter / 2 ? minDiameter / 2 : corner;
    }
    //最小长度与圆角比
    CGFloat rate = radius / minDiameter;

    //在下角坐标，
    NSPoint leftBottom      = NSMakePoint(CGRectGetMinX(rect), CGRectGetMinY(rect));
    NSPoint leftBottomX     = NSMakePoint(leftBottom.x + radius, leftBottom.y);
    NSPoint leftBottomY     = NSMakePoint(leftBottom.x, leftBottom.y + radius);
    
    NSPoint rightBottom     = NSMakePoint(CGRectGetMaxX(rect), CGRectGetMinY(rect));
    NSPoint rightBottomX    = NSMakePoint(rightBottom.x - radius, rightBottom.y);
    NSPoint rightBottomY    = NSMakePoint(rightBottom.x, rightBottom.y + radius);
    
    NSPoint rightTop = NSMakePoint(CGRectGetMaxX(rect), CGRectGetMaxY(rect));
    NSPoint rightTopX = NSMakePoint(rightTop.x - radius, rightTop.y);
    NSPoint rightTopY = NSMakePoint(rightTop.x, rightTop.y - radius);
    
    
    NSPoint leftTop = NSMakePoint(CGRectGetMinX(rect), CGRectGetMaxY(rect));
    NSPoint leftTopX = NSMakePoint(leftTop.x + radius, leftTop.y);
    NSPoint leftTopY = NSMakePoint(leftTop.x, leftTop.y - radius);


    //最小高度在30以下的，只需要在左或右画三解即可
    if (minDiameter < 30 )
    {
        if (rate > 0.33 && rate <= 0.5)
        {
            angle = 40;
        }
        else //在中间画直角
        {
            angle = 0;
            midCorner = YES;
        }
    }
    else if (minDiameter >= 30 && minDiameter <= 50)
    {
        if (rate > 0.2 && rate < 0.4)
        {
            angle = 40;
        }
        else if (rate >= 0.4 && rate <= 0.5)
        {
            angle = 10; //直角
        }
        else
        {
            angle = 0;
        }
    }
    else // 50 以上的
    {
        if (corner >=10 && corner <= 15)
        {
            angle = 40;
        }
        else if (corner < 10)
        {
            angle = 0; //直角
        }
    }

    //Ａ，Ｂ点引线出来产生尖角的结点(即绘制的起始点)
    NSPoint ABNodepoint = NSMakePoint(0, 0);
    NSPoint Apoint = NSMakePoint(0, 0);
    NSPoint Bpoint = NSMakePoint(0, 0);
    
    //上半部分
    CGFloat autoOffUpHeight = 0;
    //下半部份
    CGFloat autoOffDownHeight = 0;
    
    switch (pos) {
        case 2: //左下
        {
            if ((angle == 10) || (angle == 40)) {
                ABNodepoint = NSMakePoint(leftBottom.x - cornetOffWidth, leftBottom.y);
            }
            else
            {
                if (rh <= 30)
                {
                    autoOffDownHeight = (rh- 2*radius - 10) / 2;
                    autoOffUpHeight = autoOffDownHeight;
                    Apoint = NSMakePoint(leftTopY.x,leftTopY.y - autoOffUpHeight);
                    Bpoint = NSMakePoint(leftBottomY.x,leftBottomY.y + autoOffDownHeight);
                }
                else
                {
                    autoOffDownHeight = (rh- 2*radius) / 30;//30 :1 的比例进行(按1：29比例平分高度)
                    autoOffDownHeight = autoOffDownHeight > 10 ? 10 : autoOffDownHeight;
                    autoOffUpHeight = (rh- 2*radius) - autoOffDownHeight;
                    
                    Apoint = NSMakePoint(leftTopY.x,leftTopY.y - autoOffUpHeight + 10);
                    Bpoint = NSMakePoint(leftBottomY.x,leftBottomY.y + autoOffDownHeight);
                }
                
                ABNodepoint = NSMakePoint(leftBottom.x - cornetOffWidth, (Apoint.y + Bpoint.y) / 2);
            }
        }
            break;
        case 3: //右上
        {
            if ((angle == 10) || (angle == 40)) {
                ABNodepoint = NSMakePoint(rightTop.x + cornetOffWidth, rightTop.y);
            }
            else
            {
                if (rh <=30)
                {
                    autoOffDownHeight = (rh- 2*radius - 10) / 2;
                    autoOffUpHeight = autoOffDownHeight;
                    Apoint = NSMakePoint(rightTopY.x,rightTopY.y - autoOffDownHeight);
                    Bpoint = NSMakePoint(rightBottomY.x,rightBottomY.y + autoOffUpHeight);
                }
                else
                {
                    autoOffUpHeight = (rh- 2*radius) / 30;//30 :1 的比例进行(按1：29比例平分高度)
                    autoOffUpHeight = autoOffUpHeight > 10 ? 10 : autoOffUpHeight;
                    autoOffDownHeight = (rh- 2*radius) - autoOffUpHeight;
                    
                    Apoint = NSMakePoint(rightTopY.x,rightTopY.y - autoOffUpHeight );
                    Bpoint = NSMakePoint(rightBottomY.x,rightBottomY.y + autoOffDownHeight - 10);
                }
                
                ABNodepoint = NSMakePoint(rightTopY.x + cornetOffWidth, (Apoint.y + Bpoint.y) / 2);
            }
        }
            break;
        case 4: //右下
        {
            if ((angle == 10) || (angle == 40)) {
                ABNodepoint = NSMakePoint(rightBottom.x + cornetOffWidth, rightBottom.y);
            }
            else //在直线上绘角
            {
                if (rh <= 30)
                {
                    autoOffDownHeight = (rh- 2*radius - 10) / 2;
                    autoOffUpHeight = autoOffDownHeight;
                    Apoint = NSMakePoint(rightTopY.x,rightTopY.y - autoOffUpHeight);
                    Bpoint = NSMakePoint(rightBottomY.x,rightBottomY.y + autoOffDownHeight);
                }
                else
                {
                    autoOffDownHeight = (rh- 2*radius) / 30;//30 :1 的比例进行(按1：29比例平分高度)
                    autoOffDownHeight = autoOffDownHeight > 10 ? 10 : autoOffDownHeight;
                    autoOffUpHeight = (rh- 2*radius) - autoOffDownHeight;
                    
                    Apoint = NSMakePoint(rightTopY.x,rightTopY.y - autoOffUpHeight + 10);
                    Bpoint = NSMakePoint(rightBottomY.x,rightBottomY.y + autoOffDownHeight);
                }
                
                ABNodepoint = NSMakePoint(rightBottomY.x + cornetOffWidth, (Apoint.y + Bpoint.y) / 2);
            }

        }
            break;
            
        default: //左上
        {
            if ((angle == 10) || (angle == 40))
            {
                ABNodepoint = NSMakePoint(leftTop.x - cornetOffWidth, leftTop.y);
            }
            else
            {
                if (rh <=30)
                {
                    autoOffDownHeight = (rh- 2*radius - 10) / 2;
                    autoOffUpHeight = autoOffDownHeight;
                    Apoint = NSMakePoint(leftTopY.x,leftTopY.y - autoOffDownHeight);
                    Bpoint = NSMakePoint(leftBottomY.x,leftBottomY.y + autoOffUpHeight);
                }
                else
                {
                    autoOffUpHeight = (rh- 2*radius) / 30;//30 :1 的比例进行(按1：29比例平分高度)
                    autoOffUpHeight = autoOffUpHeight > 10 ? 10 : autoOffUpHeight;
                    autoOffDownHeight = (rh- 2*radius) - autoOffUpHeight;
                    
                    Apoint = NSMakePoint(leftTopY.x,leftTopY.y - autoOffUpHeight );
                    Bpoint = NSMakePoint(leftBottomY.x,leftBottomY.y + autoOffDownHeight - 10);
                }
                
                ABNodepoint = NSMakePoint(leftTop.x - cornetOffWidth, (Apoint.y + Bpoint.y) / 2);
            }
        }
            break;
    }

    NSPoint rightTopCenter =NSMakePoint(CGRectGetMaxX(rect) - radius,CGRectGetMaxY(rect) - radius);
    NSPoint leftTopCenter =NSMakePoint(CGRectGetMinX(rect) + radius,CGRectGetMaxY(rect) - radius);
    NSPoint leftBottomCenter =NSMakePoint(CGRectGetMinX(rect) + radius,CGRectGetMinY(rect) + radius);
    NSPoint rightBottomCenter =NSMakePoint(CGRectGetMaxX(rect) - radius,CGRectGetMinY(rect) + radius);
    
    //A点引出点的位置
    CGFloat Ax = radius * cos((90 - baseAngle - angle)*M_PI/180);
    CGFloat Ay = radius * sin((90 - baseAngle - angle)*M_PI/180);
    
    //B点引出点的位置
    CGFloat Bx = radius * cos(baseAngle*M_PI/180);
    CGFloat By = radius * sin(baseAngle*M_PI/180);
    
    //右下角缺口位置的A,B点坐标
//    NSPoint rBottomApoint = NSMakePoint(rightBottomX.x + Ax,rightBottomY.y - Ay);//(闭环结点)
    NSPoint rBottomBpoint = NSMakePoint(rightBottomX.x + By,rightBottomY.y - Bx);
    
    //右上角缺口位置A,B点坐标
//    NSPoint rTopApoint = NSMakePoint(rightTopX.x + By,rightTopY.y + Bx);//(闭环结点)
    NSPoint rTopBpoint = NSMakePoint(rightTopX.x + Ax,rightTopY.y + Ay);
    
    //左下角缺口位置A,B点坐标
    NSPoint lBottomApoint = NSMakePoint(leftBottomX.x - Ax,leftBottomY.y - Ay);
//    NSPoint lBottomBpoint = NSMakePoint(leftBottomX.x - By,leftBottomY.y - By);//(闭环结点)
    
    //左上角缺口位置A,B点坐标
    NSPoint lTopApoint = NSMakePoint(leftTopX.x - By,leftTopY.y + Bx);
//    NSPoint lTopBpoint = NSMakePoint(leftTopX.x - Ax,leftTopY.y + Ay);//(闭环结点)

    
    //按顺时针顺序进行绘制
    switch (pos) {
        case 2:
        {
            //绘制启始点
            [bezierPath moveToPoint:ABNodepoint];
            
            if (angle != 0)
            {
                [bezierPath lineToPoint:lBottomApoint];
                
                [bezierPath appendBezierPathWithArcWithCenter:leftBottomCenter radius:radius
                                                   startAngle:-(90 + baseAngle + angle)
                                                     endAngle:180
                                                    clockwise:YES];
            }
            else
            {
                [bezierPath lineToPoint:Apoint];
            }
            //左上半圆
            [self drawLeftTopPart:leftTopCenter withRadius:radius addToBezierPath:bezierPath];
            //右上半圆
            [self drawRightTopPart:rightTopCenter withRadius:radius addToBezierPath:bezierPath];
            //右下半圆
            [self drawRightBottomPart:rightBottomCenter withRadius:radius addToBezierPath:bezierPath];
            
            if (angle != 0)
            {
                [bezierPath appendBezierPathWithArcWithCenter:leftBottomCenter radius:radius
                                                   startAngle:-90
                                                     endAngle:-(90 + baseAngle)
                                                    clockwise:YES];
            }
            else
            {
                //左下半圆
                [self drawLeftBottomPart:leftBottomCenter withRadius:radius addToBezierPath:bezierPath];
                [bezierPath lineToPoint:Bpoint];
            }
        }
            break;
        case 3:
        {
            //绘制启始点
            [bezierPath moveToPoint:ABNodepoint];
            
            if (angle != 0)
            {
                [bezierPath lineToPoint:rTopBpoint];
                //绘制右上角缺角B点上半部的圆解部分
                [bezierPath appendBezierPathWithArcWithCenter:rightTopCenter radius:radius
                                                   startAngle:(90 - baseAngle - angle)
                                                     endAngle:0
                                                    clockwise:YES];
            }
            else
            {
                [bezierPath lineToPoint:Bpoint];
            }
            //右下半圆
            [self drawRightBottomPart:rightBottomCenter withRadius:radius addToBezierPath:bezierPath];
            //左下半圆
            [self drawLeftBottomPart:leftBottomCenter withRadius:radius addToBezierPath:bezierPath];
            //左上半圆
            [self drawLeftTopPart:leftTopCenter withRadius:radius addToBezierPath:bezierPath];
            
            if (angle != 0)
            {
                [bezierPath appendBezierPathWithArcWithCenter:rightTopCenter radius:radius
                                                   startAngle:90
                                                     endAngle:(90-baseAngle)
                                                    clockwise:YES];
            }
            else
            {
                //右上半圆
                [self drawRightTopPart:rightTopCenter withRadius:radius addToBezierPath:bezierPath];
                [bezierPath lineToPoint:Apoint];
            }
        }
            break;
        case 4:
        {
            //绘制启始点
            [bezierPath moveToPoint:ABNodepoint];
            
            if (angle != 0)
            {
                //绘到缺角B坐标点
                [bezierPath lineToPoint:rBottomBpoint];
                //绘制右下角缺角B点下半部的圆解部分
                [bezierPath appendBezierPathWithArcWithCenter:rightBottomCenter radius:radius
                                                   startAngle:-(90-baseAngle)//-50
                                                     endAngle:-90
                                                    clockwise:YES];
            }
            else
            {
                [bezierPath lineToPoint:Bpoint];
                [self drawRightBottomPart:rightBottomCenter withRadius:radius addToBezierPath:bezierPath];
            }
            
            //左下半圆
            [self drawLeftBottomPart:leftBottomCenter withRadius:radius addToBezierPath:bezierPath];
            //左上半圆
            [self drawLeftTopPart:leftTopCenter withRadius:radius addToBezierPath:bezierPath];
            //右上半圆
            [self drawRightTopPart:rightTopCenter withRadius:radius addToBezierPath:bezierPath];
            
            if (angle != 0)
            {
                //绘制右下角缺角A点上半部的圆解部分
                [bezierPath appendBezierPathWithArcWithCenter:rightBottomCenter radius:radius
                                                   startAngle:0
                                                     endAngle:- (90 - baseAngle - angle)//40
                                                    clockwise:YES];
            }
            else
            {
                [bezierPath lineToPoint:Apoint];
            }
        }
            break;
        default:
        {
            //绘制启始点
            [bezierPath moveToPoint:ABNodepoint];
            if (angle != 0)
            {
                //绘到缺角B坐标点
                [bezierPath lineToPoint:lTopApoint];
                //绘制右下角缺角B点下半部的圆解部分
                [bezierPath appendBezierPathWithArcWithCenter:leftTopCenter radius:radius
                                                   startAngle:(90+baseAngle)
                                                     endAngle:90
                                                    clockwise:YES];
            }
            else
            {
                [bezierPath lineToPoint:Apoint];
                //左上半圆
                [self drawLeftTopPart:leftTopCenter withRadius:radius addToBezierPath:bezierPath];
            }
            
            //右上半圆
            [self drawRightTopPart:rightTopCenter withRadius:radius addToBezierPath:bezierPath];
            //右下半圆
            [self drawRightBottomPart:rightBottomCenter withRadius:radius addToBezierPath:bezierPath];
            //左下半圆
            [self drawLeftBottomPart:leftBottomCenter withRadius:radius addToBezierPath:bezierPath];
            
            if (angle != 0)
            {
                [bezierPath appendBezierPathWithArcWithCenter:leftTopCenter radius:radius
                                                   startAngle:180
                                                     endAngle:(90+baseAngle+angle)
                                                    clockwise:YES];
            }
            else
            {
                [bezierPath lineToPoint:Bpoint];
            }
        }
            break;
    }
    
    [bezierPath closePath];

    return bezierPath;
}


//根据绘制点进行组合
//左下半圆
- (void)drawLeftBottomPart:(NSPoint) cornerCenter withRadius:(CGFloat)radius addToBezierPath:(NSBezierPath *) bezierPath
{
    
    [bezierPath appendBezierPathWithArcWithCenter:cornerCenter radius:radius
                                       startAngle:-90
                                         endAngle:-180
                                        clockwise:YES];
}

//左上半圆
- (void)drawLeftTopPart:(NSPoint) cornerCenter withRadius:(CGFloat)radius addToBezierPath:(NSBezierPath *) bezierPath
{
    
    [bezierPath appendBezierPathWithArcWithCenter:cornerCenter radius:radius
                                       startAngle:180 //or -180
                                         endAngle:90  // or - 270
                                        clockwise:YES];
}

//右上半圆
- (void)drawRightTopPart:(NSPoint) cornerCenter withRadius:(CGFloat)radius addToBezierPath:(NSBezierPath *) bezierPath
{
    [bezierPath appendBezierPathWithArcWithCenter:cornerCenter radius:radius
                                       startAngle:90
                                         endAngle:0
                                        clockwise:YES];
}

//右下半圆
- (void)drawRightBottomPart:(NSPoint) cornerCenter withRadius:(CGFloat)radius addToBezierPath:(NSBezierPath *) bezierPath
{
    [bezierPath appendBezierPathWithArcWithCenter:cornerCenter radius:radius
                                       startAngle:0
                                         endAngle:270
                                        clockwise:YES];
}


@end
