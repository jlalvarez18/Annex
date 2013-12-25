//
//  AnnexStack.h
//  Annex
//
//  Created by Juan Alvarez on 12/25/13.
//  Copyright (c) 2013 Wess Cope. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AnnexStack : NSObject

/**
 `AnnexStack` is a class that allows you to push and pop objects
 */

/**
Pushes an object to the top of the stack.

@param obj Object to add to the top of the stack.
*/
- (void)pushObject:(id)object;

/**
 Pops an object from the top of the stack.
 
 @result id Object to return and remove from the top of the stack.
*/
- (id)popObject;

/**
 Empties the stack
 */
- (void)empty;

/**
 Returns the count of the objects in the stack
 
 @result NSInteger the count of objects in the stack.
 */
- (NSInteger)count;

@end
