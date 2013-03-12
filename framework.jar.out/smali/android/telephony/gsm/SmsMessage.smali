.class public Landroid/telephony/gsm/SmsMessage;
.super Ljava/lang/Object;
.source "SmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/gsm/SmsMessage$DeliverPdu;,
        Landroid/telephony/gsm/SmsMessage$SubmitPdu;,
        Landroid/telephony/gsm/SmsMessage$MessageClass;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ENCODING_16BIT:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ENCODING_7BIT:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ENCODING_8BIT:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ENCODING_UNKNOWN:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final LOCAL_DEBUG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "SMS"

.field public static final MAX_USER_DATA_BYTES:I = 0x8c
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MAX_USER_DATA_BYTES_WITH_HEADER:I = 0x86
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MAX_USER_DATA_SEPTETS:I = 0xa0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MAX_USER_DATA_SEPTETS_WITH_HEADER:I = 0x99
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field public mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 181
    invoke-static {}, Landroid/telephony/gsm/SmsMessage;->getSmsFacility()Lcom/android/internal/telephony/SmsMessageBase;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/telephony/gsm/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    .line 182
    return-void
.end method

.method private constructor <init>(Lcom/android/internal/telephony/SmsMessageBase;)V
    .locals 0
    .parameter "smb"

    .prologue
    .line 184
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 185
    iput-object p1, p0, Landroid/telephony/gsm/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    .line 186
    return-void
.end method

