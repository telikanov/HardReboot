#import "PMAspectFitImageView.h"

@interface PMAspectFitImageView ()
@property (nonatomic, strong) NSLayoutConstraint *aspectRatio;
@end

@implementation PMAspectFitImageView

- (void)awakeFromNib
{
    [super awakeFromNib];
    if (self.contentMode == UIViewContentModeScaleAspectFit) {
        [self updateAspectRatioWithImage:self.image];
    }
}

- (void)setImage:(UIImage *)image
{
    [super setImage:image];
    
    if (self.contentMode == UIViewContentModeScaleAspectFit) {
        [self updateAspectRatioWithImage:image];
    }
}

- (void)updateAspectRatioWithImage:(UIImage *)image
{
    if (image == nil) {
        return;
    }
    
    if (self.aspectRatio) {
        [self removeConstraint:self.aspectRatio];
    }
    
    CGFloat aspectRatioValue = image.size.height / image.size.width;
    self.aspectRatio = [NSLayoutConstraint constraintWithItem:self
                                                    attribute:NSLayoutAttributeHeight
                                                    relatedBy:NSLayoutRelationEqual
                                                       toItem:self
                                                    attribute:NSLayoutAttributeWidth
                                                   multiplier:aspectRatioValue
                                                     constant:0.f];
    [self addConstraint:self.aspectRatio];
}

@end
