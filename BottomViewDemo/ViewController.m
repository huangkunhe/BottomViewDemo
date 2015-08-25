//
//  ViewController.m
//  BottomViewDemo
//
//  Created by river on 15/8/11.
//  Copyright (c) 2015年 river. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


@property(nonatomic,strong) UIView *bottomView;

@property(nonatomic,strong) UIButton *button;

- (IBAction)click:(id)sender;
- (IBAction)click2:(id)sender;

@end

int mainHeight = 300;
int mainWidth;
@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    mainWidth = self.view.bounds.size.width;
    UISwipeGestureRecognizer *recognizer;
    recognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipeFrom)];
    [recognizer setDirection:(UISwipeGestureRecognizerDirectionUp)];
    [self.view addGestureRecognizer:recognizer];
    
    recognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipeTo)];
    [recognizer setDirection:(UISwipeGestureRecognizerDirectionDown)];
    [self.view addGestureRecognizer:recognizer];
    
    
    
    self.bottomView = [[UIView alloc] init];
    [self.view addSubview:self.bottomView];
    [self.bottomView setTranslatesAutoresizingMaskIntoConstraints:NO];
    LAY_CONS_ADD(self.view, self.bottomView, NSLayoutAttributeTop, NSLayoutRelationEqual, self.view, NSLayoutAttributeBottom, 1, -20);
    LAY_CONS_ADD(self.view, self.bottomView, NSLayoutAttributeHeight, NSLayoutRelationEqual, nil, NSLayoutAttributeHeight, 1, mainHeight);
    LAY_CONS_ADD(self.view, self.bottomView, NSLayoutAttributeLeft, NSLayoutRelationEqual, self.view, NSLayoutAttributeLeft, 1, 10);
    LAY_CONS_ADD(self.view, self.bottomView, NSLayoutAttributeRight, NSLayoutRelationEqual, self.view, NSLayoutAttributeRight, 1, -10);
    
    UIImageView *backgroundView =[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"zg_salesman_pop_m"]];
    [self.bottomView addSubview:backgroundView];
    [backgroundView setTranslatesAutoresizingMaskIntoConstraints:NO];
    LAY_CONS_ADD(self.bottomView, backgroundView, NSLayoutAttributeTop, NSLayoutRelationEqual,self.bottomView, NSLayoutAttributeTop, 1, 10);
    LAY_CONS_ADD(self.bottomView, backgroundView, NSLayoutAttributeLeft, NSLayoutRelationEqual,self.bottomView, NSLayoutAttributeLeft, 1, 0);
    LAY_CONS_ADD(self.bottomView, backgroundView, NSLayoutAttributeRight, NSLayoutRelationEqual,self.bottomView, NSLayoutAttributeRight, 1, 0);
    LAY_CONS_ADD(self.bottomView, backgroundView, NSLayoutAttributeBottom, NSLayoutRelationEqual,self.bottomView, NSLayoutAttributeBottom, 1, 0);
    
    UIImageView *backgroundTopView =[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"zg_salesman_pop_t"]];
    [self.bottomView addSubview:backgroundTopView];
    [backgroundTopView setTranslatesAutoresizingMaskIntoConstraints:NO];
    LAY_CONS_ADD(self.bottomView, backgroundTopView, NSLayoutAttributeTop, NSLayoutRelationEqual,self.bottomView, NSLayoutAttributeTop, 1, 0);
    LAY_CONS_ADD(self.bottomView, backgroundTopView, NSLayoutAttributeLeft, NSLayoutRelationEqual,self.bottomView, NSLayoutAttributeLeft, 1, 0);
    LAY_CONS_ADD(self.bottomView, backgroundTopView, NSLayoutAttributeRight, NSLayoutRelationEqual,self.bottomView, NSLayoutAttributeRight, 1, 0);
    LAY_CONS_ADD(self.bottomView, backgroundTopView, NSLayoutAttributeBottom, NSLayoutRelationEqual,backgroundView, NSLayoutAttributeTop, 1, 0);
    
    UIImageView *salesmanView =[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"liantu"]];
    [self.bottomView addSubview:salesmanView];
    [salesmanView setTranslatesAutoresizingMaskIntoConstraints:NO];
    LAY_CONS_ADD(self.bottomView, salesmanView, NSLayoutAttributeTop, NSLayoutRelationEqual,self.bottomView, NSLayoutAttributeTop, 1, 20);
    LAY_CONS_ADD(self.bottomView, salesmanView, NSLayoutAttributeLeft, NSLayoutRelationEqual,self.bottomView, NSLayoutAttributeLeft, 1, 20);
    LAY_CONS_ADD(self.bottomView, salesmanView, NSLayoutAttributeRight, NSLayoutRelationEqual,self.bottomView, NSLayoutAttributeRight, 1, -20);
    LAY_CONS_ADD(self.bottomView, salesmanView, NSLayoutAttributeHeight, NSLayoutRelationEqual,salesmanView, NSLayoutAttributeWidth, 1, 0);

    
    
