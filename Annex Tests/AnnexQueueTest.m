//
//  AnnexQueue.m
//  Annex
//
//  Created by Juan Alvarez on 12/25/13.
//  Copyright (c) 2013 Wess Cope. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "AnnexQueue.h"

@interface AnnexQueueTest : XCTestCase

@property (nonatomic, strong) AnnexQueue *queue;

@property (nonatomic, strong) NSNumber *one;
@property (nonatomic, strong) NSNumber *two;
@property (nonatomic, strong) NSNumber *three;

@end

@implementation AnnexQueueTest

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
	
	self.queue = [AnnexQueue new];
	
	self.one = @(1);
	self.two = @(2);
	self.three = @(3);
	
	[self.queue enqueueObject:self.one];
	[self.queue enqueueObject:self.two];
	[self.queue enqueueObject:self.three];
}

- (void)tearDown
{
	self.queue = nil;
	
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testQueueingAndDequeueing
{
	id poppedObject = [self.queue dequeueObject];
	
	XCTAssertEqual(poppedObject, self.one, @"Popped object must be the first object push onto the stack.");
	
	poppedObject = [self.queue dequeueObject];
	
	XCTAssertEqual(poppedObject, self.two, @"Popped object must be the second object push onto the stack.");
	
	poppedObject = [self.queue dequeueObject];
	
	XCTAssertEqual(poppedObject, self.three, @"Popped object must be the last object push onto the stack.");
	
	poppedObject = [self.queue dequeueObject];
	
	XCTAssertNil(poppedObject, @"Popped object should be nil after popping all objects.");
}

- (void)testEmptyingQueue
{
	XCTAssertTrue(self.queue.count == 3, @"There should be three objects on the stack.");
	
	[self.queue empty];
	
	XCTAssertTrue(self.queue.count == 0, @"There should be no objets on the stack.");
}

@end
