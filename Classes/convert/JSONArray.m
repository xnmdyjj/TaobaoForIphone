#import "JSONArray.h"
#import "JSON.h"

@implementation JSONArray

@synthesize array;

-(JSONArray *)init {
	if (self = [super init]) {
		self.array = nil;
	}
	return self;
}

-(JSONArray *)initWithString:(NSString *)string {
	if (self = [super init]) {
		SBJSON *parser = [[SBJSON alloc] init];
		self.array = [parser objectWithString:string error:nil];
		[parser release];
	}
	return self;
}

-(JSONArray *)initWithArray:(NSArray *)newArray {
	if (self = [super init]) {
		self.array = newArray;
	}
	return self;
}

-(JSONArray *)initWithJSONArray:(JSONArray *)jsonArray {
	if (self = [super init]) {
		self.array = jsonArray.array;
	}
	return self;
}

-(NSUInteger)length {
	return [array count];	
}

-(JSONObject *)getJSONObject:(NSUInteger)index {
	NSDictionary *objectAtIndex;
	JSONObject *jsonObject;
	if (objectAtIndex = [array objectAtIndex:index]) {
		jsonObject = [[JSONObject alloc] init];	
		jsonObject.dictionary = objectAtIndex;
	}
	[jsonObject autorelease];
	return jsonObject;
}

-(void)dealloc {
	[array dealloc];
	[super dealloc];
}

@end