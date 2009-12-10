#import "JSONObject.h"
#import "JSON.h"

@implementation JSONObject

@synthesize dictionary;


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
		/*
		NSLog(@"key = %@", key);
		for (NSString *test in dictionaryForKey) {
			NSLog(@"%@ = %@", test, [dictionaryForKey valueForKey:test]);
		}*/
		jsonObject = [[JSONObject alloc] init];
		jsonObject.dictionary = dictionaryForKey;
	}
	[jsonObject autorelease];
	return jsonObject;
}

-(NSString *)getString:(NSString *)key {
	NSLog(@"%@ = %@", key, [dictionary valueForKey:key]);
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
		jsonArray = [[JSONArray alloc] initWithArray:arrayForKey];
	}
	return jsonArray;
}

-(void)dealloc {
	[dictionary release];
	[super dealloc];
}

@end