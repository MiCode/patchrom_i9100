.class public Lcom/lguplus/se/SmartMXUICC;
.super Ljava/lang/Object;
.source "SmartMXUICC.java"


# static fields
.field static final DBG:Z = true

.field public static final EXTRA_ID:Ljava/lang/String; = "android.nfc.extra.ID"

.field public static final RESPONSE_MAX_SIZE:I = 0x106

.field public static final SMARTCARD_IO_ERROR_ATR_BUFFER:I = -0x6

.field public static final SMARTCARD_IO_ERROR_CARD_NOT_EXIST:I = -0x2

.field public static final SMARTCARD_IO_ERROR_OPEN_CHANNEL:I = -0x1

.field public static final SMARTCARD_IO_ERROR_RESPONSE_BUFFER:I = -0x5

.field public static final SMARTCARD_IO_ERROR_TRANSMIT_BUFFER:I = -0x4

.field public static final SMARTCARD_IO_INVALID_CHANNEL:I = -0x3

.field public static final SMARTCARD_IO_SUCCESS:I = 0x0

.field public static final SMART_MX_ID:Ljava/lang/String; = "android.nfc.smart_mx.ID"

.field public static final UICC_ID:Ljava/lang/String; = "android.nfc.uicc.ID"

.field private static handleId:[I = null

.field static final mLogTag:Ljava/lang/String; = "SmartMXUICC"

.field private static pcscInstance:Lcom/android/internal/telephony/IccPcscProvider;

.field static random:Ljava/util/Random;

.field private static sInstance:Lcom/lguplus/se/SmartMXUICC;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    sput-object v0, Lcom/lguplus/se/SmartMXUICC;->sInstance:Lcom/lguplus/se/SmartMXUICC;

    .line 34
    sput-object v0, Lcom/lguplus/se/SmartMXUICC;->pcscInstance:Lcom/android/internal/telephony/IccPcscProvider;

    .line 36
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/lguplus/se/SmartMXUICC;->handleId:[I

    .line 39
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/lguplus/se/SmartMXUICC;->random:Ljava/util/Random;

    return-void

    .line 36
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 51
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string v0, "SmartMXUICC"

    const-string v1, "SmartMXUICC"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    new-instance v0, Lcom/android/internal/telephony/IccPcscProvider;

    invoke-direct {v0}, Lcom/android/internal/telephony/IccPcscProvider;-><init>()V

    sput-object v0, Lcom/lguplus/se/SmartMXUICC;->pcscInstance:Lcom/android/internal/telephony/IccPcscProvider;

    .line 56
    sget-object v0, Lcom/lguplus/se/SmartMXUICC;->pcscInstance:Lcom/android/internal/telephony/IccPcscProvider;

    if-nez v0, :cond_0

    .line 57
    const-string v0, "SmartMXUICC"

    const-string v1, "SmartMXUICC pcscInstance return null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :goto_0
    return-void

    .line 59
    :cond_0
    const-string v0, "SmartMXUICC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmartMXUICC pcscInstance retrun : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/lguplus/se/SmartMXUICC;->pcscInstance:Lcom/android/internal/telephony/IccPcscProvider;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static createSmartMXUICC()Lcom/lguplus/se/SmartMXUICC;
    .locals 3

    .prologue
    .line 42
    const-class v1, Lcom/lguplus/se/SmartMXUICC;

    monitor-enter v1

    .line 43
    :try_start_0
    const-string v0, "SmartMXUICC"

    const-string v2, "Making an Instance..."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    sget-object v0, Lcom/lguplus/se/SmartMXUICC;->sInstance:Lcom/lguplus/se/SmartMXUICC;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/lguplus/se/SmartMXUICC;

    invoke-direct {v0}, Lcom/lguplus/se/SmartMXUICC;-><init>()V

    sput-object v0, Lcom/lguplus/se/SmartMXUICC;->sInstance:Lcom/lguplus/se/SmartMXUICC;

    .line 47
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    sget-object v0, Lcom/lguplus/se/SmartMXUICC;->sInstance:Lcom/lguplus/se/SmartMXUICC;

    return-object v0

    .line 47
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private openLogicalChannel()I
    .locals 5

    .prologue
    .line 65
    sget-object v2, Lcom/lguplus/se/SmartMXUICC;->pcscInstance:Lcom/android/internal/telephony/IccPcscProvider;

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccPcscProvider;->connect()I

    move-result v0

    .line 68
    .local v0, channel:I
    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 69
    const-string v2, "SmartMXUICC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "openLogicalChannel channel["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 76
    .end local v0           #channel:I
    .local v1, channel:I
    :goto_0
    return v1

    .line 73
    .end local v1           #channel:I
    .restart local v0       #channel:I
    :cond_0
    const-string v2, "SmartMXUICC"

    const-string v3, "openLogicalChannel Failed. Retry"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    sget-object v2, Lcom/lguplus/se/SmartMXUICC;->pcscInstance:Lcom/android/internal/telephony/IccPcscProvider;

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccPcscProvider;->connect()I

    move-result v0

    .line 75
    const-string v2, "SmartMXUICC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "After Retry : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 76
    .end local v0           #channel:I
    .restart local v1       #channel:I
    goto :goto_0
.end method


# virtual methods
.method public closeSecureElementConnection(I)V
    .locals 4
    .parameter "ch"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    move v0, p1

    .line 129
    .local v0, channel:I
    const-string v1, "SmartMXUICC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "closeSecureElementConnection channel : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 133
    const-string v1, "SmartMXUICC"

    const-string v2, "closeSecureElementConnection channel is wrong"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :goto_0
    return-void

    .line 137
    :cond_0
    sget-object v1, Lcom/lguplus/se/SmartMXUICC;->pcscInstance:Lcom/android/internal/telephony/IccPcscProvider;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/IccPcscProvider;->disconnect(I)I

    .line 139
    const-string v1, "SmartMXUICC"

    const-string v2, "closeSecureElementConnection done!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public exchangeAPDU(I[B)[B
    .locals 8
    .parameter "ch"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 100
    const/4 v2, 0x0

    .line 101
    .local v2, resSize:I
    move v1, p1

    .line 102
    .local v1, channel:I
    const/16 v4, 0x106

    new-array v0, v4, [B

    .line 103
    .local v0, apdu_res:[B
    const/4 v3, 0x0

    .line 105
    .local v3, response:[B
    const-string v4, "SmartMXUICC"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exchangeAPDU channel : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    aget-byte v4, p2, v7

    or-int/2addr v4, v1

    int-to-byte v4, v4

    aput-byte v4, p2, v7

    .line 109
    sget-object v4, Lcom/lguplus/se/SmartMXUICC;->pcscInstance:Lcom/android/internal/telephony/IccPcscProvider;

    invoke-virtual {v4, v1, p2, v0}, Lcom/android/internal/telephony/IccPcscProvider;->transmit(I[B[B)I

    move-result v2

    .line 111
    if-lez v2, :cond_0

    .line 112
    new-array v3, v2, [B

    .line 113
    invoke-static {v0, v7, v3, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 117
    :cond_0
    if-nez v3, :cond_1

    .line 119
    const-string v4, "SmartMXUICC"

    const-string v5, "exchangeAPDU return null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Response is NULL"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 123
    :cond_1
    return-object v3
.end method

.method public getATR()[B
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 153
    const/4 v2, 0x0

    .line 154
    .local v2, resSize:I
    const/16 v4, 0x106

    new-array v0, v4, [B

    .line 155
    .local v0, apdu_res:[B
    const/4 v3, 0x0

    .line 157
    .local v3, response:[B
    :try_start_0
    sget-object v4, Lcom/lguplus/se/SmartMXUICC;->pcscInstance:Lcom/android/internal/telephony/IccPcscProvider;

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/IccPcscProvider;->getATR([B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 164
    if-lez v2, :cond_0

    .line 165
    new-array v3, v2, [B

    .line 166
    invoke-static {v0, v5, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    move-object v4, v3

    .line 169
    :goto_0
    return-object v4

    .line 159
    :catch_0
    move-exception v1

    .line 160
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "SmartMXUICC"

    const-string v5, "getATR Errors"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public getSecureElementTechList(I)[I
    .locals 1
    .parameter "ch"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSecureElementUid(I)[B
    .locals 1
    .parameter "ch"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    const/4 v0, 0x0

    return-object v0
.end method

.method public isSmartMX()Z
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x0

    return v0
.end method

.method public openSecureElementConnection(Ljava/lang/String;)I
    .locals 4
    .parameter "seType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    const/4 v0, 0x0

    .line 82
    .local v0, retVal:I
    if-nez p1, :cond_0

    .line 83
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "seType must not be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 85
    :cond_0
    const-string v1, "android.nfc.uicc.ID"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 86
    invoke-direct {p0}, Lcom/lguplus/se/SmartMXUICC;->openLogicalChannel()I

    move-result v0

    .line 90
    :goto_0
    const-string v1, "SmartMXUICC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openSecureElementConnection, retVal:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 94
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Fail to open channel"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 88
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 96
    :cond_2
    return v0
.end method
