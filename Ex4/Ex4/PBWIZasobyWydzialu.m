//
//  PBWIZasobyWydzialu.m
//  Ex4
//
//  Created by Wojciech on 28/10/2018.
//  Copyright © 2018 Wojciech. All rights reserved.
//

#import "PBWIZasobyWydzialu.h"

@implementation PBWIZasobyWydzialu

@synthesize pokoje = _pokoje;
@synthesize zasoby = _zasoby;

-(instancetype)init{
    if(self = [super init]){
        _pokoje = [[NSMutableDictionary alloc] init];
        _zasoby = [[NSMutableArray alloc] init];
    }
    
    return self;
}

-(void)dodajPokoj:(int)numerPokoju
            pokoj:(id)pokoj{
    _pokoje[[NSString stringWithFormat:@"%d", numerPokoju]] = pokoj;
}

-(void)dodajZasobDoPokoju:(int)numerPokoju zasob:(id)zasob{
    PBWIPokoj *pokoj = _pokoje[[NSString stringWithFormat:@"%d",numerPokoju]];
    [_zasoby addObject:zasob];
    [pokoj dodajZasob:zasob];
}

-(void)przeniesZasob:(int)staryNumerPokoju nowyNumerPokoju:(int)nowyNumerPokoju zasob:(id)zasob{
    PBWIPokoj *staryPokoj = _pokoje[[NSString stringWithFormat:@"%d",staryNumerPokoju]];
    PBWIPokoj *nowyPokoj = _pokoje[[NSString stringWithFormat:@"%d",nowyNumerPokoju]];
    
    [staryPokoj usunZasob:zasob];
    [nowyPokoj dodajZasob:zasob];
}

-(void)usunZasobZPokoju:(int)numerPokoju zasob:(id)zasob{
    PBWIPokoj *pokoj = _pokoje[[NSString stringWithFormat:@"%d",numerPokoju]];
                             
    [pokoj usunZasob:zasob];
    [_zasoby removeObject:zasob];
}

-(NSArray *)getNumeryPokoi{
    return [_pokoje allKeys];
}

-(NSArray *)getZasobyTypu:(id)typ{
    NSMutableArray *zasoby = [[NSMutableArray alloc] init];
    
    for (int i = 0; i < _zasoby.count; i++) {
        
        if([_zasoby[i] isMemberOfClass:typ]){
            [zasoby addObject:_zasoby[i]];
        }
    }
    
    return zasoby;
}

-(NSArray *)getBiurka{
    return [self getZasobyTypu:[PBWIBiurko class]];
}

-(NSArray *)getKrzesla{
    return [self getZasobyTypu:[PBWIKrzeslo class]];
}

@end
