.class public Lcom/google/android/mms/pdu/SecurityPduPersister;
.super Ljava/lang/Object;
.source "SecurityPduPersister.java"


# static fields
.field private static final ADDRESS_FIELDS:[I = null

.field private static final CHARSET_COLUMN_INDEX_MAP:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final CHARSET_COLUMN_NAME_MAP:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final DUMMY_THREAD_ID:J = 0x7fffffffffffffffL

.field private static final ENCODED_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final ENCODED_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOCAL_LOGV:Z = false

.field private static final LONG_COLUMN_INDEX_MAP:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final LONG_COLUMN_NAME_MAP:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MESSAGE_BOX_MAP:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PART_COLUMN_CHARSET:I = 0x1

.field private static final PART_COLUMN_CONTENT_DISPOSITION:I = 0x2

.field private static final PART_COLUMN_CONTENT_ID:I = 0x3

.field private static final PART_COLUMN_CONTENT_LOCATION:I = 0x4

.field private static final PART_COLUMN_CONTENT_TYPE:I = 0x5

.field private static final PART_COLUMN_FILENAME:I = 0x6

.field private static final PART_COLUMN_ID:I = 0x0

.field private static final PART_COLUMN_NAME:I = 0x7

.field private static final PART_COLUMN_TEXT:I = 0x8

.field private static final PART_PROJECTION:[Ljava/lang/String; = null

.field private static final PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/SecurityPduCache; = null

.field private static final PDU_COLUMN_CONTENT_CLASS:I = 0xb

.field private static final PDU_COLUMN_CONTENT_LOCATION:I = 0x5

.field private static final PDU_COLUMN_CONTENT_TYPE:I = 0x6

.field private static final PDU_COLUMN_DATE:I = 0x15

.field private static final PDU_COLUMN_DELIVERY_REPORT:I = 0xc

.field private static final PDU_COLUMN_DELIVERY_TIME:I = 0x16

.field private static final PDU_COLUMN_EXPIRY:I = 0x17

.field private static final PDU_COLUMN_ID:I = 0x0

.field private static final PDU_COLUMN_MESSAGE_BOX:I = 0x1

.field private static final PDU_COLUMN_MESSAGE_CLASS:I = 0x7

.field private static final PDU_COLUMN_MESSAGE_ID:I = 0x8

.field private static final PDU_COLUMN_MESSAGE_SIZE:I = 0x18

.field private static final PDU_COLUMN_MESSAGE_TYPE:I = 0xd

.field private static final PDU_COLUMN_MMS_VERSION:I = 0xe

.field private static final PDU_COLUMN_PRIORITY:I = 0xf

.field private static final PDU_COLUMN_READ_REPORT:I = 0x10

.field private static final PDU_COLUMN_READ_STATUS:I = 0x11

.field private static final PDU_COLUMN_REPORT_ALLOWED:I = 0x12

.field private static final PDU_COLUMN_RESPONSE_TEXT:I = 0x9

.field private static final PDU_COLUMN_RETRIEVE_STATUS:I = 0x13

.field private static final PDU_COLUMN_RETRIEVE_TEXT:I = 0x3

.field private static final PDU_COLUMN_RETRIEVE_TEXT_CHARSET:I = 0x1a

.field private static final PDU_COLUMN_STATUS:I = 0x14

.field private static final PDU_COLUMN_SUBJECT:I = 0x4

.field private static final PDU_COLUMN_SUBJECT_CHARSET:I = 0x19

.field private static final PDU_COLUMN_THREAD_ID:I = 0x2

.field private static final PDU_COLUMN_TRANSACTION_ID:I = 0xa

.field private static final PDU_PROJECTION:[Ljava/lang/String; = null

.field public static final PROC_STATUS_COMPLETED:I = 0x3

.field public static final PROC_STATUS_PERMANENTLY_FAILURE:I = 0x2

.field public static final PROC_STATUS_TRANSIENT_FAILURE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SecurityPduPersister"

.field public static final TEMPORARY_DRM_OBJECT_URI:Ljava/lang/String; = "content://security_mms/9223372036854775807/part"

.field private static final TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sPersister:Lcom/google/android/mms/pdu/SecurityPduPersister;


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/16 v6, 0x9a

    const/16 v5, 0x96

    const/4 v4, 0x3

    const/4 v3, 0x4

    .line 92
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/mms/pdu/SecurityPduPersister;->ADDRESS_FIELDS:[I

    .line 99
    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const-string v1, "msg_box"

    aput-object v1, v0, v7

    const/4 v1, 0x2

    const-string v2, "thread_id"

    aput-object v2, v0, v1

    const-string v1, "retr_txt"

    aput-object v1, v0, v4

    const-string v1, "sub"

    aput-object v1, v0, v3

    const/4 v1, 0x5

    const-string v2, "ct_l"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ct_t"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "m_cls"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "m_id"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "resp_txt"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "tr_id"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "ct_cls"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "d_rpt"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "m_type"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "v"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "pri"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "rr"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "read_status"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "rpt_a"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "retr_st"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "st"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "date"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "d_tm"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "exp"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "m_size"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "sub_cs"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "retr_txt_cs"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/mms/pdu/SecurityPduPersister;->PDU_PROJECTION:[Ljava/lang/String;

    .line 157
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const-string v1, "chset"

    aput-object v1, v0, v7

    const/4 v1, 0x2

    const-string v2, "cd"

    aput-object v2, v0, v1

    const-string v1, "cid"

    aput-object v1, v0, v4

    const-string v1, "cl"

    aput-object v1, v0, v3

    const/4 v1, 0x5

    const-string v2, "ct"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "fn"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "name"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "text"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/mms/pdu/SecurityPduPersister;->PART_PROJECTION:[Ljava/lang/String;

    .line 193
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/pdu/SecurityPduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    .line 194
    sget-object v0, Lcom/google/android/mms/pdu/SecurityPduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    sget-object v1, Lcom/google/android/mms/SecurityTelephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v0, Lcom/google/android/mms/pdu/SecurityPduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    sget-object v1, Lcom/google/android/mms/SecurityTelephony$Mms$Sent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    sget-object v0, Lcom/google/android/mms/pdu/SecurityPduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    sget-object v1, Lcom/google/android/mms/SecurityTelephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sget-object v0, Lcom/google/android/mms/pdu/SecurityPduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    sget-object v1, Lcom/google/android/mms/SecurityTelephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/pdu/SecurityPduPersister;->CHARSET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    .line 201
    sget-object v0, Lcom/google/android/mms/pdu/SecurityPduPersister;->CHARSET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x19

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    sget-object v0, Lcom/google/android/mms/pdu/SecurityPduPersister;->CHARSET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/pdu/SecurityPduPersister;->CHARSET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    .line 205
    sget-object v0, Lcom/google/android/mms/pdu/SecurityPduPersister;->CHARSET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "sub_cs"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    sget-object v0, Lcom/google/android/mms/pdu/SecurityPduPersister;->CHARSET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "retr_txt_cs"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/pdu/SecurityPduPersister;->ENCODED_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    .line 210
    sget-object v0, Lcom/google/android/mms/pdu/SecurityPduPersister;->ENCODED_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object v0, Lcom/google/android/mms/pdu/SecurityPduPersister;->ENCODED_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/pdu/SecurityPduPersister;->ENCODED_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    .line 214
    sget-object v0, Lcom/google/android/mms/pdu/SecurityPduPersister;->ENCODED_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "retr_txt"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    sget-object v0, Lcom/google/android/mms/pdu/SecurityPduPersister;->ENCODED_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "sub"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/pdu/SecurityPduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    .line 219
    sget-object v0, Lcom/google/android/mms/pdu/SecurityPduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x83

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    sget-object v0, Lcom/google/android/mms/pdu/SecurityPduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x84

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    sget-object v0, Lcom/google/android/mms/pdu/SecurityPduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object v0, Lcom/google/android/mms/pdu/SecurityPduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    sget-object v0, Lcom/google/android/mms/pdu/SecurityPduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x93

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    sget-object v0, Lcom/google/android/mms/pdu/SecurityPduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x98

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/pdu/SecurityPduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    .line 227
    sget-object v0, Lcom/google/android/mms/pdu/SecurityPduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x83

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ct_l"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    sget-object v0, Lcom/google/android/mms/pdu/SecurityPduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x84

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ct_t"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    sget-object v0, Lcom/google/android/mms/pdu/SecurityPduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "m_cls"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    sget-object v0, Lcom/google/android/mms/pdu/SecurityPduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "m_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    sget-object v0, Lcom/google/android/mms/pdu/SecurityPduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x93

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "resp_txt"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    sget-object v0, Lcom/google/android/mms/pdu/SecurityPduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x98

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "tr_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/pdu/SecurityPduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    .line 236
    sget-object v0, Lcom/google/android/mms/pdu/SecurityPduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0xba

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    sget-object v0, Lcom/google/android/mms/pdu/SecurityPduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x86

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    sget-object v0, Lcom/google/android/mms/pdu/SecurityPduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    sget-object v0, Lcom/google/android/mms/pdu/SecurityPduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    sget-object v0, Lcom/google/android/mms/pdu/SecurityPduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    sget-object v0, Lcom/google/android/mms/pdu/SecurityPduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x90

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    sget-object v0, Lcom/google/android/mms/pdu/SecurityPduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x9b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    sget-object v0, Lcom/google/android/mms/pdu/SecurityPduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x91

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    sget-object v0, Lcom/google/android/mms/pdu/SecurityPduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x99

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    sget-object v0, Lcom/google/android/mms/pdu/SecurityPduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x95

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/pdu/SecurityPduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    .line 248
    sget-object v0, Lcom/google/android/mms/pdu/SecurityPduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0xba

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ct_cls"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    sget-object v0, Lcom/google/android/mms/pdu/SecurityPduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x86

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "d_rpt"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    sget-object v0, Lcom/google/android/mms/pdu/SecurityPduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "m_type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    sget-object v0, Lcom/google/android/mms/pdu/SecurityPduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "v"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    sget-object v0, Lcom/google/android/mms/pdu/SecurityPduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "pri"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    sget-object v0, Lcom/google/android/mms/pdu/SecurityPduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x90

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "rr"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    sget-object v0, Lcom/google/android/mms/pdu/SecurityPduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x9b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "read_status"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    sget-object v0, Lcom/google/android/mms/pdu/SecurityPduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x91

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "rpt_a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    sget-object v0, Lcom/google/android/mms/pdu/SecurityPduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x99

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "retr_st"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    sget-object v0, Lcom/google/android/mms/pdu/SecurityPduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x95

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "st"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/pdu/SecurityPduPersister;->LONG_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    .line 261
    sget-object v0, Lcom/google/android/mms/pdu/SecurityPduPersister;->LONG_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x85

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    sget-object v0, Lcom/google/android/mms/pdu/SecurityPduPersister;->LONG_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x87

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    sget-object v0, Lcom/google/android/mms/pdu/SecurityPduPersister;->LONG_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x88

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x17

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    sget-object v0, Lcom/google/android/mms/pdu/SecurityPduPersister;->LONG_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x18

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/pdu/SecurityPduPersister;->LONG_COLUMN_NAME_MAP:Ljava/util/HashMap;

    .line 267
    sget-object v0, Lcom/google/android/mms/pdu/SecurityPduPersister;->LONG_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x85

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "date"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    sget-object v0, Lcom/google/android/mms/pdu/SecurityPduPersister;->LONG_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x87

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "d_tm"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    sget-object v0, Lcom/google/android/mms/pdu/SecurityPduPersister;->LONG_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x88

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "exp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    sget-object v0, Lcom/google/android/mms/pdu/SecurityPduPersister;->LONG_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "m_size"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    sget-object v0, Lcom/google/android/mms/pdu/SecurityPduPersister;->LONG_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0xc0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "reserved"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    invoke-static {}, Lcom/google/android/mms/util/SecurityPduCache;->getInstance()Lcom/google/android/mms/util/SecurityPduCache;

    move-result-object v0

    sput-object v0, Lcom/google/android/mms/pdu/SecurityPduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/SecurityPduCache;

    .line 274
    return-void

    .line 92
    nop

    :array_0
    .array-data 0x4
        0x81t 0x0t 0x0t 0x0t
        0x82t 0x0t 0x0t 0x0t
        0x89t 0x0t 0x0t 0x0t
        0x97t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 279
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 280
    iput-object p1, p0, Lcom/google/android/mms/pdu/SecurityPduPersister;->mContext:Landroid/content/Context;

    .line 281
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/mms/pdu/SecurityPduPersister;->mContentResolver:Landroid/content/ContentResolver;

    .line 282
    return-void
.end method

.method private getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B
    .locals 1
    .parameter "c"
    .parameter "columnIndex"

    .prologue
    .line 351
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 352
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/mms/pdu/SecurityPduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 354
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getBytes(Ljava/lang/String;)[B
    .locals 3
    .parameter "data"

    .prologue
    .line 1511
    :try_start_0
    const-string v1, "iso-8859-1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1515
    :goto_0
    return-object v1

    .line 1512
    :catch_0
    move-exception v0

    .line 1514
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const-string v1, "SecurityPduPersister"

    const-string v2, "ISO_8859_1 must be supported!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1515
    const/4 v1, 0x0

    new-array v1, v1, [B

    goto :goto_0
.end method

.method private getIntegerFromPartColumn(Landroid/database/Cursor;I)Ljava/lang/Integer;
    .locals 1
    .parameter "c"
    .parameter "columnIndex"

    .prologue
    .line 344
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 345
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 347
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/SecurityPduPersister;
    .locals 1
    .parameter "context"

    .prologue
    .line 286
    sget-object v0, Lcom/google/android/mms/pdu/SecurityPduPersister;->sPersister:Lcom/google/android/mms/pdu/SecurityPduPersister;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/mms/pdu/SecurityPduPersister;->sPersister:Lcom/google/android/mms/pdu/SecurityPduPersister;

    iget-object v0, v0, Lcom/google/android/mms/pdu/SecurityPduPersister;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 287
    :cond_0
    new-instance v0, Lcom/google/android/mms/pdu/SecurityPduPersister;

    invoke-direct {v0, p0}, Lcom/google/android/mms/pdu/SecurityPduPersister;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/mms/pdu/SecurityPduPersister;->sPersister:Lcom/google/android/mms/pdu/SecurityPduPersister;

    .line 290
    :cond_1
    sget-object v0, Lcom/google/android/mms/pdu/SecurityPduPersister;->sPersister:Lcom/google/android/mms/pdu/SecurityPduPersister;

    return-object v0
.end method

.method private loadAddress(JLcom/google/android/mms/pdu/PduHeaders;)V
    .locals 1
    .parameter "msgId"
    .parameter "headers"

    .prologue
    .line 500
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/mms/pdu/SecurityPduPersister;->loadAddress(JLcom/google/android/mms/pdu/PduHeaders;Z)V

    .line 501
    return-void
.end method

.method private loadAddress(JLcom/google/android/mms/pdu/PduHeaders;Z)V
    .locals 10
    .parameter "msgId"
    .parameter "headers"
    .parameter "bSpam"

    .prologue
    .line 503
    const/4 v9, 0x0

    .line 505
    .local v9, c:Landroid/database/Cursor;
    const/4 v0, 0x1

    if-ne p4, v0, :cond_1

    .line 506
    iget-object v0, p0, Lcom/google/android/mms/pdu/SecurityPduPersister;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/mms/pdu/SecurityPduPersister;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://security_spammms/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/spamaddr"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "address"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "charset"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "type"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 518
    :goto_0
    if-eqz v9, :cond_3

    .line 520
    :cond_0
    :goto_1
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 521
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 522
    .local v7, addr:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 523
    const/4 v0, 0x2

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 524
    .local v8, addrType:I
    sparse-switch v8, :sswitch_data_0

    .line 538
    const-string v0, "SecurityPduPersister"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown address type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 544
    .end local v7           #addr:Ljava/lang/String;
    .end local v8           #addrType:I
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    .line 512
    :cond_1
    iget-object v0, p0, Lcom/google/android/mms/pdu/SecurityPduPersister;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/mms/pdu/SecurityPduPersister;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://security_mms/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/addr"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "address"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "charset"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "type"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto :goto_0

    .line 526
    .restart local v7       #addr:Ljava/lang/String;
    .restart local v8       #addrType:I
    :sswitch_0
    :try_start_1
    new-instance v0, Lcom/google/android/mms/pdu/EncodedStringValue;

    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v7}, Lcom/google/android/mms/pdu/SecurityPduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    invoke-virtual {p3, v0, v8}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V

    goto/16 :goto_1

    .line 533
    :sswitch_1
    new-instance v0, Lcom/google/android/mms/pdu/EncodedStringValue;

    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v7}, Lcom/google/android/mms/pdu/SecurityPduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    invoke-virtual {p3, v0, v8}, Lcom/google/android/mms/pdu/PduHeaders;->appendEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 544
    .end local v7           #addr:Ljava/lang/String;
    .end local v8           #addrType:I
    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 547
    :cond_3
    return-void

    .line 524
    :sswitch_data_0
    .sparse-switch
        0x81 -> :sswitch_1
        0x82 -> :sswitch_1
        0x89 -> :sswitch_0
        0x97 -> :sswitch_1
    .end sparse-switch
.end method

.method private loadParts(J)[Lcom/google/android/mms/pdu/PduPart;
    .locals 1
    .parameter "msgId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 358
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/mms/pdu/SecurityPduPersister;->loadParts(JZ)[Lcom/google/android/mms/pdu/PduPart;

    move-result-object v0

    return-object v0
.end method

.method private loadParts(JZ)[Lcom/google/android/mms/pdu/PduPart;
    .locals 33
    .parameter "msgId"
    .parameter "bSpam"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 361
    const/4 v12, 0x0

    .line 363
    .local v12, c:Landroid/database/Cursor;
    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_2

    .line 364
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/mms/pdu/SecurityPduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/mms/pdu/SecurityPduPersister;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://security_spammms/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/spampart"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    sget-object v5, Lcom/google/android/mms/pdu/SecurityPduPersister;->PART_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 374
    :goto_0
    const/16 v30, 0x0

    .line 377
    .local v30, parts:[Lcom/google/android/mms/pdu/PduPart;
    if-eqz v12, :cond_0

    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_3

    .line 381
    :cond_0
    const/4 v2, 0x0

    .line 491
    if-eqz v12, :cond_1

    .line 492
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 496
    :cond_1
    :goto_1
    return-object v2

    .line 369
    .end local v30           #parts:[Lcom/google/android/mms/pdu/PduPart;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/mms/pdu/SecurityPduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/mms/pdu/SecurityPduPersister;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://security_mms/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/part"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    sget-object v5, Lcom/google/android/mms/pdu/SecurityPduPersister;->PART_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    goto :goto_0

    .line 384
    .restart local v30       #parts:[Lcom/google/android/mms/pdu/PduPart;
    :cond_3
    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v24

    .line 385
    .local v24, partCount:I
    const/16 v27, 0x0

    .line 386
    .local v27, partIdx:I
    move/from16 v0, v24

    new-array v0, v0, [Lcom/google/android/mms/pdu/PduPart;

    move-object/from16 v30, v0

    move/from16 v28, v27

    .line 387
    .end local v27           #partIdx:I
    .local v28, partIdx:I
    :goto_2
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 388
    new-instance v23, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct/range {v23 .. v23}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 389
    .local v23, part:Lcom/google/android/mms/pdu/PduPart;
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v2}, Lcom/google/android/mms/pdu/SecurityPduPersister;->getIntegerFromPartColumn(Landroid/database/Cursor;I)Ljava/lang/Integer;

    move-result-object v13

    .line 391
    .local v13, charset:Ljava/lang/Integer;
    if-eqz v13, :cond_4

    .line 392
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/google/android/mms/pdu/PduPart;->setCharset(I)V

    .line 395
    :cond_4
    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v2}, Lcom/google/android/mms/pdu/SecurityPduPersister;->getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B

    move-result-object v14

    .line 397
    .local v14, contentDisposition:[B
    if-eqz v14, :cond_5

    .line 398
    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    .line 401
    :cond_5
    const/4 v2, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v2}, Lcom/google/android/mms/pdu/SecurityPduPersister;->getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B

    move-result-object v15

    .line 403
    .local v15, contentId:[B
    if-eqz v15, :cond_6

    .line 404
    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 407
    :cond_6
    const/4 v2, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v2}, Lcom/google/android/mms/pdu/SecurityPduPersister;->getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B

    move-result-object v16

    .line 409
    .local v16, contentLocation:[B
    if-eqz v16, :cond_7

    .line 410
    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 413
    :cond_7
    const/4 v2, 0x5

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v2}, Lcom/google/android/mms/pdu/SecurityPduPersister;->getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B

    move-result-object v17

    .line 415
    .local v17, contentType:[B
    if-eqz v17, :cond_d

    .line 416
    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 421
    const/4 v2, 0x6

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v2}, Lcom/google/android/mms/pdu/SecurityPduPersister;->getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B

    move-result-object v19

    .line 423
    .local v19, fileName:[B
    if-eqz v19, :cond_8

    .line 424
    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setFilename([B)V

    .line 427
    :cond_8
    const/4 v2, 0x7

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v2}, Lcom/google/android/mms/pdu/SecurityPduPersister;->getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B

    move-result-object v22

    .line 429
    .local v22, name:[B
    if-eqz v22, :cond_9

    .line 430
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setName([B)V

    .line 434
    :cond_9
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    .line 437
    .local v25, partId:J
    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_f

    .line 438
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://security_spammms/spampart/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v25

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v29

    .line 441
    .local v29, partURI:Landroid/net/Uri;
    :goto_3
    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setDataUri(Landroid/net/Uri;)V

    .line 445
    invoke-static/range {v17 .. v17}, Lcom/google/android/mms/pdu/SecurityPduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v32

    .line 446
    .local v32, type:Ljava/lang/String;
    invoke-static/range {v32 .. v32}, Lcom/google/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    invoke-static/range {v32 .. v32}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    invoke-static/range {v32 .. v32}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 449
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 450
    .local v9, baos:Ljava/io/ByteArrayOutputStream;
    const/16 v20, 0x0

    .line 455
    .local v20, is:Ljava/io/InputStream;
    const-string v2, "text/plain"

    move-object/from16 v0, v32

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "application/smil"

    move-object/from16 v0, v32

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "text/html"

    move-object/from16 v0, v32

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 457
    :cond_a
    const/16 v2, 0x8

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 458
    .local v31, text:Ljava/lang/String;
    new-instance v2, Lcom/google/android/mms/pdu/EncodedStringValue;

    if-eqz v31, :cond_10

    .end local v31           #text:Ljava/lang/String;
    :goto_4
    move-object/from16 v0, v31

    invoke-direct {v2, v0}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v10

    .line 460
    .local v10, blob:[B
    const/4 v2, 0x0

    array-length v3, v10

    invoke-virtual {v9, v10, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 486
    .end local v10           #blob:[B
    :cond_b
    :goto_5
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 488
    .end local v9           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v20           #is:Ljava/io/InputStream;
    :cond_c
    add-int/lit8 v27, v28, 0x1

    .end local v28           #partIdx:I
    .restart local v27       #partIdx:I
    aput-object v23, v30, v28

    move/from16 v28, v27

    .line 489
    .end local v27           #partIdx:I
    .restart local v28       #partIdx:I
    goto/16 :goto_2

    .line 418
    .end local v19           #fileName:[B
    .end local v22           #name:[B
    .end local v25           #partId:J
    .end local v29           #partURI:Landroid/net/Uri;
    .end local v32           #type:Ljava/lang/String;
    :cond_d
    new-instance v2, Lcom/google/android/mms/MmsException;

    const-string v3, "Content-Type must be set."

    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 491
    .end local v13           #charset:Ljava/lang/Integer;
    .end local v14           #contentDisposition:[B
    .end local v15           #contentId:[B
    .end local v16           #contentLocation:[B
    .end local v17           #contentType:[B
    .end local v23           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v24           #partCount:I
    .end local v28           #partIdx:I
    :catchall_0
    move-exception v2

    if-eqz v12, :cond_e

    .line 492
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_e
    throw v2

    .line 440
    .restart local v13       #charset:Ljava/lang/Integer;
    .restart local v14       #contentDisposition:[B
    .restart local v15       #contentId:[B
    .restart local v16       #contentLocation:[B
    .restart local v17       #contentType:[B
    .restart local v19       #fileName:[B
    .restart local v22       #name:[B
    .restart local v23       #part:Lcom/google/android/mms/pdu/PduPart;
    .restart local v24       #partCount:I
    .restart local v25       #partId:J
    .restart local v28       #partIdx:I
    :cond_f
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://security_mms/part/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v25

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v29

    .restart local v29       #partURI:Landroid/net/Uri;
    goto/16 :goto_3

    .line 458
    .restart local v9       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v20       #is:Ljava/io/InputStream;
    .restart local v31       #text:Ljava/lang/String;
    .restart local v32       #type:Ljava/lang/String;
    :cond_10
    const-string v31, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    .line 464
    .end local v31           #text:Ljava/lang/String;
    :cond_11
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/mms/pdu/SecurityPduPersister;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v20

    .line 466
    const/16 v2, 0x100

    new-array v11, v2, [B

    .line 467
    .local v11, buffer:[B
    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/io/InputStream;->read([B)I

    move-result v21

    .line 468
    .local v21, len:I
    :goto_6
    if-ltz v21, :cond_12

    .line 469
    const/4 v2, 0x0

    move/from16 v0, v21

    invoke-virtual {v9, v11, v2, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 470
    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/io/InputStream;->read([B)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v21

    goto :goto_6

    .line 477
    :cond_12
    if-eqz v20, :cond_b

    .line 479
    :try_start_4
    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_5

    .line 480
    :catch_0
    move-exception v18

    .line 481
    .local v18, e:Ljava/io/IOException;
    :try_start_5
    const-string v2, "SecurityPduPersister"

    const-string v3, "Failed to close stream"

    move-object/from16 v0, v18

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_5

    .line 472
    .end local v11           #buffer:[B
    .end local v18           #e:Ljava/io/IOException;
    .end local v21           #len:I
    :catch_1
    move-exception v18

    .line 473
    .restart local v18       #e:Ljava/io/IOException;
    :try_start_6
    const-string v2, "SecurityPduPersister"

    const-string v3, "Failed to load part data"

    move-object/from16 v0, v18

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 474
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 475
    new-instance v2, Lcom/google/android/mms/MmsException;

    move-object/from16 v0, v18

    invoke-direct {v2, v0}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 477
    .end local v18           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v2

    if-eqz v20, :cond_13

    .line 479
    :try_start_7
    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 482
    :cond_13
    :goto_7
    :try_start_8
    throw v2

    .line 480
    :catch_2
    move-exception v18

    .line 481
    .restart local v18       #e:Ljava/io/IOException;
    const-string v3, "SecurityPduPersister"

    const-string v4, "Failed to close stream"

    move-object/from16 v0, v18

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_7

    .line 491
    .end local v9           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v13           #charset:Ljava/lang/Integer;
    .end local v14           #contentDisposition:[B
    .end local v15           #contentId:[B
    .end local v16           #contentLocation:[B
    .end local v17           #contentType:[B
    .end local v18           #e:Ljava/io/IOException;
    .end local v19           #fileName:[B
    .end local v20           #is:Ljava/io/InputStream;
    .end local v22           #name:[B
    .end local v23           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v25           #partId:J
    .end local v29           #partURI:Landroid/net/Uri;
    .end local v32           #type:Ljava/lang/String;
    :cond_14
    if-eqz v12, :cond_15

    .line 492
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_15
    move-object/from16 v2, v30

    .line 496
    goto/16 :goto_1
.end method

.method private persistAddress(JI[Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .locals 6
    .parameter "msgId"
    .parameter "type"
    .parameter "array"

    .prologue
    .line 693
    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/mms/pdu/SecurityPduPersister;->persistAddress(JI[Lcom/google/android/mms/pdu/EncodedStringValue;Z)V

    .line 694
    return-void
.end method

.method private persistAddress(JI[Lcom/google/android/mms/pdu/EncodedStringValue;Z)V
    .locals 8
    .parameter "msgId"
    .parameter "type"
    .parameter "array"
    .parameter "bSpam"

    .prologue
    .line 698
    new-instance v5, Landroid/content/ContentValues;

    const/4 v6, 0x3

    invoke-direct {v5, v6}, Landroid/content/ContentValues;-><init>(I)V

    .line 700
    .local v5, values:Landroid/content/ContentValues;
    move-object v1, p4

    .local v1, arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 701
    .local v0, addr:Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 702
    const-string v6, "address"

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/mms/pdu/SecurityPduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    const-string v6, "charset"

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/EncodedStringValue;->getCharacterSet()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 704
    const-string v6, "type"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 708
    const/4 v6, 0x1

    if-ne p5, v6, :cond_0

    .line 709
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "content://security_spammms/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/spamaddr"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 713
    .local v4, uri:Landroid/net/Uri;
    :goto_1
    iget-object v6, p0, Lcom/google/android/mms/pdu/SecurityPduPersister;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/google/android/mms/pdu/SecurityPduPersister;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v6, v7, v4, v5}, Lcom/google/android/mms/util/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 700
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 711
    .end local v4           #uri:Landroid/net/Uri;
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "content://security_mms/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/addr"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .restart local v4       #uri:Landroid/net/Uri;
    goto :goto_1

    .line 715
    .end local v0           #addr:Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v4           #uri:Landroid/net/Uri;
    :cond_1
    return-void
.end method

.method private persistData(Lcom/google/android/mms/pdu/PduPart;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1
    .parameter "part"
    .parameter "uri"
    .parameter "contentType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 813
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/mms/pdu/SecurityPduPersister;->persistData(Lcom/google/android/mms/pdu/PduPart;Landroid/net/Uri;Ljava/lang/String;Z)V

    .line 814
    return-void
.end method

.method private persistData(Lcom/google/android/mms/pdu/PduPart;Landroid/net/Uri;Ljava/lang/String;Z)V
    .locals 12
    .parameter "part"
    .parameter "uri"
    .parameter "contentType"
    .parameter "bSpam"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 819
    const/4 v7, 0x0

    .line 820
    .local v7, os:Ljava/io/OutputStream;
    const/4 v5, 0x0

    .line 823
    .local v5, is:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v2

    .line 824
    .local v2, data:[B
    const-string v8, "text/plain"

    invoke-virtual {v8, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "application/smil"

    invoke-virtual {v8, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "text/html"

    invoke-virtual {v8, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 827
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 829
    .local v1, cv:Landroid/content/ContentValues;
    if-nez v2, :cond_3

    .line 830
    const-string v8, "text"

    const-string v9, ""

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    :goto_0
    iget-object v8, p0, Lcom/google/android/mms/pdu/SecurityPduPersister;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, p2, v1, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_a

    .line 836
    new-instance v8, Lcom/google/android/mms/MmsException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "unable to update "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 863
    .end local v1           #cv:Landroid/content/ContentValues;
    .end local v2           #data:[B
    :catch_0
    move-exception v4

    .line 864
    .local v4, e:Ljava/io/FileNotFoundException;
    :try_start_1
    const-string v8, "SecurityPduPersister"

    const-string v9, "Failed to open Input/Output stream."

    invoke-static {v8, v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 865
    new-instance v8, Lcom/google/android/mms/MmsException;

    invoke-direct {v8, v4}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/Throwable;)V

    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 870
    .end local v4           #e:Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v8

    if-eqz v7, :cond_1

    .line 872
    :try_start_2
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    .line 877
    :cond_1
    :goto_1
    if-eqz v5, :cond_2

    .line 879
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7

    .line 882
    :cond_2
    :goto_2
    throw v8

    .line 833
    .restart local v1       #cv:Landroid/content/ContentValues;
    .restart local v2       #data:[B
    :cond_3
    :try_start_4
    const-string v8, "text"

    new-instance v9, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v9, v2}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V

    invoke-virtual {v9}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 866
    .end local v1           #cv:Landroid/content/ContentValues;
    .end local v2           #data:[B
    :catch_1
    move-exception v4

    .line 867
    .local v4, e:Ljava/io/IOException;
    :try_start_5
    const-string v8, "SecurityPduPersister"

    const-string v9, "Failed to read/write data."

    invoke-static {v8, v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 868
    new-instance v8, Lcom/google/android/mms/MmsException;

    invoke-direct {v8, v4}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/Throwable;)V

    throw v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 839
    .end local v4           #e:Ljava/io/IOException;
    .restart local v2       #data:[B
    :cond_4
    :try_start_6
    iget-object v8, p0, Lcom/google/android/mms/pdu/SecurityPduPersister;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v8, p2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v7

    .line 840
    if-nez v2, :cond_9

    .line 841
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v3

    .line 842
    .local v3, dataUri:Landroid/net/Uri;
    if-eqz v3, :cond_5

    if-ne v3, p2, :cond_8

    .line 843
    :cond_5
    const-string v8, "SecurityPduPersister"

    const-string v9, "Can\'t find data for this part."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 870
    if-eqz v7, :cond_6

    .line 872
    :try_start_7
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 877
    :cond_6
    :goto_3
    if-eqz v5, :cond_7

    .line 879
    :try_start_8
    throw v5
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 885
    .end local v3           #dataUri:Landroid/net/Uri;
    :cond_7
    :goto_4
    return-void

    .line 873
    .restart local v3       #dataUri:Landroid/net/Uri;
    :catch_2
    move-exception v4

    .line 874
    .restart local v4       #e:Ljava/io/IOException;
    const-string v8, "SecurityPduPersister"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IOException while closing: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 880
    .end local v4           #e:Ljava/io/IOException;
    :catch_3
    move-exception v4

    .line 881
    .restart local v4       #e:Ljava/io/IOException;
    const-string v8, "SecurityPduPersister"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IOException while closing: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 846
    .end local v4           #e:Ljava/io/IOException;
    :cond_8
    :try_start_9
    iget-object v8, p0, Lcom/google/android/mms/pdu/SecurityPduPersister;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v8, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5

    .line 852
    const/16 v8, 0x100

    new-array v0, v8, [B

    .line 853
    .local v0, buffer:[B
    const/4 v6, 0x0

    .local v6, len:I
    :goto_5
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v8, -0x1

    if-eq v6, v8, :cond_a

    .line 854
    const/4 v8, 0x0

    invoke-virtual {v7, v0, v8, v6}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_5

    .line 860
    .end local v0           #buffer:[B
    .end local v3           #dataUri:Landroid/net/Uri;
    .end local v6           #len:I
    :cond_9
    invoke-virtual {v7, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    .line 870
    :cond_a
    if-eqz v7, :cond_b

    .line 872
    :try_start_a
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 877
    :cond_b
    :goto_6
    if-eqz v5, :cond_7

    .line 879
    :try_start_b
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    goto :goto_4

    .line 880
    :catch_4
    move-exception v4

    .line 881
    .restart local v4       #e:Ljava/io/IOException;
    const-string v8, "SecurityPduPersister"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IOException while closing: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 873
    .end local v4           #e:Ljava/io/IOException;
    :catch_5
    move-exception v4

    .line 874
    .restart local v4       #e:Ljava/io/IOException;
    const-string v8, "SecurityPduPersister"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IOException while closing: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 873
    .end local v2           #data:[B
    .end local v4           #e:Ljava/io/IOException;
    :catch_6
    move-exception v4

    .line 874
    .restart local v4       #e:Ljava/io/IOException;
    const-string v9, "SecurityPduPersister"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IOException while closing: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 880
    .end local v4           #e:Ljava/io/IOException;
    :catch_7
    move-exception v4

    .line 881
    .restart local v4       #e:Ljava/io/IOException;
    const-string v9, "SecurityPduPersister"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IOException while closing: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2
.end method

.method private setEncodedStringValueToHeaders(Landroid/database/Cursor;ILcom/google/android/mms/pdu/PduHeaders;I)V
    .locals 7
    .parameter "c"
    .parameter "columnIndex"
    .parameter "headers"
    .parameter "mapColumn"

    .prologue
    .line 296
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 297
    .local v2, s:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 298
    sget-object v4, Lcom/google/android/mms/pdu/SecurityPduPersister;->CHARSET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 299
    .local v1, charsetColumnIndex:I
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 303
    .local v0, charset:I
    const-string v4, "SecurityPduPersister"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setEncodedStringValueToHeaders() : mapColumn is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    const/16 v4, 0x96

    if-ne p4, v4, :cond_1

    .line 307
    new-instance v3, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v3, v0, v2}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(ILjava/lang/String;)V

    .line 312
    .local v3, value:Lcom/google/android/mms/pdu/EncodedStringValue;
    :goto_0
    invoke-virtual {p3, v3, p4}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V

    .line 314
    .end local v0           #charset:I
    .end local v1           #charsetColumnIndex:I
    .end local v3           #value:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_0
    return-void

    .line 309
    .restart local v0       #charset:I
    .restart local v1       #charsetColumnIndex:I
    :cond_1
    new-instance v3, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-static {v2}, Lcom/google/android/mms/pdu/SecurityPduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    .restart local v3       #value:Lcom/google/android/mms/pdu/EncodedStringValue;
    goto :goto_0
.end method

.method private setLongToHeaders(Landroid/database/Cursor;ILcom/google/android/mms/pdu/PduHeaders;I)V
    .locals 3
    .parameter "c"
    .parameter "columnIndex"
    .parameter "headers"
    .parameter "mapColumn"

    .prologue
    .line 337
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 338
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 339
    .local v0, l:J
    invoke-virtual {p3, v0, v1, p4}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V

    .line 341
    .end local v0           #l:J
    :cond_0
    return-void
.end method

.method private setOctetToHeaders(Landroid/database/Cursor;ILcom/google/android/mms/pdu/PduHeaders;I)V
    .locals 2
    .parameter "c"
    .parameter "columnIndex"
    .parameter "headers"
    .parameter "mapColumn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    .prologue
    .line 328
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 329
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 330
    .local v0, b:I
    invoke-virtual {p3, v0, p4}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V

    .line 332
    .end local v0           #b:I
    :cond_0
    return-void
.end method

.method private setTextStringToHeaders(Landroid/database/Cursor;ILcom/google/android/mms/pdu/PduHeaders;I)V
    .locals 2
    .parameter "c"
    .parameter "columnIndex"
    .parameter "headers"
    .parameter "mapColumn"

    .prologue
    .line 319
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 320
    .local v0, s:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 321
    invoke-static {v0}, Lcom/google/android/mms/pdu/SecurityPduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p3, v1, p4}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    .line 323
    :cond_0
    return-void
.end method

.method public static toIsoString([B)Ljava/lang/String;
    .locals 3
    .parameter "bytes"

    .prologue
    .line 1498
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "iso-8859-1"

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1502
    :goto_0
    return-object v1

    .line 1499
    :catch_0
    move-exception v0

    .line 1501
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const-string v1, "SecurityPduPersister"

    const-string v2, "ISO_8859_1 must be supported!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1502
    const-string v1, ""

    goto :goto_0
.end method

.method private updateAddress(JI[Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .locals 5
    .parameter "msgId"
    .parameter "type"
    .parameter "array"

    .prologue
    .line 890
    iget-object v0, p0, Lcom/google/android/mms/pdu/SecurityPduPersister;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/mms/pdu/SecurityPduPersister;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://security_mms/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/addr"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/mms/util/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 894
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/mms/pdu/SecurityPduPersister;->persistAddress(JI[Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 895
    return-void
.end method

.method private updatePart(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPart;)V
    .locals 11
    .parameter "uri"
    .parameter "part"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1009
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x7

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 1011
    .local v3, values:Landroid/content/ContentValues;
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getCharset()I

    move-result v6

    .line 1012
    .local v6, charset:I
    if-eqz v6, :cond_0

    .line 1013
    const-string v0, "chset"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1016
    :cond_0
    const/4 v7, 0x0

    .line 1017
    .local v7, contentType:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v0

    if-eqz v0, :cond_8

    .line 1018
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/mms/pdu/SecurityPduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v7

    .line 1019
    const-string v0, "ct"

    invoke-virtual {v3, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1024
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1025
    new-instance v8, Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/lang/String;-><init>([B)V

    .line 1026
    .local v8, fileName:Ljava/lang/String;
    const-string v0, "fn"

    invoke-virtual {v3, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    .end local v8           #fileName:Ljava/lang/String;
    :cond_1
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1030
    new-instance v9, Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/String;-><init>([B)V

    .line 1031
    .local v9, name:Ljava/lang/String;
    const-string v0, "name"

    invoke-virtual {v3, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    .end local v9           #name:Ljava/lang/String;
    :cond_2
    const/4 v10, 0x0

    .line 1035
    .local v10, value:Ljava/lang/Object;
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getContentDisposition()[B

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1036
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getContentDisposition()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/mms/pdu/SecurityPduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v10

    .line 1037
    .local v10, value:Ljava/lang/String;
    const-string v0, "cd"

    check-cast v10, Ljava/lang/String;

    .end local v10           #value:Ljava/lang/String;
    invoke-virtual {v3, v0, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    :cond_3
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1041
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/mms/pdu/SecurityPduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v10

    .line 1042
    .restart local v10       #value:Ljava/lang/String;
    const-string v0, "cid"

    check-cast v10, Ljava/lang/String;

    .end local v10           #value:Ljava/lang/String;
    invoke-virtual {v3, v0, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1045
    :cond_4
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1046
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/mms/pdu/SecurityPduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v10

    .line 1047
    .restart local v10       #value:Ljava/lang/String;
    const-string v0, "cl"

    check-cast v10, Ljava/lang/String;

    .end local v10           #value:Ljava/lang/String;
    invoke-virtual {v3, v0, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    :cond_5
    iget-object v0, p0, Lcom/google/android/mms/pdu/SecurityPduPersister;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/mms/pdu/SecurityPduPersister;->mContentResolver:Landroid/content/ContentResolver;

    move-object v2, p1

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1055
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v0

    if-nez v0, :cond_6

    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v0

    if-eq p1, v0, :cond_7

    .line 1057
    :cond_6
    invoke-direct {p0, p2, p1, v7}, Lcom/google/android/mms/pdu/SecurityPduPersister;->persistData(Lcom/google/android/mms/pdu/PduPart;Landroid/net/Uri;Ljava/lang/String;)V

    .line 1059
    :cond_7
    return-void

    .line 1021
    :cond_8
    new-instance v0, Lcom/google/android/mms/MmsException;

    const-string v1, "MIME type of the part must be set."

    invoke-direct {v0, v1}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getPendingMessages(J)Landroid/database/Cursor;
    .locals 8
    .parameter "dueTime"

    .prologue
    .line 1531
    sget-object v0, Lcom/google/android/mms/SecurityTelephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    .line 1532
    .local v7, uriBuilder:Landroid/net/Uri$Builder;
    const-string v0, "protocol"

    const-string v1, "mms"

    invoke-virtual {v7, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1534
    const-string v4, "err_type < ? AND due_time <= ?"

    .line 1537
    .local v4, selection:Ljava/lang/String;
    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    .line 1542
    .local v5, selectionArgs:[Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/mms/pdu/SecurityPduPersister;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/mms/pdu/SecurityPduPersister;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const-string v6, "due_time"

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;
    .locals 30
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 557
    sget-object v4, Lcom/google/android/mms/pdu/SecurityPduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/SecurityPduCache;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/google/android/mms/util/SecurityPduCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/mms/util/PduCacheEntry;

    .line 558
    .local v13, cacheEntry:Lcom/google/android/mms/util/PduCacheEntry;
    if-eqz v13, :cond_0

    .line 559
    invoke-virtual {v13}, Lcom/google/android/mms/util/PduCacheEntry;->getPdu()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v26

    .line 688
    :goto_0
    return-object v26

    .line 562
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/mms/pdu/SecurityPduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/mms/pdu/SecurityPduPersister;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v7, Lcom/google/android/mms/pdu/SecurityPduPersister;->PDU_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v6, p1

    invoke-static/range {v4 .. v10}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 564
    .local v12, c:Landroid/database/Cursor;
    new-instance v15, Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v15}, Lcom/google/android/mms/pdu/PduHeaders;-><init>()V

    .line 566
    .local v15, headers:Lcom/google/android/mms/pdu/PduHeaders;
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v21

    .line 571
    .local v21, msgId:J
    if-eqz v12, :cond_1

    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_3

    .line 572
    :cond_1
    new-instance v4, Lcom/google/android/mms/MmsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 602
    :catchall_0
    move-exception v4

    if-eqz v12, :cond_2

    .line 603
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v4

    .line 575
    :cond_3
    const/4 v4, 0x1

    :try_start_1
    invoke-interface {v12, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 576
    .local v20, msgBox:I
    const/4 v4, 0x2

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v28

    .line 578
    .local v28, threadId:J
    sget-object v4, Lcom/google/android/mms/pdu/SecurityPduPersister;->ENCODED_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v27

    .line 579
    .local v27, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    invoke-interface/range {v27 .. v27}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 580
    .local v14, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v5, v15, v4}, Lcom/google/android/mms/pdu/SecurityPduPersister;->setEncodedStringValueToHeaders(Landroid/database/Cursor;ILcom/google/android/mms/pdu/PduHeaders;I)V

    goto :goto_1

    .line 584
    .end local v14           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_4
    sget-object v4, Lcom/google/android/mms/pdu/SecurityPduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v27

    .line 585
    invoke-interface/range {v27 .. v27}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 586
    .restart local v14       #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v5, v15, v4}, Lcom/google/android/mms/pdu/SecurityPduPersister;->setTextStringToHeaders(Landroid/database/Cursor;ILcom/google/android/mms/pdu/PduHeaders;I)V

    goto :goto_2

    .line 590
    .end local v14           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_5
    sget-object v4, Lcom/google/android/mms/pdu/SecurityPduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v27

    .line 591
    invoke-interface/range {v27 .. v27}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 592
    .restart local v14       #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v5, v15, v4}, Lcom/google/android/mms/pdu/SecurityPduPersister;->setOctetToHeaders(Landroid/database/Cursor;ILcom/google/android/mms/pdu/PduHeaders;I)V

    goto :goto_3

    .line 596
    .end local v14           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_6
    sget-object v4, Lcom/google/android/mms/pdu/SecurityPduPersister;->LONG_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v27

    .line 597
    invoke-interface/range {v27 .. v27}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 598
    .restart local v14       #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v5, v15, v4}, Lcom/google/android/mms/pdu/SecurityPduPersister;->setLongToHeaders(Landroid/database/Cursor;ILcom/google/android/mms/pdu/PduHeaders;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 602
    .end local v14           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_7
    if-eqz v12, :cond_8

    .line 603
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 608
    :cond_8
    const-wide/16 v4, -0x1

    cmp-long v4, v21, v4

    if-nez v4, :cond_9

    .line 609
    new-instance v4, Lcom/google/android/mms/MmsException;

    const-string v5, "Error! ID of the message: -1."

    invoke-direct {v4, v5}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 613
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v19

    .line 614
    .local v19, mUriAuthority:Ljava/lang/String;
    const/16 v18, 0x0

    .line 615
    .local v18, mIsSpam:Z
    if-eqz v19, :cond_a

    const-string v4, "security_spammms"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_a

    .line 616
    const/16 v18, 0x1

    .line 618
    :cond_a
    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v15, v3}, Lcom/google/android/mms/pdu/SecurityPduPersister;->loadAddress(JLcom/google/android/mms/pdu/PduHeaders;Z)V

    .line 620
    const/16 v4, 0x8c

    invoke-virtual {v15, v4}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v23

    .line 621
    .local v23, msgType:I
    new-instance v11, Lcom/google/android/mms/pdu/PduBody;

    invoke-direct {v11}, Lcom/google/android/mms/pdu/PduBody;-><init>()V

    .line 625
    .local v11, body:Lcom/google/android/mms/pdu/PduBody;
    const/16 v4, 0x84

    move/from16 v0, v23

    if-eq v0, v4, :cond_b

    const/16 v4, 0x80

    move/from16 v0, v23

    if-ne v0, v4, :cond_c

    .line 627
    :cond_b
    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/mms/pdu/SecurityPduPersister;->loadParts(JZ)[Lcom/google/android/mms/pdu/PduPart;

    move-result-object v24

    .line 628
    .local v24, parts:[Lcom/google/android/mms/pdu/PduPart;
    if-eqz v24, :cond_c

    .line 629
    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v25, v0

    .line 630
    .local v25, partsNum:I
    const/16 v16, 0x0

    .local v16, i:I
    :goto_5
    move/from16 v0, v16

    move/from16 v1, v25

    if-ge v0, v1, :cond_c

    .line 631
    aget-object v4, v24, v16

    invoke-virtual {v11, v4}, Lcom/google/android/mms/pdu/PduBody;->addPart(Lcom/google/android/mms/pdu/PduPart;)Z

    .line 630
    add-int/lit8 v16, v16, 0x1

    goto :goto_5

    .line 636
    .end local v16           #i:I
    .end local v24           #parts:[Lcom/google/android/mms/pdu/PduPart;
    .end local v25           #partsNum:I
    :cond_c
    const/16 v26, 0x0

    .line 637
    .local v26, pdu:Lcom/google/android/mms/pdu/GenericPdu;
    packed-switch v23, :pswitch_data_0

    .line 682
    new-instance v4, Lcom/google/android/mms/MmsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unrecognized PDU type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 639
    :pswitch_0
    new-instance v26, Lcom/google/android/mms/pdu/NotificationInd;

    .end local v26           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    move-object/from16 v0, v26

    invoke-direct {v0, v15}, Lcom/google/android/mms/pdu/NotificationInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .line 686
    .restart local v26       #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    :goto_6
    new-instance v13, Lcom/google/android/mms/util/PduCacheEntry;

    .end local v13           #cacheEntry:Lcom/google/android/mms/util/PduCacheEntry;
    move-object/from16 v0, v26

    move/from16 v1, v20

    move-wide/from16 v2, v28

    invoke-direct {v13, v0, v1, v2, v3}, Lcom/google/android/mms/util/PduCacheEntry;-><init>(Lcom/google/android/mms/pdu/GenericPdu;IJ)V

    .line 687
    .restart local v13       #cacheEntry:Lcom/google/android/mms/util/PduCacheEntry;
    sget-object v4, Lcom/google/android/mms/pdu/SecurityPduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/SecurityPduCache;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v13}, Lcom/google/android/mms/util/SecurityPduCache;->put(Landroid/net/Uri;Lcom/google/android/mms/util/PduCacheEntry;)Z

    goto/16 :goto_0

    .line 642
    :pswitch_1
    new-instance v26, Lcom/google/android/mms/pdu/DeliveryInd;

    .end local v26           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    move-object/from16 v0, v26

    invoke-direct {v0, v15}, Lcom/google/android/mms/pdu/DeliveryInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .line 643
    .restart local v26       #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    goto :goto_6

    .line 645
    :pswitch_2
    new-instance v26, Lcom/google/android/mms/pdu/ReadOrigInd;

    .end local v26           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    move-object/from16 v0, v26

    invoke-direct {v0, v15}, Lcom/google/android/mms/pdu/ReadOrigInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .line 646
    .restart local v26       #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    goto :goto_6

    .line 648
    :pswitch_3
    new-instance v26, Lcom/google/android/mms/pdu/RetrieveConf;

    .end local v26           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    move-object/from16 v0, v26

    invoke-direct {v0, v15, v11}, Lcom/google/android/mms/pdu/RetrieveConf;-><init>(Lcom/google/android/mms/pdu/PduHeaders;Lcom/google/android/mms/pdu/PduBody;)V

    .line 649
    .restart local v26       #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    goto :goto_6

    .line 651
    :pswitch_4
    new-instance v26, Lcom/google/android/mms/pdu/SendReq;

    .end local v26           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    move-object/from16 v0, v26

    invoke-direct {v0, v15, v11}, Lcom/google/android/mms/pdu/SendReq;-><init>(Lcom/google/android/mms/pdu/PduHeaders;Lcom/google/android/mms/pdu/PduBody;)V

    .line 652
    .restart local v26       #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    goto :goto_6

    .line 654
    :pswitch_5
    new-instance v26, Lcom/google/android/mms/pdu/AcknowledgeInd;

    .end local v26           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    move-object/from16 v0, v26

    invoke-direct {v0, v15}, Lcom/google/android/mms/pdu/AcknowledgeInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .line 655
    .restart local v26       #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    goto :goto_6

    .line 657
    :pswitch_6
    new-instance v26, Lcom/google/android/mms/pdu/NotifyRespInd;

    .end local v26           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    move-object/from16 v0, v26

    invoke-direct {v0, v15}, Lcom/google/android/mms/pdu/NotifyRespInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .line 658
    .restart local v26       #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    goto :goto_6

    .line 660
    :pswitch_7
    new-instance v26, Lcom/google/android/mms/pdu/ReadRecInd;

    .end local v26           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    move-object/from16 v0, v26

    invoke-direct {v0, v15}, Lcom/google/android/mms/pdu/ReadRecInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .line 661
    .restart local v26       #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    goto :goto_6

    .line 678
    :pswitch_8
    new-instance v4, Lcom/google/android/mms/MmsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported PDU type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 637
    nop

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_4
        :pswitch_8
        :pswitch_0
        :pswitch_6
        :pswitch_3
        :pswitch_5
        :pswitch_1
        :pswitch_7
        :pswitch_2
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method public move(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 9
    .parameter "from"
    .parameter "to"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1472
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    .line 1473
    .local v7, msgId:J
    const-wide/16 v0, -0x1

    cmp-long v0, v7, v0

    if-nez v0, :cond_0

    .line 1474
    new-instance v0, Lcom/google/android/mms/MmsException;

    const-string v1, "Error! ID of the message: -1."

    invoke-direct {v0, v1}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1478
    :cond_0
    sget-object v0, Lcom/google/android/mms/pdu/SecurityPduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 1479
    .local v6, msgBox:Ljava/lang/Integer;
    if-nez v6, :cond_1

    .line 1480
    new-instance v0, Lcom/google/android/mms/MmsException;

    const-string v1, "Bad destination, must be one of content://security_mms/inbox, content://security_mms/sent, content://security_mms/drafts, content://security_mms/outbox, content://security_mms/temp."

    invoke-direct {v0, v1}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1487
    :cond_1
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 1488
    .local v3, values:Landroid/content/ContentValues;
    const-string v0, "msg_box"

    invoke-virtual {v3, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1489
    iget-object v0, p0, Lcom/google/android/mms/pdu/SecurityPduPersister;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/mms/pdu/SecurityPduPersister;->mContentResolver:Landroid/content/ContentResolver;

    move-object v2, p1

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1490
    invoke-static {p2, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .parameter "pdu"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 1286
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/mms/pdu/SecurityPduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;Z)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;II)Landroid/net/Uri;
    .locals 41
    .parameter "pdu"
    .parameter "uri"
    .parameter "reqAppId"
    .parameter "reqMsgId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 1129
    if-nez p2, :cond_0

    .line 1130
    new-instance v4, Lcom/google/android/mms/MmsException;

    const-string v5, "Uri may not be null."

    invoke-direct {v4, v5}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1133
    :cond_0
    sget-object v4, Lcom/google/android/mms/pdu/SecurityPduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Integer;

    .line 1134
    .local v28, msgBox:Ljava/lang/Integer;
    if-nez v28, :cond_1

    .line 1135
    new-instance v4, Lcom/google/android/mms/MmsException;

    const-string v5, "Bad destination, must be one of content://security_mms/inbox, content://security_mms/sent, content://security_mms/drafts, content://security_mms/outbox, content://security_mms/temp."

    invoke-direct {v4, v5}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1141
    :cond_1
    sget-object v4, Lcom/google/android/mms/pdu/SecurityPduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/SecurityPduCache;

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/google/android/mms/util/SecurityPduCache;->purge(Landroid/net/Uri;)Lcom/google/android/mms/util/PduCacheEntry;

    .line 1143
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/GenericPdu;->getPduHeaders()Lcom/google/android/mms/pdu/PduHeaders;

    move-result-object v22

    .line 1144
    .local v22, header:Lcom/google/android/mms/pdu/PduHeaders;
    const/4 v15, 0x0

    .line 1145
    .local v15, body:Lcom/google/android/mms/pdu/PduBody;
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 1148
    .local v7, values:Landroid/content/ContentValues;
    sget-object v4, Lcom/google/android/mms/pdu/SecurityPduPersister;->ENCODED_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v36

    .line 1149
    .local v36, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    invoke-interface/range {v36 .. v36}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .local v24, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/Map$Entry;

    .line 1150
    .local v19, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v21

    .line 1151
    .local v21, field:I
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v20

    .line 1152
    .local v20, encodedString:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v20, :cond_2

    .line 1153
    sget-object v4, Lcom/google/android/mms/pdu/SecurityPduPersister;->CHARSET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 1154
    .local v16, charsetColumn:Ljava/lang/String;
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/mms/pdu/SecurityPduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1155
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/EncodedStringValue;->getCharacterSet()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v7, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 1159
    .end local v16           #charsetColumn:Ljava/lang/String;
    .end local v19           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v20           #encodedString:Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v21           #field:I
    :cond_3
    sget-object v4, Lcom/google/android/mms/pdu/SecurityPduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v36

    .line 1160
    invoke-interface/range {v36 .. v36}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :cond_4
    :goto_1
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/Map$Entry;

    .line 1161
    .restart local v19       #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v37

    .line 1162
    .local v37, text:[B
    if-eqz v37, :cond_4

    .line 1163
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static/range {v37 .. v37}, Lcom/google/android/mms/pdu/SecurityPduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1167
    .end local v19           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v37           #text:[B
    :cond_5
    sget-object v4, Lcom/google/android/mms/pdu/SecurityPduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v36

    .line 1168
    invoke-interface/range {v36 .. v36}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :cond_6
    :goto_2
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/Map$Entry;

    .line 1169
    .restart local v19       #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v14

    .line 1170
    .local v14, b:I
    if-eqz v14, :cond_6

    .line 1171
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    .line 1175
    .end local v14           #b:I
    .end local v19           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_7
    sget-object v4, Lcom/google/android/mms/pdu/SecurityPduPersister;->LONG_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v36

    .line 1176
    invoke-interface/range {v36 .. v36}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :cond_8
    :goto_3
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/Map$Entry;

    .line 1177
    .restart local v19       #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v25

    .line 1178
    .local v25, l:J
    const-wide/16 v4, -0x1

    cmp-long v4, v25, v4

    if-eqz v4, :cond_8

    .line 1179
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_3

    .line 1183
    .end local v19           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v25           #l:J
    :cond_9
    new-instance v11, Ljava/util/HashMap;

    sget-object v4, Lcom/google/android/mms/pdu/SecurityPduPersister;->ADDRESS_FIELDS:[I

    array-length v4, v4

    invoke-direct {v11, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 1186
    .local v11, addressMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/google/android/mms/pdu/EncodedStringValue;>;"
    sget-object v12, Lcom/google/android/mms/pdu/SecurityPduPersister;->ADDRESS_FIELDS:[I

    .local v12, arr$:[I
    array-length v0, v12

    move/from16 v27, v0

    .local v27, len$:I
    const/16 v24, 0x0

    .local v24, i$:I
    :goto_4
    move/from16 v0, v24

    move/from16 v1, v27

    if-ge v0, v1, :cond_c

    aget v10, v12, v24

    .line 1187
    .local v10, addrType:I
    const/4 v13, 0x0

    .line 1188
    .local v13, array:[Lcom/google/android/mms/pdu/EncodedStringValue;
    const/16 v4, 0x89

    if-ne v10, v4, :cond_b

    .line 1189
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v40

    .line 1190
    .local v40, v:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v40, :cond_a

    .line 1191
    const/4 v4, 0x1

    new-array v13, v4, [Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 1192
    const/4 v4, 0x0

    aput-object v40, v13, v4

    .line 1197
    .end local v40           #v:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_a
    :goto_5
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v11, v4, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1186
    add-int/lit8 v24, v24, 0x1

    goto :goto_4

    .line 1195
    :cond_b
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v13

    goto :goto_5

    .line 1200
    .end local v10           #addrType:I
    .end local v13           #array:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_c
    new-instance v34, Ljava/util/HashSet;

    invoke-direct/range {v34 .. v34}, Ljava/util/HashSet;-><init>()V

    .line 1201
    .local v34, recipients:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const-wide v38, 0x7fffffffffffffffL

    .line 1202
    .local v38, threadId:J
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v31

    .line 1207
    .local v31, msgType:I
    const/16 v4, 0x82

    move/from16 v0, v31

    if-eq v0, v4, :cond_d

    const/16 v4, 0x84

    move/from16 v0, v31

    if-eq v0, v4, :cond_d

    const/16 v4, 0x80

    move/from16 v0, v31

    if-ne v0, v4, :cond_10

    .line 1210
    :cond_d
    const/4 v13, 0x0

    .line 1211
    .restart local v13       #array:[Lcom/google/android/mms/pdu/EncodedStringValue;
    packed-switch v31, :pswitch_data_0

    .line 1221
    :goto_6
    :pswitch_0
    if-eqz v13, :cond_f

    .line 1222
    move-object v12, v13

    .local v12, arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    array-length v0, v12

    move/from16 v27, v0

    const/16 v24, 0x0

    :goto_7
    move/from16 v0, v24

    move/from16 v1, v27

    if-ge v0, v1, :cond_f

    aget-object v40, v12, v24

    .line 1223
    .restart local v40       #v:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v40, :cond_e

    .line 1224
    invoke-virtual/range {v40 .. v40}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1222
    :cond_e
    add-int/lit8 v24, v24, 0x1

    goto :goto_7

    .line 1214
    .end local v40           #v:Lcom/google/android/mms/pdu/EncodedStringValue;
    .local v12, arr$:[I
    :pswitch_1
    const/16 v4, 0x89

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .end local v13           #array:[Lcom/google/android/mms/pdu/EncodedStringValue;
    check-cast v13, [Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 1215
    .restart local v13       #array:[Lcom/google/android/mms/pdu/EncodedStringValue;
    goto :goto_6

    .line 1217
    :pswitch_2
    const/16 v4, 0x97

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .end local v13           #array:[Lcom/google/android/mms/pdu/EncodedStringValue;
    check-cast v13, [Lcom/google/android/mms/pdu/EncodedStringValue;

    .restart local v13       #array:[Lcom/google/android/mms/pdu/EncodedStringValue;
    goto :goto_6

    .line 1228
    .end local v12           #arr$:[I
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/mms/pdu/SecurityPduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, v34

    invoke-static {v4, v0}, Lcom/google/android/mms/SecurityTelephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v38

    .line 1230
    .end local v13           #array:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_10
    const-string v4, "thread_id"

    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1234
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 1236
    .local v17, dummyId:J
    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    if-eqz v4, :cond_11

    .line 1237
    check-cast p1, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    .end local p1
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v15

    .line 1239
    if-eqz v15, :cond_11

    .line 1240
    invoke-virtual {v15}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v33

    .line 1241
    .local v33, partsNum:I
    const/16 v23, 0x0

    .local v23, i:I
    :goto_8
    move/from16 v0, v23

    move/from16 v1, v33

    if-ge v0, v1, :cond_11

    .line 1242
    move/from16 v0, v23

    invoke-virtual {v15, v0}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v32

    .line 1243
    .local v32, part:Lcom/google/android/mms/pdu/PduPart;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-wide/from16 v2, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/mms/pdu/SecurityPduPersister;->persistPart(Lcom/google/android/mms/pdu/PduPart;J)Landroid/net/Uri;

    .line 1241
    add-int/lit8 v23, v23, 0x1

    goto :goto_8

    .line 1248
    .end local v23           #i:I
    .end local v32           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v33           #partsNum:I
    :cond_11
    if-lez p3, :cond_12

    .line 1249
    const-string v4, "app_id"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1250
    const-string v4, "msg_id"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1253
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/mms/pdu/SecurityPduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/mms/pdu/SecurityPduPersister;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p2

    invoke-static {v4, v5, v0, v7}, Lcom/google/android/mms/util/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v35

    .line 1254
    .local v35, res:Landroid/net/Uri;
    if-nez v35, :cond_13

    .line 1255
    new-instance v4, Lcom/google/android/mms/MmsException;

    const-string v5, "persist() failed: return null."

    invoke-direct {v4, v5}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1260
    :cond_13
    invoke-static/range {v35 .. v35}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v29

    .line 1261
    .local v29, msgId:J
    new-instance v7, Landroid/content/ContentValues;

    .end local v7           #values:Landroid/content/ContentValues;
    const/4 v4, 0x1

    invoke-direct {v7, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 1262
    .restart local v7       #values:Landroid/content/ContentValues;
    const-string v4, "mid"

    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1263
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/mms/pdu/SecurityPduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/mms/pdu/SecurityPduPersister;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "content://security_mms/"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v17

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "/part"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1271
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v29

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v35

    .line 1274
    sget-object v12, Lcom/google/android/mms/pdu/SecurityPduPersister;->ADDRESS_FIELDS:[I

    .restart local v12       #arr$:[I
    array-length v0, v12

    move/from16 v27, v0

    const/16 v24, 0x0

    :goto_9
    move/from16 v0, v24

    move/from16 v1, v27

    if-ge v0, v1, :cond_15

    aget v10, v12, v24

    .line 1275
    .restart local v10       #addrType:I
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 1276
    .restart local v13       #array:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v13, :cond_14

    .line 1277
    move-object/from16 v0, p0

    move-wide/from16 v1, v29

    invoke-direct {v0, v1, v2, v10, v13}, Lcom/google/android/mms/pdu/SecurityPduPersister;->persistAddress(JI[Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 1274
    :cond_14
    add-int/lit8 v24, v24, 0x1

    goto :goto_9

    .line 1281
    .end local v10           #addrType:I
    .end local v13           #array:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_15
    return-object v35

    .line 1211
    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;Z)Landroid/net/Uri;
    .locals 44
    .parameter "pdu"
    .parameter "uri"
    .parameter "bSpam"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 1296
    if-nez p2, :cond_0

    .line 1297
    new-instance v5, Lcom/google/android/mms/MmsException;

    const-string v6, "Uri may not be null."

    invoke-direct {v5, v6}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1300
    :cond_0
    sget-object v5, Lcom/google/android/mms/pdu/SecurityPduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/Integer;

    .line 1301
    .local v31, msgBox:Ljava/lang/Integer;
    if-nez v31, :cond_1

    .line 1302
    new-instance v5, Lcom/google/android/mms/MmsException;

    const-string v6, "Bad destination, must be one of content://security_mms/inbox, content://security_mms/sent, content://security_mms/drafts, content://security_mms/outbox, content://security_mms/temp."

    invoke-direct {v5, v6}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1308
    :cond_1
    sget-object v5, Lcom/google/android/mms/pdu/SecurityPduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/SecurityPduCache;

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Lcom/google/android/mms/util/SecurityPduCache;->purge(Landroid/net/Uri;)Lcom/google/android/mms/util/PduCacheEntry;

    .line 1310
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/GenericPdu;->getPduHeaders()Lcom/google/android/mms/pdu/PduHeaders;

    move-result-object v25

    .line 1311
    .local v25, header:Lcom/google/android/mms/pdu/PduHeaders;
    const/16 v18, 0x0

    .line 1312
    .local v18, body:Lcom/google/android/mms/pdu/PduBody;
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 1315
    .local v8, values:Landroid/content/ContentValues;
    sget-object v5, Lcom/google/android/mms/pdu/SecurityPduPersister;->ENCODED_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v39

    .line 1316
    .local v39, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    invoke-interface/range {v39 .. v39}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .local v27, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/Map$Entry;

    .line 1317
    .local v22, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface/range {v22 .. v22}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v24

    .line 1318
    .local v24, field:I
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v23

    .line 1319
    .local v23, encodedString:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v23, :cond_2

    .line 1320
    sget-object v5, Lcom/google/android/mms/pdu/SecurityPduPersister;->CHARSET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 1322
    .local v19, charsetColumn:Ljava/lang/String;
    const/16 v5, 0x96

    move/from16 v0, v24

    if-ne v0, v5, :cond_3

    .line 1323
    invoke-interface/range {v22 .. v22}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v6, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V

    invoke-virtual {v6}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1328
    :goto_1
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/EncodedStringValue;->getCharacterSet()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v8, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 1325
    :cond_3
    invoke-interface/range {v22 .. v22}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/mms/pdu/SecurityPduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1332
    .end local v19           #charsetColumn:Ljava/lang/String;
    .end local v22           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v23           #encodedString:Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v24           #field:I
    :cond_4
    sget-object v5, Lcom/google/android/mms/pdu/SecurityPduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v39

    .line 1333
    invoke-interface/range {v39 .. v39}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :cond_5
    :goto_2
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/Map$Entry;

    .line 1334
    .restart local v22       #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface/range {v22 .. v22}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v40

    .line 1335
    .local v40, text:[B
    if-eqz v40, :cond_5

    .line 1336
    invoke-interface/range {v22 .. v22}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static/range {v40 .. v40}, Lcom/google/android/mms/pdu/SecurityPduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1340
    .end local v22           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v40           #text:[B
    :cond_6
    sget-object v5, Lcom/google/android/mms/pdu/SecurityPduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v39

    .line 1341
    invoke-interface/range {v39 .. v39}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :cond_7
    :goto_3
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/Map$Entry;

    .line 1342
    .restart local v22       #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface/range {v22 .. v22}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v17

    .line 1343
    .local v17, b:I
    if-eqz v17, :cond_7

    .line 1344
    invoke-interface/range {v22 .. v22}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v8, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_3

    .line 1348
    .end local v17           #b:I
    .end local v22           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_8
    sget-object v5, Lcom/google/android/mms/pdu/SecurityPduPersister;->LONG_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v39

    .line 1349
    invoke-interface/range {v39 .. v39}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :cond_9
    :goto_4
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/Map$Entry;

    .line 1350
    .restart local v22       #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface/range {v22 .. v22}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v28

    .line 1351
    .local v28, l:J
    const-wide/16 v5, -0x1

    cmp-long v5, v28, v5

    if-eqz v5, :cond_9

    .line 1352
    invoke-interface/range {v22 .. v22}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v8, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_4

    .line 1356
    .end local v22           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v28           #l:J
    :cond_a
    new-instance v15, Ljava/util/HashMap;

    sget-object v5, Lcom/google/android/mms/pdu/SecurityPduPersister;->ADDRESS_FIELDS:[I

    array-length v5, v5

    invoke-direct {v15, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 1359
    .local v15, addressMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/google/android/mms/pdu/EncodedStringValue;>;"
    sget-object v16, Lcom/google/android/mms/pdu/SecurityPduPersister;->ADDRESS_FIELDS:[I

    .local v16, arr$:[I
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v30, v0

    .local v30, len$:I
    const/16 v27, 0x0

    .local v27, i$:I
    :goto_5
    move/from16 v0, v27

    move/from16 v1, v30

    if-ge v0, v1, :cond_d

    aget v12, v16, v27

    .line 1360
    .local v12, addrType:I
    const/4 v13, 0x0

    .line 1361
    .local v13, array:[Lcom/google/android/mms/pdu/EncodedStringValue;
    const/16 v5, 0x89

    if-ne v12, v5, :cond_c

    .line 1362
    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v43

    .line 1363
    .local v43, v:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v43, :cond_b

    .line 1364
    const/4 v5, 0x1

    new-array v13, v5, [Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 1365
    const/4 v5, 0x0

    aput-object v43, v13, v5

    .line 1370
    .end local v43           #v:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_b
    :goto_6
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v15, v5, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1359
    add-int/lit8 v27, v27, 0x1

    goto :goto_5

    .line 1368
    :cond_c
    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v13

    goto :goto_6

    .line 1373
    .end local v12           #addrType:I
    .end local v13           #array:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_d
    new-instance v37, Ljava/util/HashSet;

    invoke-direct/range {v37 .. v37}, Ljava/util/HashSet;-><init>()V

    .line 1374
    .local v37, recipients:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const-wide v41, 0x7fffffffffffffffL

    .line 1375
    .local v41, threadId:J
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v34

    .line 1380
    .local v34, msgType:I
    const/16 v5, 0x82

    move/from16 v0, v34

    if-eq v0, v5, :cond_e

    const/16 v5, 0x84

    move/from16 v0, v34

    if-eq v0, v5, :cond_e

    const/16 v5, 0x80

    move/from16 v0, v34

    if-ne v0, v5, :cond_11

    .line 1383
    :cond_e
    const/4 v13, 0x0

    .line 1384
    .restart local v13       #array:[Lcom/google/android/mms/pdu/EncodedStringValue;
    packed-switch v34, :pswitch_data_0

    .line 1394
    :goto_7
    :pswitch_0
    if-eqz v13, :cond_10

    .line 1395
    move-object/from16 v16, v13

    .local v16, arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v30, v0

    const/16 v27, 0x0

    :goto_8
    move/from16 v0, v27

    move/from16 v1, v30

    if-ge v0, v1, :cond_10

    aget-object v43, v16, v27

    .line 1396
    .restart local v43       #v:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v43, :cond_f

    .line 1397
    invoke-virtual/range {v43 .. v43}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1395
    :cond_f
    add-int/lit8 v27, v27, 0x1

    goto :goto_8

    .line 1387
    .end local v43           #v:Lcom/google/android/mms/pdu/EncodedStringValue;
    .local v16, arr$:[I
    :pswitch_1
    const/16 v5, 0x89

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .end local v13           #array:[Lcom/google/android/mms/pdu/EncodedStringValue;
    check-cast v13, [Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 1388
    .restart local v13       #array:[Lcom/google/android/mms/pdu/EncodedStringValue;
    goto :goto_7

    .line 1390
    :pswitch_2
    const/16 v5, 0x97

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .end local v13           #array:[Lcom/google/android/mms/pdu/EncodedStringValue;
    check-cast v13, [Lcom/google/android/mms/pdu/EncodedStringValue;

    .restart local v13       #array:[Lcom/google/android/mms/pdu/EncodedStringValue;
    goto :goto_7

    .line 1401
    .end local v16           #arr$:[I
    :cond_10
    if-nez p3, :cond_11

    .line 1402
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/mms/pdu/SecurityPduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, v37

    invoke-static {v5, v0}, Lcom/google/android/mms/SecurityTelephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v41

    .line 1404
    .end local v13           #array:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_11
    if-nez p3, :cond_12

    .line 1405
    const-string v5, "thread_id"

    invoke-static/range {v41 .. v42}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v8, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1409
    :cond_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 1411
    .local v20, dummyId:J
    move-object/from16 v0, p1

    instance-of v5, v0, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    if-eqz v5, :cond_13

    .line 1412
    check-cast p1, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    .end local p1
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v18

    .line 1414
    if-eqz v18, :cond_13

    .line 1415
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v36

    .line 1416
    .local v36, partsNum:I
    const/16 v26, 0x0

    .local v26, i:I
    :goto_9
    move/from16 v0, v26

    move/from16 v1, v36

    if-ge v0, v1, :cond_13

    .line 1417
    move-object/from16 v0, v18

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v35

    .line 1418
    .local v35, part:Lcom/google/android/mms/pdu/PduPart;
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-wide/from16 v2, v20

    move/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/mms/pdu/SecurityPduPersister;->persistPart(Lcom/google/android/mms/pdu/PduPart;JZ)Landroid/net/Uri;

    .line 1416
    add-int/lit8 v26, v26, 0x1

    goto :goto_9

    .line 1423
    .end local v26           #i:I
    .end local v35           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v36           #partsNum:I
    :cond_13
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/mms/pdu/SecurityPduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/mms/pdu/SecurityPduPersister;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p2

    invoke-static {v5, v6, v0, v8}, Lcom/google/android/mms/util/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v38

    .line 1424
    .local v38, res:Landroid/net/Uri;
    if-nez v38, :cond_14

    .line 1425
    new-instance v5, Lcom/google/android/mms/MmsException;

    const-string v6, "persist() failed: return null."

    invoke-direct {v5, v6}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1430
    :cond_14
    invoke-static/range {v38 .. v38}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v32

    .line 1431
    .local v32, msgId:J
    new-instance v8, Landroid/content/ContentValues;

    .end local v8           #values:Landroid/content/ContentValues;
    const/4 v5, 0x1

    invoke-direct {v8, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 1432
    .restart local v8       #values:Landroid/content/ContentValues;
    const-string v5, "mid"

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v8, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1433
    const/4 v5, 0x1

    move/from16 v0, p3

    if-ne v0, v5, :cond_16

    .line 1434
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/mms/pdu/SecurityPduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/mms/pdu/SecurityPduPersister;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "content://security_spammms/"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v20

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "/spampart"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1446
    :goto_a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v32

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v38

    .line 1449
    sget-object v16, Lcom/google/android/mms/pdu/SecurityPduPersister;->ADDRESS_FIELDS:[I

    .restart local v16       #arr$:[I
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v30, v0

    const/16 v27, 0x0

    :goto_b
    move/from16 v0, v27

    move/from16 v1, v30

    if-ge v0, v1, :cond_17

    aget v12, v16, v27

    .line 1450
    .restart local v12       #addrType:I
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 1451
    .restart local v13       #array:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v13, :cond_15

    move-object/from16 v9, p0

    move-wide/from16 v10, v32

    move/from16 v14, p3

    .line 1452
    invoke-direct/range {v9 .. v14}, Lcom/google/android/mms/pdu/SecurityPduPersister;->persistAddress(JI[Lcom/google/android/mms/pdu/EncodedStringValue;Z)V

    .line 1449
    :cond_15
    add-int/lit8 v27, v27, 0x1

    goto :goto_b

    .line 1438
    .end local v12           #addrType:I
    .end local v13           #array:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v16           #arr$:[I
    :cond_16
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/mms/pdu/SecurityPduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/mms/pdu/SecurityPduPersister;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "content://security_mms/"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v20

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "/part"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_a

    .line 1456
    .restart local v16       #arr$:[I
    :cond_17
    return-object v38

    .line 1384
    nop

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public persistPart(Lcom/google/android/mms/pdu/PduPart;J)Landroid/net/Uri;
    .locals 1
    .parameter "part"
    .parameter "msgId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 719
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/mms/pdu/SecurityPduPersister;->persistPart(Lcom/google/android/mms/pdu/PduPart;JZ)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public persistPart(Lcom/google/android/mms/pdu/PduPart;JZ)Landroid/net/Uri;
    .locals 10
    .parameter "part"
    .parameter "msgId"
    .parameter "bSpam"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 727
    const/4 v8, 0x1

    if-ne p4, v8, :cond_8

    .line 728
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "content://security_spammms/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/spampart"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 732
    .local v5, uri:Landroid/net/Uri;
    :goto_0
    new-instance v7, Landroid/content/ContentValues;

    const/16 v8, 0x8

    invoke-direct {v7, v8}, Landroid/content/ContentValues;-><init>(I)V

    .line 734
    .local v7, values:Landroid/content/ContentValues;
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getCharset()I

    move-result v0

    .line 735
    .local v0, charset:I
    if-eqz v0, :cond_0

    .line 736
    const-string v8, "chset"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 739
    :cond_0
    const/4 v1, 0x0

    .line 740
    .local v1, contentType:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v8

    if-eqz v8, :cond_9

    .line 741
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/mms/pdu/SecurityPduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v1

    .line 745
    const-string v8, "image/jpg"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 746
    const-string v1, "image/jpeg"

    .line 749
    :cond_1
    const-string v8, "ct"

    invoke-virtual {v7, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    const-string v8, "application/smil"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 752
    const-string v8, "seq"

    const/4 v9, -0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 758
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v8

    if-eqz v8, :cond_3

    .line 759
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/lang/String;-><init>([B)V

    .line 760
    .local v2, fileName:Ljava/lang/String;
    const-string v8, "fn"

    invoke-virtual {v7, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    .end local v2           #fileName:Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v8

    if-eqz v8, :cond_4

    .line 764
    new-instance v3, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/lang/String;-><init>([B)V

    .line 765
    .local v3, name:Ljava/lang/String;
    const-string v8, "name"

    invoke-virtual {v7, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    .end local v3           #name:Ljava/lang/String;
    :cond_4
    const/4 v6, 0x0

    .line 769
    .local v6, value:Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentDisposition()[B

    move-result-object v8

    if-eqz v8, :cond_5

    .line 770
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentDisposition()[B

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/mms/pdu/SecurityPduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v6

    .line 771
    .local v6, value:Ljava/lang/String;
    const-string v8, "cd"

    check-cast v6, Ljava/lang/String;

    .end local v6           #value:Ljava/lang/String;
    invoke-virtual {v7, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    :cond_5
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v8

    if-eqz v8, :cond_6

    .line 775
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/mms/pdu/SecurityPduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v6

    .line 776
    .restart local v6       #value:Ljava/lang/String;
    const-string v8, "cid"

    check-cast v6, Ljava/lang/String;

    .end local v6           #value:Ljava/lang/String;
    invoke-virtual {v7, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    :cond_6
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v8

    if-eqz v8, :cond_7

    .line 780
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/mms/pdu/SecurityPduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v6

    .line 781
    .restart local v6       #value:Ljava/lang/String;
    const-string v8, "cl"

    check-cast v6, Ljava/lang/String;

    .end local v6           #value:Ljava/lang/String;
    invoke-virtual {v7, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    :cond_7
    iget-object v8, p0, Lcom/google/android/mms/pdu/SecurityPduPersister;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/google/android/mms/pdu/SecurityPduPersister;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v8, v9, v5, v7}, Lcom/google/android/mms/util/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    .line 785
    .local v4, res:Landroid/net/Uri;
    if-nez v4, :cond_a

    .line 786
    new-instance v8, Lcom/google/android/mms/MmsException;

    const-string v9, "Failed to persist part, return null."

    invoke-direct {v8, v9}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 730
    .end local v0           #charset:I
    .end local v1           #contentType:Ljava/lang/String;
    .end local v4           #res:Landroid/net/Uri;
    .end local v5           #uri:Landroid/net/Uri;
    .end local v7           #values:Landroid/content/ContentValues;
    :cond_8
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "content://security_mms/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/part"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .restart local v5       #uri:Landroid/net/Uri;
    goto/16 :goto_0

    .line 755
    .restart local v0       #charset:I
    .restart local v1       #contentType:Ljava/lang/String;
    .restart local v7       #values:Landroid/content/ContentValues;
    :cond_9
    new-instance v8, Lcom/google/android/mms/MmsException;

    const-string v9, "MIME type of the part must be set."

    invoke-direct {v8, v9}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 789
    .restart local v4       #res:Landroid/net/Uri;
    :cond_a
    invoke-direct {p0, p1, v4, v1, p4}, Lcom/google/android/mms/pdu/SecurityPduPersister;->persistData(Lcom/google/android/mms/pdu/PduPart;Landroid/net/Uri;Ljava/lang/String;Z)V

    .line 792
    invoke-virtual {p1, v4}, Lcom/google/android/mms/pdu/PduPart;->setDataUri(Landroid/net/Uri;)V

    .line 794
    return-object v4
.end method

.method public release()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1523
    const-string v1, "content://security_mms/9223372036854775807/part"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1524
    .local v0, uri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/google/android/mms/pdu/SecurityPduPersister;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/mms/pdu/SecurityPduPersister;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v1, v2, v0, v3, v3}, Lcom/google/android/mms/util/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1525
    return-void
.end method

.method public updateHeaders(Landroid/net/Uri;Lcom/google/android/mms/pdu/SendReq;)V
    .locals 41
    .parameter "uri"
    .parameter "sendReq"

    .prologue
    .line 905
    sget-object v3, Lcom/google/android/mms/pdu/SecurityPduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/SecurityPduCache;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/google/android/mms/util/SecurityPduCache;->purge(Landroid/net/Uri;)Lcom/google/android/mms/util/PduCacheEntry;

    .line 907
    new-instance v6, Landroid/content/ContentValues;

    const/16 v3, 0xa

    invoke-direct {v6, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 908
    .local v6, values:Landroid/content/ContentValues;
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getContentType()[B

    move-result-object v13

    .line 909
    .local v13, contentType:[B
    if-eqz v13, :cond_0

    .line 910
    const-string v3, "ct_t"

    invoke-static {v13}, Lcom/google/android/mms/pdu/SecurityPduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getDate()J

    move-result-wide v14

    .line 914
    .local v14, date:J
    const-wide/16 v3, -0x1

    cmp-long v3, v14, v3

    if-eqz v3, :cond_1

    .line 915
    const-string v3, "date"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 918
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getDeliveryReport()I

    move-result v16

    .line 919
    .local v16, deliveryReport:I
    if-eqz v16, :cond_2

    .line 920
    const-string v3, "d_rpt"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 924
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getDeliveryTime()J

    move-result-wide v17

    .line 925
    .local v17, deliveryTime:J
    const-wide/16 v3, -0x1

    cmp-long v3, v17, v3

    if-eqz v3, :cond_3

    .line 926
    const-string v3, "d_tm"

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 929
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getExpiry()J

    move-result-wide v19

    .line 930
    .local v19, expiry:J
    const-wide/16 v3, -0x1

    cmp-long v3, v19, v3

    if-eqz v3, :cond_4

    .line 931
    const-string v3, "exp"

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 934
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getMessageClass()[B

    move-result-object v28

    .line 935
    .local v28, msgClass:[B
    if-eqz v28, :cond_5

    .line 936
    const-string v3, "m_cls"

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/SecurityPduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getPriority()I

    move-result v31

    .line 940
    .local v31, priority:I
    if-eqz v31, :cond_6

    .line 941
    const-string v3, "pri"

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 944
    :cond_6
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getReadReport()I

    move-result v32

    .line 945
    .local v32, readReport:I
    if-eqz v32, :cond_7

    .line 946
    const-string v3, "rr"

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 949
    :cond_7
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getTransactionId()[B

    move-result-object v39

    .line 950
    .local v39, transId:[B
    if-eqz v39, :cond_8

    .line 951
    const-string v3, "tr_id"

    invoke-static/range {v39 .. v39}, Lcom/google/android/mms/pdu/SecurityPduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    :cond_8
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v36

    .line 955
    .local v36, subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v36, :cond_c

    .line 958
    const-string v3, "sub"

    new-instance v4, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-virtual/range {v36 .. v36}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    const-string v3, "sub_cs"

    invoke-virtual/range {v36 .. v36}, Lcom/google/android/mms/pdu/EncodedStringValue;->getCharacterSet()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 965
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getMessageSize()J

    move-result-wide v26

    .line 966
    .local v26, messageSize:J
    const-wide/16 v3, 0x0

    cmp-long v3, v26, v3

    if-lez v3, :cond_9

    .line 967
    const-string v3, "m_size"

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 970
    :cond_9
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getPduHeaders()Lcom/google/android/mms/pdu/PduHeaders;

    move-result-object v21

    .line 971
    .local v21, headers:Lcom/google/android/mms/pdu/PduHeaders;
    new-instance v33, Ljava/util/HashSet;

    invoke-direct/range {v33 .. v33}, Ljava/util/HashSet;-><init>()V

    .line 972
    .local v33, recipients:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    sget-object v10, Lcom/google/android/mms/pdu/SecurityPduPersister;->ADDRESS_FIELDS:[I

    .local v10, arr$:[I
    array-length v0, v10

    move/from16 v24, v0

    .local v24, len$:I
    const/16 v22, 0x0

    .local v22, i$:I
    move/from16 v23, v22

    .end local v10           #arr$:[I
    .end local v22           #i$:I
    .end local v24           #len$:I
    .local v23, i$:I
    :goto_1
    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_f

    aget v9, v10, v23

    .line 973
    .local v9, addrType:I
    const/4 v12, 0x0

    .line 974
    .local v12, array:[Lcom/google/android/mms/pdu/EncodedStringValue;
    const/16 v3, 0x89

    if-ne v9, v3, :cond_d

    .line 975
    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v40

    .line 976
    .local v40, v:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v40, :cond_a

    .line 977
    const/4 v3, 0x1

    new-array v12, v3, [Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 978
    const/4 v3, 0x0

    aput-object v40, v12, v3

    .line 984
    .end local v40           #v:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_a
    :goto_2
    if-eqz v12, :cond_e

    .line 985
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v29

    .line 986
    .local v29, msgId:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v29

    invoke-direct {v0, v1, v2, v9, v12}, Lcom/google/android/mms/pdu/SecurityPduPersister;->updateAddress(JI[Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 987
    const/16 v3, 0x97

    if-ne v9, v3, :cond_e

    .line 988
    move-object v11, v12

    .local v11, arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    array-length v0, v11

    move/from16 v25, v0

    .local v25, len$:I
    const/16 v22, 0x0

    .end local v23           #i$:I
    .restart local v22       #i$:I
    :goto_3
    move/from16 v0, v22

    move/from16 v1, v25

    if-ge v0, v1, :cond_e

    aget-object v40, v11, v22

    .line 989
    .restart local v40       #v:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v40, :cond_b

    .line 990
    invoke-virtual/range {v40 .. v40}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 988
    :cond_b
    add-int/lit8 v22, v22, 0x1

    goto :goto_3

    .line 962
    .end local v9           #addrType:I
    .end local v11           #arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v12           #array:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v21           #headers:Lcom/google/android/mms/pdu/PduHeaders;
    .end local v22           #i$:I
    .end local v25           #len$:I
    .end local v26           #messageSize:J
    .end local v29           #msgId:J
    .end local v33           #recipients:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v40           #v:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_c
    const-string v3, "sub"

    const-string v4, ""

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 981
    .restart local v9       #addrType:I
    .restart local v12       #array:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v21       #headers:Lcom/google/android/mms/pdu/PduHeaders;
    .restart local v23       #i$:I
    .restart local v26       #messageSize:J
    .restart local v33       #recipients:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_d
    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v12

    goto :goto_2

    .line 972
    .end local v23           #i$:I
    :cond_e
    add-int/lit8 v22, v23, 0x1

    .restart local v22       #i$:I
    move/from16 v23, v22

    .end local v22           #i$:I
    .restart local v23       #i$:I
    goto :goto_1

    .line 997
    .end local v9           #addrType:I
    .end local v12           #array:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/mms/pdu/SecurityPduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, v33

    invoke-static {v3, v0}, Lcom/google/android/mms/SecurityTelephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v37

    .line 998
    .local v37, threadId:J
    const-string v3, "thread_id"

    invoke-static/range {v37 .. v38}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1000
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getReserved()J

    move-result-wide v34

    .line 1001
    .local v34, reserved:J
    const-wide/16 v3, -0x1

    cmp-long v3, v34, v3

    if-eqz v3, :cond_10

    .line 1002
    const-string v3, "reserved"

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1005
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/mms/pdu/SecurityPduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/mms/pdu/SecurityPduPersister;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v5, p1

    invoke-static/range {v3 .. v8}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1006
    return-void
.end method

.method public updateParts(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduBody;)V
    .locals 22
    .parameter "uri"
    .parameter "body"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 1070
    sget-object v17, Lcom/google/android/mms/pdu/SecurityPduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/SecurityPduCache;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/util/SecurityPduCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/mms/util/PduCacheEntry;

    .line 1071
    .local v5, cacheEntry:Lcom/google/android/mms/util/PduCacheEntry;
    if-eqz v5, :cond_0

    .line 1072
    invoke-virtual {v5}, Lcom/google/android/mms/util/PduCacheEntry;->getPdu()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v17

    check-cast v17, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->setBody(Lcom/google/android/mms/pdu/PduBody;)V

    .line 1075
    :cond_0
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1076
    .local v15, toBeCreated:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/mms/pdu/PduPart;>;"
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 1078
    .local v16, toBeUpdated:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPart;>;"
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v14

    .line 1079
    .local v14, partsNum:I
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v18, 0x28

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1080
    .local v7, filter:Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v14, :cond_4

    .line 1081
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v12

    .line 1082
    .local v12, part:Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual {v12}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v13

    .line 1083
    .local v13, partUri:Landroid/net/Uri;
    if-eqz v13, :cond_1

    invoke-virtual {v13}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_1

    invoke-virtual {v13}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v17

    const-string v18, "security_mms"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 1084
    :cond_1
    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1080
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1086
    :cond_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v13, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1090
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_3

    .line 1091
    const-string v17, " AND "

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1094
    :cond_3
    const-string v17, "_id"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1095
    const-string v17, "!="

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1096
    invoke-virtual {v13}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v7, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_1

    .line 1099
    .end local v12           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v13           #partUri:Landroid/net/Uri;
    :cond_4
    const/16 v17, 0x29

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1101
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v10

    .line 1104
    .local v10, msgId:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/SecurityPduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/SecurityPduPersister;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v19, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v20, Lcom/google/android/mms/SecurityTelephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v20, "/"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v20, "/part"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v17

    const/16 v21, 0x2

    move/from16 v0, v17

    move/from16 v1, v21

    if-le v0, v1, :cond_5

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    :goto_2
    const/16 v21, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v17

    move-object/from16 v4, v21

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/mms/util/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1109
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/mms/pdu/PduPart;

    .line 1110
    .restart local v12       #part:Lcom/google/android/mms/pdu/PduPart;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v10, v11}, Lcom/google/android/mms/pdu/SecurityPduPersister;->persistPart(Lcom/google/android/mms/pdu/PduPart;J)Landroid/net/Uri;

    goto :goto_3

    .line 1104
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v12           #part:Lcom/google/android/mms/pdu/PduPart;
    :cond_5
    const/16 v17, 0x0

    goto :goto_2

    .line 1114
    .restart local v9       #i$:Ljava/util/Iterator;
    :cond_6
    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 1115
    .local v6, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPart;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/net/Uri;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/google/android/mms/pdu/PduPart;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/google/android/mms/pdu/SecurityPduPersister;->updatePart(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPart;)V

    goto :goto_4

    .line 1117
    .end local v6           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPart;>;"
    :cond_7
    return-void
.end method
