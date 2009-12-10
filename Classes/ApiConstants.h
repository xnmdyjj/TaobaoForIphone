
extern NSString * const SIP_SERVICE_URL;
/**
	 * 阿里软件SIP沙箱环境入口
	 */
extern  NSString* const SIP_SANDBOX_SERVICE_URL;

	/**
	 * 淘宝API入口
	 */
extern NSString* const API_SERVICE_URL;

	/**
	 * 淘宝插件平台入口
	 */
extern NSString* const CONTAINER_URL;

	/**
	 * 淘宝API沙箱环境入口
	 */
extern NSString* const API_SANDBOX_SERVICE_URL;

	/**
	 * 淘宝插件平台沙箱环境入口
	 */
extern NSString* const CONTAINER_SANDBOX_URL;

extern NSString* const EMPTY_STR;
	// SIP系统级参数
extern NSString* const  SIP_APPKEY ;
extern NSString* const  SIP_APINAME ;
extern NSString* const SIP_SESSIONID;
extern NSString* const SIP_SIGN ;
extern NSString* const SIP_TIMESTAMP;
	// 系统级参数
extern NSString* const APIKEY;
extern NSString* const METHOD;
extern NSString* const SESSION;
extern NSString* const SIGN;
extern NSString* const TIMESTAMP;
	// 默认版本号
extern NSString* const DEFAULT_SERVICE_VERSION;

// 应用参数
	// Error Response Params
extern NSString* const ERROR_RSP;
extern NSString* const ERROR_CODE;
extern NSString* const ERROR_MSG;

// Base Response Params
extern NSString* const RSP;
extern NSString* const TOTALRESULTS;
extern NSString* const ITEMS;
extern NSString* const USERS;
extern NSString* const ITEM_CATS;
extern NSString* const SHOP_CATS;
extern NSString* const SELLER_CATS;
extern NSString* const SPUS;
extern NSString* const ITEM_PROPS;
extern NSString* const POSTAGES;
extern NSString* const SKUS;

// Base Params
extern NSString* const ANONS;
extern NSString* const TYPE;
extern NSString* const STUFF_STATUS;
extern NSString* const APPROVE_STATUS;
extern NSString* const CID ;
extern NSString* const DATETIME;
extern NSString* const PROPS;
extern NSString* const PARENT_PID;
extern NSString* const IS_KEY_PROP ;
extern NSString* const IS_SALE_PROP;
extern NSString* const IS_COLOR_PROP;
extern NSString* const IS_ENUM_PROP;
extern NSString* const IS_INPUT_PROP;
extern NSString* const CHILD_TEMPLATE;
extern NSString* const PVS;
extern NSString* const SORT_ORDER;
extern NSString* const PROP_NAME;
extern NSString* const MUST;
extern NSString* const MULTI;
extern NSString* const PARENT_VID;
extern NSString* const NUM;
extern NSString* const PRICE;
extern NSString* const TITLE;
extern NSString* const DESC;
extern NSString* const LOCATION_STATE;
extern NSString* const LOCATION_CITY;
extern NSString* const FREIGHT_PAYER;
extern NSString* const VALID_THRU;
extern NSString* const HAS_INVOICE;
extern NSString* const HAS_WARRANTY;
extern NSString* const SELLER_CIDS;
extern NSString* const HAS_DISCOUNT;
extern NSString* const POST_FEE;
extern NSString* const EXPRESS_FEE;
extern NSString* const LIST_TIME;
extern NSString* const INCREMENT;
extern NSString* const AUTO_REPOST;
extern NSString* const HAS_SHOWCASE;
extern NSString* const EMS_FEE;
extern NSString* const FIELDS;
extern NSString* const NICK;
extern NSString* const IID;
extern NSString* const IIDS ;
extern NSString* const PIC_PATH;
extern NSString* const DELIST_TIME;
/*
	public static final String BULK_BASE_NUM = "bulk_base_num";
	public static final String MODIFIED = "modified";*/
