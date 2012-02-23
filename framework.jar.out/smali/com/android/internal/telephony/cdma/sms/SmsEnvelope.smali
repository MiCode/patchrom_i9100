.class public final Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
.super Ljava/lang/Object;
.source "SmsEnvelope.java"


# static fields
.field public static final MESSAGE_TYPE_ACKNOWLEDGE:I = 0x2

.field public static final MESSAGE_TYPE_BROADCAST:I = 0x1

.field public static final MESSAGE_TYPE_POINT_TO_POINT:I = 0x0

.field public static final SMS_BEARER_DATA_MAX:I = 0xff

.field public static final TELESERVICE_LGT_AM_ALARM_49200:I = 0xc030

.field public static final TELESERVICE_LGT_CBS_327680:I = 0x50000

.field public static final TELESERVICE_LGT_EMS_49175:I = 0xc017

.field public static final TELESERVICE_LGT_ETC_SHARE_49162:I = 0xc00a

.field public static final TELESERVICE_LGT_ETC_SHARE_LONG_49163:I = 0xc00b

.field public static final TELESERVICE_LGT_EVDO_ALWAYS_ON_49744:I = 0xc250

.field public static final TELESERVICE_LGT_FAX_STATUS_49194:I = 0xc02a

.field public static final TELESERVICE_LGT_FOTA_SMS:I = 0xc277

.field public static final TELESERVICE_LGT_INTERACT_BEGIN_49153:I = 0xc001

.field public static final TELESERVICE_LGT_LMS_63230:I = 0xf6fe

.field public static final TELESERVICE_LGT_PCS_PAGING_TID_4097:I = 0x1001

.field public static final TELESERVICE_LGT_PERSONAL_EMAIL_49752:I = 0xc258

.field public static final TELESERVICE_LGT_WAP_M_NOTI_IND_49173:I = 0xc015

.field public static final TELESERVICE_LGT_WAP_URL_NOTI_49166:I = 0xc00e

.field public static final TELESERVICE_LGT_WAP_URL_NOTI_49167:I = 0xc00f

.field public static final TELESERVICE_LGT_WAP_URL_NOTI_49168:I = 0xc010

.field public static final TELESERVICE_LGT_WEB_CP_49767:I = 0xc267

.field public static final TELESERVICE_LGT_WEB_CP_LONG_49768:I = 0xc268

.field public static final TELESERVICE_LGT_WEB_LGT_49765:I = 0xc265

.field public static final TELESERVICE_LGT_WEB_LGT_LONG_49766:I = 0xc266

.field public static final TELESERVICE_LGT_WEB_THIRD_49763:I = 0xc263

.field public static final TELESERVICE_LGT_WEB_THIRD_LONG_49764:I = 0xc264

.field public static final TELESERVICE_LGT_WPS_49198:I = 0xc02e

.field public static final TELESERVICE_MWI:I = 0x40000

.field public static final TELESERVICE_NOT_SET:I = 0x0

.field public static final TELESERVICE_VMN:I = 0x1003

.field public static final TELESERVICE_WAP:I = 0x1004

.field public static final TELESERVICE_WEMT:I = 0x1005

.field public static final TELESERVICE_WMT:I = 0x1002


# instance fields
.field public bearerData:[B

.field public bearerReply:I

.field public causeCode:B

.field public destAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

.field public errorClass:B

.field public messageType:I

.field public origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

.field public origSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

.field public replySeqNo:B

.field public serviceCategory:I

.field public teleService:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 190
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 137
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 192
    return-void
.end method
