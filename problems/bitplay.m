#import <Foundation/Foundation.h>
#import <stdio.h>


void printByte(const char *byte, unsigned int length) {
	for (int i= 0; i < length; i++) {
		char n = byte[i];
		char buffer[9];
		buffer[8] = 0;
		for(int j=7;j>=0;j--) {
			if(n&0x01) {
				buffer[j]= '1';
			} else {
				buffer[j]= '0';
			}
			n >>= 1;
		}
		printf("%s ", buffer);

	}

}


int main(int argc, char *argv[]) {



	NSUInteger x = 34535;
	NSData *data = [NSData dataWithBytes: &x length:sizeof(x)];
	const char *byte = [data bytes];

unsigned int length = [data length];
	printByte(byte, length);
// NSLog(@"%d", length);
// for (int i=0; i<length; i++) {
//     char n = byte[i];
//     char buffer[9];
//     buffer[8] = 0; //for null
//     int j = 8;
//     while(j > 0)
//     {
//         if(n & 0x01)
//         {
//             buffer[--j] = '1';
//         } else
//         {
//             buffer[--j] = '0';
//         }
//         n >>= 1;
//     }
//     printf("%s ",buffer);
// }


	//NSLog(@"bity: %s ",bytes);
	return 0;
}