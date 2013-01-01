//
//  HelloWorldLayer.m
//  BunBun
//
//  Created by Vlad on 01.01.13.
//  Copyright __MyCompanyName__ 2013. All rights reserved.
//


// Import the interfaces
#import "GameLayer.h"

// Needed to obtain the Navigation Controller
#import "AppDelegate.h"

#pragma mark - HelloWorldLayer

// HelloWorldLayer implementation
@implementation GameLayer

@synthesize guiLayer;

// Helper class method that creates a Scene with the HelloWorldLayer as the only child.
+(CCScene *) scene
{
	CCScene *scene = [CCScene node];
	
	GameLayer *layer = [GameLayer node];
    GuiLayer *gui = [GuiLayer node];
	
	[scene addChild: layer];
    [scene addChild: gui];
    
    layer.guiLayer = gui;
    gui.gameLayer = layer;
	
	// return the scene
	return scene;
}


- (void) dealloc
{
	[super dealloc];
}


-(id) init
{
	if( (self=[super init]) ) {
		
		// create and initialize a Label
		CCLabelTTF *label = [CCLabelTTF labelWithString:@"Hello World" fontName:@"Marker Felt" fontSize:64];

		// ask director for the window size
		CGSize size = [[CCDirector sharedDirector] winSize];
	
		// position the label on the center of the screen
		label.position =  ccp( size.width /2 , size.height/2 );
		
		// add the label as a child to this Layer
		[self addChild: label];
		
	}
	return self;
}




@end
