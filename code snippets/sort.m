#include <Foundation/Foundation.h>

@interface Sort: NSObject

+(NSString *)sort:(NSString *)input;

@end

@implementation Sort

+(NSString *)sort:(NSString *)input {
	
	char *output = calloc(input.length+1,sizeof(char));
	char *data = [input cStringUsingEncoding: NSASCIIStringEncoding];
	printf("%s\n", data);
	for(int i=0;i<input.length;i++) {
		for(int j=0;j<i;j++) {
			if(data[i] > output[j]) {
				output[i] = data[j];
				NSLog(@"here i: %d c: %c", i, data[j]);			
				break;
			}
		}
	}
	output[input.length] = '\n';
	printf("%s\n", output);
	NSString *out = [[NSString alloc] initWithCString: output encoding: NSASCIIStringEncoding];
	NSLog(@"%@",out);
	free(output);
	return out;
}

@end

int main(int argc, char *argv[]) {
	
	@autoreleasepool {
		NSLog(@"%@",[Sort sort:@"xag"]);
	}
}