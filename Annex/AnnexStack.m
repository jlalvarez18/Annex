//
//  AnnexStack.m
//  Annex
//
//  Created by Juan Alvarez on 12/25/13.
//  Copyright (c) 2013 Wess Cope. All rights reserved.
//

#import "AnnexStack.h"

@interface AnnexStack ()

@property (nonatomic, strong) NSMutableArray *objects;

@end

@implementation AnnexStack

- (id)init
{
	self = [super init];
	
	self.objects = [NSMutableArray array];
	
	return self;
}

- (void)pushObject:(id)object
{
	[self.objects addObject:object];
}

- (id)popObject
{
	id object = self.objects.lastObject;
	
	[self.objects removeLastObject];
	
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
