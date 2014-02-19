//
//  tableViewController.m
//  HelloWorld
//
//  Created by Stephen Richter on 2/19/2014.
//  Copyright (c) 2014 Stephen Richter. All rights reserved.
//

#import "tableViewController.h"

@interface tableViewController () {
    
    NSArray *clubTitles;
    
}

@end

@implementation tableViewController

@synthesize tableView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    clubTitles = [[NSArray alloc] initWithObjects:
                 @"Club 9one9",
                 @"Jack's Pub",
                 @"Publik",
                 @"Upstairs Cabaret",
                 @"Irish Times",
                 nil];
}

#pragma mark -
#pragma mark Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView*) tableView{
    
    return 1;
    
}

- (NSInteger)tableView:(UITableView *) tableView numberOfRowsInSection:(NSInteger)section{
    
    return [clubTitles count];
    
}

// Configure the appearance of the cells
- (UITableViewCell *)tableView:(UITableView *) tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    static NSString *cellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
        if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone){
            cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        }
    }
    
    // Configure the cell
    cell.textLabel.text = [clubTitles objectAtIndex:indexPath.row];
    
    return cell;
}

#pragma mark -
#pragma mark Table view delegate

- (void)tableView:(UITableView *) tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSLog(@"In didSelectRowAtIndexPath");
    NSLog(@"Row %d",indexPath.row);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
