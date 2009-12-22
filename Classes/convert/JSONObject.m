#import "JSONObject.h"
#import "JSON.h"

@implementation JSONObject

@synthesize dictionary;

-(JSONObject *)init {
	if (self = [super init]) {
		self.dictionary = nil;
	}
	return self;
}

-(JSONObject *)initWithString:(NSString *)string {
	if (self = [super init]) {
		SBJSON *parser = [[SBJSON alloc] init];
		self.dictionary = [parser objectWithString:string error:nil];
		[parser release];
	}
	return self;
}

-(JSONObject *)initWithJSONObject:(JSONObject *)json {
	
	if (self = [super init]) {
		self.dictionary = json.dictionary;
	}
	return self;
}

-(BOOL)has:(NSString *)key {
	if ([dictionary valueForKey:key])
		return YES;
	return NO;
}

-(JSONObject *)getJSONObject:(NSString *)key {
	NSDictionary *dictionaryForKey;
	JSONObject *jsonObject;
	if (dictionaryForKey = [dictionary valueForKey:key]) {
		jsonObject = [[JSONObject alloc] init];
		jsonObject.dictionary = dictionaryForKey;
	}
	[jsonObject autorelease];
	return jsonObject;
}

-(NSString *)getString:(NSString *)key {
	NSString *stringForKey;
	if ([[dictionary valueForKey:key] isKindOfClass:[NSNumber class]]){
		NSNumber *numberValue =[dictionary valueForKey:key];
		stringForKey = [NSString stringWithString:numberValue.stringValue];
	}
	else {
		stringForKey = [NSString stringWithFormat:@"%@", [dictionary valueForKey:key]];
	}
	return stringForKey; 
}

-(JSONArray *)getJSONArray:(NSString *)key {
	NSArray *arrayForKey;
	JSONArray *jsonArray;
	if (arrayForKey = [dictionary valueForKey:key]) {
		jsonArray = [[JSONArray alloc] init];
		jsonArray.array = arrayForKey;
	}
	[jsonArray autorelease];
	return jsonArray;
}

-(void)dealloc {
	[dictionary release];
	[super dealloc];
}

@end