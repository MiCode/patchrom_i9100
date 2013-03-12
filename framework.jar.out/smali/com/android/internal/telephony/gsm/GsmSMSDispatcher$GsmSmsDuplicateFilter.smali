.class Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$GsmSmsDuplicateFilter;
.super Ljava/lang/Object;
.source "GsmSMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GsmSmsDuplicateFilter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$GsmSmsDuplicateFilter$SmsFilterRecord;
    }
.end annotation


# instance fields
.field private final FILTER_SIZE:I

.field mHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$GsmSmsDuplicateFilter$SmsFilterRecord;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;)V
    .locals 1
    .parameter

    .prologue
    .line 1263
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$GsmSmsDuplicateFilter;->this$0:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1249
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$GsmSmsDuplicateFilter;->FILTER_SIZE:I

    .line 1264
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$GsmSmsDuplicateFilter;->mHistory:Ljava/util/ArrayList;

    .line 1265
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$GsmSmsDuplicateFilter;Lcom/android/internal/telephony/SmsMessageBase;)[B
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1248
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$GsmSmsDuplicateFilter;->getSmsFingerprint(Lcom/android/internal/telephony/SmsMessageBase;)[B

    move-result-object v0

    return-object v0
.end method

.method private getSmsFingerprint(Lcom/android/internal/telephony/SmsMessageBase;)[B
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    .line 1279
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1281
    .local v1, output:Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v2

    .line 1282
    .local v2, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    if-eqz v2, :cond_0

    .line 1283
    invoke-static {v2}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v0

    .line 1284
    .local v0, hdr:[B
    array-length v3, v0

    invoke-virtual {v1, v0, v5, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1287
    .end local v0           #hdr:[B
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getUserData()[B

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getUserData()[B

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v1, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1289
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public addMessage(Lcom/android/internal/telephony/SmsMessageBase;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 1268
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$GsmSmsDuplicateFilter;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 1269
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$GsmSmsDuplicateFilter;->mHistory:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1272
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$GsmSmsDuplicateFilter;->mHistory:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$GsmSmsDuplicateFilter$SmsFilterRecord;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$GsmSmsDuplicateFilter$SmsFilterRecord;-><init>(Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$GsmSmsDuplicateFilter;Lcom/android/internal/telephony/SmsMessageBase;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1273
    return-void
.end method

.method public isDuplicated(Lcom/android/internal/telephony/SmsMessageBase;)Z
    .locals 13
    .parameter "src"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1293
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v5

    .line 1296
    .local v5, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$GsmSmsDuplicateFilter;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v2, v9, :cond_7

    .line 1297
    const/4 v0, 0x0

    .local v0, addrMatched:Z
    const/4 v1, 0x0

    .local v1, bodyMatched:Z
    const/4 v6, 0x0

    .line 1298
    .local v6, timeMatched:Z
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$GsmSmsDuplicateFilter;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$GsmSmsDuplicateFilter$SmsFilterRecord;

    .line 1299
    .local v4, rec:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$GsmSmsDuplicateFilter$SmsFilterRecord;
    iget-object v3, v4, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$GsmSmsDuplicateFilter$SmsFilterRecord;->mSms:Lcom/android/internal/telephony/SmsMessageBase;

    .line 1301
    .local v3, msg:Lcom/android/internal/telephony/SmsMessageBase;
    invoke-virtual {v3}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 1302
    invoke-virtual {v3}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1307
    :goto_1
    invoke-virtual {v3}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v9

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-nez v9, :cond_2

    move v6, v7

    .line 1310
    :goto_2
    if-eqz v5, :cond_3

    iget-object v9, v5, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-eqz v9, :cond_3

    .line 1311
    iget-object v9, v4, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$GsmSmsDuplicateFilter$SmsFilterRecord;->mFingerprint:[B

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$GsmSmsDuplicateFilter;->getSmsFingerprint(Lcom/android/internal/telephony/SmsMessageBase;)[B

    move-result-object v10

    invoke-static {v9, v10}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    .line 1320
    :goto_3
    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    if-eqz v6, :cond_6

    .line 1325
    .end local v0           #addrMatched:Z
    .end local v1           #bodyMatched:Z
    .end local v3           #msg:Lcom/android/internal/telephony/SmsMessageBase;
    .end local v4           #rec:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$GsmSmsDuplicateFilter$SmsFilterRecord;
    .end local v6           #timeMatched:Z
    :goto_4
    return v7

    .line 1304
    .restart local v0       #addrMatched:Z
    .restart local v1       #bodyMatched:Z
    .restart local v3       #msg:Lcom/android/internal/telephony/SmsMessageBase;
    .restart local v4       #rec:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$GsmSmsDuplicateFilter$SmsFilterRecord;
    .restart local v6       #timeMatched:Z
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_1

    move v0, v7

    :goto_5
    goto :goto_1

    :cond_1
    move v0, v8

    goto :goto_5

    :cond_2
    move v6, v8

    .line 1307
    goto :goto_2

    .line 1313
    :cond_3
    invoke-virtual {v3}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 1314
    invoke-virtual {v3}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_3

    .line 1316
    :cond_4
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_5

    move v1, v7

    :goto_6
    goto :goto_3

    :cond_5
    move v1, v8

    goto :goto_6

    .line 1296
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0           #addrMatched:Z
    .end local v1           #bodyMatched:Z
    .end local v3           #msg:Lcom/android/internal/telephony/SmsMessageBase;
    .end local v4           #rec:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$GsmSmsDuplicateFilter$SmsFilterRecord;
    .end local v6           #timeMatched:Z
    :cond_7
    move v7, v8

    .line 1325
    goto :goto_4
.end method
