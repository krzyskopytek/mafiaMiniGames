//
//  ViewController.m
//  mafiaMiniGames
//
//  Created by Krzysztof Kopytek on 2016-05-11.
//  Copyright © 2016 Krzysztof Kopytek. All rights reserved.
//

#import "ViewController.h"
#import "Player.h"
#import <AVFoundation/AVFoundation.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _numberOfMafia = 3;
    _numberOfCitizens =3;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue
                 sender:(id)sender {

    if ([segue.identifier isEqualToString:@"mafia"]) {
        
        character character = mafia;
        NSString *playerName = _playerNameTextField.text;
        self.player = [[Player alloc] initWithName:playerName andCharacter: character];
        
        //Stretch goals - ...using input to change views down the road .... and so on ....
        segue.destinationViewController.title = playerName;
        
    }
    
    if ([segue.identifier isEqualToString:@"sheriff"]) {
        
        //and soooo on ......;
    }
    
    // if when player win the minigame should here decrese _numberOfMafia or _numberOfCitizens
    // play another minigame if still not zero
    // if zero go to win viewcontroler and play winning sound ... as bellow
    // i do not implement all the steps and keep it simple for the purpose of learning

    if ([segue.identifier isEqualToString:@"win"]) {
        
        //============================================================================================
        //Stretch goals - Use the segue identifiers to identify good and bad endings, and play a sound effect for when the user reaches either type ... just in one place
        
        //Retrieve audio file
        NSString *path  = [[NSBundle mainBundle] pathForResource:@"win" ofType:@"mp3"];
        NSURL *pathURL = [NSURL fileURLWithPath : path];
        
        SystemSoundID audioEffect;
        AudioServicesCreateSystemSoundID((__bridge CFURLRef) pathURL, &audioEffect);
        AudioServicesPlaySystemSound(audioEffect);
        // Using GCD, we can use a block to dispose of the audio effect without using a NSTimer or something else to figure out when it'll be finished playing.
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(30 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            AudioServicesDisposeSystemSoundID(audioEffect);
        });
        
        //============================================================================================
        
        
    }
    

}


@end
