//
//  ViewController.m
//  Component
//
//  Created by 吴四军 on 5/25/21.
//

#import "ViewController.h"
#import <SubModule1/Person.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    /// 假设这个地方的代码在其他的地方使用，未必在主工程
    Person *p = [[Person alloc] init];
    [p noonTime];
    
    // Do any additional setup after loading the view.
}


@end
