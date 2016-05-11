//
//  Player.m
//  mafiaMiniGames
//
//  Created by Krzysztof Kopytek on 2016-05-11.
//  Copyright © 2016 Krzysztof Kopytek. All rights reserved.
//

#import "Player.h"

@implementation Player

-(instancetype) initWithName:(NSString*) name andCharacter: (character) character {
    
self = [super init];
if (self) {
    _name = name;
    _character = &character;
}
return self;
    
}

@end
