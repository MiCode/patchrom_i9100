.class public Lcom/android/internal/policy/impl/sec/MultiSimUtils;
.super Ljava/lang/Object;
.source "MultiSimUtils.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "MultiSimUtils"

.field private static final PORTRAIT_WALLPAPER_IMAGE_PATH:[Ljava/lang/String; = null

.field private static final PORTRAIT_WALLPAPER_IMAGE_PATH_DATABASE:[Ljava/lang/String; = null

.field private static final PORTRAIT_WALLPAPER_RIPPLE_IMAGE_PATH:[Ljava/lang/String; = null

.field private static final PORTRAIT_WALLPAPER_RIPPLE_IMAGE_PATH_DATABASE:[Ljava/lang/String; = null

.field public static final SIMSLOT1:I = 0x0

.field public static final SIMSLOT2:I = 0x1

.field public static final SIMSLOT3:I = 0x2

.field public static final SIMSLOT4:I = 0x3

.field public static final SIMSLOT5:I = 0x4

.field public static final UNKNOWN:I = -0x1

.field private static mCurrentPukLockSlot:I

.field private static mCurrnetPinLockSlot:I

.field private static mOldCurrentVoiceCall:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v0, -0x1

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    sput v0, Lcom/android/internal/policy/impl/sec/MultiSimUtils;->mCurrnetPinLockSlot:I

    .line 24
    sput v0, Lcom/android/internal/policy/impl/sec/MultiSimUtils;->mCurrentPukLockSlot:I

    .line 26
    sput v2, Lcom/android/internal/policy/impl/sec/MultiSimUtils;->mOldCurrentVoiceCall:I

    .line 28
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper.jpg"

    aput-object v1, v0, v2

    const-string v1, "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper_2.jpg"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/internal/policy/impl/sec/MultiSimUtils;->PORTRAIT_WALLPAPER_IMAGE_PATH:[Ljava/lang/String;

    .line 32
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper_ripple.jpg"

    aput-object v1, v0, v2

    const-string v1, "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper_ripple_2.jpg"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/internal/policy/impl/sec/MultiSimUtils;->PORTRAIT_WALLPAPER_RIPPLE_IMAGE_PATH:[Ljava/lang/String;

    .line 36
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "lockscreen_wallpaper_path_ripple"

    aput-object v1, v0, v2

    const-string v1, "lockscreen_wallpaper_path_ripple_2"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/internal/policy/impl/sec/MultiSimUtils;->PORTRAIT_WALLPAPER_RIPPLE_IMAGE_PATH_DATABASE:[Ljava/lang/String;

    .line 39
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "lockscreen_wallpaper_path"

    aput-object v1, v0, v2

    const-string v1, "lockscreen_wallpaper_path_2"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/internal/policy/impl/sec/MultiSimUtils;->PORTRAIT_WALLPAPER_IMAGE_PATH_DATABASE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .parameter "property"
    .parameter "simSlot"

    .prologue
    .line 149
    move-object v0, p0

    .line 150
    .local v0, str:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 152
    :cond_0
    return-object v0
.end method

.method public static getCurrenRippletWallpaper(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "mContext"

    .prologue
    .line 73
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/internal/policy/impl/sec/MultiSimUtils;->PORTRAIT_WALLPAPER_RIPPLE_IMAGE_PATH_DATABASE:[Ljava/lang/String;

    invoke-static {}, Lcom/android/internal/policy/impl/sec/MultiSimUtils;->getCurrentVoiceCall()I

    move-result v3

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, ret:Ljava/lang/String;
    const-string v1, "MultiSimUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentRippleWallpaper = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    if-nez v0, :cond_0

    .line 77
    sget-object v1, Lcom/android/internal/policy/impl/sec/MultiSimUtils;->PORTRAIT_WALLPAPER_RIPPLE_IMAGE_PATH:[Ljava/lang/String;

    invoke-static {}, Lcom/android/internal/policy/impl/sec/MultiSimUtils;->getCurrentVoiceCall()I

    move-result v2

    aget-object v0, v1, v2

    .line 80
    :cond_0
    const-string v1, "MultiSimUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentRippleWallpaper = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return-object v0
.end method

.method public static getCurrentPinLockSlot()I
    .locals 3

    .prologue
    .line 120
    const-string v0, "MultiSimUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentPinLockSlot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/policy/impl/sec/MultiSimUtils;->mCurrnetPinLockSlot:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    sget v0, Lcom/android/internal/policy/impl/sec/MultiSimUtils;->mCurrnetPinLockSlot:I

    return v0
.end method

.method public static getCurrentPukLockSlot()I
    .locals 3

    .prologue
    .line 130
    const-string v0, "MultiSimUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentPukLockSlot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/policy/impl/sec/MultiSimUtils;->mCurrentPukLockSlot:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    sget v0, Lcom/android/internal/policy/impl/sec/MultiSimUtils;->mCurrentPukLockSlot:I

    return v0
.end method

.method public static getCurrentVoiceCall()I
    .locals 4

    .prologue
    .line 85
    const-string v1, "persist.radio.calldefault.simid"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, sim:Ljava/lang/String;
    const-string v1, "MultiSimUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentVoiceCall = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static getCurrentWallpaper(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter "mContext"

    .prologue
    .line 43
    const-string v3, "ril.MSIMM"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, mSimMode:Ljava/lang/String;
    const/4 v2, 0x0

    .line 45
    .local v2, ret:Ljava/lang/String;
    const-string v3, "DSDS"

    invoke-static {v3}, Landroid/plugin/PlugInServiceManager;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/plugin/dsds/PlugInDsdsService;

    .line 47
    .local v0, dsdsService:Landroid/plugin/dsds/PlugInDsdsService;
    invoke-virtual {v0}, Landroid/plugin/dsds/PlugInDsdsService;->getInsertedSimCount()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_1

    .line 48
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/internal/policy/impl/sec/MultiSimUtils;->PORTRAIT_WALLPAPER_IMAGE_PATH_DATABASE:[Ljava/lang/String;

    invoke-static {}, Lcom/android/internal/policy/impl/sec/MultiSimUtils;->getCurrentVoiceCall()I

    move-result v5

    aget-object v4, v4, v5

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 50
    const-string v3, "MultiSimUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "2 sim inserted getCurrentWallpaper = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    if-nez v2, :cond_0

    .line 52
    sget-object v3, Lcom/android/internal/policy/impl/sec/MultiSimUtils;->PORTRAIT_WALLPAPER_IMAGE_PATH:[Ljava/lang/String;

    invoke-static {}, Lcom/android/internal/policy/impl/sec/MultiSimUtils;->getCurrentVoiceCall()I

    move-result v4

    aget-object v2, v3, v4

    .line 68
    :cond_0
    :goto_0
    const-string v3, "MultiSimUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCurrentWallpaper = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-object v2

    .line 54
    :cond_1
    const-string v3, "1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 55
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/internal/policy/impl/sec/MultiSimUtils;->PORTRAIT_WALLPAPER_IMAGE_PATH_DATABASE:[Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 56
    const-string v3, "MultiSimUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSimMode = 1, getCurrentWallpaper = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    if-nez v2, :cond_0

    .line 58
    sget-object v3, Lcom/android/internal/policy/impl/sec/MultiSimUtils;->PORTRAIT_WALLPAPER_IMAGE_PATH:[Ljava/lang/String;

    invoke-static {}, Lcom/android/internal/policy/impl/sec/MultiSimUtils;->getCurrentVoiceCall()I

    move-result v4

    aget-object v2, v3, v4

    goto :goto_0

    .line 60
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/internal/policy/impl/sec/MultiSimUtils;->PORTRAIT_WALLPAPER_IMAGE_PATH_DATABASE:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 61
    const-string v3, "MultiSimUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSimMode = 0, inserted getCurrentWallpaper = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    if-nez v2, :cond_0

    .line 63
    sget-object v3, Lcom/android/internal/policy/impl/sec/MultiSimUtils;->PORTRAIT_WALLPAPER_IMAGE_PATH:[Ljava/lang/String;

    invoke-static {}, Lcom/android/internal/policy/impl/sec/MultiSimUtils;->getCurrentVoiceCall()I

    move-result v4

    aget-object v2, v3, v4

    goto :goto_0
.end method

.method public static getPINPUKRequest()Z
    .locals 1

    .prologue
    .line 115
    invoke-static {}, Lcom/android/internal/policy/impl/sec/MultiSimUtils;->getPINRequest()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/internal/policy/impl/sec/MultiSimUtils;->getPUKRequest()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getPINRequest()Z
    .locals 5

    .prologue
    .line 101
    const/4 v2, -0x1

    sput v2, Lcom/android/internal/policy/impl/sec/MultiSimUtils;->mCurrnetPinLockSlot:I

    .line 102
    const/4 v0, 0x0

    .local v0, simSlot:I
    :goto_0
    invoke-static {}, Lcom/android/internal/policy/impl/sec/MultiSimUtils;->getSimSlotCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 103
    const-string v2, "gsm.sim.state"

    invoke-static {v2, v0}, Lcom/android/internal/policy/impl/sec/MultiSimUtils;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, simState:Ljava/lang/String;
    const-string v2, "MultiSimUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getInsertedSimNum() : simSlot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", simState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const-string v2, "PIN_REQUIRED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    sput v0, Lcom/android/internal/policy/impl/sec/MultiSimUtils;->mCurrnetPinLockSlot:I

    .line 108
    const/4 v2, 0x1

    .line 111
    .end local v1           #simState:Ljava/lang/String;
    :goto_1
    return v2

    .line 102
    .restart local v1       #simState:Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 111
    .end local v1           #simState:Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static getPUKRequest()Z
    .locals 5

    .prologue
    .line 135
    const/4 v2, -0x1

    sput v2, Lcom/android/internal/policy/impl/sec/MultiSimUtils;->mCurrentPukLockSlot:I

    .line 136
    const/4 v0, 0x0

    .local v0, simSlot:I
    :goto_0
    invoke-static {}, Lcom/android/internal/policy/impl/sec/MultiSimUtils;->getSimSlotCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 137
    const-string v2, "gsm.sim.state"

    invoke-static {v2, v0}, Lcom/android/internal/policy/impl/sec/MultiSimUtils;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, simState:Ljava/lang/String;
    const-string v2, "MultiSimUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getInsertedSimNum() : simSlot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", simState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const-string v2, "PUK_REQUIRED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 141
    sput v0, Lcom/android/internal/policy/impl/sec/MultiSimUtils;->mCurrentPukLockSlot:I

    .line 142
    const/4 v2, 0x1

    .line 145
    .end local v1           #simState:Ljava/lang/String;
    :goto_1
    return v2

    .line 136
    .restart local v1       #simState:Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 145
    .end local v1           #simState:Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static getSimSlotCount()I
    .locals 2

    .prologue
    .line 156
    const-string v0, "ro.multisim.simslotcount"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static isChangedVoiceCall()Z
    .locals 4

    .prologue
    .line 93
    sget v1, Lcom/android/internal/policy/impl/sec/MultiSimUtils;->mOldCurrentVoiceCall:I

    invoke-static {}, Lcom/android/internal/policy/impl/sec/MultiSimUtils;->getCurrentVoiceCall()I

    move-result v2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    .line 95
    .local v0, ret:Z
    :goto_0
    const-string v1, "MultiSimUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isChangedVoiceCall oldstate = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/internal/policy/impl/sec/MultiSimUtils;->mOldCurrentVoiceCall:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", new = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/internal/policy/impl/sec/MultiSimUtils;->getCurrentVoiceCall()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-static {}, Lcom/android/internal/policy/impl/sec/MultiSimUtils;->getCurrentVoiceCall()I

    move-result v1

    sput v1, Lcom/android/internal/policy/impl/sec/MultiSimUtils;->mOldCurrentVoiceCall:I

    .line 97
    return v0

    .line 93
    .end local v0           #ret:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMultiSIMDevice()Z
    .locals 1

    .prologue
    .line 125
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isMultiSIMDevice()Z

    move-result v0

    return v0
.end method
