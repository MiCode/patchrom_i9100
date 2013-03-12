.class public final Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;
.super Lcom/android/internal/telephony/gsm/SIMRecords;
.source "CdmaLteUiccRecords.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$1;,
        Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfCsimEprlLoaded;,
        Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfCsimCdmaHomeLoaded;,
        Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfCsimImsimLoaded;,
        Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfCsimMdnLoaded;,
        Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfCsimSpnLoaded;,
        Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfCsimLiLoaded;,
        Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfPlLoaded;
    }
.end annotation


# instance fields
.field mCsimSpnDisplayCondition:Z

.field private mEFli:[B

.field private mEFpl:[B

.field private mHomeNetworkId:Ljava/lang/String;

.field private mHomeSystemId:Ljava/lang/String;

.field private final mIsimUiccRecords:Lcom/android/internal/telephony/ims/IsimUiccRecords;

.field private mMdn:Ljava/lang/String;

.field private mMin:Ljava/lang/String;

.field private mPrlVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/IccCard;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 1
    .parameter "card"
    .parameter "c"
    .parameter "ci"

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/gsm/SIMRecords;-><init>(Lcom/android/internal/telephony/IccCard;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 51
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->mEFpl:[B

    .line 52
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->mEFli:[B

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->mCsimSpnDisplayCondition:Z

    .line 60
    new-instance v0, Lcom/android/internal/telephony/ims/IsimUiccRecords;

    invoke-direct {v0}, Lcom/android/internal/telephony/ims/IsimUiccRecords;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->mIsimUiccRecords:Lcom/android/internal/telephony/ims/IsimUiccRecords;

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->mEFpl:[B

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;[B)[B
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->mEFpl:[B

    return-object p1
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 49
    sget-boolean v0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->DBG:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100()Z
    .locals 1

    .prologue
    .line 49
    sget-boolean v0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->DBG:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300()Z
    .locals 1

    .prologue
    .line 49
    sget-boolean v0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->DBG:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->mMdn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->mMdn:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1500()Z
    .locals 1

    .prologue
    .line 49
    sget-boolean v0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->DBG:Z

    return v0
.end method

.method static synthetic access$1600()Z
    .locals 1

    .prologue
    .line 49
    sget-boolean v0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->DBG:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->adjstMinDigits(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->mMin:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->mMin:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1900()Z
    .locals 1

    .prologue
    .line 49
    sget-boolean v0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->DBG:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->mEFli:[B

    return-object v0
.end method

.method static synthetic access$2000()Z
    .locals 1

    .prologue
    .line 49
    sget-boolean v0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->DBG:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;[B)[B
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->mEFli:[B

    return-object p1
.end method

.method static synthetic access$2100()Z
    .locals 1

    .prologue
    .line 49
    sget-boolean v0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->DBG:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->mHomeSystemId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2302(Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->mHomeNetworkId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->onGetCSimEprlDone(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 49
    sget-boolean v0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->DBG:Z

    return v0
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 49
    sget-boolean v0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->DBG:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$802(Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900()Z
    .locals 1

    .prologue
    .line 49
    sget-boolean v0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->DBG:Z

    return v0
.end method

.method private adjstMinDigits(I)I
    .locals 1
    .parameter "digits"

    .prologue
    .line 339
    add-int/lit8 p1, p1, 0x6f

    .line 340
    rem-int/lit8 v0, p1, 0xa

    if-nez v0, :cond_0

    add-int/lit8 p1, p1, -0xa

    .line 341
    :cond_0
    div-int/lit8 v0, p1, 0xa

    rem-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_1

    add-int/lit8 p1, p1, -0x64

    .line 342
    :cond_1
    div-int/lit8 v0, p1, 0x64

    rem-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_2

    add-int/lit16 p1, p1, -0x3e8

    .line 343
    :cond_2
    return p1
.end method

.method private findBestLanguage([B)Ljava/lang/String;
    .locals 11
    .parameter "languages"

    .prologue
    const/4 v6, 0x0

    const/4 v10, 0x2

    .line 385
    const/4 v0, 0x0

    .line 386
    .local v0, bestMatch:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/telephony/IccRecords;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v5

    .line 388
    .local v5, locales:[Ljava/lang/String;
    if-eqz p1, :cond_0

    if-nez v5, :cond_2

    :cond_0
    move-object v4, v6

    .line 406
    :cond_1
    :goto_0
    return-object v4

    .line 391
    :cond_2
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    add-int/lit8 v7, v2, 0x1

    array-length v8, p1

    if-ge v7, v8, :cond_5

    .line 393
    :try_start_0
    new-instance v4, Ljava/lang/String;

    const/4 v7, 0x2

    const-string v8, "ISO-8859-1"

    invoke-direct {v4, p1, v2, v7, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 394
    .local v4, lang:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, j:I
    :goto_2
    array-length v7, v5

    if-ge v3, v7, :cond_4

    .line 395
    aget-object v7, v5, v3

    if-eqz v7, :cond_3

    aget-object v7, v5, v3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v7, v10, :cond_3

    aget-object v7, v5, v3

    const/4 v8, 0x0

    const/4 v9, 0x2

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-nez v7, :cond_1

    .line 394
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 400
    :cond_4
    if-eqz v0, :cond_6

    .end local v3           #j:I
    .end local v4           #lang:Ljava/lang/String;
    :cond_5
    move-object v4, v6

    .line 406
    goto :goto_0

    .line 401
    :catch_0
    move-exception v1

    .line 402
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    const-string v7, "Failed to parse SIM language records"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->log(Ljava/lang/String;)V

    .line 391
    .end local v1           #e:Ljava/io/UnsupportedEncodingException;
    :cond_6
    add-int/lit8 v2, v2, 0x2

    goto :goto_1
.end method

.method private onGetCSimEprlDone(Landroid/os/AsyncResult;)V
    .locals 5
    .parameter "ar"

    .prologue
    const/4 v4, 0x3

    .line 349
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    .line 350
    .local v0, data:[B
    sget-boolean v2, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CSIM_EPRL="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->log(Ljava/lang/String;)V

    .line 353
    :cond_0
    array-length v2, v0

    if-le v2, v4, :cond_1

    .line 354
    const/4 v2, 0x2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    aget-byte v3, v0, v4

    and-int/lit16 v3, v3, 0xff

    or-int v1, v2, v3

    .line 355
    .local v1, prlId:I
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->mPrlVersion:Ljava/lang/String;

    .line 357
    .end local v1           #prlId:I
    :cond_1
    sget-boolean v2, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->DBG:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CSIM PRL version="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->mPrlVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->log(Ljava/lang/String;)V

    .line 358
    :cond_2
    return-void
.end method

.method private setLocaleFromCsim()V
    .locals 5

    .prologue
    .line 361
    const/4 v2, 0x0

    .line 363
    .local v2, prefLang:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->mEFli:[B

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->findBestLanguage([B)Ljava/lang/String;

    move-result-object v2

    .line 365
    if-nez v2, :cond_0

    .line 366
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->mEFpl:[B

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->findBestLanguage([B)Ljava/lang/String;

    move-result-object v2

    .line 369
    :cond_0
    if-eqz v2, :cond_2

    .line 371
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v1

    .line 372
    .local v1, imsi:Ljava/lang/String;
    const/4 v0, 0x0

    .line 373
    .local v0, country:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 374
    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v0

    .line 377
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting locale to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->log(Ljava/lang/String;)V

    .line 378
    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->mContext:Landroid/content/Context;

    invoke-static {v3, v2, v0}, Lcom/android/internal/telephony/MccTable;->setSystemLocale(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    .end local v0           #country:Ljava/lang/String;
    .end local v1           #imsi:Ljava/lang/String;
    :goto_0
    return-void

    .line 380
    :cond_2
    const-string v3, "No suitable CSIM selected locale"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->log(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected dispatchGsmMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 1
    .parameter "message"

    .prologue
    .line 477
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mNewSmsRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 478
    const/4 v0, 0x0

    return v0
.end method

.method protected fetchSimRecords()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x64

    .line 270
    iput-boolean v6, p0, Lcom/android/internal/telephony/IccRecords;->recordsRequested:Z

    .line 272
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->mParentCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard;->getAid()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getIMSIForApp(Ljava/lang/String;Landroid/os/Message;)V

    .line 273
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 275
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x2fe2

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 276
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 295
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6fad

    const/16 v2, 0x9

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 296
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 298
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x2f05

    new-instance v2, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfPlLoaded;

    invoke-direct {v2, p0, v5}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfPlLoaded;-><init>(Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$1;)V

    invoke-virtual {p0, v4, v2}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 300
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 302
    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v1, 0x6f40

    const/16 v2, 0x6f4a

    const/16 v3, 0xa

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v6, v3}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    .line 304
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 306
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f38

    const/16 v2, 0x11

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 307
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 309
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f3a

    new-instance v2, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfCsimLiLoaded;

    invoke-direct {v2, p0, v5}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfCsimLiLoaded;-><init>(Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$1;)V

    invoke-virtual {p0, v4, v2}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 311
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 313
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f41

    new-instance v2, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfCsimSpnLoaded;

    invoke-direct {v2, p0, v5}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfCsimSpnLoaded;-><init>(Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$1;)V

    invoke-virtual {p0, v4, v2}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 315
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 317
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f44

    new-instance v2, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfCsimMdnLoaded;

    invoke-direct {v2, p0, v5}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfCsimMdnLoaded;-><init>(Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$1;)V

    invoke-virtual {p0, v4, v2}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v6, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 319
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 321
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f22

    new-instance v2, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfCsimImsimLoaded;

    invoke-direct {v2, p0, v5}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfCsimImsimLoaded;-><init>(Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$1;)V

    invoke-virtual {p0, v4, v2}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 323
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 325
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f28

    new-instance v2, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfCsimCdmaHomeLoaded;

    invoke-direct {v2, p0, v5}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfCsimCdmaHomeLoaded;-><init>(Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$1;)V

    invoke-virtual {p0, v4, v2}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 327
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 329
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f5a

    new-instance v2, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfCsimEprlLoaded;

    invoke-direct {v2, p0, v5}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfCsimEprlLoaded;-><init>(Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$1;)V

    invoke-virtual {p0, v4, v2}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 331
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 334
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->mIsimUiccRecords:Lcom/android/internal/telephony/ims/IsimUiccRecords;

    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-virtual {v1, v2, p0}, Lcom/android/internal/telephony/ims/IsimUiccRecords;->fetchIsimRecords(Lcom/android/internal/telephony/IccFileHandler;Landroid/os/Handler;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 335
    return-void
.end method

.method public getCsimSpnDisplayCondition()Z
    .locals 1

    .prologue
    .line 440
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->mCsimSpnDisplayCondition:Z

    return v0
.end method

.method public getIsimRecords()Lcom/android/internal/telephony/ims/IsimRecords;
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->mIsimUiccRecords:Lcom/android/internal/telephony/ims/IsimUiccRecords;

    return-object v0
.end method

.method public getMdn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->mMdn:Ljava/lang/String;

    return-object v0
.end method

.method public getMin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->mMin:Ljava/lang/String;

    return-object v0
.end method

.method public getNid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->mHomeNetworkId:Ljava/lang/String;

    return-object v0
.end method

.method public getPrlVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->mPrlVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getSid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->mHomeSystemId:Ljava/lang/String;

    return-object v0
.end method

.method public isProvisioned()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 456
    const-string/jumbo v2, "persist.radio.test-csim"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 468
    :cond_0
    :goto_0
    return v0

    .line 460
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->mParentCard:Lcom/android/internal/telephony/IccCard;

    if-nez v2, :cond_2

    move v0, v1

    .line 461
    goto :goto_0

    .line 464
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->mParentCard:Lcom/android/internal/telephony/IccCard;

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/IccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/IccCardApplication$AppType;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->mMdn:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->mMin:Ljava/lang/String;

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    .line 466
    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 411
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CSIM] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 416
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CSIM] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    return-void
.end method

.method protected onAllRecordsLoaded()V
    .locals 0

    .prologue
    .line 264
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->setLocaleFromCsim()V

    .line 265
    invoke-super {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->onAllRecordsLoaded()V

    .line 266
    return-void
.end method

.method protected onRecordLoaded()V
    .locals 2

    .prologue
    .line 252
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 254
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsRequested:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 255
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->onAllRecordsLoaded()V

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 256
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    if-gez v0, :cond_0

    .line 257
    const-string v0, "GSM"

    const-string v1, "SIMRecords: recordsToLoad <0, programmer error suspected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    goto :goto_0
.end method
