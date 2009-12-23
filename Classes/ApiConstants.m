#import "ApiConstants.h"
NSString * const SIP_SERVICE_URL = @"http://sip.alisoft.com/sip/rest/";
/**
	 * 阿里软件SIP沙箱环境入口
	 */
NSString* const SIP_SANDBOX_SERVICE_URL = @"http://sipdev.alisoft.com/sip/rest/";

	/**
	 * 淘宝API入口
	 */
NSString* const API_SERVICE_URL = @"http://gw.api.taobao.com/router/rest";

	/**
	 * 淘宝插件平台入口
	 */
NSString* const CONTAINER_URL = @"http://container.api.taobao.com/container";

	/**
	 * 淘宝API沙箱环境入口
	 */
NSString* const API_SANDBOX_SERVICE_URL = @"http://gw.sandbox.taobao.com/router/rest";

	/**
	 * 淘宝插件平台沙箱环境入口
	 */
NSString* const CONTAINER_SANDBOX_URL = @"http://container.sandbox.taobao.com/container";

NSString* const EMPTY_STR = @"";

	// SIP系统级参数
NSString* const  SIP_APPKEY = @"sip_appkey";
NSString* const  SIP_APINAME = @"sip_apiname";
NSString* const SIP_SESSIONID = @"sip_sessionid";
NSString* const SIP_SIGN = @"sip_sign";
NSString* const SIP_TIMESTAMP = @"sip_timestamp";
	// 系统级参数
NSString* const APIKEY = @"api_key";
NSString* const METHOD = @"method";
NSString* const SESSION = @"session";
NSString* const SIGN = @"sign";
NSString* const TIMESTAMP = @"timestamp";
	// 默认版本号
NSString* const DEFAULT_SERVICE_VERSION = @"1.0";

// 应用参数
	// Error Response Params
NSString* const ERROR_RSP = @"error_rsp";
NSString* const ERROR_CODE = @"code";
NSString* const ERROR_MSG = @"msg";

// Base Response Params
NSString* const RSP = @"rsp";
NSString* const TOTALRESULTS = @"totalResults";
NSString* const ITEMS = @"items";
NSString* const USERS = @"users";
NSString* const ITEM_CATS = @"item_cats";
NSString* const SHOP_CATS = @"shop_cats";
NSString* const SELLER_CATS = @"seller_cats";
NSString* const SPUS = @"spus";
NSString* const ITEM_PROPS = @"item_props";
NSString* const POSTAGES = @"postages";
NSString* const SKUS = @"skus";

// Base Params
NSString* const ANONS = @"anons";
NSString* const TYPE = @"type";
NSString* const STUFF_STATUS = @"stuff_status";
NSString* const APPROVE_STATUS = @"approve_status";
NSString* const CID = @"cid";
NSString* const DATETIME = @"datetime";
NSString* const PROPS = @"props";
NSString* const PARENT_PID = @"parent_pid";
NSString* const IS_KEY_PROP = @"is_key_prop";
NSString* const IS_SALE_PROP = @"is_sale_prop";
NSString* const IS_COLOR_PROP = @"is_color_prop";
NSString* const IS_ENUM_PROP = @"is_enum_prop";
NSString* const IS_INPUT_PROP = @"is_input_prop";
NSString* const CHILD_TEMPLATE = @"child_template";
NSString* const PVS = @"pvs";
NSString* const SORT_ORDER = @"sort_order";
NSString* const PROP_NAME = @"prop_name";
NSString* const MUST = @"must";
NSString* const MULTI = @"multi";
NSString* const PARENT_VID = @"parent_vid";
NSString* const NUM = @"num";
NSString* const PRICE = @"price";
NSString* const TITLE = @"title";
NSString* const DESC = @"desc";
NSString* const LOCATION_STATE = @"location.state";
NSString* const LOCATION_CITY = @"location.city";
NSString* const FREIGHT_PAYER = @"freight_payer";
NSString* const VALID_THRU = @"valid_thru";
NSString* const HAS_INVOICE = @"has_invoice";
NSString* const HAS_WARRANTY = @"has_warranty";
NSString* const SELLER_CIDS = @"seller_cids";
NSString* const HAS_DISCOUNT = @"has_discount";
NSString* const POST_FEE = @"post_fee";
NSString* const EXPRESS_FEE = @"express_fee";
NSString* const LIST_TIME = @"list_time";
NSString* const INCREMENT = @"increment";
NSString* const AUTO_REPOST = @"auto_repost";
NSString* const HAS_SHOWCASE = @"has_showcase";
NSString* const EMS_FEE = @"ems_fee";
NSString* const FIELDS = @"fields";
NSString* const NICK = @"nick";
NSString* const IID = @"iid";
NSString* const IIDS = @"iids";
NSString* const PIC_PATH = @"pic_path";
NSString* const DELIST_TIME = @"delist_time";

NSString* const BULK_BASE_NUM = @"bulk_base_num";
NSString* const MODIFIED = @"modified";

NSString* const Q = @"q";
NSString* const PAGE_NO = @"page_no";
NSString* const PAGE_SIZE = @"page_size";

