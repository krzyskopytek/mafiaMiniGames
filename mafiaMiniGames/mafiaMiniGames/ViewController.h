//
//  ViewController.h
//  mafiaMiniGames
//
//  Created by Krzysztof Kopytek on 2016-05-11.
//  Copyright © 2016 Krzysztof Kopytek. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Player.h"

@interface ViewController : UIViewController

@property (strong,nonatomic) Player *player;
@property (weak, nonatomic) IBOutlet UITextField *playerNameTextField;
@property int numberOfMafia;
@property int numberOfCitizens;

@end

