.class public Landroid/telephony/gsm/CbMessage;
.super Ljava/lang/Object;
.source "CbMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/gsm/CbMessage$1;,
        Landroid/telephony/gsm/CbMessage$CbPduParser;,
        Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;,
        Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CLASS_TYPE;,
        Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;,
        Landroid/telephony/gsm/CbMessage$EMSGSMS_CBMSG_TYPE;
    }
.end annotation


# static fields
.field private static final MSGSMS_CB_BUFFER_MAX_SIZE:I = 0x1e

.field private static final MSGSMS_CB_PAGE_MAX:I = 0xf

.field private static final MSGSMS_CB_PAGE_SIZE:I = 0x52

.field private static final MSGSMS_CB_PAGE_SIZE_MAX:I = 0x5d

.field private static final RAW_PROJECTION:[Ljava/lang/String; = null

.field static final TAG:Ljava/lang/String; = "GSM"

.field private static final eMSGSMS_CB_2G_GSM:I = 0x1

.field private static final eMSGSMS_CB_3G_UMTS:I = 0x2

.field private static final eMSGSMS_CB_INVALID:I = 0x3

.field private static eMSGSMS_CB_UPDATENUM_NEW:I

.field private static eMSGSMS_CB_UPDATENUM_OLD:I

.field private static eMSGSMS_CB_UPDATENUM_SAME:I


# instance fields
.field public cbType:I

.field language:Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

.field private mPdu:[B

.field malphabetType:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;

.field private mbCompressed:Z

.field mcbType:Landroid/telephony/gsm/CbMessage$EMSGSMS_CBMSG_TYPE;

.field mclassType:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CLASS_TYPE;

.field public message:Ljava/lang/String;

.field public message_length:I

.field private mfoundMatch:Z

.field private mgeoScope:B

.field mgroup:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;

.field private misUdhPresent:Z

.field private miso639Lang:[B

.field private mmessageBody:Ljava/lang/String;

.field mmsgCode:S

.field mmsgID:S

.field private mpage:B

.field private mpageLength:B

.field msn:S

.field private mszPageData:[C

.field mtmTime:[B

.field private mtotalPages:B

.field mupdateNum:S

.field p:Landroid/telephony/gsm/CbMessage$CbPduParser;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 79
    const/4 v0, -0x1

    sput v0, Landroid/telephony/gsm/CbMessage;->eMSGSMS_CB_UPDATENUM_OLD:I

    .line 81
    sput v2, Landroid/telephony/gsm/CbMessage;->eMSGSMS_CB_UPDATENUM_SAME:I

    .line 83
    sput v3, Landroid/telephony/gsm/CbMessage;->eMSGSMS_CB_UPDATENUM_NEW:I

    .line 87
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "data"

    aput-object v1, v0, v2

    const-string/jumbo v1, "msgId"

    aput-object v1, v0, v3

    sput-object v0, Landroid/telephony/gsm/CbMessage;->RAW_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 325
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/gsm/CbMessage;->mfoundMatch:Z

    .line 337
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/gsm/CbMessage;->p:Landroid/telephony/gsm/CbMessage$CbPduParser;

    .line 1021
    return-void
.end method

.method static synthetic access$300(Landroid/telephony/gsm/CbMessage;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Landroid/telephony/gsm/CbMessage;->mPdu:[B

    return-object v0
.end method

.method public static createFromPdu([B)Landroid/telephony/gsm/CbMessage;
    .locals 4
    .parameter "pdu"

    .prologue
    .line 359
    :try_start_0
    new-instance v1, Landroid/telephony/gsm/CbMessage;

    invoke-direct {v1}, Landroid/telephony/gsm/CbMessage;-><init>()V

    .line 363
    .local v1, msg:Landroid/telephony/gsm/CbMessage;
    invoke-virtual {v1, p0}, Landroid/telephony/gsm/CbMessage;->parseCbPdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    .end local v1           #msg:Landroid/telephony/gsm/CbMessage;
    :goto_0
    return-object v1

    .line 367
    :catch_0
    move-exception v0

    .line 369
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v2, "GSM"

    const-string v3, "CB PDU parsing failed "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static newCBMessage(Ljava/lang/String;)Landroid/telephony/gsm/CbMessage;
    .locals 4
    .parameter "lines"

    .prologue
    .line 483
    :try_start_0
    new-instance v1, Landroid/telephony/gsm/CbMessage;

    invoke-direct {v1}, Landroid/telephony/gsm/CbMessage;-><init>()V

    .line 485
    .local v1, msg:Landroid/telephony/gsm/CbMessage;
    invoke-static {p0}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/telephony/gsm/CbMessage;->parseCbPdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    .end local v1           #msg:Landroid/telephony/gsm/CbMessage;
    :goto_0
    return-object v1

    .line 489
    :catch_0
    move-exception v0

    .line 491
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v2, "GSM"

    const-string v3, "CB PDU parsing failed: "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private parseDcs(BLandroid/telephony/gsm/CbMessage$CbPduParser;)V
    .locals 9
    .parameter "dcs"
    .parameter "p"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 791
    const/4 v0, 0x0

    .local v0, i:B
    const/4 v1, 0x0

    .line 799
    .local v1, pos:B
    sget-object v6, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;->MSGSMS_CB_CODGRP_MAX:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;

    iput-object v6, p0, Landroid/telephony/gsm/CbMessage;->mgroup:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;

    .line 801
    sget-object v6, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CLASS_TYPE;->MSGSMS_CB_CLASS_NONE:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CLASS_TYPE;

    iput-object v6, p0, Landroid/telephony/gsm/CbMessage;->mclassType:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CLASS_TYPE;

    .line 803
    iput-boolean v4, p0, Landroid/telephony/gsm/CbMessage;->mbCompressed:Z

    .line 805
    sget-object v6, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;->MSGSMS_CB_ALPHABET_GSM7BIT:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;

    iput-object v6, p0, Landroid/telephony/gsm/CbMessage;->malphabetType:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;

    .line 807
    sget-object v6, Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;->MSGSMS_CB_LANGUAGE_UNSPECIFIED:Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

    iput-object v6, p0, Landroid/telephony/gsm/CbMessage;->language:Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

    .line 809
    iput-boolean v4, p0, Landroid/telephony/gsm/CbMessage;->misUdhPresent:Z

    .line 813
    and-int/lit16 v6, p1, 0xf0

    shr-int/lit8 v6, v6, 0x4

    int-to-byte v0, v6

    .line 817
    packed-switch v0, :pswitch_data_0

    .line 969
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v4, p0, Landroid/telephony/gsm/CbMessage;->malphabetType:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;

    iget v4, v4, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;->value:I

    if-ne v4, v5, :cond_7

    .line 973
    sget-object v4, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;->MSGSMS_CB_ALPHABET_8BIT:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;

    iput-object v4, p0, Landroid/telephony/gsm/CbMessage;->malphabetType:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;

    .line 1003
    :goto_1
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "malphabetType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/telephony/gsm/CbMessage;->malphabetType:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mgroup = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/telephony/gsm/CbMessage;->mgroup:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mclassType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/telephony/gsm/CbMessage;->mclassType:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CLASS_TYPE;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mbCompressed = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Landroid/telephony/gsm/CbMessage;->mbCompressed:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "language = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/telephony/gsm/CbMessage;->language:Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

    invoke-virtual {v6}, Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;->getLanguage()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "misUdhPresent = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Landroid/telephony/gsm/CbMessage;->misUdhPresent:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    return-void

    .line 827
    :pswitch_1
    sget-object v6, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;->MSGSMS_CB_CODGRP_SM_GENERAL_DCS:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;

    iput-object v6, p0, Landroid/telephony/gsm/CbMessage;->mgroup:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;

    .line 829
    and-int/lit8 v3, p1, 0xf

    .line 831
    .local v3, value:I
    iget-object v6, p0, Landroid/telephony/gsm/CbMessage;->language:Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

    invoke-virtual {v6, v3}, Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;->setLanguage(I)V

    .line 832
    const-string v6, "PCL"

    const-string/jumbo v7, "ro.csc.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 833
    iget-object v6, p0, Landroid/telephony/gsm/CbMessage;->malphabetType:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;

    invoke-virtual {v6, v4}, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;->setAlphabetType(I)V

    goto/16 :goto_0

    .line 839
    .end local v3           #value:I
    :pswitch_2
    const/16 v4, 0x10

    if-eq p1, v4, :cond_1

    const/16 v4, 0x11

    if-ne p1, v4, :cond_3

    .line 843
    :cond_1
    sget-object v4, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;->MSGSMS_CB_CODGRP_SM_GENERAL_DCS:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;

    iput-object v4, p0, Landroid/telephony/gsm/CbMessage;->mgroup:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;

    .line 849
    and-int/lit8 v4, p1, 0x1

    if-ne v5, v4, :cond_2

    sget-object v4, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;->MSGSMS_CB_ALPHABET_UCS2:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;

    :goto_2
    iput-object v4, p0, Landroid/telephony/gsm/CbMessage;->malphabetType:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;

    .line 855
    and-int/lit8 v3, p1, 0xf

    .line 857
    .restart local v3       #value:I
    iget-object v4, p0, Landroid/telephony/gsm/CbMessage;->language:Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

    invoke-virtual {v4, v3}, Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;->setLanguage(I)V

    .line 861
    iget-object v4, p0, Landroid/telephony/gsm/CbMessage;->miso639Lang:[B

    int-to-byte v2, v5

    .end local v1           #pos:B
    .local v2, pos:B
    iget-object v6, p2, Landroid/telephony/gsm/CbMessage$CbPduParser;->mpdu:[B

    iget v7, p2, Landroid/telephony/gsm/CbMessage$CbPduParser;->mcur:I

    aget-byte v6, v6, v7

    and-int/lit8 v6, v6, 0x7f

    int-to-byte v6, v6

    aput-byte v6, v4, v1

    .line 863
    iget-object v4, p0, Landroid/telephony/gsm/CbMessage;->miso639Lang:[B

    iget-object v6, p2, Landroid/telephony/gsm/CbMessage$CbPduParser;->mpdu:[B

    iget v7, p2, Landroid/telephony/gsm/CbMessage$CbPduParser;->mcur:I

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0x80

    shr-int/lit8 v6, v6, 0x7

    int-to-byte v6, v6

    aput-byte v6, v4, v2

    .line 865
    iget-object v4, p0, Landroid/telephony/gsm/CbMessage;->miso639Lang:[B

    add-int/lit8 v6, v2, 0x1

    int-to-byte v1, v6

    .end local v2           #pos:B
    .restart local v1       #pos:B
    aget-byte v6, v4, v2

    iget-object v7, p2, Landroid/telephony/gsm/CbMessage$CbPduParser;->mpdu:[B

    iget v8, p2, Landroid/telephony/gsm/CbMessage$CbPduParser;->mcur:I

    add-int/lit8 v8, v8, 0x1

    aget-byte v7, v7, v8

    and-int/lit8 v7, v7, 0x3f

    shl-int/lit8 v7, v7, 0x1

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v4, v2

    .line 867
    iget-object v4, p0, Landroid/telephony/gsm/CbMessage;->miso639Lang:[B

    const/16 v6, 0xd

    aput-byte v6, v4, v1

    goto/16 :goto_0

    .line 849
    .end local v3           #value:I
    :cond_2
    sget-object v4, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;->MSGSMS_CB_ALPHABET_GSM7BIT:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;

    goto :goto_2

    .line 873
    :cond_3
    const-string v4, "GSM"

    const-string v6, "No User Data Ptr for decoding ISO 639 language"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    iget-object v4, p0, Landroid/telephony/gsm/CbMessage;->miso639Lang:[B

    const/16 v6, 0x45

    aput-byte v6, v4, v1

    .line 881
    iget-object v4, p0, Landroid/telephony/gsm/CbMessage;->miso639Lang:[B

    const/16 v6, 0x4e

    aput-byte v6, v4, v1

    .line 883
    iget-object v4, p0, Landroid/telephony/gsm/CbMessage;->miso639Lang:[B

    const/16 v6, 0x13

    aput-byte v6, v4, v1

    goto/16 :goto_0

    .line 899
    :pswitch_3
    sget-object v6, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;->MSGSMS_CB_CODGRP_SM_GENERAL_DCS:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;

    iput-object v6, p0, Landroid/telephony/gsm/CbMessage;->mgroup:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;

    .line 903
    and-int/lit8 v6, p1, 0x10

    if-ne v5, v6, :cond_5

    .line 905
    iget-object v6, p0, Landroid/telephony/gsm/CbMessage;->mclassType:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CLASS_TYPE;

    and-int/lit8 v7, p1, 0x3

    invoke-virtual {v6, v7}, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CLASS_TYPE;->setClassType(I)V

    .line 913
    :goto_3
    and-int/lit8 v6, p1, 0x1

    if-ne v5, v6, :cond_4

    move v4, v5

    :cond_4
    iput-boolean v4, p0, Landroid/telephony/gsm/CbMessage;->mbCompressed:Z

    .line 917
    iget-object v4, p0, Landroid/telephony/gsm/CbMessage;->malphabetType:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;

    and-int/lit8 v6, p1, 0xc

    shr-int/lit8 v6, v6, 0x2

    invoke-virtual {v4, v6}, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;->setAlphabetType(I)V

    goto/16 :goto_0

    .line 909
    :cond_5
    sget-object v6, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CLASS_TYPE;->MSGSMS_CB_CLASS_NONE:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CLASS_TYPE;

    iput-object v6, p0, Landroid/telephony/gsm/CbMessage;->mclassType:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CLASS_TYPE;

    goto :goto_3

    .line 925
    :pswitch_4
    sget-object v4, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;->MSGSMS_CB_CODGRP_CB_WAP:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;

    iput-object v4, p0, Landroid/telephony/gsm/CbMessage;->mgroup:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;

    goto/16 :goto_0

    .line 933
    :pswitch_5
    sget-object v4, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;->MSGSMS_CB_CODGRP_SM_GENERAL_DCS:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;

    iput-object v4, p0, Landroid/telephony/gsm/CbMessage;->mgroup:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;

    .line 935
    iget-object v4, p0, Landroid/telephony/gsm/CbMessage;->mclassType:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CLASS_TYPE;

    and-int/lit8 v6, p1, 0x3

    invoke-virtual {v4, v6}, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CLASS_TYPE;->setClassType(I)V

    .line 941
    iget-object v4, p0, Landroid/telephony/gsm/CbMessage;->mclassType:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CLASS_TYPE;

    sget-object v6, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CLASS_TYPE;->MSGSMS_CB_CLASS_0:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CLASS_TYPE;

    if-ne v4, v6, :cond_6

    .line 943
    sget-object v4, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CLASS_TYPE;->MSGSMS_CB_CLASS_NONE:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CLASS_TYPE;

    iput-object v4, p0, Landroid/telephony/gsm/CbMessage;->mclassType:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CLASS_TYPE;

    .line 949
    :cond_6
    iget-object v4, p0, Landroid/telephony/gsm/CbMessage;->malphabetType:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;

    and-int/lit8 v6, p1, 0x4

    shr-int/lit8 v6, v6, 0x2

    invoke-virtual {v4, v6}, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;->setAlphabetType(I)V

    goto/16 :goto_0

    .line 977
    :cond_7
    iget-object v4, p0, Landroid/telephony/gsm/CbMessage;->malphabetType:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;

    iget v4, v4, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;->value:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_8

    .line 981
    sget-object v4, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;->MSGSMS_CB_ALPHABET_UCS2:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;

    iput-object v4, p0, Landroid/telephony/gsm/CbMessage;->malphabetType:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;

    goto/16 :goto_1

    .line 989
    :cond_8
    sget-object v4, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;->MSGSMS_CB_ALPHABET_GSM7BIT:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;

    iput-object v4, p0, Landroid/telephony/gsm/CbMessage;->malphabetType:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;

    goto/16 :goto_1

    .line 817
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public getCbPdu()[B
    .locals 1

    .prologue
    .line 603
    iget-object v0, p0, Landroid/telephony/gsm/CbMessage;->p:Landroid/telephony/gsm/CbMessage$CbPduParser;

    invoke-virtual {v0}, Landroid/telephony/gsm/CbMessage$CbPduParser;->getCbPdu()[B

    move-result-object v0

    return-object v0
.end method

.method public getCount()B
    .locals 1

    .prologue
    .line 391
    iget-byte v0, p0, Landroid/telephony/gsm/CbMessage;->mtotalPages:B

    return v0
.end method

.method public getLanguage()I
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Landroid/telephony/gsm/CbMessage;->language:Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

    invoke-virtual {v0}, Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;->getLanguage()I

    move-result v0

    return v0
.end method

.method public getMessageBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 583
    iget-object v0, p0, Landroid/telephony/gsm/CbMessage;->mmessageBody:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgId()S
    .locals 1

    .prologue
    .line 411
    iget-short v0, p0, Landroid/telephony/gsm/CbMessage;->mmsgID:S

    return v0
.end method

.method public getPage()B
    .locals 1

    .prologue
    .line 431
    iget-byte v0, p0, Landroid/telephony/gsm/CbMessage;->mpage:B

    return v0
.end method

.method public getPageLength()I
    .locals 2

    .prologue
    .line 557
    iget-object v0, p0, Landroid/telephony/gsm/CbMessage;->malphabetType:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;

    sget-object v1, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;->MSGSMS_CB_ALPHABET_GSM7BIT:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;

    if-ne v0, v1, :cond_0

    .line 559
    const/16 v0, 0x5d

    .line 563
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x52

    goto :goto_0
.end method

.method public getRefNum()I
    .locals 3

    .prologue
    .line 455
    iget-short v1, p0, Landroid/telephony/gsm/CbMessage;->mmsgID:S

    shl-int/lit8 v1, v1, 0x10

    iget-short v2, p0, Landroid/telephony/gsm/CbMessage;->msn:S

    or-int v0, v1, v2

    .line 459
    .local v0, refNum:I
    return v0
.end method

.method public getSn()S
    .locals 1

    .prologue
    .line 515
    iget-short v0, p0, Landroid/telephony/gsm/CbMessage;->msn:S

    return v0
.end method

.method public parseCbPdu([B)V
    .locals 8
    .parameter "pdu"

    .prologue
    const/4 v6, 0x3

    .line 623
    iput-object p1, p0, Landroid/telephony/gsm/CbMessage;->mPdu:[B

    .line 641
    new-array v5, v6, [B

    iput-object v5, p0, Landroid/telephony/gsm/CbMessage;->miso639Lang:[B

    .line 645
    new-array v5, v6, [B

    iput-object v5, p0, Landroid/telephony/gsm/CbMessage;->mtmTime:[B

    .line 649
    new-instance v5, Landroid/telephony/gsm/CbMessage$CbPduParser;

    invoke-direct {v5, p0, p1}, Landroid/telephony/gsm/CbMessage$CbPduParser;-><init>(Landroid/telephony/gsm/CbMessage;[B)V

    iput-object v5, p0, Landroid/telephony/gsm/CbMessage;->p:Landroid/telephony/gsm/CbMessage$CbPduParser;

    .line 653
    iget-object v5, p0, Landroid/telephony/gsm/CbMessage;->p:Landroid/telephony/gsm/CbMessage$CbPduParser;

    invoke-virtual {v5}, Landroid/telephony/gsm/CbMessage$CbPduParser;->getGeoScope()B

    move-result v5

    iput-byte v5, p0, Landroid/telephony/gsm/CbMessage;->mgeoScope:B

    .line 655
    iget-object v5, p0, Landroid/telephony/gsm/CbMessage;->p:Landroid/telephony/gsm/CbMessage$CbPduParser;

    invoke-virtual {v5}, Landroid/telephony/gsm/CbMessage$CbPduParser;->getMsgCode()S

    move-result v5

    iput-short v5, p0, Landroid/telephony/gsm/CbMessage;->mmsgCode:S

    .line 657
    iget-object v5, p0, Landroid/telephony/gsm/CbMessage;->p:Landroid/telephony/gsm/CbMessage$CbPduParser;

    invoke-virtual {v5}, Landroid/telephony/gsm/CbMessage$CbPduParser;->getSerialNumber()S

    move-result v5

    iput-short v5, p0, Landroid/telephony/gsm/CbMessage;->msn:S

    .line 661
    iget-object v5, p0, Landroid/telephony/gsm/CbMessage;->p:Landroid/telephony/gsm/CbMessage$CbPduParser;

    invoke-virtual {v5}, Landroid/telephony/gsm/CbMessage$CbPduParser;->getUpdateNumber()S

    move-result v5

    iput-short v5, p0, Landroid/telephony/gsm/CbMessage;->mupdateNum:S

    .line 665
    iget-object v5, p0, Landroid/telephony/gsm/CbMessage;->p:Landroid/telephony/gsm/CbMessage$CbPduParser;

    invoke-virtual {v5}, Landroid/telephony/gsm/CbMessage$CbPduParser;->getMsgId()S

    move-result v5

    iput-short v5, p0, Landroid/telephony/gsm/CbMessage;->mmsgID:S

    .line 669
    iget-object v5, p0, Landroid/telephony/gsm/CbMessage;->p:Landroid/telephony/gsm/CbMessage$CbPduParser;

    invoke-virtual {v5}, Landroid/telephony/gsm/CbMessage$CbPduParser;->getByte()B

    move-result v1

    .line 673
    .local v1, dcs:B
    iget-object v5, p0, Landroid/telephony/gsm/CbMessage;->p:Landroid/telephony/gsm/CbMessage$CbPduParser;

    invoke-virtual {v5}, Landroid/telephony/gsm/CbMessage$CbPduParser;->getByte()B

    move-result v3

    .line 675
    .local v3, pageParam:B
    and-int/lit16 v5, v3, 0xf0

    shr-int/lit8 v5, v5, 0x4

    int-to-byte v5, v5

    iput-byte v5, p0, Landroid/telephony/gsm/CbMessage;->mpage:B

    .line 677
    and-int/lit8 v5, v3, 0xf

    int-to-byte v5, v5

    iput-byte v5, p0, Landroid/telephony/gsm/CbMessage;->mtotalPages:B

    .line 681
    iget-object v5, p0, Landroid/telephony/gsm/CbMessage;->p:Landroid/telephony/gsm/CbMessage$CbPduParser;

    invoke-direct {p0, v1, v5}, Landroid/telephony/gsm/CbMessage;->parseDcs(BLandroid/telephony/gsm/CbMessage$CbPduParser;)V

    .line 691
    iget-object v5, p0, Landroid/telephony/gsm/CbMessage;->language:Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

    invoke-virtual {v5}, Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;->getLanguage()I

    move-result v5

    const/16 v6, 0xf

    if-le v5, v6, :cond_0

    .line 695
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Default Case Received for CBLanguage"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/telephony/gsm/CbMessage;->language:Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No Support for Received CBLanguage so assaigned dummy"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/telephony/gsm/CbMessage;->language:Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    sget-object v5, Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;->MSGSMS_CB_LANGUAGE_DUMMY:Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

    iput-object v5, p0, Landroid/telephony/gsm/CbMessage;->language:Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

    .line 705
    :cond_0
    sget-object v5, Landroid/telephony/gsm/CbMessage$1;->$SwitchMap$android$telephony$gsm$CbMessage$MSGSMS_CB_ALPHABET_TYPE:[I

    iget-object v6, p0, Landroid/telephony/gsm/CbMessage;->malphabetType:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;

    invoke-virtual {v6}, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 745
    const-string v5, "GSM"

    const-string v6, "default case"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    :goto_0
    const-string v5, "GSM"

    const-string v6, "**********************************"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mbCompressed = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Landroid/telephony/gsm/CbMessage;->mbCompressed:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "miso639Lang = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/telephony/gsm/CbMessage;->miso639Lang:[B

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "misUdhPresent  = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Landroid/telephony/gsm/CbMessage;->misUdhPresent:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "msn  = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-short v7, p0, Landroid/telephony/gsm/CbMessage;->msn:S

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mgeoScope  = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-byte v7, p0, Landroid/telephony/gsm/CbMessage;->mgeoScope:B

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mmsgCode  = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-short v7, p0, Landroid/telephony/gsm/CbMessage;->mmsgCode:S

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mupdateNum  = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-short v7, p0, Landroid/telephony/gsm/CbMessage;->mupdateNum:S

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mmsgID  = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-short v7, p0, Landroid/telephony/gsm/CbMessage;->mmsgID:S

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mpage  = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-byte v7, p0, Landroid/telephony/gsm/CbMessage;->mpage:B

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mtotalPages  = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-byte v7, p0, Landroid/telephony/gsm/CbMessage;->mtotalPages:B

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "messageBody  = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/telephony/gsm/CbMessage;->mmessageBody:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    const-string v5, "GSM"

    const-string v6, "**********************************"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    return-void

    .line 713
    :pswitch_0
    iget-object v5, p0, Landroid/telephony/gsm/CbMessage;->p:Landroid/telephony/gsm/CbMessage$CbPduParser;

    array-length v6, p1

    #calls: Landroid/telephony/gsm/CbMessage$CbPduParser;->getGarbageCnt(I)I
    invoke-static {v5, v6}, Landroid/telephony/gsm/CbMessage$CbPduParser;->access$000(Landroid/telephony/gsm/CbMessage$CbPduParser;I)I

    move-result v2

    .line 715
    .local v2, iGarbage:I
    array-length v5, p1

    sub-int/2addr v5, v2

    add-int/lit8 v5, v5, -0x6

    mul-int/lit8 v5, v5, 0x8

    div-int/lit8 v4, v5, 0x7

    .line 717
    .local v4, septetCount:I
    iget-object v5, p0, Landroid/telephony/gsm/CbMessage;->p:Landroid/telephony/gsm/CbMessage$CbPduParser;

    #calls: Landroid/telephony/gsm/CbMessage$CbPduParser;->getUserDataGSM7Bit(I)Ljava/lang/String;
    invoke-static {v5, v4}, Landroid/telephony/gsm/CbMessage$CbPduParser;->access$100(Landroid/telephony/gsm/CbMessage$CbPduParser;I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/telephony/gsm/CbMessage;->mmessageBody:Ljava/lang/String;

    goto/16 :goto_0

    .line 727
    .end local v2           #iGarbage:I
    .end local v4           #septetCount:I
    :pswitch_1
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/telephony/gsm/CbMessage;->mmessageBody:Ljava/lang/String;

    goto/16 :goto_0

    .line 735
    :pswitch_2
    array-length v5, p1

    add-int/lit8 v0, v5, -0x6

    .line 737
    .local v0, count:I
    iget-object v5, p0, Landroid/telephony/gsm/CbMessage;->p:Landroid/telephony/gsm/CbMessage$CbPduParser;

    #calls: Landroid/telephony/gsm/CbMessage$CbPduParser;->getUserDataUCS2(I)Ljava/lang/String;
    invoke-static {v5, v0}, Landroid/telephony/gsm/CbMessage$CbPduParser;->access$200(Landroid/telephony/gsm/CbMessage$CbPduParser;I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/telephony/gsm/CbMessage;->mmessageBody:Ljava/lang/String;

    goto/16 :goto_0

    .line 705
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
