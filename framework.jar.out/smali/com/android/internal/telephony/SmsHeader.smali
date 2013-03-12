.class public Lcom/android/internal/telephony/SmsHeader;
.super Ljava/lang/Object;
.source "SmsHeader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SmsHeader$MiscElt;,
        Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;,
        Lcom/android/internal/telephony/SmsHeader$KTReadConfirm;,
        Lcom/android/internal/telephony/SmsHeader$ConcatRef;,
        Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    }
.end annotation


# static fields
.field public static final ELT_ID_APPLICATION_PORT_ADDRESSING_16_BIT:I = 0x5

.field public static final ELT_ID_APPLICATION_PORT_ADDRESSING_8_BIT:I = 0x4

.field public static final ELT_ID_CHARACTER_SIZE_WVG_OBJECT:I = 0x19

.field public static final ELT_ID_COMPRESSION_CONTROL:I = 0x16

.field public static final ELT_ID_CONCATENATED_16_BIT_REFERENCE:I = 0x8

.field public static final ELT_ID_CONCATENATED_8_BIT_REFERENCE:I = 0x0

.field public static final ELT_ID_ENHANCED_VOICE_MAIL_INFORMATION:I = 0x23

.field public static final ELT_ID_EXTENDED_OBJECT:I = 0x14

.field public static final ELT_ID_EXTENDED_OBJECT_DATA_REQUEST_CMD:I = 0x1a

.field public static final ELT_ID_HYPERLINK_FORMAT_ELEMENT:I = 0x21

.field public static final ELT_ID_KT_READ_CONFIRM:I = 0x44

.field public static final ELT_ID_LARGE_ANIMATION:I = 0xe

.field public static final ELT_ID_LARGE_PICTURE:I = 0x10

.field public static final ELT_ID_NATIONAL_LANGUAGE_LOCKING_SHIFT:I = 0x25

.field public static final ELT_ID_NATIONAL_LANGUAGE_SINGLE_SHIFT:I = 0x24

.field public static final ELT_ID_OBJECT_DISTR_INDICATOR:I = 0x17

.field public static final ELT_ID_PREDEFINED_ANIMATION:I = 0xd

.field public static final ELT_ID_PREDEFINED_SOUND:I = 0xb

.field public static final ELT_ID_REPLY_ADDRESS_ELEMENT:I = 0x22

.field public static final ELT_ID_REUSED_EXTENDED_OBJECT:I = 0x15

.field public static final ELT_ID_RFC_822_EMAIL_HEADER:I = 0x20

.field public static final ELT_ID_SMALL_ANIMATION:I = 0xf

.field public static final ELT_ID_SMALL_PICTURE:I = 0x11

.field public static final ELT_ID_SMSC_CONTROL_PARAMS:I = 0x6

.field public static final ELT_ID_SPECIAL_SMS_MESSAGE_INDICATION:I = 0x1

.field public static final ELT_ID_STANDARD_WVG_OBJECT:I = 0x18

.field public static final ELT_ID_TEXT_FORMATTING:I = 0xa

.field public static final ELT_ID_UDH_SOURCE_INDICATION:I = 0x7

.field public static final ELT_ID_USER_DEFINED_SOUND:I = 0xc

.field public static final ELT_ID_USER_PROMPT_INDICATOR:I = 0x13

.field public static final ELT_ID_VARIABLE_PICTURE:I = 0x12

.field public static final ELT_ID_WIRELESS_CTRL_MSG_PROTOCOL:I = 0x9

.field public static final PORT_KT_APP_MANAGER_MAX:I = 0xc216

.field public static final PORT_KT_APP_MANAGER_MIN:I = 0xc210

.field public static final PORT_SKT_COMMON_PUSH_SMS:I = 0x425c

.field public static final PORT_SKT_FOTA_SMS:I = 0x4244

.field public static final PORT_WAP_PUSH:I = 0xb84

.field public static final PORT_WAP_WSP:I = 0x23f0

.field public static udhi_isMwi:Z

.field public static udhi_mwiDontStore:Z

.field public static udhi_voicemailcount:I


# instance fields
.field public concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

.field public ktReadConfirm:Lcom/android/internal/telephony/SmsHeader$KTReadConfirm;

.field public languageShiftTable:I

.field public languageTable:I

.field public miscEltList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/SmsHeader$MiscElt;",
            ">;"
        }
    .end annotation
.end field

.field public portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

.field public specialSmsMsgList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 139
    sput-boolean v1, Lcom/android/internal/telephony/SmsHeader;->udhi_isMwi:Z

    .line 140
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/telephony/SmsHeader;->udhi_mwiDontStore:Z

    .line 141
    sput v1, Lcom/android/internal/telephony/SmsHeader;->udhi_voicemailcount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 161
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SmsHeader;->specialSmsMsgList:Ljava/util/ArrayList;

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    .line 161
    return-void
