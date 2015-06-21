//
//  UserPreferences.h
//  EjercicioEntregable
//
//  Created by Jesús Manuel Vargas Sosa on 21/6/15.
//  Copyright (c) 2015 Jesús Manuel Vargas Sosa. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UserPreferences : NSObject
+(BOOL) savePreferencesFromKey: (NSString*) key value: (NSObject*) value;
+(NSObject*) readPreferencesFromKey: (NSString*) key;
@end
