.class public final Lcom/google/android/mms/SecurityTelephony$Sms$Intents;
.super Ljava/lang/Object;
.source "SecurityTelephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/mms/SecurityTelephony$Sms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Intents"
.end annotation


# static fields
.field public static final DATA_SMS_RECEIVED_ACTION:Ljava/lang/String; = "android.intent.action.DATA_SMS_RECEIVED"

.field public static final DEVICE_READY_ACTION:Ljava/lang/String; = "android.provider.Telephony.DEVICE_READY"

.field public static final EMERGENCY_CDMA_MESSAGE_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.EMERGENCY_CDMA_MESSAGE_RECEIVED"

.field public static final GET_SMSC_ACTION:Ljava/lang/String; = "android.provider.Telephony.GET_SMSC"

.field public static final IMEI_TRACKER_SMS_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.IMEI_TRACKER_SMS_RECEIVED"

.field public static final RESULT_SMS_ALL_MEMORY_FULL:I = 0x6

.field public static final RESULT_SMS_DUPLICATE:I = 0x8

.field public static final RESULT_SMS_GENERIC_ERROR:I = 0x2

.field public static final RESULT_SMS_HANDLED:I = 0x1

.field public static final RESULT_SMS_OUT_OF_MEMORY:I = 0x3

.field public static final RESULT_SMS_SEGMENT:I = 0x9

.field public static final RESULT_SMS_SIM_MEMORY_FULL:I = 0x5

.field public static final RESULT_SMS_UNSUPPORTED:I = 0x4

.field public static final SIM_FULL_ACTION:Ljava/lang/String; = "android.provider.Telephony.SIM_FULL"

.field public static final SMS_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"

.field public static final SMS_REJECTED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_REJECTED"

.field public static final WAP_PUSH_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.WAP_PUSH_RECEIVED"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 575
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;
    .locals 8
    .parameter "intent"

    .prologue
    .line 751
    const-string v7, "pdus"

    invoke-virtual {p0, v7}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    move-object v2, v7

    check-cast v2, [Ljava/lang/Object;

    .line 752
    .local v2, messages:[Ljava/lang/Object;
    const-string v7, "format"

    invoke-virtual {p0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 753
    .local v0, format:Ljava/lang/String;
    array-length v7, v2

    new-array v5, v7, [[B

    .line 755
    .local v5, pduObjs:[[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v7, v2

    if-ge v1, v7, :cond_0

    .line 756
    aget-object v7, v2, v1

    check-cast v7, [B

    check-cast v7, [B

    aput-object v7, v5, v1

    .line 755
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 758
    :cond_0
    array-length v7, v5

    new-array v6, v7, [[B

    .line 759
    .local v6, pdus:[[B
    array-length v4, v6

    .line 760
    .local v4, pduCount:I
    new-array v3, v4, [Landroid/telephony/SmsMessage;

    .line 761
    .local v3, msgs:[Landroid/telephony/SmsMessage;
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_1

    .line 762
    aget-object v7, v5, v1

    aput-object v7, v6, v1

    .line 763
    aget-object v7, v6, v1

    invoke-static {v7, v0}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v7

    aput-object v7, v3, v1

    .line 761
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 765
    :cond_1
    return-object v3
.end method
