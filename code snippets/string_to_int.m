#import <Foundation/Foundation.h>
#import <stdio.h>


int main(int argc, const char * argv[]) {
	@autoreleasepool {
		NSString *string = @"364334";
		NSUInteger length = string.length;
		NSUInteger value = 0;
		for(NSUInteger i=0; i < length; i++) {
			unichar u = [string characterAtIndex:i];
			value += pow(10,length-i-1)* (u - 48);
		}
		
		NSLog(@"result: %lu", value);

		char data[] = "364334";
		int result = 0;
		for(int i=0;i<strlen(data);i++) {
			int v = data[i]-48;
			result += pow(10,strlen(data)-i-1)*v;
		}
		printf("%d\n",result);
	}
}