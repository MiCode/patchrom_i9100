.class public Landroid/content/res/CompatibilityInfo;
.super Ljava/lang/Object;
.source "CompatibilityInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/CompatibilityInfo$Translator;
    }
.end annotation


# static fields
.field private static final ALWAYS_NEEDS_COMPAT:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/res/CompatibilityInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo; = null

.field public static final DEFAULT_NORMAL_SHORT_DIMENSION:I = 0x140

.field public static final MAXIMUM_ASPECT_RATIO:F = 1.7791667f

.field private static final NEEDS_SCREEN_COMPAT:I = 0x8

.field private static final NEVER_NEEDS_COMPAT:I = 0x4

.field private static final SCALING_REQUIRED:I = 0x1


# instance fields
.field public final applicationDensity:I

.field public final applicationInvertedScale:F

.field public final applicationScale:F

.field private final mCompatibilityFlags:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Landroid/content/res/CompatibilityInfo$1;

    invoke-direct {v0}, Landroid/content/res/CompatibilityInfo$1;-><init>()V

    sput-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    .line 575
    new-instance v0, Landroid/content/res/CompatibilityInfo$2;

    invoke-direct {v0}, Landroid/content/res/CompatibilityInfo$2;-><init>()V

    sput-object v0, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f80

    .line 253
    const/4 v0, 0x4

    sget v1, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    invoke-direct {p0, v0, v1, v2, v2}, Landroid/content/res/CompatibilityInfo;-><init>(IIFF)V

    .line 256
    return-void
.end method

