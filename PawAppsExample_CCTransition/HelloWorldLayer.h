//
//  HelloWorldLayer.h
//  PawAppsExample_CCTransition
//
//  Created by Jason Pawlak on 7/30/11.
//  Copyright Paw Apps LLC 2011. All rights reserved.
//


// When you import this file, you import all the cocos2d classes
#import "cocos2d.h"

// HelloWorldLayer
@interface HelloWorldLayer : CCLayer
{
}

// returns a CCScene that contains the HelloWorldLayer as the only child
+(CCScene *) scene;
-(void) doTransition:(id)sender;

@end
