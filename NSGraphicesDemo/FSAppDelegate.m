//
//  FSAppDelegate.m
//  NSGraphicesDemo
//
//  Created by apple on 14-1-15.
//  Copyright (c) 2014年 fengsh. All rights reserved.
//

#import "FSAppDelegate.h"

#import "FSNSView.h"

@implementation FSAppDelegate

- (void)dealloc
{
    [super dealloc];
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    FSNSView *av = [[FSNSView alloc]initWithFrame:NSMakeRect(0, 0, self.window.frame.size.width, self.window.frame.size.height)];
    av.autoresizingMask = NSViewMaxXMargin | NSViewWidthSizable | NSViewMaxYMargin | NSViewHeightSizable;
    [self.window.contentView addSubview:av];
    [av release];
}

@end
