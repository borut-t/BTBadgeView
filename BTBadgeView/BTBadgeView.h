//
//  BTBadgeView.h
//
//  Version 1.1
//
//  Created by Borut Tomazin on 12/04/2013.
//  Copyright 2013 Borut Tomazin
//
//  Distributed under the permissive zlib License
//  Get the latest version from here:
//
//  https://github.com/borut-t/BTBadgeView
//
//  This software is provided 'as-is', without any express or implied
//  warranty.  In no event will the authors be held liable for any damages
//  arising from the use of this software.
//
//  Permission is granted to anyone to use this software for any purpose,
//  including commercial applications, and to alter it and redistribute it
//  freely, subject to the following restrictions:
//
//  1. The origin of this software must not be misrepresented; you must not
//  claim that you wrote the original software. If you use this software
//  in a product, an acknowledgment in the product documentation would be
//  appreciated but is not required.
//
//  2. Altered source versions must be plainly marked as such, and must not be
//  misrepresented as being the original software.
//
//  3. This notice may not be removed or altered from any source distribution.
//

#import <UIKit/UIKit.h>

#ifdef __IPHONE_6_0 // iOS6 and later
#  define UITextAlignment                   NSTextAlignment
#  define UITextAlignmentCenter             NSTextAlignmentCenter
#  define UITextAlignmentLeft               NSTextAlignmentLeft
#  define UITextAlignmentRight              NSTextAlignmentRight
#  define UILineBreakModeTailTruncation     NSLineBreakByTruncatingTail
#  define UILineBreakModeMiddleTruncation   NSLineBreakByTruncatingMiddle
#endif

@interface BTBadgeView : UIView

// The current value displayed in the badge. Updating the value will update the view's display
@property (nonatomic,strong) NSString *value;

// Indicates whether the badge view draws a dhadow or not.
@property (nonatomic,assign) BOOL shadow;

// The offset for the shadow, if there is one.
@property (nonatomic,assign) CGSize shadowOffset;

// The base color for the shadow, if there is one.
@property (nonatomic,strong) UIColor * shadowColor;

// Indicates whether the badge view should be drawn with a shine
@property (nonatomic,assign) BOOL shine;

// The font to be used for drawing the numbers. NOTE: not all fonts are created equal for this purpose.
// Only "system fonts" should be used.
@property (nonatomic,strong) UIFont* font;

// The color used for the background of the badge.
@property (nonatomic,strong) UIColor* fillColor;

// The color to be used for drawing the stroke around the badge.
@property (nonatomic,strong) UIColor* strokeColor;

// The width for the stroke around the badge.
@property (nonatomic,assign) CGFloat strokeWidth;

// The color to be used for drawing the badge's numbers.
@property (nonatomic,strong) UIColor* textColor;

// How the badge image hould be aligned horizontally in the view. 
@property (nonatomic,assign) UITextAlignment alignment;

// Returns the visual size of the badge for the current value. Not the same hing as the size of the view's bounds.
// The badge view bounds should be wider than space needed to draw the badge.
@property (nonatomic,readonly) CGSize badgeSize;

// The number of pixels between the number inside the badge and the stroke around the badge. This value 
// is approximate, as the font geometry might effectively slightly increase or decrease the apparent pad.
@property (nonatomic,assign) NSUInteger pad;

// If YES, the badge will be hidden when the value is 0
@property (nonatomic,assign) BOOL hideWhenZero;

@end
