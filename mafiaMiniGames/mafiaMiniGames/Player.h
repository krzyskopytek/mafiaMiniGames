//
//  Player.h
//  mafiaMiniGames
//
//  Created by Krzysztof Kopytek on 2016-05-11.
//  Copyright © 2016 Krzysztof Kopytek. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    mafia,
    sheriff,
}character;

@interface Player : NSObject

@property (strong,nonatomic) NSString *name;
@property character *character;

-(instancetype) initWithName:(NSString*) name andCharacter: (character) character;

@end
