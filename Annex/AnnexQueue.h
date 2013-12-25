//
//  AnnexQueue.h
//  Annex
//
//  Created by Juan Alvarez on 12/25/13.
//  Copyright (c) 2013 Wess Cope. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AnnexQueue : NSObject

/**
 `AnnexQueue` is a class that allows you to enqueue and dequeue objects
 */

/**
 Enqueues an object to the back of the queue.
 
 @param obj Object to add to the back of the queue.
 */
- (void)enqueueObject:(id)object;

/**
 Dequeues an object from the front of the queue.
 
 @result id Object to return and remove from the front of the queue.
 */
- (id)dequeueObject;

/**
 Empties the queue
 */
- (void)empty;

/**
 Returns the count of the objects in the queue
 
 @result NSInteger the count of objects in the queue.
 */
- (NSInteger)count;

@end
