//
//  AppDelegate.m
//  Kojiro
//
//  Created by Andrea Franz on 23/10/2013.
//  Copyright (c) 2013 Andrea Franz. All rights reserved.
//

#import "AppDelegate.h"
#import "OSMarkdown.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    [self.webView setHidden:YES];
    self.preview = NO;
    
    [self.textView setTextContainerInset:NSMakeSize(5.0f, 5.0f)];
    [self.textView setBackgroundColor:[NSColor colorWithCalibratedRed:0 green:(1.0 /255.0 * 43.0) blue:(1.0 /255.0 * 54.0) alpha:1]];
    [self.textView setInsertionPointColor:[NSColor whiteColor]];
    [self.textView setTextColor:[NSColor whiteColor]];
}

- (IBAction)compile:(id)sender {
    if (self.preview) {
        [self.webView setHidden:YES];
        [self.textView setHidden:NO];
        self.preview = NO;
        [self.window makeFirstResponder:self.textView];
    } else {
        OSMarkdown *markdown = [[OSMarkdown alloc] init];
        NSString *contentString = [markdown htmlForMarkdown:[self.textView string]];
        [[self.webView mainFrame] loadHTMLString:contentString baseURL:[[NSBundle mainBundle] bundleURL]];
        [self.webView setHidden:NO];
        [self.textView setHidden:YES];
        self.preview = YES;
    }
}

@end
