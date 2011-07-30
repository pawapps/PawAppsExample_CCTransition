//
//  HelloWorldLayer.m
//  PawAppsExample_CCTransition
//
//  Created by Jason Pawlak on 7/30/11.
//  Copyright Paw Apps LLC 2011. All rights reserved.
//


// Import the interfaces
#import "HelloWorldLayer.h"

#define T_DUR 0.5f
#define T_SCENE [HelloWorldLayer scene]
#define T_OFFSET 1000
#define NUM_OF_TRANSITIONS 27

// HelloWorldLayer implementation
@implementation HelloWorldLayer

enum {
    kMenu
};

+(CCScene *) scene
{
	// 'scene' is an autorelease object.
	CCScene *scene = [CCScene node];
	
	// 'layer' is an autorelease object.
	HelloWorldLayer *layer = [HelloWorldLayer node];
	
	// add layer as a child to scene
	[scene addChild: layer];
	
	// return the scene
	return scene;
}

// on "init" you need to initialize your instance
-(id) init
{
	// always call "super" init
	// Apple recommends to re-assign "self" with the "super" return value
	if( (self=[super init])) {
        
        CGSize winSize = [[CCDirector sharedDirector] winSize];
        
        // Make the background a random color so we can see the transition happen
        int r = rand() % 256;
        int g = rand() % 256;
        int b = rand() % 256;
        CCLayerColor* colorLayer = [CCLayerColor layerWithColor:ccc4(r, g, b, 255)];
        
        // Set up menu items for each transition
        CCMenu *menu = [CCMenu menuWithItems:nil];
        CCMenuItemLabel *miLabel;
        for (int i = 0; i < NUM_OF_TRANSITIONS; i++) {
            miLabel = [CCMenuItemLabel itemWithLabel:[CCLabelTTF labelWithString:[NSString stringWithFormat:@"%d", i] fontName:@"Marker Felt" fontSize:32.0f]target:self selector:@selector(doTransition:)];
            [miLabel setTag:i+T_OFFSET];
            [menu addChild:miLabel];
        }
        
        // Set up a grid to display the menu items
        [menu alignItemsInColumns:
         [NSNumber numberWithInt:6], 
         [NSNumber numberWithInt:6], 
         [NSNumber numberWithInt:6], 
         [NSNumber numberWithInt:6], 
         [NSNumber numberWithInt:3], 
         nil];
        [menu setTag:kMenu];
        [menu setPosition:ccp(winSize.width/2, winSize.height/2)];
        
        [self addChild:colorLayer z:-1];
        [self addChild:menu z:0];
        
        
	}
	return self;
}

-(void) doTransition:(id)sender
{
    // Which transition was chosen
    int transition = [sender tag] - T_OFFSET;
    
    // Go ahead and do the transition
    
    switch (transition) {
        case 0:
            [[CCDirector sharedDirector] replaceScene:[CCTransitionCrossFade transitionWithDuration:T_DUR scene:T_SCENE]];
            break;
        case 1:
            [[CCDirector sharedDirector] replaceScene:[CCTransitionFade transitionWithDuration:T_DUR scene:T_SCENE]];
            break;
        case 2:
            [[CCDirector sharedDirector] replaceScene:[CCTransitionFadeBL transitionWithDuration:T_DUR scene:T_SCENE]];
            break;
        case 3:
            [[CCDirector sharedDirector] replaceScene:[CCTransitionFadeDown transitionWithDuration:T_DUR scene:T_SCENE]];
            break;
        case 4:
            [[CCDirector sharedDirector] replaceScene:[CCTransitionFadeTR transitionWithDuration:T_DUR scene:T_SCENE]];
            break;
        case 5:
            [[CCDirector sharedDirector] replaceScene:[CCTransitionFadeUp transitionWithDuration:T_DUR scene:T_SCENE]];
            break;
        case 6:
            [[CCDirector sharedDirector] replaceScene:[CCTransitionFlipAngular transitionWithDuration:T_DUR scene:T_SCENE]];
            break;
        case 7:
            [[CCDirector sharedDirector] replaceScene:[CCTransitionFlipX transitionWithDuration:T_DUR scene:T_SCENE]];
            break;
        case 8:
            [[CCDirector sharedDirector] replaceScene:[CCTransitionFlipY transitionWithDuration:T_DUR scene:T_SCENE]];
            break;
        case 9:
            [[CCDirector sharedDirector] replaceScene:[CCTransitionJumpZoom transitionWithDuration:T_DUR scene:T_SCENE]];
            break;
        case 10:
            [[CCDirector sharedDirector] replaceScene:[CCTransitionMoveInB transitionWithDuration:T_DUR scene:T_SCENE]];
            break;
        case 11:
            [[CCDirector sharedDirector] replaceScene:[CCTransitionMoveInL transitionWithDuration:T_DUR scene:T_SCENE]];
            break;
        case 12:
            [[CCDirector sharedDirector] replaceScene:[CCTransitionMoveInT transitionWithDuration:T_DUR scene:T_SCENE]];
            break;
        case 13:
            [[CCDirector sharedDirector] replaceScene:[CCTransitionPageTurn transitionWithDuration:T_DUR scene:T_SCENE]];
            break;
        case 14:
            [[CCDirector sharedDirector] replaceScene:[CCTransitionRadialCCW transitionWithDuration:T_DUR scene:T_SCENE]];
            break;
        case 15:
            [[CCDirector sharedDirector] replaceScene:[CCTransitionRotoZoom transitionWithDuration:T_DUR scene:T_SCENE]];
            break;
        case 16:
            [[CCDirector sharedDirector] replaceScene:[CCTransitionShrinkGrow transitionWithDuration:T_DUR scene:T_SCENE]];
            break;
        case 17:
            [[CCDirector sharedDirector] replaceScene:[CCTransitionSlideInB transitionWithDuration:T_DUR scene:T_SCENE]];
            break;
        case 18:
            [[CCDirector sharedDirector] replaceScene:[CCTransitionSlideInL transitionWithDuration:T_DUR scene:T_SCENE]];
            break;
        case 19:
            [[CCDirector sharedDirector] replaceScene:[CCTransitionSlideInR transitionWithDuration:T_DUR scene:T_SCENE]];
            break;
        case 20:
            [[CCDirector sharedDirector] replaceScene:[CCTransitionSlideInT transitionWithDuration:T_DUR scene:T_SCENE]];
            break;
        case 21:
            [[CCDirector sharedDirector] replaceScene:[CCTransitionSplitCols transitionWithDuration:T_DUR scene:T_SCENE]];
            break;
        case 22:
            [[CCDirector sharedDirector] replaceScene:[CCTransitionSplitRows transitionWithDuration:T_DUR scene:T_SCENE]];
            break;
        case 23:
            [[CCDirector sharedDirector] replaceScene:[CCTransitionTurnOffTiles transitionWithDuration:T_DUR scene:T_SCENE]];
            break;
        case 24:
            [[CCDirector sharedDirector] replaceScene:[CCTransitionZoomFlipAngular transitionWithDuration:T_DUR scene:T_SCENE]];
            break;
        case 25:
            [[CCDirector sharedDirector] replaceScene:[CCTransitionZoomFlipX transitionWithDuration:T_DUR scene:T_SCENE]];
            break;
        case 26:
            [[CCDirector sharedDirector] replaceScene:[CCTransitionZoomFlipY transitionWithDuration:T_DUR scene:T_SCENE]];
            break;
        default:
            break;
    }
}

// on "dealloc" you need to release all your retained objects
- (void) dealloc
{
	[super dealloc];
}
@end
