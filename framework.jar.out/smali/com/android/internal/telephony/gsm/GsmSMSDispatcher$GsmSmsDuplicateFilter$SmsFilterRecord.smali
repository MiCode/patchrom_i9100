.class Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$GsmSmsDuplicateFilter$SmsFilterRecord;
.super Ljava/lang/Object;
.source "GsmSMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$GsmSmsDuplicateFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmsFilterRecord"
.end annotation


# instance fields
.field mFingerprint:[B

.field mSms:Lcom/android/internal/telephony/SmsMessageBase;

.field final synthetic this$1:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$GsmSmsDuplicateFilter;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$GsmSmsDuplicateFilter;Lcom/android/internal/telephony/SmsMessageBase;)V
    .locals 1
    .parameter
    .parameter "sms"

    .prologue
    .line 1255
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$GsmSmsDuplicateFilter$SmsFilterRecord;->this$1:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$GsmSmsDuplicateFilter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1256
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$GsmSmsDuplicateFilter$SmsFilterRecord;->mSms:Lcom/android/internal/telephony/SmsMessageBase;

    .line 1257
    #calls: Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$GsmSmsDuplicateFilter;->getSmsFingerprint(Lcom/android/internal/telephony/SmsMessageBase;)[B
    invoke-static {p1, p2}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$GsmSmsDuplicateFilter;->access$000(Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$GsmSmsDuplicateFilter;Lcom/android/internal/telephony/SmsMessageBase;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$GsmSmsDuplicateFilter$SmsFilterRecord;->mFingerprint:[B

    .line 1258
    return-void
.end method
