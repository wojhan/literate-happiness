//
//  PBWIZasobyWydzialu.h
//  Ex4
//
//  Created by Wojciech on 28/10/2018.
//  Copyright © 2018 Wojciech. All rights reserved.
//

#ifndef PBWIZasobyWydzialu_h
#define PBWIZasobyWydzialu_h

#import <Foundation/Foundation.h>
#import "PBWIPokoj.h"
#import "PBWIZasob.h"
#import "PBWIBiurko.h"
#import "PBWIKrzeslo.h"

@interface PBWIZasobyWydzialu : NSObject{

NSMutableDictionary *_pokoje;
NSMutableArray *_zasoby;

}

@property NSMutableDictionary *pokoje;
@property NSMutableArray *zasoby;

-(void)dodajPokoj:(int)nrPokoju
            pokoj:(PBWIPokoj *)pokoj;

-(void)dodajZasobDoPokoju:(int)numerPokoju
                    zasob:(PBWIZasob *)zasob;

-(void)przeniesZasob:(int)staryNumerPokoju
           nowyNumerPokoju:(int)nowyNumerPokoju
               zasob:(PBWIZasob *)zasob;

-(void)usunZasobZPokoju:(int)numerPokoju
                  zasob:(PBWIZasob *)zasob;

-(NSArray *)getNumeryPokoi;

-(NSArray *)getZasobyTypu:(id)typ;

-(NSArray *)getBiurka;

-(NSArray *)getKrzesla;

@end

#endif /* PBWIZasobyWydzialu_h */