.method public static calculateLength(Ljava/lang/CharSequence;Z)[I
    .locals 4
    .parameter "messageBody"
    .parameter "use7bitOnly"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 242
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v1

    .line 245
    .local v1, ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    const/4 v2, 0x4

    new-array v0, v2, [I

    .line 246
    .local v0, ret:[I
    const/4 v2, 0x0

    iget v3, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    aput v3, v0, v2

    .line 247
    const/4 v2, 0x1

    iget v3, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    aput v3, v0, v2

    .line 248
    const/4 v2, 0x2

    iget v3, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    aput v3, v0, v2

    .line 249
    const/4 v2, 0x3

    iget v3, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    aput v3, v0, v2

    .line 250
    return-object v0
.end method

.method public static calculateLength(Ljava/lang/String;Z)[I
    .locals 1
    .parameter "messageBody"
    .parameter "use7bitOnly"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 271
    invoke-static {p0, p1}, Landroid/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)[I

    move-result-object v0

    return-object v0
.end method

.method public static createFromPdu([B)Landroid/telephony/gsm/SmsMessage;
    .locals 4
    .parameter "pdu"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 195
    const-string v2, "SMS"

    const-string v3, "android.telephony.SmsMessage.java - createFromPdu"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    .line 199
    .local v0, activePhone:I
    const/4 v2, 0x2

    if-ne v2, v0, :cond_0

    .line 200
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v1

    .line 205
    .local v1, wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    :goto_0
    new-instance v2, Landroid/telephony/gsm/SmsMessage;

    invoke-direct {v2, v1}, Landroid/telephony/gsm/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    return-object v2

    .line 202
    .end local v1           #wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    :cond_0
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v1

    .restart local v1       #wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    goto :goto_0
.end method

.method public static getSimDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Landroid/telephony/gsm/SmsMessage$DeliverPdu;
    .locals 4
    .parameter "scAddress"
    .parameter "Address"
    .parameter "message"
    .parameter "date"
    .parameter "header"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 725
    const-string v2, "SMS"

    const-string v3, "android.telephony.gsm.SmsMessage.java - getSimSubmitPdu"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    .line 730
    .local v0, activePhone:I
    const/4 v2, 0x2

    if-ne v2, v0, :cond_0

    .line 732
    const/4 v1, 0x0

    .line 738
    .local v1, spb:Lcom/android/internal/telephony/SmsMessageBase$DeliverPduBase;
    :goto_0
    new-instance v2, Landroid/telephony/gsm/SmsMessage$DeliverPdu;

    invoke-direct {v2, v1}, Landroid/telephony/gsm/SmsMessage$DeliverPdu;-><init>(Lcom/android/internal/telephony/SmsMessageBase$DeliverPduBase;)V

    return-object v2

    .line 734
    .end local v1           #spb:Lcom/android/internal/telephony/SmsMessageBase$DeliverPduBase;
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSimDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;

    move-result-object v1

    .restart local v1       #spb:Lcom/android/internal/telephony/SmsMessageBase$DeliverPduBase;
    goto :goto_0
.end method

.method public static getSimSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Landroid/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 4
    .parameter "scAddress"
    .parameter "Address"
    .parameter "message"
    .parameter "header"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 702
    const-string v2, "SMS"

    const-string v3, "android.telephony.gsm.SmsMessage.java - getSimSubmitPdu"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    .line 707
    .local v0, activePhone:I
    const/4 v2, 0x2

    if-ne v2, v0, :cond_0

    .line 709
    const/4 v1, 0x0

    .line 715
    .local v1, spb:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :goto_0
    new-instance v2, Landroid/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v2, v1}, Landroid/telephony/gsm/SmsMessage$SubmitPdu;-><init>(Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)V

    return-object v2

    .line 711
    .end local v1           #spb:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSimSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v1

    .restart local v1       #spb:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    goto :goto_0
.end method

.method private static final getSmsFacility()Lcom/android/internal/telephony/SmsMessageBase;
    .locals 2

    .prologue
    .line 686
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    .line 687
    .local v0, activePhone:I
    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    .line 688
    new-instance v1, Lcom/android/internal/telephony/cdma/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/cdma/SmsMessage;-><init>()V

    .line 690
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    goto :goto_0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 3
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "statusReportRequested"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 316
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    .line 318
    .local v0, activePhone:I
    const/4 v2, 0x2

    if-ne v2, v0, :cond_0

    .line 319
    const/4 v2, 0x0

    invoke-static {p0, p1, p2, p3, v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v1

    .line 326
    .local v1, spb:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :goto_0
    new-instance v2, Landroid/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v2, v1}, Landroid/telephony/gsm/SmsMessage$SubmitPdu;-><init>(Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)V

    return-object v2

    .line 322
    .end local v1           #spb:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v1

    .restart local v1       #spb:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    goto :goto_0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Landroid/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 3
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "statusReportRequested"
    .parameter "header"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 289
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    .line 291
    .local v0, activePhone:I
    const/4 v2, 0x2

    if-ne v2, v0, :cond_0

    .line 292
    invoke-static {p4}, Lcom/android/internal/telephony/SmsHeader;->fromByteArray([B)Lcom/android/internal/telephony/SmsHeader;

    move-result-object v2

    invoke-static {p0, p1, p2, p3, v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v1

    .line 300
    .local v1, spb:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :goto_0
    new-instance v2, Landroid/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v2, v1}, Landroid/telephony/gsm/SmsMessage$SubmitPdu;-><init>(Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)V

    return-object v2

    .line 296
    .end local v1           #spb:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v1

    .restart local v1       #spb:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    goto :goto_0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;S[BZ)Landroid/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 3
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "destinationPort"
    .parameter "data"
    .parameter "statusReportRequested"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 347
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    .line 349
    .local v0, activePhone:I
    const/4 v2, 0x2

    if-ne v2, v0, :cond_0

    .line 350
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v1

    .line 357
    .local v1, spb:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :goto_0
    new-instance v2, Landroid/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v2, v1}, Landroid/telephony/gsm/SmsMessage$SubmitPdu;-><init>(Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)V

    return-object v2

    .line 353
    .end local v1           #spb:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v1

    .restart local v1       #spb:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    goto :goto_0
.end method

.method public static getTPLayerLengthForPDU(Ljava/lang/String;)I
    .locals 2
    .parameter "pdu"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 215
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    .line 217
    .local v0, activePhone:I
    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    .line 218
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTPLayerLengthForPDU(Ljava/lang/String;)I

    move-result v1

    .line 220
    :goto_0
    return v1

    :cond_0
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getTPLayerLengthForPDU(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public getDisplayDestinationAddress()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 397
    iget-object v0, p0, Landroid/telephony/gsm/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayDestinationAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayMessageBody()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 428
    iget-object v0, p0, Landroid/telephony/gsm/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayOriginatingAddress()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 388
    iget-object v0, p0, Landroid/telephony/gsm/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmailBody()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 485
    iget-object v0, p0, Landroid/telephony/gsm/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getEmailBody()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmailFrom()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 495
    iget-object v0, p0, Landroid/telephony/gsm/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getEmailFrom()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIndexOnIcc()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 636
    iget-object v0, p0, Landroid/telephony/gsm/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getIndexOnIcc()I

    move-result v0

    return v0
.end method

.method public getIndexOnSim()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 623
    iget-object v0, p0, Landroid/telephony/gsm/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getIndexOnIcc()I

    move-result v0

    return v0
.end method

.method public getMessageBody()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 407
    iget-object v0, p0, Landroid/telephony/gsm/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageClass()Landroid/telephony/gsm/SmsMessage$MessageClass;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 416
    iget-object v1, p0, Landroid/telephony/gsm/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SmsMessage$MessageClass;->ordinal()I

    move-result v0

    .line 418
    .local v0, index:I
    invoke-static {}, Landroid/telephony/gsm/SmsMessage$MessageClass;->values()[Landroid/telephony/gsm/SmsMessage$MessageClass;

    move-result-object v1

    aget-object v1, v1, v0

    return-object v1
.end method

.method public getMessageType()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 444
    iget-object v0, p0, Landroid/telephony/gsm/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageType()I

    move-result v0

    return v0
.end method

.method public getOriginatingAddress()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 377
    iget-object v0, p0, Landroid/telephony/gsm/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPdu()[B
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 578
    iget-object v0, p0, Landroid/telephony/gsm/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v0

    return-object v0
.end method

.method public getProtocolIdentifier()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 504
    iget-object v0, p0, Landroid/telephony/gsm/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getProtocolIdentifier()I

    move-result v0

    return v0
.end method

.method public getPseudoSubject()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 454
    iget-object v0, p0, Landroid/telephony/gsm/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getPseudoSubject()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServiceCenterAddress()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 367
    iget-object v0, p0, Landroid/telephony/gsm/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 658
    iget-object v0, p0, Landroid/telephony/gsm/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getStatus()I

    move-result v0

    return v0
.end method

.method public getStatusOnIcc()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 612
    iget-object v0, p0, Landroid/telephony/gsm/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getStatusOnIcc()I

    move-result v0

    return v0
.end method

.method public getStatusOnSim()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 594
    iget-object v0, p0, Landroid/telephony/gsm/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getStatusOnIcc()I

    move-result v0

    return v0
.end method

.method public getTimestampMillis()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 463
    iget-object v0, p0, Landroid/telephony/gsm/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getUserData()[B
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 563
    iget-object v0, p0, Landroid/telephony/gsm/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getUserData()[B

    move-result-object v0

    return-object v0
.end method

.method public isCphsMwiMessage()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 524
    iget-object v0, p0, Landroid/telephony/gsm/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isCphsMwiMessage()Z

    move-result v0

    return v0
.end method

.method public isEmail()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 475
    iget-object v0, p0, Landroid/telephony/gsm/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isEmail()Z

    move-result v0

    return v0
.end method

.method public isMWIClearMessage()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 534
    iget-object v0, p0, Landroid/telephony/gsm/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isMWIClearMessage()Z

    move-result v0

    return v0
.end method

.method public isMWISetMessage()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 544
    iget-object v0, p0, Landroid/telephony/gsm/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isMWISetMessage()Z

    move-result v0

    return v0
.end method

.method public isMwiDontStore()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 554
    iget-object v0, p0, Landroid/telephony/gsm/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isMwiDontStore()Z

    move-result v0

    return v0
.end method

.method public isReplace()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 513
    iget-object v0, p0, Landroid/telephony/gsm/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isReplace()Z

    move-result v0

    return v0
.end method

.method public isReplyPathPresent()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 677
    iget-object v0, p0, Landroid/telephony/gsm/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isReplyPathPresent()Z

    move-result v0

    return v0
.end method

.method public isStatusReportMessage()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 667
    iget-object v0, p0, Landroid/telephony/gsm/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isStatusReportMessage()Z

    move-result v0

    return v0
.end method
