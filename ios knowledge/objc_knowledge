debugging:
- LLDB
- instruments
- zombies

instruments
- allocations
- system profiler
- 


chisel
snapshot testing
pop


proper string enumeration
enumerateSubstringsInRange:options:usingBlock: 

Unicode is not a 16-bit encoding! It’s 21 bits wide. These 21 bits provide room for 1,114,112 code points. Only approximately 10 percent of those are currently in use, so there is plenty of room to grow.

Unicode has different UTF unicode transform formats
utf32 - rarely used because of wastefulness
utf16 - with surrogate pairs
utf8 - most often used

check on NSIndexSet

NSarry
- not necessarly o(1) access


bianry search
- (NSUInteger)indexOfObject:(id)obj 
              inSortedRange:(NSRange)r 
                    options:(NSBinarySearchingOptions)opts 
            usingComparator:(NSComparator)cmp;

sorting
NSArray *sortedNumbers = [numbers sortedArrayUsingSelector:@selector(compare:)];


array.reverseObjectEnumerator.allObjects

Importing
1. dont need to use imports -> @class is enough
2. only for protocols and when inheriting

Literals for dictionaries:
setting @[@"":@""]
accessing [@""]

static const type x;
static - local to translating unit
external - written to global symbol table

extern type *const x;
type *const x=@"";

bitwise enum
{
	1 = 0,
	2 = 1 << 0,
	3 = 1 << 1,
	4 = 1 << 2,
};

typedef NSEnumeration;

ABI - aplication binary interface

@dynamic - skip creation of ivars and accessors

unsafe_unretained - same as weak but does not nil -> not needed for ARC

Accessing values:
externally use properties,
internally use ivars for getting, properties for setting

IVARS:
faster
override memory semantics
dont generate KVO events

comparing:
isequal
hash

isclass never works on array (as it is a subclass of a class cluster)


associated objects
- implement set, get, remove


autorelease 

autorelease pool - let you to drain excessive memory every event loop (for every thread)

nszombie set deallocated properties to zombies to avoid crashes
avoid retainCount
-because autoreleases might be pending
-nsstring as a singleton so every string counts as one