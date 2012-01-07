//
//  DockDecodeAppDelegate.m
//  DockDecode
//
//  Created by Kevin Anderson on 11/30/11.
//  Copyright 2011 Heinekev Development. All rights reserved.
//

#import "DockDecodeAppDelegate.h"

@implementation DockDecodeAppDelegate


- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    NSTimer *killTimer;
    [NSApp setServicesProvider:self];
    killTimer = [NSTimer scheduledTimerWithTimeInterval:2.0 target:self selector:@selector(timerFired:) userInfo:nil repeats:NO];
}

- (void)doString:(NSPasteboard *)pboard userData:(NSString *)userData error:(NSString **)error {
    NSString * pboardString = [pboard stringForType:NSStringPboardType];
    NSLog(@"%@",pboardString);
    
    NSString *decoded = [pboardString stringByReplacingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    NSPasteboard *pb = [NSPasteboard generalPasteboard];
    NSArray *types = [NSArray arrayWithObjects:NSStringPboardType, nil];
    [pb clearContents];
    [pb declareTypes:types owner:self];
    [pb setString:decoded forType:NSStringPboardType];
    [NSApp terminate:self];
}

- (void)timerFired:(NSTimer *)timer{
    [NSApp terminate:self];
}


@end

