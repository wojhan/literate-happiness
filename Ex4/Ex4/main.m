#import <objc/objc.h>
#import <objc/Object.h>
#import <Foundation/Foundation.h>
#import "PBWIZasobyWydzialu.h"


int main()
{
	@autoreleasepool {	
		PBWIZasob * zasob = [[PBWIZasob alloc] init];
		[zasob setKolor: @"szary"];
		NSLog(@"Przykladowy zasob: %@", [zasob opisZasobu]);
		PBWIBiurko * biurko = [[PBWIBiurko alloc] initWithParams:100 :80 :140];
        PBWIBiurko * biurko1 = [[PBWIBiurko alloc] initWithParams:120 :40 :110];
		[biurko setKolor: @"brazowy"];
		NSLog(@"Przykladowe biurko: %@", [biurko opisZasobu]);
		PBWIKrzeslo * krzeslo = [[PBWIKrzeslo alloc] init];
		[krzeslo setObicie: @"skora"];
		[krzeslo setKolor: @"czarny"];
		NSLog(@"Przykladowe krzeslo: %@", [krzeslo opisZasobu]);

		PBWIPokoj *pokoj= [[PBWIPokoj alloc] init];
        PBWIPokoj *pokoj1= [[PBWIPokoj alloc] init];
        PBWIPokoj *pokoj2= [[PBWIPokoj alloc] init];

        PBWIZasobyWydzialu *wydzial = [[PBWIZasobyWydzialu alloc] init];
        
        [wydzial dodajPokoj:14 pokoj:pokoj];
        [wydzial dodajPokoj:23 pokoj:pokoj1];
        [wydzial dodajPokoj:27 pokoj:pokoj2];
        [wydzial dodajZasobDoPokoju:14 zasob:biurko];
        [wydzial dodajZasobDoPokoju:23 zasob:biurko1];
        [wydzial dodajZasobDoPokoju:14 zasob:krzeslo];
        NSLog(@"Biurka: %@", [wydzial getBiurka]);
        [wydzial usunZasobZPokoju:14 zasob:biurko];
        NSLog(@"Biurka: %@", [wydzial getBiurka]);
        NSLog(@"Numery pokoi: %@", [wydzial getNumeryPokoi]);
	}
	return 0;
}


