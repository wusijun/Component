//
//  AdvanceAnimationTricksViewController.m
//  Component
//
//  Created by 吴四军 on 5/26/21.
//

#import "AdvanceAnimationTricksViewController.h"

@interface AdvanceAnimationTricksViewController ()

@property (nonatomic, strong) UIView *myView1;
@property (nonatomic, strong) UIView *myView2;

@end

@implementation AdvanceAnimationTricksViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *transitionBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [transitionBtn setBackgroundColor:[UIColor orangeColor]];
    transitionBtn.frame = CGRectMake(100, 100, 50, 30);
    [transitionBtn addTarget:self action:@selector(transition) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:transitionBtn];

}

- (void)transition
{
    CATransition* transition = [CATransition animation];
    transition.startProgress = 0;
    transition.endProgress = 1.0;
    transition.type = kCATransitionPush;
    transition.subtype = kCATransitionFromRight;
    transition.duration = 1.0;
    // Add the transition animation to both layers
    [self.myView1.layer addAnimation:transition forKey:@"transition"];
    [self.myView2.layer addAnimation:transition forKey:@"transition"];
     
    // Finally, change the visibility of the layers.
    self.myView1.hidden = NO;
    self.myView2.hidden = NO;
}

- (UIView *)myView1
{
    if (!_myView1)
    {
        _myView1 = [[UIView alloc] initWithFrame:CGRectMake(90, 190, 100, 100)];
        _myView1.backgroundColor = [[UIColor orangeColor] colorWithAlphaComponent:.3];
        [self.view addSubview:self.myView1];
    }
    return _myView1;
}

- (UIView *)myView2
{
    if (!_myView2)
    {
        _myView2 = [[UIView alloc] initWithFrame:CGRectMake(100, 300, 100, 100)];
        _myView2.backgroundColor = [UIColor redColor];
        [self.view addSubview:self.myView2];
    }
    return _myView2;
}


@end
