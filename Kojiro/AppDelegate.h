//
//  AppDelegate.h
//  Kojiro
//
//  Created by Andrea Franz on 23/10/2013.
//  Copyright (c) 2013 Andrea Franz. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <WebKit/WebKit.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (assign) BOOL preview;
@property (assign) IBOutlet NSWindow *window;
@property (assign) IBOutlet NSTextView *textView;
@property (assign) IBOutlet WebView *webView;

- (IBAction)compile:(id)sender;

@end
