/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 *  GlimmpseViewController.m
 *
 * A simple table view controller that allows user to enter inputs to create the ANOVA study design.
 *
 * Version: 1.0.0
 * @author Aarti Munjal on 11/15/12.
 *
 * GLIMMPSE Lite to calculate power and sample size for ANOVA study
 * designs, which interacts with Glimmpse Software Subsystems.
 *
 * Copyright (C) 2010 Regents of the University of Colorado.
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version 2
 * of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor,
 * Boston, MA  02110-1301, USA.
 *
 *
 *
 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/

#import "GlimmpseViewController.h"
#import "GlimmpseAppDelegate.h"
#import "GlimmpseTutorialViewController.h"
#import "GlimmpseAboutUsViewController.h"
#import "GlimmpseDesignViewController.h"

@interface GlimmpseViewController ()

@end

@implementation GlimmpseViewController
{
    GlimmpseAppDelegate *appDelegate;
}

- (void)viewDidLoad
{
    appDelegate = (GlimmpseAppDelegate*)[[UIApplication sharedApplication] delegate];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)startPressed:(id)sender {
    
    [appDelegate initAllControllers];
    
    appDelegate.tabBarController.selectedViewController
    = [appDelegate.tabBarController.viewControllers objectAtIndex:1];
    appDelegate.window.rootViewController = appDelegate.tabBarController;
    
}


- (void)dealloc {
    
    [super dealloc];
}

- (IBAction)learnMorePressed:(id)sender {
    
    [appDelegate initAllControllers];
    
    appDelegate.tabBarController.selectedViewController
    = [appDelegate.tabBarController.viewControllers objectAtIndex:0];

    appDelegate.window.rootViewController = appDelegate.tabBarController;
    
    
}
@end