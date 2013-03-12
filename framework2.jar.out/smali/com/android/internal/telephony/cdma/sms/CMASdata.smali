.class public Lcom/android/internal/telephony/cdma/sms/CMASdata;
.super Ljava/lang/Object;
.source "CMASdata.java"


# static fields
.field public static final CATEGORY_CBRNE:I = 0xa

.field public static final CATEGORY_ENV:I = 0x7

.field public static final CATEGORY_FIRE:I = 0x5

.field public static final CATEGORY_GEO:I = 0x0

.field public static final CATEGORY_HEALTH:I = 0x6

.field public static final CATEGORY_INFRA:I = 0x9

.field public static final CATEGORY_MET:I = 0x1

.field public static final CATEGORY_OTHER:I = 0xb

.field public static final CATEGORY_RESUE:I = 0x4

.field public static final CATEGORY_SAFETY:I = 0x2

.field public static final CATEGORY_SECURITY:I = 0x3

.field public static final CATEGORY_TRANSPORT:I = 0x8

.field public static final CERTAINITY_LIKELY:I = 0x1

.field public static final CERTAINITY_OBSERVED:I = 0x0

.field public static final CMAS_UNKNOWN:I = 0xff

.field public static final RESPONSE_ASSESS:I = 0x6

.field public static final RESPONSE_AVOID_HAZARD:I = 0x5

.field public static final RESPONSE_EXECUTE:I = 0x3

.field public static final RESPONSE_MONITOR:I = 0x4

.field public static final RESPONSE_NONE:I = 0x7

.field public static final RESPONSE_PREPARE:I = 0x2

.field public static final RESPONSE_RELOCATE:I = 0x1

.field public static final RESPONSE_SHELTER:I = 0x0

.field public static final SERVITY_EXTREME:I = 0x0

.field public static final SERVITY_SEVERE:I = 0x1

.field public static final URGENCY_EXPECTED:I = 0x1

.field public static final URGENCY_IMMEDIATE:I


# instance fields
.field public alertHandling:I

.field public bRecordTypeFirstExists:Z

.field public bRecordTypeSecondExists:Z

.field public bRecordTypeThirdExists:Z

.field public bRecordTypeZeroExists:Z

.field public category:I

.field public certainty:I

.field public language:I

.field public messageID:I

.field public msgExpires:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

.field public responseType:I

.field public serviceCategory:I

.field public severity:I

.field public urgency:I

.field public version:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 99
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 100
    return-void
.end method
