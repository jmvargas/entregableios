//
//  UserPreferences.m
//  EjercicioEntregable
//
//  Created by Jesús Manuel Vargas Sosa on 21/6/15.
//  Copyright (c) 2015 Jesús Manuel Vargas Sosa. All rights reserved.
//

#import "UserPreferences.h"

@implementation UserPreferences
+(BOOL) savePreferencesFromKey: (NSString*) key value: (NSObject*) value{
    NSUserDefaults* preferences = [NSUserDefaults standardUserDefaults];
    [preferences setObject:value forKey:key];
    return [preferences synchronize];
}

+(NSObject*) readPreferencesFromKey: (NSString*) key{
    NSUserDefaults* preferences = [NSUserDefaults standardUserDefaults];
    if([preferences objectForKey:key] == nil)
    {
        return nil;
    }
    else
    {
        return [preferences objectForKey:key];
    }
}
@end
