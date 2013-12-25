//
//  AnnexQueue.m
//  Annex
//
//  Created by Juan Alvarez on 12/25/13.
//  Copyright (c) 2013 Wess Cope. All rights reserved.
//

#import "AnnexQueue.h"

@interface AnnexQueue ()

@property (nonatomic, strong) NSMutableArray *objects;

@end

@implementation AnnexQueue

- (id)init
{
	self = [super init];
	
	self.objects = [NSMutableArray array];
	
	return self;
}

- (void)enqueueObject:(id)object
{
	[self.objects addObject:object];
}

- (id)dequeueObject
{
	id object = self.objects.firstObject;
	
	if (object != nil)
		[self.objects removeObjectAtIndex:0];
	
	return object;
}

- (void)empty
{
	[self.objects removeAllObjects];
}

- (NSInteger)count
{
	return self.objects.count;
}

@end
