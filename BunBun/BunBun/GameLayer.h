//
//  HelloWorldLayer.h
//  BunBun
//
//  Created by Vlad on 01.01.13.
//  Copyright __MyCompanyName__ 2013. All rights reserved.
//


#import <GameKit/GameKit.h>

#import "cocos2d.h"
#import "GuiLayer.h"

// HelloWorldLayer
@interface GameLayer: CCLayer 
{
    GuiLayer *gui;
}

// returns a CCScene that contains the HelloWorldLayer as the only child
+(CCScene *) scene;

@property (nonatomic, assign) GuiLayer *guiLayer;

@end
