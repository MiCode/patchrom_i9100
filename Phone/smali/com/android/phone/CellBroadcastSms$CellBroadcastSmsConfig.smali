.class final Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;
.super Ljava/lang/Object;
.source "CellBroadcastSms.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CellBroadcastSms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CellBroadcastSmsConfig"
.end annotation


# static fields
.field private static mBSelected:[I

.field private static mConfigDataComplete:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 578
    const/16 v0, 0x20

    new-array v0, v0, [I

    sput-object v0, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->mBSelected:[I

    .line 579
    const/16 v0, 0x5e

    new-array v0, v0, [I

    sput-object v0, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->mConfigDataComplete:[I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 572
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(ZI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 572
    invoke-static {p0, p1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->setConfigDataCompleteBSelected(ZI)V

    return-void
.end method

.method static synthetic access$100(ZI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 572
    invoke-static {p0, p1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->setCbSmsBSelectedValue(ZI)V

    return-void
.end method

.method static synthetic access$1100([I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 572
    invoke-static {p0}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->setCbSmsConfig([I)V

    return-void
.end method

.method static synthetic access$1200()[I
    .locals 1

    .prologue
    .line 572
    invoke-static {}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->getCbSmsBselectedValues()[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 572
    invoke-static {p0}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->setConfigDataCompleteLanguage(I)V

    return-void
.end method

.method static synthetic access$400(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 572
    invoke-static {p0}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->setCbSmsNoOfStructs(I)V

    return-void
.end method

.method static synthetic access$500()[I
    .locals 1

    .prologue
    .line 572
    invoke-static {}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->getCbSmsAllValues()[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600()I
    .locals 1

    .prologue
    .line 572
    invoke-static {}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->getConfigDataLanguage()I

    move-result v0

    return v0
.end method

.method private static getCbSmsAllValues()[I
    .locals 1

    .prologue
    .line 630
    sget-object v0, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->mConfigDataComplete:[I

    return-object v0
.end method

.method private static getCbSmsBselectedValues()[I
    .locals 1

    .prologue
    .line 625
    sget-object v0, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->mBSelected:[I

    return-object v0
.end method

.method private static getConfigDataLanguage()I
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 657
    sget-object v2, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->mConfigDataComplete:[I

    const/4 v3, 0x2

    aget v0, v2, v3

    .line 660
    .local v0, language:I
    if-lt v0, v1, :cond_0

    const/4 v2, 0x7

    if-le v0, v2, :cond_1

    .line 661
    :cond_0
    const-string v2, "CellBroadcastSms"

    const-string v3, "Error! Wrong language returned from RIL...defaulting to 1, english"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 665
    .end local v0           #language:I
    :cond_1
    return v0
.end method

.method private static setCbSmsBSelectedValue(ZI)V
    .locals 2
    .parameter "value"
    .parameter "pos"

    .prologue
    const/4 v0, 0x1

    .line 617
    sget-object v1, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->mBSelected:[I

    array-length v1, v1

    if-ge p1, v1, :cond_1

    .line 618
    sget-object v1, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->mBSelected:[I

    if-ne p0, v0, :cond_0

    :goto_0
    aput v0, v1, p1

    .line 622
    :goto_1
    return-void

    .line 618
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 620
    :cond_1
    const-string v0, "CellBroadcastSms"

    const-string v1, "Error! Invalid value position."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static setCbSmsConfig([I)V
    .locals 4
    .parameter "configData"

    .prologue
    .line 582
    if-nez p0, :cond_0

    .line 583
    const-string v1, "CellBroadcastSms"

    const-string v2, "Error! No cell broadcast service categories returned."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :goto_0
    return-void

    .line 587
    :cond_0
    const/4 v1, 0x0

    aget v1, p0, v1

    const/16 v2, 0x5e

    if-le v1, v2, :cond_1

    .line 588
    const-string v1, "CellBroadcastSms"

    const-string v2, "Error! Wrong number of service categories returned from RIL"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 608
    :cond_1
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 609
    sget-object v1, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->mBSelected:[I

    aget v2, p0, v0

    add-int/lit8 v3, v0, 0x2

    aget v3, p0, v3

    aput v3, v1, v2

    .line 608
    add-int/lit8 v0, v0, 0x3

    goto :goto_1

    .line 613
    :cond_2
    sput-object p0, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->mConfigDataComplete:[I

    goto :goto_0
.end method

.method private static setCbSmsNoOfStructs(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 636
    sget-object v0, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->mConfigDataComplete:[I

    const/4 v1, 0x0

    aput p0, v0, v1

    .line 637
    return-void
.end method

.method private static setConfigDataCompleteBSelected(ZI)V
    .locals 4
    .parameter "value"
    .parameter "serviceCategory"

    .prologue
    const/4 v1, 0x1

    .line 641
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    sget-object v2, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->mConfigDataComplete:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 642
    sget-object v2, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->mConfigDataComplete:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_2

    .line 643
    sget-object v2, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->mConfigDataComplete:[I

    add-int/lit8 v3, v0, 0x2

    if-ne p0, v1, :cond_1

    :goto_1
    aput v1, v2, v3

    .line 647
    :cond_0
    return-void

    .line 643
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 641
    :cond_2
    add-int/lit8 v0, v0, 0x3

    goto :goto_0
.end method

.method private static setConfigDataCompleteLanguage(I)V
    .locals 2
    .parameter "language"

    .prologue
    .line 651
    const/4 v0, 0x2

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->mConfigDataComplete:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 652
    sget-object v1, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->mConfigDataComplete:[I

    aput p0, v1, v0

    .line 651
    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 654
    :cond_0
    return-void
.end method
