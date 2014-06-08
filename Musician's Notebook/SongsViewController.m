//
//  SongsViewController.m
//  Musician's Notebook
//
//  Created by Alex Seifert on 5/3/14.
//  Copyright (c) 2014 Alex Seifert. All rights reserved.
//

#import "SongsViewController.h"

@interface SongsViewController ()

@end

@implementation SongsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Initialization code here.
    }
    return self;
}

- (void)awakeFromNib {
    [_splitView setHoldingPriority:NSLayoutPriorityDragThatCanResizeWindow forSubviewAtIndex:0];
    [[_tabsView textStorage] setFont:[NSFont fontWithName:@"Courier" size:13]];
}

- (IBAction)switchTab:(id)sender {
    _clickedSegment = [sender selectedSegment];
    
    [self changeTab:_clickedSegment];
}

- (void)changeTab:(NSInteger)tabIndex {
    [_tabView selectTabViewItemAtIndex:tabIndex];
    [_tabControl setSelectedSegment:tabIndex];
}

#pragma mark -
#pragma mark Song methods

- (IBAction)addSong:(id)sender {
    [_songArray add:self];
    [self changeTab:0];
    [_window makeFirstResponder:_songName];
    [_artworkView setImage:[NSImage imageNamed:@"Drag and Drop Artwork"]];
}

#pragma mark -
#pragma mark Table View Delagte methods

- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView {
    return [_songArray.arrangedObjects count];
}

- (NSView *)tableView:(NSTableView *)tableView viewForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row {
    NSString *identifier = [tableColumn identifier];
    
    if ([identifier isEqualToString:@"MainCell"]) {
        NSTableCellView *cellView = [tableView makeViewWithIdentifier:@"MainCell" owner:self];
        
        //[cellView.imageView setImage:[NSImage imageNamed:@"Music Note"]];
        //[cellView.subviews[1] setStringValue:@"New Song"];
        //[cellView.subviews[2] setStringValue:@"test"];

        
       //NSIndexSet *indexSet = [NSIndexSet indexSetWithIndex:currentNote];
       //[tableView selectRowIndexes:indexSet byExtendingSelection:NO];
        
        return cellView;
    }
    
    return nil;
}

- (void)tableViewSelectionDidChange:(NSNotification *)aNotification {
    if ([_artworkView image] == nil) {
       [_artworkView setImage:[NSImage imageNamed:@"Drag and Drop Artwork"]];
    }
    
//    NSArray *tests = _songArray.arrangedObjects;
//    NSLog( @"%@", _songArray);
    
//    _selectedNote = [pageList selectedRow];
//    
//    if (_selectedNote != -1) {
//        [_textViewController loadNote:_selectedNote];
//    }
//    else {
//        // No row was selected
//    }
}

@end
