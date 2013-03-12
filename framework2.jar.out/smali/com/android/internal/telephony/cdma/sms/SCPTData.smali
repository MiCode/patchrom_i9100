.class public Lcom/android/internal/telephony/cdma/sms/SCPTData;
.super Ljava/lang/Object;
.source "SCPTData.java"


# static fields
.field public static final ENCODING_7BIT_ASCII:I = 0x2

.field public static final ENCODING_GSM_7BIT_ALPHABET:I = 0x9

.field public static final ENCODING_GSM_DCS:I = 0xa

.field public static final ENCODING_IA5:I = 0x3

.field public static final ENCODING_IS91_EXTENDED_PROTOCOL:I = 0x1

.field public static final ENCODING_KSC5601_3PCS:I = 0x10

.field public static final ENCODING_LATIN:I = 0x8

.field public static final ENCODING_UNICODE_16:I = 0x4

.field public static final SCPT_ENCODING_OCTET:I


# instance fields
.field public alertOption:I

.field public category:I

.field public language:I

.field public maxMessages:I

.field public msgEncoding:I

.field public msgEncodingSet:Z

.field public numFields:I

.field public operationCode:I

.field public payload:[B

.field public payloadStr:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/SCPTData;->msgEncodingSet:Z

    .line 68
    return-void
.end method
