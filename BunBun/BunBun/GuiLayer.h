//
//  GuiLayer.h
//  BunBun
//
//  Created by Vlad on 01.01.13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"

@class GameLayer;

@interface GuiLayer: CCLayer
{
    GameLayer *gameLayer;
}

@property (nonatomic, assign) GameLayer *gameLayer;

@end
