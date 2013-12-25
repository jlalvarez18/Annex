//
//  AnnexStackTest.m
//  Annex
//
//  Created by Juan Alvarez on 12/25/13.
//  Copyright (c) 2013 Wess Cope. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "AnnexStack.h"

@interface AnnexStackTest : XCTestCase

@property (nonatomic, strong) AnnexStack *stack;

@property (nonatomic, strong) NSNumber *one;
@property (nonatomic, strong) NSNumber *two;
@property (nonatomic, strong) NSNumber *three;

@end

@implementation AnnexStackTest

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
	
	self.stack = [AnnexStack new];
	
	self.one = @(1);
	self.two = @(2);
	self.three = @(3);
	
	[self.stack pushObject: self.one];
	[self.stack pushObject: self.two];
	[self.stack pushObject: self.three];
}

- (void)tearDown
{
	self.stack = nil;
	
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testPushAndPoppingOnStack
{
	id poppedObject = [self.stack popObject];
	
	XCTAssertEqual(poppedObject, self.three, @"Popped object must be the first object push onto the stack.");
	
	poppedObject = [self.stack popObject];
	
	XCTAssertEqual(poppedObject, self.two, @"Popped object must be the second object push onto the stack.");
	
	poppedObject = [self.stack popObject];
	
	XCTAssertEqual(poppedObject, self.one, @"Popped object must be the last object push onto the stack.");
	
	poppedObject = [self.stack popObject];
	
	XCTAssertNil(poppedObject, @"Popped object should be nil after popping all objects.");
}

- (void)testEmptyingStack
{
	XCTAssertTrue(self.stack.count == 3, @"There should be three objects on the stack.");
	
	[self.stack empty];
	
	XCTAssertTrue(self.stack.count == 0, @"There should be no objets on the stack.");
}

@end
