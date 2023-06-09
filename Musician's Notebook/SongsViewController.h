//
//  SongsViewController.h
//  Musician's Notebook
//
//  Created by Alex Seifert on 5/3/14.
//  Copyright (c) 2014 Alex Seifert. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "SongArrayController.h"

@interface SongsViewController : NSViewController

@property (assign) IBOutlet NSWindow *window;
@property (strong) IBOutlet NSSplitView *splitView;
@property (assign) IBOutlet NSSegmentedControl *tabControl;
@property (assign) IBOutlet NSTabView *tabView;
@property (assign) IBOutlet NSTableView *songView;
@property (retain) IBOutlet SongArrayController *songArray;
@property (retain) IBOutlet NSImageView *noSongSelected;

@property (assign) IBOutlet NSTextField *songName;
@property (assign) IBOutlet NSImageView *artworkView;
@property (assign) IBOutlet NSTextView *lyricsView;
@property (assign) IBOutlet NSTextView *tabsView;
@property (assign) IBOutlet NSTextView *notesView;

@property (assign) NSInteger clickedSegment;

- (IBAction)switchTab:(id)sender;
- (void)changeTab:(NSInteger)tabIndex;
- (IBAction)addSong:(id)sender;

@end
