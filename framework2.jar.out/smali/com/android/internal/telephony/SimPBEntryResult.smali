.class public Lcom/android/internal/telephony/SimPBEntryResult;
.super Ljava/lang/Object;
.source "SimPBEntryResult.java"


# static fields
.field private static final GSM_TEXT_ENC_ASCII:I = 0x1

.field private static final GSM_TEXT_ENC_GSM7BIT:I = 0x2

.field private static final GSM_TEXT_ENC_HEX:I = 0x4

.field private static final GSM_TEXT_ENC_UCS2:I = 0x3

.field public static final INDEX_ANR:I = 0x1

.field public static final INDEX_ANRA:I = 0x2

.field public static final INDEX_ANRB:I = 0x3

.field public static final INDEX_ANRC:I = 0x4

.field public static final INDEX_EMAIL:I = 0x2

.field public static final INDEX_NAME:I = 0x0

.field public static final INDEX_NUMBER:I = 0x0

.field public static final INDEX_SNE:I = 0x1

.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field public static final NUM_OF_ALPHA:I = 0x3

.field public static final NUM_OF_NUMBER:I = 0x5


# instance fields
.field alphaTags:[Ljava/lang/String;

.field dataTypeAlphas:[I

.field dataTypeNumbers:[I

.field lengthAlphas:[I

.field lengthNumbers:[I

.field nextIndex:I

.field numbers:[Ljava/lang/String;

.field recordIndex:I


# direct methods
.method public constructor <init>([I[I[Ljava/lang/String;[I[I[Ljava/lang/String;II)V
    .locals 9
    .parameter "lengthAlphas"
    .parameter "dataTypeAlphas"
    .parameter "alphaTags"
    .parameter "lengthNumbers"
    .parameter "dataTypeNumbers"
    .parameter "numbers"
    .parameter "recordIndex"
    .parameter "nextIndex"

    .prologue
    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v4, 0x3

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/android/internal/telephony/SimPBEntryResult;->lengthAlphas:[I

    .line 51
    const/4 v4, 0x3

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/android/internal/telephony/SimPBEntryResult;->dataTypeAlphas:[I

    .line 52
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/android/internal/telephony/SimPBEntryResult;->alphaTags:[Ljava/lang/String;

    .line 54
    const/4 v4, 0x5

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/android/internal/telephony/SimPBEntryResult;->lengthNumbers:[I

    .line 55
    const/4 v4, 0x5

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/android/internal/telephony/SimPBEntryResult;->dataTypeNumbers:[I

    .line 56
    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/android/internal/telephony/SimPBEntryResult;->numbers:[Ljava/lang/String;

    .line 58
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    const/4 v4, 0x3

    if-ge v3, v4, :cond_0

    .line 60
    iget-object v4, p0, Lcom/android/internal/telephony/SimPBEntryResult;->lengthAlphas:[I

    aget v5, p1, v3

    aput v5, v4, v3

    .line 61
    iget-object v4, p0, Lcom/android/internal/telephony/SimPBEntryResult;->dataTypeAlphas:[I

    aget v5, p2, v3

    aput v5, v4, v3

    .line 63
    aget-object v4, p3, v3

    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 65
    .local v1, alphaTagByte:[B
    aget v4, p2, v3

    packed-switch v4, :pswitch_data_0

    .line 89
    iget-object v4, p0, Lcom/android/internal/telephony/SimPBEntryResult;->alphaTags:[Ljava/lang/String;

    const-string v5, ""

    aput-object v5, v4, v3

    .line 90
    const-string v4, "GSM"

    const-string v5, "SimPBEntryResult: default Unknown type"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 68
    :pswitch_0
    iget-object v4, p0, Lcom/android/internal/telephony/SimPBEntryResult;->alphaTags:[Ljava/lang/String;

    const-string v5, ""

    aput-object v5, v4, v3

    .line 69
    const-string v4, "GSM"

    const-string v5, "Not supported encoding type"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 72
    :pswitch_1
    iget-object v4, p0, Lcom/android/internal/telephony/SimPBEntryResult;->alphaTags:[Ljava/lang/String;

    const/4 v5, 0x0

    aget v6, p1, v3

    invoke-static {v1, v5, v6}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    goto :goto_1

    .line 77
    :pswitch_2
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/SimPBEntryResult;->alphaTags:[Ljava/lang/String;

    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    aget v7, p1, v3

    const-string v8, "UTF-16"

    invoke-direct {v5, v1, v6, v7, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    aput-object v5, v4, v3
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 79
    :catch_0
    move-exception v2

    .line 80
    .local v2, ex:Ljava/io/UnsupportedEncodingException;
    iget-object v4, p0, Lcom/android/internal/telephony/SimPBEntryResult;->alphaTags:[Ljava/lang/String;

    const-string v5, ""

    aput-object v5, v4, v3

    .line 81
    const-string v4, "GSM"

    const-string v5, "SimPBEntryResult - implausible UnsupportedEncodingException"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 85
    .end local v2           #ex:Ljava/io/UnsupportedEncodingException;
    :pswitch_3
    iget-object v4, p0, Lcom/android/internal/telephony/SimPBEntryResult;->alphaTags:[Ljava/lang/String;

    const-string v5, ""

    aput-object v5, v4, v3

    .line 86
    const-string v4, "GSM"

    const-string v5, "Not supported encoding type"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 97
    .end local v1           #alphaTagByte:[B
    :cond_0
    const/4 v3, 0x0

    :goto_2
    const/4 v4, 0x5

    if-ge v3, v4, :cond_3

    .line 98
    iget-object v4, p0, Lcom/android/internal/telephony/SimPBEntryResult;->lengthNumbers:[I

    aget v5, p4, v3

    aput v5, v4, v3

    .line 99
    iget-object v4, p0, Lcom/android/internal/telephony/SimPBEntryResult;->dataTypeNumbers:[I

    aget v5, p5, v3

    aput v5, v4, v3

    .line 101
    aget v4, p4, v3

    if-eqz v4, :cond_1

    aget-object v4, p6, v3

    if-nez v4, :cond_2

    .line 102
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/SimPBEntryResult;->numbers:[Ljava/lang/String;

    const-string v5, ""

    aput-object v5, v4, v3

    .line 97
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 104
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/SimPBEntryResult;->numbers:[Ljava/lang/String;

    aget-object v5, p6, v3

    aput-object v5, v4, v3

    goto :goto_3

    .line 107
    :cond_3
    move/from16 v0, p7

    iput v0, p0, Lcom/android/internal/telephony/SimPBEntryResult;->recordIndex:I

    .line 108
    move/from16 v0, p8

    iput v0, p0, Lcom/android/internal/telephony/SimPBEntryResult;->nextIndex:I

    .line 110
    return-void

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
