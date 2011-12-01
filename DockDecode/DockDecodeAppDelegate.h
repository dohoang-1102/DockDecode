//
//  DockDecodeAppDelegate.h
//  DockDecode
//
//  Created by Kevin Anderson on 11/30/11.
//  Copyright 2011 Heinekev Development. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface DockDecodeAppDelegate : NSObject <NSApplicationDelegate> {
@private
    NSWindow *window;
}

@property (assign) IBOutlet NSWindow *window;

@end