.method private constructor <init>(IIFF)V
    .locals 0
    .parameter "compFlags"
    .parameter "dens"
    .parameter "scale"
    .parameter "invertedScale"

    .prologue
    .line 245
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 246
    iput p1, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    .line 247
    iput p2, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 248
    iput p3, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 249
    iput p4, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 250
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ApplicationInfo;IIZ)V
    .locals 11
    .parameter "appInfo"
    .parameter "screenLayout"
    .parameter "sw"
    .parameter "forceCompat"

    .prologue
    .line 96
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const/4 v5, 0x0

    .line 99
    .local v5, compatFlags:I
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    if-nez v9, :cond_0

    iget v9, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    if-nez v9, :cond_0

    iget v9, p1, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    if-eqz v9, :cond_9

    .line 102
    :cond_0
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    if-eqz v9, :cond_4

    iget v7, p1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    .line 105
    .local v7, required:I
    :goto_0
    if-nez v7, :cond_1

    .line 106
    iget v7, p1, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    .line 108
    :cond_1
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    if-eqz v9, :cond_5

    iget v4, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    .line 110
    .local v4, compat:I
    :goto_1
    if-ge v4, v7, :cond_2

    .line 111
    move v4, v7

    .line 113
    :cond_2
    iget v6, p1, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    .line 115
    .local v6, largest:I
    const/16 v9, 0x140

    if-le v7, v9, :cond_6

    .line 122
    or-int/lit8 v5, v5, 0x4

    .line 139
    :cond_3
    :goto_2
    sget v9, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    iput v9, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 140
    const/high16 v9, 0x3f80

    iput v9, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 141
    const/high16 v9, 0x3f80

    iput v9, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 241
    .end local v4           #compat:I
    .end local v6           #largest:I
    .end local v7           #required:I
    :goto_3
    iput v5, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    .line 242
    return-void

    .line 102
    :cond_4
    iget v7, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    goto :goto_0

    .restart local v7       #required:I
    :cond_5
    move v4, v7

    .line 108
    goto :goto_1

    .line 123
    .restart local v4       #compat:I
    .restart local v6       #largest:I
    :cond_6
    if-eqz v6, :cond_7

    if-le p3, v6, :cond_7

    .line 127
    or-int/lit8 v5, v5, 0xa

    goto :goto_2

    .line 128
    :cond_7
    if-lt v4, p3, :cond_8

    .line 131
    or-int/lit8 v5, v5, 0x4

    goto :goto_2

    .line 132
    :cond_8
    if-eqz p4, :cond_3

    .line 135
    or-int/lit8 v5, v5, 0x8

    goto :goto_2

    .line 148
    .end local v4           #compat:I
    .end local v6           #largest:I
    .end local v7           #required:I
    :cond_9
    const/4 v0, 0x2

    .line 154
    .local v0, EXPANDABLE:I
    const/16 v1, 0x8

    .line 160
    .local v1, LARGE_SCREENS:I
    const/16 v2, 0x20

    .line 162
    .local v2, XLARGE_SCREENS:I
    const/4 v8, 0x0

    .line 166
    .local v8, sizeInfo:I
    const/4 v3, 0x0

    .line 168
    .local v3, anyResizeable:Z
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v9, v9, 0x800

    if-eqz v9, :cond_a

    .line 169
    or-int/lit8 v8, v8, 0x8

    .line 170
    const/4 v3, 0x1

    .line 171
    if-nez p4, :cond_a

    .line 175
    or-int/lit8 v8, v8, 0x22

    .line 178
    :cond_a
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v10, 0x8

    and-int/2addr v9, v10

    if-eqz v9, :cond_b

    .line 179
    const/4 v3, 0x1

    .line 180
    if-nez p4, :cond_b

    .line 181
    or-int/lit8 v8, v8, 0x22

    .line 184
    :cond_b
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v9, v9, 0x1000

    if-eqz v9, :cond_c

    .line 185
    const/4 v3, 0x1

    .line 186
    or-int/lit8 v8, v8, 0x2

    .line 189
    :cond_c
    if-eqz p4, :cond_d

    .line 194
    and-int/lit8 v8, v8, -0x3

    .line 197
    :cond_d
    or-int/lit8 v5, v5, 0x8

    .line 198
    and-int/lit8 v9, p2, 0xf

    packed-switch v9, :pswitch_data_0

    .line 217
    :cond_e
    :goto_4
    const/high16 v9, 0x1000

    and-int/2addr v9, p2

    if-eqz v9, :cond_13

    .line 218
    and-int/lit8 v9, v8, 0x2

    if-eqz v9, :cond_12

    .line 219
    and-int/lit8 v5, v5, -0x9

    .line 228
    :cond_f
    :goto_5
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v9, v9, 0x2000

    if-eqz v9, :cond_14

    .line 229
    sget v9, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    iput v9, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 230
    const/high16 v9, 0x3f80

    iput v9, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 231
    const/high16 v9, 0x3f80

    iput v9, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    goto :goto_3

    .line 200
    :pswitch_0
    and-int/lit8 v9, v8, 0x20

    if-eqz v9, :cond_10

    .line 201
    and-int/lit8 v5, v5, -0x9

    .line 203
    :cond_10
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v10, 0x8

    and-int/2addr v9, v10

    if-eqz v9, :cond_e

    .line 204
    or-int/lit8 v5, v5, 0x4

    goto :goto_4

    .line 208
    :pswitch_1
    and-int/lit8 v9, v8, 0x8

    if-eqz v9, :cond_11

    .line 209
    and-int/lit8 v5, v5, -0x9

    .line 211
    :cond_11
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v9, v9, 0x800

    if-eqz v9, :cond_e

    .line 212
    or-int/lit8 v5, v5, 0x4

    goto :goto_4

    .line 220
    :cond_12
    if-nez v3, :cond_f

    .line 221
    or-int/lit8 v5, v5, 0x2

    goto :goto_5

    .line 224
    :cond_13
    and-int/lit8 v5, v5, -0x9

    .line 225
    or-int/lit8 v5, v5, 0x4

    goto :goto_5

    .line 233
    :cond_14
    const/16 v9, 0xa0

    iput v9, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 234
    sget v9, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    int-to-float v9, v9

    const/high16 v10, 0x4320

    div-float/2addr v9, v10

    iput v9, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 236
    const/high16 v9, 0x3f80

    iget v10, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    div-float/2addr v9, v10

    iput v9, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 237
    or-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    .line 198
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method synthetic constructor <init>(Landroid/content/res/CompatibilityInfo$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/content/res/CompatibilityInfo;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 586
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 587
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    .line 588
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 589
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 590
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 591
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/res/CompatibilityInfo$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/content/res/CompatibilityInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F
    .locals 14
    .parameter "dm"
    .parameter "outDm"

    .prologue
    .line 474
    iget v11, p0, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    .line 475
    .local v11, width:I
    iget v1, p0, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    .line 477
    .local v1, height:I
    if-ge v11, v1, :cond_3

    .line 478
    move v9, v11

    .line 479
    .local v9, shortSize:I
    move v2, v1

    .line 484
    .local v2, longSize:I
    :goto_0
    const/high16 v12, 0x43a0

    iget v13, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v12, v13

    const/high16 v13, 0x3f00

    add-float/2addr v12, v13

    float-to-int v5, v12

    .line 485
    .local v5, newShortSize:I
    int-to-float v12, v2

    int-to-float v13, v9

    div-float v0, v12, v13

    .line 486
    .local v0, aspect:F
    const v12, 0x3fe3bbbc

    cmpl-float v12, v0, v12

    if-lez v12, :cond_0

    .line 487
    const v0, 0x3fe3bbbc

    .line 489
    :cond_0
    int-to-float v12, v5

    mul-float/2addr v12, v0

    const/high16 v13, 0x3f00

    add-float/2addr v12, v13

    float-to-int v4, v12

    .line 491
    .local v4, newLongSize:I
    if-ge v11, v1, :cond_4

    .line 492
    move v6, v5

    .line 493
    .local v6, newWidth:I
    move v3, v4

    .line 499
    .local v3, newHeight:I
    :goto_1
    int-to-float v12, v11

    int-to-float v13, v6

    div-float v10, v12, v13

    .line 500
    .local v10, sw:F
    int-to-float v12, v1

    int-to-float v13, v3

    div-float v8, v12, v13

    .line 501
    .local v8, sh:F
    cmpg-float v12, v10, v8

    if-gez v12, :cond_5

    move v7, v10

    .line 502
    .local v7, scale:F
    :goto_2
    const/high16 v12, 0x3f80

    cmpg-float v12, v7, v12

    if-gez v12, :cond_1

    .line 503
    const/high16 v7, 0x3f80

    .line 506
    :cond_1
    if-eqz p1, :cond_2

    .line 507
    iput v6, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 508
    iput v3, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 511
    :cond_2
    return v7

    .line 481
    .end local v0           #aspect:F
    .end local v2           #longSize:I
    .end local v3           #newHeight:I
    .end local v4           #newLongSize:I
    .end local v5           #newShortSize:I
    .end local v6           #newWidth:I
    .end local v7           #scale:F
    .end local v8           #sh:F
    .end local v9           #shortSize:I
    .end local v10           #sw:F
    :cond_3
    move v9, v1

    .line 482
    .restart local v9       #shortSize:I
    move v2, v11

    .restart local v2       #longSize:I
    goto :goto_0

    .line 495
    .restart local v0       #aspect:F
    .restart local v4       #newLongSize:I
    .restart local v5       #newShortSize:I
    :cond_4
    move v6, v4

    .line 496
    .restart local v6       #newWidth:I
    move v3, v5

    .restart local v3       #newHeight:I
    goto :goto_1

    .restart local v8       #sh:F
    .restart local v10       #sw:F
    :cond_5
    move v7, v8

    .line 501
    goto :goto_2
.end method


# virtual methods
.method public alwaysSupportsScreen()Z
    .locals 1

    .prologue
    .line 274
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public applyToConfiguration(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "inoutConfig"

    .prologue
    .line 452
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 456
    iget v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, -0x10

    or-int/lit8 v0, v0, 0x2

    iput v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    .line 459
    iget v0, p1, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    iput v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 460
    iget v0, p1, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    iput v0, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 461
    iget v0, p1, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    iput v0, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 463
    :cond_0
    return-void
.end method

.method public applyToDisplayMetrics(Landroid/util/DisplayMetrics;)V
    .locals 4
    .parameter "inoutDm"

    .prologue
    const/high16 v3, 0x3f00

    .line 430
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v1

    if-nez v1, :cond_1

    .line 433
    invoke-static {p1, p1}, Landroid/content/res/CompatibilityInfo;->computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F

    .line 439
    :goto_0
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 440
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 441
    .local v0, invertedRatio:F
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatDensity:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 442
    iget v1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x4320

    mul-float/2addr v1, v2

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 443
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatScaledDensity:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 444
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatXdpi:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/util/DisplayMetrics;->xdpi:F

    .line 445
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatYdpi:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/util/DisplayMetrics;->ydpi:F

    .line 446
    iget v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 447
    iget v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 449
    .end local v0           #invertedRatio:F
    :cond_0
    return-void

    .line 435
    :cond_1
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    iput v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 436
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    iput v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 564
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    const/4 v3, 0x0

    .line 517
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/content/res/CompatibilityInfo;

    move-object v2, v0

    .line 518
    .local v2, oc:Landroid/content/res/CompatibilityInfo;
    iget v4, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    iget v5, v2, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    if-eq v4, v5, :cond_1

    .line 524
    .end local v2           #oc:Landroid/content/res/CompatibilityInfo;
    :cond_0
    :goto_0
    return v3

    .line 519
    .restart local v2       #oc:Landroid/content/res/CompatibilityInfo;
    :cond_1
    iget v4, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    iget v5, v2, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    if-ne v4, v5, :cond_0

    .line 520
    iget v4, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    iget v5, v2, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    .line 521
    iget v4, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    iget v5, v2, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    .line 522
    const/4 v3, 0x1

    goto :goto_0

    .line 523
    .end local v2           #oc:Landroid/content/res/CompatibilityInfo;
    :catch_0
    move-exception v1

    .line 524
    .local v1, e:Ljava/lang/ClassCastException;
    goto :goto_0
.end method

.method public getTranslator()Landroid/content/res/CompatibilityInfo$Translator;
    .locals 1

    .prologue
    .line 282
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/res/CompatibilityInfo$Translator;

    invoke-direct {v0, p0}, Landroid/content/res/CompatibilityInfo$Translator;-><init>(Landroid/content/res/CompatibilityInfo;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 554
    const/16 v0, 0x11

    .line 555
    .local v0, result:I
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    add-int/lit16 v0, v1, 0x20f

    .line 556
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    add-int v0, v1, v2

    .line 557
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 558
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 559
    return v0
.end method

.method public isScalingRequired()Z
    .locals 1

    .prologue
    .line 262
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public neverSupportsScreen()Z
    .locals 1

    .prologue
    .line 270
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public supportsScreen()Z
    .locals 1

    .prologue
    .line 266
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 530
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 531
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 533
    const-string v1, "dpi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 535
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 537
    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    :cond_0
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v1

    if-nez v1, :cond_1

    .line 540
    const-string v1, " resizing"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    :cond_1
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 543
    const-string v1, " never-compat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    :cond_2
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 546
    const-string v1, " always-compat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    :cond_3
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 569
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 570
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 571
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 572
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 573
    return-void
.end method