//   UIImage *imageR=[UIImage imageNamed:@"liantu"];
//    UIImageView *imageView =[[UIImageView alloc] initWithFrame:CGRectMake(10, 10, mainWidth-20, 300)];
//    imageView.image=imageR;
//    imageView.backgroundColor=[UIColor whiteColor];
//    [self.bottomView addSubview:imageView];
    
    [self.view addSubview:self.button];
    
    //平移
//    UIPanGestureRecognizer *panGes=[[UIPanGestureRecognizer alloc]initWithTarget:self action:@selector(handlePan:)];
//    [self.bottomView addGestureRecognizer:panGes];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
- (IBAction)click:(id)sender {
        [UIView animateWithDuration:0.3
                              delay:0
                            options:UIViewAnimationOptionCurveEaseInOut
                         animations:^{
                             
                             CGRect rectNew2 = self.bottomView.frame;
                             rectNew2.origin.y = self.view.frame.size.height-mainHeight;
                             self.bottomView.frame = rectNew2;
                         }
                         completion:^(BOOL finished){
                             
                         }];

    
}

- (IBAction)click2:(id)sender {
    
    [UIView animateWithDuration:0.3
                          delay:0
                        options:UIViewAnimationOptionCurveEaseInOut
                     animations:^{
                         
                         CGRect rectNew = self.bottomView.frame;
                         rectNew.origin.y = self.view.frame.size.height-20;
                         self.bottomView.frame = rectNew;
                     }
                     completion:^(BOOL finished){
                         
                     }];
    
}

-(void)handleSwipeFrom
{
    [UIView animateWithDuration:0.3
                          delay:0
                        options:UIViewAnimationOptionCurveEaseInOut
                     animations:^{
                         CGRect rectNew2 = self.bottomView.frame;
                         rectNew2.origin.y = self.view.frame.size.height-mainHeight;
                         self.bottomView.frame = rectNew2;
                     }
                     completion:^(BOOL finished){
                         
                     }];

    
}


-(void)handleSwipeTo
{
    [UIView animateWithDuration:0.3
                          delay:0
                        options:UIViewAnimationOptionCurveEaseInOut
                     animations:^{
                         
                         CGRect rectNew = self.bottomView.frame;
                         rectNew.origin.y = self.view.frame.size.height-20;
                         self.bottomView.frame = rectNew;
                     }
                     completion:^(BOOL finished){
                         
                     }];
    
}

-(void)handlePan:(UIPanGestureRecognizer*)gestureRecognizer{
    
    //获取平移手势对象在self.view的位置点，并将这个点作为self.bottomView 的center,
    //这样就实现了拖动的效果
    CGPoint curPoint2 = [gestureRecognizer translationInView:self.view];
    CGFloat y=[self.bottomView center].y+curPoint2.y;
    y=MAX(self.view.frame.size.height-mainHeight/2, y);
    NSLog(@"-------------y1:%f------------",self.bottomView.frame.origin.y);
    NSLog(@"-------------y2:%f------------",y);
    NSLog(@"-------------y3:%f------------",curPoint2.y);
    [self.bottomView setCenter:CGPointMake([self.bottomView center].x, y)];
    
    if(gestureRecognizer.state==UIGestureRecognizerStateEnded)
    {
         [gestureRecognizer setTranslation:CGPointZero inView:self.bottomView];
        if (curPoint2.y<=0) {
            [UIView animateWithDuration:0.5
                                  delay:0
                                options:UIViewAnimationOptionCurveEaseInOut
                             animations:^{
                                 CGRect rectNew2 = self.bottomView.frame;
                                rectNew2.origin.y =self.view.frame.size.height-mainHeight;
                                 self.bottomView.frame = rectNew2;
                             }
                             completion:^(BOOL finished){
                                 
                             }];
        }
        else
        {
            [UIView animateWithDuration:0.5
                                  delay:0
                                options:UIViewAnimationOptionCurveEaseInOut
                             animations:^{
                                 
                                 CGRect rectNew = self.bottomView.frame;
                                 rectNew.origin.y = self.view.frame.size.height-20;
                                 self.bottomView.frame = rectNew;
                             }
                             completion:^(BOOL finished){
                                 
                                 
                             }];
        }
        
    }
}

@end
