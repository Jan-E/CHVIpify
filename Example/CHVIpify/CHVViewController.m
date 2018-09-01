//
//  CHVViewController.m
//  CHVIpify
//
//  Created by Chuong Vu on 09/11/2015.
//  Copyright (c) 2015 Chuong Vu. All rights reserved.
//

#import "CHVViewController.h"
#import "CHVIPRetriever.h"

@interface CHVViewController ()

@property (strong, nonatomic) CHVIPRetriever *retriever;
@end

@implementation CHVViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSLog(@"viewDidLoad");
	// Do any additional setup after loading the view, typically from a nib.
    self.retriever = [CHVIPRetriever new];
    [self.retriever getIPAddress:^(NSString *ip, NSError *error) {
        NSLog(@"IP: %@", ip);
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
