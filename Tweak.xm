#import "libcolorpicker.h"

NSDictionary *bundleDefaults = [[NSUserDefaults standardUserDefaults]
	persistentDomainForName:@"com.adriandev.colorshortcutsprefs"];

	NSString *iconColor = [bundleDefaults objectForKey:@"scColor"];


%hook UIImageView
-(void)setTintColor:(UIColor *)tintColor {
	%orig;
	if ([self.superview.superview class] == objc_getClass("SBDashBoardQuickActionsButton")) {
		%orig (LCPParseColorString([bundleDefaults objectForKey:@"scColor"], @"#FFFFFF"));
	}	
}
%end

/*
-(void)tintColorDidChange {
	%orig;
	if ([self.superview.superview class] == objc_getClass("SBDashBoardQuickActionsButton")) {
		self.tintColor = [LCPParseColorString([colors objectForKey:@"scColor"], @"#ffffff") copy];
		//self.tintColor = UIColor *imageColor = LCPParseColorString(iconColor, @"#ffffff")]; 
	}
}
*/