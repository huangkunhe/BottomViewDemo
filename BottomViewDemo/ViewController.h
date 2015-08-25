//
//  ViewController.h
//  BottomViewDemo
//
//  Created by river on 15/8/11.
//  Copyright (c) 2015年 river. All rights reserved.
//

#import <UIKit/UIKit.h>

//动态布局语句宏定义
#define LAY_CONS_ADD(_parent_item, _item, _item_attribute, _related_by, _to_item, _to_attribute, _multiplier, _constant) [_parent_item addConstraint:[NSLayoutConstraint constraintWithItem:_item attribute:_item_attribute relatedBy:_related_by toItem:_to_item attribute:_to_attribute multiplier:_multiplier constant:_constant]]

@interface ViewController : UIViewController


@end

