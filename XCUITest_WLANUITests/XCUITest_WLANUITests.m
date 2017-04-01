//
//  XCUITest_WLANUITests.m
//  XCUITest_WLANUITests
//
//  Created by SomeBody on 2017/4/1.
//  Copyright © 2017年 SomeOne. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface XCUITest_WLANUITests : XCTestCase

@end

@implementation XCUITest_WLANUITests

- (void)setUp {
    [super setUp];
    
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    // In UI tests it is usually best to stop immediately when a failure occurs.
    self.continueAfterFailure = NO;
    // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
    //[[[XCUIApplication alloc] init] launch];
    
    // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    NSString *urlStr =[NSString stringWithFormat:@"http://cn.bing.com"];
    NSURL *url = [NSURL URLWithString:urlStr];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
    request.HTTPMethod = @"GET";
    
    XCTestExpectation *getResponse = [self expectationWithDescription:@"getResponse"];
    NSURLSessionDataTask *dataTask = [[NSURLSession sharedSession] dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        XCTAssertNil(error,@"%@",error);
        [getResponse fulfill];
    }];
    [dataTask resume];
    //等待异步请求完成
    [self waitForExpectationsWithTimeout:8.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];

}

@end
