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


NSString* const Q = @"q";
NSString* const PAGE_NO = @"page_no";
NSString* const TAOBAO_PAGE_SIZE = @"page_size";

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

