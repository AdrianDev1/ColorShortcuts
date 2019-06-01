#include "CSPRootListController.h"
#include<spawn.h>
#import "libcolorpicker.h"

@implementation CSPRootListController

- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"Root" target:self] retain];
	}

	return _specifiers;
}

-(void)openTwitter {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://twitter.com/adriandev_"] 
    options:@{}
    completionHandler:nil];
}

-(void)respring{
    pid_t pid;
    int status;
    const char* args[] = {"killall", "SpringBoard", NULL};
    posix_spawn(&pid, "/usr/bin/killall", NULL, NULL, (char* const*)args, NULL);
    waitpid(pid, &status, WEXITED);
}

@end