extern NSString* const Q;
extern NSString* const PAGE_NO;
extern NSString* const TAOBAO_PAGE_SIZE;
/*
	public static final String ORDER_BY = "order_by";
	public static final String START_PRICE = "start_price";
	public static final String END_PRICE = "end_price";
	public static final String NICKS = "nicks";
	public static final String SELLER_NICK = "seller_nick";
	public static final String BUYER_NICK = "buyer_nick";
	public static final String CREATED = "created";
	public static final String TID = "tid";
	public static final String STATUS = "status";
	public static final String SELLER_RATE = "seller_rate";
	public static final String BUYER_RATE = "buyer_rate";
	public static final String START_CREATED = "start_created";
	public static final String END_CREATED = "end_created";
	public static final String SEX = "sex";
	public static final String BUYER_CREDIT = "buyer_credit";
	public static final String LEVEL = "level";
	public static final String SCORE = "score";
	public static final String TOTAL_NUM = "total_num";
	public static final String GOOD_NUM = "good_num";
	public static final String SELLER_CREDIT = "seller_credit";
	public static final String LOCATION = "location";
	public static final String CITY = "city";
	public static final String STATE = "state";
	public static final String COUNTRY = "country";
	public static final String ZIP = "zip";
	public static final String ADDRESS = "address";
	public static final String LAST_VISIT = "last_visit";
	public static final String REAL_NAME = "real_name";
	public static final String ID_CARD = "id_card";
	public static final String PHONE = "phone";
	public static final String MOBILE = "mobile";
	public static final String EMAIL = "email";
	public static final String BIRTHDAY = "birthday";
	public static final String PARENT_CID = "parent_cid";
	public static final String CIDS = "cids";
	public static final String IS_PARENT = "is_parent";
	public static final String NAME = "name";
	public static final String BINDS = "binds";
	public static final String PID = "pid";
	public static final String CHILD_PATH = "child_path";
	public static final String PUB_MUST = "pub_must";
	public static final String PUB_MULTI = "pub_multi";
	public static final String PROP_VALUES = "prop_values";
	public static final String VID = "vid";
	public static final String TRADES = "trades";
	public static final String ALIPAYNO = "alipay_no";
	public static final String PAYMENT = "payment";
	public static final String SID = "sid";
	public static final String DELIVERY_START = "delivery_start";
	public static final String DELIVERY_END = "delivery_end";
	public static final String OUT_SID = "out_sid";
	public static final String ITEM_TITLE = "item_title";
	public static final String RECEIVER_NAME = "receiver_name";
	public static final String RECEIVER_MOBILE = "receiver_mobile";
	public static final String RECEIVER_PHONE = "receiver_phone";
	public static final String RECEIVER_LOCATION = "receiver_location";
	public static final String COMPANY_NAME = "company_name";
	public static final String BULLETIN = "bulletin";
	public static final String ROLE = "role";
	public static final String RATED_NICK = "rated_nick";
	public static final String RESULT = "result";
	public static final String ITEM_PRICE = "item_price";
	public static final String CONTENT = "content";
	public static final String REPLY = "reply";
	public static final String ANONY = "anony";
	public static final String SHIPPINGS = "ship";
	public static final String SHOPS = "shops";
	public static final String TRADERATES = "rates";
	public static final String SELLER_CONFIRM = "seller_confirm";
	public static final String RATE_TYPE = "rate_type";
	public static final String TIME_PERIOD = "time_period";
	public static final String BANNER = "banner";
	public static final String BULK_PRICE = "bulk_price";
	public static final String REMAIN_COUNT = "remain_count";
	public static final String POSTAGE_ID = "postage_id";
	public static final String MEMO = "memo";
	public static final String PICID = "pic_id";
	public static final String PRODUCT_ID = "product_id";
	public static final String AUCTION_POINT = "auction_point";
	public static final String PROPERTY_ALIAS = "property_alias";
	public static final String ITEMIMGS = "itemImgs";
	public static final String PROPIMGS = "propImgs";
	public static final String SKU = "sku";
	public static final String SKU_ID = "sku_id";
	public static final String ID = "id";
	public static final String ITEMIMG_ID = "itemimg_id";
	public static final String PROPIMG_ID = "propimg_id";*/
extern NSString* const URL;

	
@interface ApiConstants:NSObject 


+ (void) setEnableSIP:(BOOL)newValue;
+ (BOOL) enableSIP;
+ (void) setEnableTaobao:(BOOL)newValue;
+ (BOOL) enableTaobao;

@end