.end method

.method public static fromByteArray([B)Lcom/android/internal/telephony/SmsHeader;
    .locals 13
    .parameter "data"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 170
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 171
    .local v2, inStream:Ljava/io/ByteArrayInputStream;
    new-instance v7, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v7}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 172
    .local v7, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v8

    if-lez v8, :cond_1

    .line 181
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 182
    .local v1, id:I
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v4

    .line 190
    .local v4, length:I
    sparse-switch v1, :sswitch_data_0

    .line 270
    new-instance v5, Lcom/android/internal/telephony/SmsHeader$MiscElt;

    invoke-direct {v5}, Lcom/android/internal/telephony/SmsHeader$MiscElt;-><init>()V

    .line 271
    .local v5, miscElt:Lcom/android/internal/telephony/SmsHeader$MiscElt;
    iput v1, v5, Lcom/android/internal/telephony/SmsHeader$MiscElt;->id:I

    .line 272
    new-array v8, v4, [B

    iput-object v8, v5, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    .line 273
    iget-object v8, v5, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    invoke-virtual {v2, v8, v11, v4}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 274
    iget-object v8, v7, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 192
    .end local v5           #miscElt:Lcom/android/internal/telephony/SmsHeader$MiscElt;
    :sswitch_0
    new-instance v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v0}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 193
    .local v0, concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v8

    iput v8, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 194
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v8

    iput v8, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 195
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v8

    iput v8, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 196
    iput-boolean v12, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 197
    iget v8, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    if-eqz v8, :cond_0

    iget v8, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    if-eqz v8, :cond_0

    iget v8, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    iget v9, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    if-gt v8, v9, :cond_0

    .line 199
    iput-object v0, v7, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    goto :goto_0

    .line 203
    .end local v0           #concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    :sswitch_1
    new-instance v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v0}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 204
    .restart local v0       #concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v8

    shl-int/lit8 v8, v8, 0x8

    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v9

    or-int/2addr v8, v9

    iput v8, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 205
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v8

    iput v8, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 206
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v8

    iput v8, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 207
    iput-boolean v11, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 208
    iget v8, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    if-eqz v8, :cond_0

    iget v8, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    if-eqz v8, :cond_0

    iget v8, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    iget v9, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    if-gt v8, v9, :cond_0

    .line 210
    iput-object v0, v7, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    goto/16 :goto_0

    .line 214
    .end local v0           #concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    :sswitch_2
    new-instance v6, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-direct {v6}, Lcom/android/internal/telephony/SmsHeader$PortAddrs;-><init>()V

    .line 215
    .local v6, portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v8

    iput v8, v6, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 216
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v8

    iput v8, v6, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    .line 217
    iput-boolean v12, v6, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    .line 218
    iput-object v6, v7, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    goto/16 :goto_0

    .line 221
    .end local v6           #portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    :sswitch_3
    new-instance v6, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-direct {v6}, Lcom/android/internal/telephony/SmsHeader$PortAddrs;-><init>()V

    .line 222
    .restart local v6       #portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v8

    shl-int/lit8 v8, v8, 0x8

    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v9

    or-int/2addr v8, v9

    iput v8, v6, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 223
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v8

    shl-int/lit8 v8, v8, 0x8

    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v9

    or-int/2addr v8, v9

    iput v8, v6, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    .line 224
    iput-boolean v11, v6, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    .line 225
    iput-object v6, v7, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    goto/16 :goto_0

    .line 244
    .end local v6           #portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    :sswitch_4
    new-instance v5, Lcom/android/internal/telephony/SmsHeader$MiscElt;

    invoke-direct {v5}, Lcom/android/internal/telephony/SmsHeader$MiscElt;-><init>()V

    .line 245
    .restart local v5       #miscElt:Lcom/android/internal/telephony/SmsHeader$MiscElt;
    iput v1, v5, Lcom/android/internal/telephony/SmsHeader$MiscElt;->id:I

    .line 246
    new-array v8, v4, [B

    iput-object v8, v5, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    .line 247
    iget-object v8, v5, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    invoke-virtual {v2, v8, v11, v4}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 248
    iget-object v8, v7, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 256
    .end local v5           #miscElt:Lcom/android/internal/telephony/SmsHeader$MiscElt;
    :sswitch_5
    new-instance v3, Lcom/android/internal/telephony/SmsHeader$KTReadConfirm;

    invoke-direct {v3}, Lcom/android/internal/telephony/SmsHeader$KTReadConfirm;-><init>()V

    .line 257
    .local v3, ktReadConfirm:Lcom/android/internal/telephony/SmsHeader$KTReadConfirm;
    iput v1, v3, Lcom/android/internal/telephony/SmsHeader$KTReadConfirm;->id:I

    .line 258
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v8

    iput v8, v3, Lcom/android/internal/telephony/SmsHeader$KTReadConfirm;->readConfirmID:I

    .line 259
    iput-object v3, v7, Lcom/android/internal/telephony/SmsHeader;->ktReadConfirm:Lcom/android/internal/telephony/SmsHeader$KTReadConfirm;

    .line 260
    const-string v8, "SmsHeader"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "id:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v3, Lcom/android/internal/telephony/SmsHeader$KTReadConfirm;->id:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "readConfirmID"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v3, Lcom/android/internal/telephony/SmsHeader$KTReadConfirm;->readConfirmID:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 264
    .end local v3           #ktReadConfirm:Lcom/android/internal/telephony/SmsHeader$KTReadConfirm;
    :sswitch_6
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v8

    iput v8, v7, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    goto/16 :goto_0

    .line 267
    :sswitch_7
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v8

    iput v8, v7, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    goto/16 :goto_0

    .line 277
    .end local v1           #id:I
    .end local v4           #length:I
    :cond_1
    return-object v7

    .line 190
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_4
        0x4 -> :sswitch_2
        0x5 -> :sswitch_3
        0x8 -> :sswitch_1
        0x24 -> :sswitch_6
        0x25 -> :sswitch_7
        0x44 -> :sswitch_5
    .end sparse-switch
.end method

.method public static toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B
    .locals 12
    .parameter "smsHeader"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x1

    .line 286
    iget-object v7, p0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    iget v7, p0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/internal/telephony/SmsHeader;->ktReadConfirm:Lcom/android/internal/telephony/SmsHeader$KTReadConfirm;

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/internal/telephony/SmsHeader;->specialSmsMsgList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_0

    iget v7, p0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    if-nez v7, :cond_0

    .line 299
    const/4 v7, 0x0

    .line 368
    :goto_0
    return-object v7

    .line 302
    :cond_0
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    const/16 v7, 0x8c

    invoke-direct {v4, v7}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 303
    .local v4, outStream:Ljava/io/ByteArrayOutputStream;
    iget-object v0, p0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 304
    .local v0, concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    if-eqz v0, :cond_1

    .line 305
    iget-boolean v7, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    if-eqz v7, :cond_3

    .line 306
    invoke-virtual {v4, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 307
    const/4 v7, 0x3

    invoke-virtual {v4, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 308
    iget v7, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    invoke-virtual {v4, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 315
    :goto_1
    iget v7, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    invoke-virtual {v4, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 316
    iget v7, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    invoke-virtual {v4, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 318
    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    .line 319
    .local v5, portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    if-eqz v5, :cond_2

    .line 320
    iget-boolean v7, v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    if-eqz v7, :cond_4

    .line 321
    invoke-virtual {v4, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 322
    invoke-virtual {v4, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 323
    iget v7, v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    invoke-virtual {v4, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 324
    iget v7, v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    invoke-virtual {v4, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 336
    :cond_2
    :goto_2
    iget-object v7, p0, Lcom/android/internal/telephony/SmsHeader;->specialSmsMsgList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;

    .line 337
    .local v6, specialSmsMsg:Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;
    invoke-virtual {v4, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 338
    invoke-virtual {v4, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 339
    iget v7, v6, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgIndType:I

    and-int/lit16 v7, v7, 0xff

    invoke-virtual {v4, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 340
    iget v7, v6, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgCount:I

    and-int/lit16 v7, v7, 0xff

    invoke-virtual {v4, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_3

    .line 310
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v5           #portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    .end local v6           #specialSmsMsg:Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;
    :cond_3
    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 311
    invoke-virtual {v4, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 312
    iget v7, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    ushr-int/lit8 v7, v7, 0x8

    invoke-virtual {v4, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 313
    iget v7, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    and-int/lit16 v7, v7, 0xff

    invoke-virtual {v4, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    .line 326
    .restart local v5       #portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    :cond_4
    const/4 v7, 0x5

    invoke-virtual {v4, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 327
    invoke-virtual {v4, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 328
    iget v7, v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    ushr-int/lit8 v7, v7, 0x8

    invoke-virtual {v4, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 329
    iget v7, v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    and-int/lit16 v7, v7, 0xff

    invoke-virtual {v4, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 330
    iget v7, v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    ushr-int/lit8 v7, v7, 0x8

    invoke-virtual {v4, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 331
    iget v7, v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    and-int/lit16 v7, v7, 0xff

    invoke-virtual {v4, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    .line 343
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_5
    iget v7, p0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    if-eqz v7, :cond_6

    .line 344
    const/16 v7, 0x24

    invoke-virtual {v4, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 345
    invoke-virtual {v4, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 346
    iget v7, p0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    invoke-virtual {v4, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 348
    :cond_6
    iget v7, p0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    if-eqz v7, :cond_7

    .line 349
    const/16 v7, 0x25

    invoke-virtual {v4, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 350
    invoke-virtual {v4, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 351
    iget v7, p0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    invoke-virtual {v4, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 353
    :cond_7
    iget-object v7, p0, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/SmsHeader$MiscElt;

    .line 354
    .local v3, miscElt:Lcom/android/internal/telephony/SmsHeader$MiscElt;
    iget v7, v3, Lcom/android/internal/telephony/SmsHeader$MiscElt;->id:I

    invoke-virtual {v4, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 355
    iget-object v7, v3, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    array-length v7, v7

    invoke-virtual {v4, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 356
    iget-object v7, v3, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    iget-object v8, v3, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    array-length v8, v8

    invoke-virtual {v4, v7, v10, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_4

    .line 360
    .end local v3           #miscElt:Lcom/android/internal/telephony/SmsHeader$MiscElt;
    :cond_8
    iget-object v2, p0, Lcom/android/internal/telephony/SmsHeader;->ktReadConfirm:Lcom/android/internal/telephony/SmsHeader$KTReadConfirm;

    .line 361
    .local v2, ktReadConfirm:Lcom/android/internal/telephony/SmsHeader$KTReadConfirm;
    if-eqz v2, :cond_9

    .line 362
    const/16 v7, 0x44

    invoke-virtual {v4, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 363
    invoke-virtual {v4, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 364
    iget v7, v2, Lcom/android/internal/telephony/SmsHeader$KTReadConfirm;->readConfirmID:I

    invoke-virtual {v4, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 368
    :cond_9
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    goto/16 :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 374
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v4, "UserDataHeader "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    const-string/jumbo v4, "{ ConcatRef "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    iget-object v4, p0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    if-nez v4, :cond_0

    .line 377
    const-string/jumbo v4, "unset"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    :goto_0
    const-string v4, ", PortAddrs "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    iget-object v4, p0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-nez v4, :cond_1

    .line 387
    const-string/jumbo v4, "unset"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/SmsHeader;->specialSmsMsgList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;

    .line 397
    .local v3, specialSmsMsg:Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;
    const-string v4, ", SpecialSmsMsg "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "{ msgIndType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgIndType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", msgCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    const-string v4, " }"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 379
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #specialSmsMsg:Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "{ refNumber="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    iget v5, v5, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", msgCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    iget v5, v5, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", seqNumber="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    iget v5, v5, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", isEightBits="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    iget-boolean v5, v5, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    const-string v4, " }"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 389
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "{ destPort="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v5, v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", origPort="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v5, v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", areEightBits="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget-boolean v5, v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    const-string v4, " }"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 403
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    iget v4, p0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    if-eqz v4, :cond_3

    .line 404
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", languageShiftTable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    :cond_3
    iget v4, p0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    if-eqz v4, :cond_4

    .line 407
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", languageTable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/SmsHeader$MiscElt;

    .line 410
    .local v2, miscElt:Lcom/android/internal/telephony/SmsHeader$MiscElt;
    const-string v4, ", MiscElt "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "{ id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/internal/telephony/SmsHeader$MiscElt;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", length="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", data="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    invoke-static {v5}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    const-string v4, " }"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 418
    .end local v2           #miscElt:Lcom/android/internal/telephony/SmsHeader$MiscElt;
    :cond_5
    const-string v4, ", ktReadConfirm "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    iget-object v4, p0, Lcom/android/internal/telephony/SmsHeader;->ktReadConfirm:Lcom/android/internal/telephony/SmsHeader$KTReadConfirm;

    if-nez v4, :cond_6

    .line 420
    const-string/jumbo v4, "unset"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    :goto_4
    const-string v4, " }"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 422
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "{ id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/SmsHeader;->ktReadConfirm:Lcom/android/internal/telephony/SmsHeader$KTReadConfirm;

    iget v5, v5, Lcom/android/internal/telephony/SmsHeader$KTReadConfirm;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", data="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/SmsHeader;->ktReadConfirm:Lcom/android/internal/telephony/SmsHeader$KTReadConfirm;

    iget v5, v5, Lcom/android/internal/telephony/SmsHeader$KTReadConfirm;->readConfirmID:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    const-string v4, " }"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4
.end method