NSString* const ORDER_BY = @"order_by";
NSString* const START_PRICE = @"start_price";
NSString* const END_PRICE = @"end_price";
NSString* const NICKS = @"nicks";
NSString* const SELLER_NICK = @"seller_nick";
NSString* const BUYER_NICK = @"buyer_nick";
NSString* const CREATED = @"created";
NSString* const TID = @"tid";
NSString* const STATUS = @"status";
NSString* const SELLER_RATE = @"seller_rate";
NSString* const BUYER_RATE = @"buyer_rate";
NSString* const START_CREATED = @"start_created";
NSString* const END_CREATED = @"end_created";
NSString* const SEX = @"sex";
NSString* const BUYER_CREDIT = @"buyer_credit";
NSString* const LEVEL = @"level";
NSString* const SCORE = @"score";
NSString* const TOTAL_NUM = @"total_num";
NSString* const GOOD_NUM = @"good_num";
NSString* const SELLER_CREDIT = @"seller_credit";
NSString* const LOCATION = @"location";
NSString* const CITY = @"city";
NSString* const STATE = @"state";
NSString* const COUNTRY = @"country";
NSString* const ZIP = @"zip";
NSString* const ADDRESS = @"address";
NSString* const LAST_VISIT = @"last_visit";
NSString* const REAL_NAME = @"real_name";
NSString* const ID_CARD = @"id_card";
NSString* const PHONE = @"phone";
NSString* const MOBILE = @"mobile";
NSString* const EMAIL = @"email";
NSString* const BIRTHDAY = @"birthday";
NSString* const PARENT_CID = @"parent_cid";
NSString* const CIDS = @"cids";
NSString* const IS_PARENT = @"is_parent";
NSString* const NAME = @"name";
NSString* const BINDS = @"binds";
NSString* const PID = @"pid";
NSString* const CHILD_PATH = @"child_path";
NSString* const PUB_MUST = @"pub_must";
NSString* const PUB_MULTI = @"pub_multi";
NSString* const PROP_VALUES = @"prop_values";
NSString* const VID = @"vid";
NSString* const TRADES = @"trades";
NSString* const ALIPAYNO = @"alipay_no";
NSString* const PAYMENT = @"payment";
NSString* const SID = @"sid";
NSString* const DELIVERY_START = @"delivery_start";
NSString* const DELIVERY_END = @"delivery_end";
NSString* const OUT_SID = @"out_sid";
NSString* const ITEM_TITLE = @"item_title";
NSString* const RECEIVER_NAME = @"receiver_name";
NSString* const RECEIVER_MOBILE = @"receiver_mobile";
NSString* const RECEIVER_PHONE = @"receiver_phone";
NSString* const RECEIVER_LOCATION = @"receiver_location";
NSString* const COMPANY_NAME = @"company_name";
NSString* const BULLETIN = @"bulletin";
NSString* const ROLE = @"role";
NSString* const RATED_NICK = @"rated_nick";
NSString* const RESULT = @"result";
NSString* const ITEM_PRICE = @"item_price";
NSString* const CONTENT = @"content";
NSString* const REPLY = @"reply";
NSString* const ANONY = @"anony";
NSString* const SHIPPINGS = @"ship";
NSString* const SHOPS = @"shops";
NSString* const TRADERATES = @"rates";
NSString* const SELLER_CONFIRM = @"seller_confirm";
NSString* const RATE_TYPE = @"rate_type";
NSString* const TIME_PERIOD = @"time_period";
NSString* const BANNER = @"banner";
NSString* const BULK_PRICE = @"bulk_price";
NSString* const REMAIN_COUNT = @"remain_count";
NSString* const POSTAGE_ID = @"postage_id";
NSString* const MEMO = @"memo";
NSString* const PICID = @"pic_id";
NSString* const PRODUCT_ID = @"product_id";
NSString* const AUCTION_POINT = @"auction_point";
NSString* const PROPERTY_ALIAS = @"property_alias";
NSString* const ITEMIMGS = @"itemImgs";
NSString* const PROPIMGS = @"propImgs";
NSString* const SKU = @"sku";
NSString* const SKU_ID = @"sku_id";
NSString* const ID = @"id";
NSString* const ITEMIMG_ID = @"itemimg_id";
NSString* const PROPIMG_ID = @"propimg_id";

NSString* const URL = @"url";
NSString* const POSITION = @"position";
NSString* const PROPERTIES = @"properties";
NSString* const QUANTITY = @"quantity";
NSString* const OUTER_ID = @"outer_id";
NSString* const WW_STATUS = @"ww_status";
NSString* const POST_FREE = @"post_free";
NSString* const SKU_IDS = @"sku_ids";
NSString* const SKU_PROPERTIES = @"sku_properties";
NSString* const SKU_QUANTITIES = @"sku_quantities";
NSString* const SKU_PRICES = @"sku_prices";
NSString* const SKU_OUTER_IDS = @"sku_outer_ids";
NSString* const START_DATE = @"start_date";
NSString* const END_DATE = @"end_date";
NSString* const ISMAJOR = @"is_major";
NSString* const INPUT_PIDS = @"input_pids";
NSString* const INPUT_STR = @"input_str";

NSString* const REFUND_STATUS = @"refund_status";
NSString* const BUYER_MESSAGE = @"buyer_message";
NSString* const PAY_TIME = @"pay_time";
NSString* const END_TIME = @"end_time";
NSString* const BUYER_OBTAIN_POINT_FEE = @"buyer_obtain_point_fee";
NSString* const POINT_FEE = @"point_fee";
NSString* const REAL_POINT_FEE = @"real_point_fee";
NSString* const SELLER_MEMO = @"seller_memo";
NSString* const BUYER_MEMO = @"buyer_memo";
NSString* const ORDERS = @"orders";
NSString* const LANG = @"lang";
NSString* const TOTAL_FEE = @"total_fee";


static BOOL enableSIP;
static BOOL enableTaobao;

@implementation ApiConstants

+ (void) setEnableSIP:(BOOL)newValue {
   enableSIP = newValue;
}

+ (BOOL) enableSIP {

   return enableSIP;
}

+ (void) setEnableTaobao:(BOOL)newValue {
   enableTaobao = newValue;
}

+ (BOOL) enableTaobao {
    return enableTaobao;
}

@end

