.class public final Landroid/sec/multiwindow/impl/MultiWindowManager;
.super Ljava/lang/Object;
.source "MultiWindowManager.java"


# static fields
.field private static A:Landroid/graphics/Rect; = null

.field private static B:Landroid/graphics/Rect; = null

.field private static C:Landroid/graphics/Rect; = null

.field private static D:Landroid/graphics/Rect; = null

.field private static E:Landroid/graphics/Rect; = null

.field private static F:Landroid/graphics/Rect; = null

.field public static final MW_TOUCH_DETECTED_ACTION:Ljava/lang/String; = "mw_action"

.field public static final MW_TOUCH_DETECTED_INTENT:Ljava/lang/String; = "com.sec.multiwindow.MW_TOUCH_DETECTED"

.field public static final MW_TOUCH_DETECTED_X:Ljava/lang/String; = "mw_x"

.field public static final MW_TOUCH_DETECTED_Y:Ljava/lang/String; = "mw_y"

.field private static sCenterBarInnerPadding:I

.field private static sHasSystemNavBar:Z

.field private static sIsEnabled:Z

.field private static sIsPhone:Z

.field private static sQueried:Z

.field private static sQueriedType:Z

.field private static sSplitDirection:I

.field private static sSplitRect:Landroid/graphics/Rect;

.field private static sSplitRectLock:Ljava/lang/Object;

.field private static sStatusBarHeight:I

.field private static sStatusBarVisibility:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 19
    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sQueried:Z

    .line 20
    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sQueriedType:Z

    .line 21
    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sIsEnabled:Z

    .line 22
    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sIsPhone:Z

    .line 23
    sput v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sStatusBarHeight:I

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSplitRectLock:Ljava/lang/Object;

    .line 25
    sput v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSplitDirection:I

    .line 26
    const/4 v0, 0x0

    sput-object v0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSplitRect:Landroid/graphics/Rect;

    .line 27
    sput-boolean v2, Landroid/sec/multiwindow/impl/MultiWindowManager;->sHasSystemNavBar:Z

    .line 28
    sput-boolean v2, Landroid/sec/multiwindow/impl/MultiWindowManager;->sStatusBarVisibility:Z

    .line 29
    sput v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sCenterBarInnerPadding:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calcStatusBarHeight(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 77
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 78
    .local v0, fullscreen:Landroid/graphics/Point;
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 80
    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    if-le v3, v4, :cond_2

    iget v1, v0, Landroid/graphics/Point;->y:I

    .line 81
    .local v1, shortSize:I
    :goto_0
    mul-int/lit16 v3, v1, 0xa0

    sget v4, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    div-int v2, v3, v4

    .line 83
    .local v2, shortSizeDp:I
    const/16 v3, 0x258

    if-lt v2, v3, :cond_0

    sget v3, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    const/16 v4, 0xd5

    if-ne v3, v4, :cond_1

    .line 84
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x105000a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Landroid/sec/multiwindow/impl/MultiWindowManager;->sStatusBarHeight:I

    .line 86
    :cond_1
    return-void

    .line 80
    .end local v1           #shortSize:I
    .end local v2           #shortSizeDp:I
    :cond_2
    iget v1, v0, Landroid/graphics/Point;->x:I

    goto :goto_0
.end method

.method public static calculateSplitWindowSize(I)Landroid/graphics/Rect;
    .locals 3
    .parameter "splitZone"

    .prologue
    .line 205
    invoke-static {}, Landroid/sec/multiwindow/impl/MultiWindowManager;->updateWindowRects()V

    .line 207
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 208
    .local v0, result:Landroid/graphics/Rect;
    and-int/lit8 v1, p0, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 210
    sget-object v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->C:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 212
    :cond_0
    and-int/lit8 v1, p0, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 214
    sget-object v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->D:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 216
    :cond_1
    and-int/lit8 v1, p0, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    .line 218
    sget-object v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->E:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 220
    :cond_2
    and-int/lit8 v1, p0, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_3

    .line 222
    sget-object v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->F:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 225
    :cond_3
    return-object v0
.end method

.method public static findCurrentWindowZone(III)I
    .locals 16
    .parameter "currentLaunchMode"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 229
    invoke-static {}, Landroid/sec/multiwindow/impl/MultiWindowManager;->updateWindowRects()V

    .line 232
    const/4 v12, 0x2

    new-array v6, v12, [Landroid/util/Pair;

    const/4 v12, 0x0

    new-instance v13, Landroid/util/Pair;

    sget-object v14, Landroid/sec/multiwindow/impl/MultiWindowManager;->A:Landroid/graphics/Rect;

    const/4 v15, 0x6

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v13, v6, v12

    const/4 v12, 0x1

    new-instance v13, Landroid/util/Pair;

    sget-object v14, Landroid/sec/multiwindow/impl/MultiWindowManager;->B:Landroid/graphics/Rect;

    const/16 v15, 0x18

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v13, v6, v12

    .line 237
    .local v6, split:[Landroid/util/Pair;
    const/4 v12, 0x3

    new-array v7, v12, [Landroid/util/Pair;

    const/4 v12, 0x0

    new-instance v13, Landroid/util/Pair;

    sget-object v14, Landroid/sec/multiwindow/impl/MultiWindowManager;->A:Landroid/graphics/Rect;

    const/4 v15, 0x6

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v13, v7, v12

    const/4 v12, 0x1

    new-instance v13, Landroid/util/Pair;

    sget-object v14, Landroid/sec/multiwindow/impl/MultiWindowManager;->E:Landroid/graphics/Rect;

    const/16 v15, 0x8

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v13, v7, v12

    const/4 v12, 0x2

    new-instance v13, Landroid/util/Pair;

    sget-object v14, Landroid/sec/multiwindow/impl/MultiWindowManager;->F:Landroid/graphics/Rect;

    const/16 v15, 0x10

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v13, v7, v12

    .line 243
    .local v7, split3L:[Landroid/util/Pair;
    const/4 v12, 0x3

    new-array v8, v12, [Landroid/util/Pair;

    const/4 v12, 0x0

    new-instance v13, Landroid/util/Pair;

    sget-object v14, Landroid/sec/multiwindow/impl/MultiWindowManager;->C:Landroid/graphics/Rect;

    const/4 v15, 0x2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v13, v8, v12

    const/4 v12, 0x1

    new-instance v13, Landroid/util/Pair;

    sget-object v14, Landroid/sec/multiwindow/impl/MultiWindowManager;->D:Landroid/graphics/Rect;

    const/4 v15, 0x4

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v13, v8, v12

    const/4 v12, 0x2

    new-instance v13, Landroid/util/Pair;

    sget-object v14, Landroid/sec/multiwindow/impl/MultiWindowManager;->B:Landroid/graphics/Rect;

    const/16 v15, 0x18

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v13, v8, v12

    .line 249
    .local v8, split3R:[Landroid/util/Pair;
    const/4 v12, 0x4

    new-array v9, v12, [Landroid/util/Pair;

    const/4 v12, 0x0

    new-instance v13, Landroid/util/Pair;

    sget-object v14, Landroid/sec/multiwindow/impl/MultiWindowManager;->C:Landroid/graphics/Rect;

    const/4 v15, 0x2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v13, v9, v12

    const/4 v12, 0x1

    new-instance v13, Landroid/util/Pair;

    sget-object v14, Landroid/sec/multiwindow/impl/MultiWindowManager;->D:Landroid/graphics/Rect;

    const/4 v15, 0x4

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v13, v9, v12

    const/4 v12, 0x2

    new-instance v13, Landroid/util/Pair;

    sget-object v14, Landroid/sec/multiwindow/impl/MultiWindowManager;->E:Landroid/graphics/Rect;

    const/16 v15, 0x8

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v13, v9, v12

    const/4 v12, 0x3

    new-instance v13, Landroid/util/Pair;

    sget-object v14, Landroid/sec/multiwindow/impl/MultiWindowManager;->F:Landroid/graphics/Rect;

    const/16 v15, 0x10

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v13, v9, v12

    .line 256
    .local v9, split4:[Landroid/util/Pair;
    const/4 v11, 0x0

    .line 258
    .local v11, zoneInfos:[Landroid/util/Pair;,"[Landroid/util/Pair<Landroid/graphics/Rect;Ljava/lang/Integer;>;"
    sparse-switch p0, :sswitch_data_0

    .line 277
    :goto_0
    :sswitch_0
    move-object v2, v11

    .local v2, arr$:[Landroid/util/Pair;
    array-length v4, v2

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v10, v2, v3

    .line 278
    .local v10, zone:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/graphics/Rect;Ljava/lang/Integer;>;"
    iget-object v5, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/Rect;

    .line 279
    .local v5, rect:Landroid/graphics/Rect;
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 280
    iget-object v12, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 284
    .end local v5           #rect:Landroid/graphics/Rect;
    .end local v10           #zone:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/graphics/Rect;Ljava/lang/Integer;>;"
    :goto_2
    return v12

    .line 264
    .end local v2           #arr$:[Landroid/util/Pair;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :sswitch_1
    move-object v11, v6

    .line 265
    goto :goto_0

    .line 267
    :sswitch_2
    move-object v11, v7

    .line 268
    goto :goto_0

    .line 270
    :sswitch_3
    move-object v11, v8

    .line 271
    goto :goto_0

    .line 273
    :sswitch_4
    move-object v11, v9

    goto :goto_0

    .line 277
    .restart local v2       #arr$:[Landroid/util/Pair;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    .restart local v5       #rect:Landroid/graphics/Rect;
    .restart local v10       #zone:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/graphics/Rect;Ljava/lang/Integer;>;"
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 284
    .end local v5           #rect:Landroid/graphics/Rect;
    .end local v10           #zone:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/graphics/Rect;Ljava/lang/Integer;>;"
    :cond_1
    const/4 v12, 0x0

    goto :goto_2

    .line 258
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_2
        0x10 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public static getAppDisplaySize(Landroid/graphics/Point;)V
    .locals 3
    .parameter "size"

    .prologue
    .line 52
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 53
    .local v0, fullscreen:Landroid/graphics/Point;
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 55
    iget v1, v0, Landroid/graphics/Point;->x:I

    iput v1, p0, Landroid/graphics/Point;->x:I

    .line 56
    iget v2, v0, Landroid/graphics/Point;->y:I

    sget-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sStatusBarVisibility:Z

    if-eqz v1, :cond_0

    sget v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sStatusBarHeight:I

    :goto_0
    sub-int v1, v2, v1

    iput v1, p0, Landroid/graphics/Point;->y:I

    .line 57
    return-void

    .line 56
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getCurrentStatusBarVisibility()Z
    .locals 1

    .prologue
    .line 73
    sget-boolean v0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sStatusBarVisibility:Z

    return v0
.end method

.method public static getSplitDirection()I
    .locals 2

    .prologue
    .line 118
    sget-object v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSplitRectLock:Ljava/lang/Object;

    monitor-enter v1

    .line 119
    :try_start_0
    sget v0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSplitDirection:I

    monitor-exit v1

    return v0

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getSplitRect()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 124
    sget-object v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSplitRectLock:Ljava/lang/Object;

    monitor-enter v1

    .line 125
    :try_start_0
    sget-object v0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSplitRect:Landroid/graphics/Rect;

    monitor-exit v1

    return-object v0

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getStatusBarHeight()I
    .locals 1

    .prologue
    .line 89
    sget-boolean v0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sStatusBarVisibility:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sStatusBarHeight:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasSystemNavBar()Z
    .locals 1

    .prologue
    .line 65
    sget-boolean v0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sHasSystemNavBar:Z

    return v0
.end method

.method public static initHasSystemNavBar(Z)V
    .locals 1
    .parameter "hasBar"

    .prologue
    .line 60
    sput-boolean p0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sHasSystemNavBar:Z

    .line 61
    if-nez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sStatusBarVisibility:Z

    .line 62
    return-void

    .line 61
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isArrangable(I)Z
    .locals 2
    .parameter "windowMode"

    .prologue
    .line 334
    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isMultiWindow(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->option(I)I

    move-result v0

    const/high16 v1, 0x4

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isArrangeMode(IZZ)Z
    .locals 4
    .parameter "windowMode"
    .parameter "bResumed"
    .parameter "bIncludePinup"

    .prologue
    const/4 v2, 0x0

    .line 130
    invoke-static {p0}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v0

    .line 131
    .local v0, mode:I
    invoke-static {p0}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v1

    .line 133
    .local v1, options:I
    const/high16 v3, 0x200

    if-eq v0, v3, :cond_1

    .line 145
    :cond_0
    :goto_0
    return v2

    .line 137
    :cond_1
    const/high16 v3, 0x8

    and-int/2addr v3, v1

    if-nez v3, :cond_0

    .line 141
    if-eqz p1, :cond_0

    if-eqz p2, :cond_2

    .line 142
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 141
    :cond_2
    const/high16 v3, 0x80

    and-int/2addr v3, v1

    if-nez v3, :cond_0

    goto :goto_1
.end method

.method public static isEnabled(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 32
    sget-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sQueried:Z

    if-nez v1, :cond_1

    .line 33
    const/4 v1, 0x1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sQueried:Z

    .line 34
    const/4 v0, 0x0

    .line 35
    .local v0, pm:Landroid/content/pm/PackageManager;
    if-eqz p0, :cond_0

    .line 36
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 37
    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->calcStatusBarHeight(Landroid/content/Context;)V

    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050060

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sCenterBarInnerPadding:I

    .line 41
    :cond_0
    if-eqz v0, :cond_2

    .line 42
    const-string v1, "com.sec.feature.multiwindow"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sIsEnabled:Z

    .line 48
    .end local v0           #pm:Landroid/content/pm/PackageManager;
    :cond_1
    :goto_0
    sget-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sIsEnabled:Z

    return v1

    .line 45
    .restart local v0       #pm:Landroid/content/pm/PackageManager;
    :cond_2
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/etc/permissions/com.sec.feature.multiwindow.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sIsEnabled:Z

    goto :goto_0
.end method

.method public static isFullSize(I)Z
    .locals 1
    .parameter "windowMode"

    .prologue
    .line 329
    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isMultiWindow(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->option(I)I

    move-result v0

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMinimized(I)Z
    .locals 2
    .parameter "windowMode"

    .prologue
    .line 324
    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isMultiWindow(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->option(I)I

    move-result v0

    const/high16 v1, 0x10

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMultiWindow(I)Z
    .locals 2
    .parameter "windowMode"

    .prologue
    .line 311
    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->mode(I)I

    move-result v0

    const/high16 v1, 0x200

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNormalWindow(I)Z
    .locals 2
    .parameter "windowMode"

    .prologue
    .line 307
    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->mode(I)I

    move-result v0

    const/high16 v1, 0x100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPhone(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 93
    sget-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sQueriedType:Z

    if-nez v1, :cond_1

    .line 94
    const/4 v1, 0x1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sQueriedType:Z

    .line 95
    const/4 v0, 0x0

    .line 96
    .local v0, pm:Landroid/content/pm/PackageManager;
    if-eqz p0, :cond_0

    .line 97
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 100
    :cond_0
    if-eqz v0, :cond_2

    .line 101
    const-string v1, "com.sec.feature.multiwindow.phone"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sIsPhone:Z

    .line 107
    .end local v0           #pm:Landroid/content/pm/PackageManager;
    :cond_1
    :goto_0
    sget-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sIsPhone:Z

    return v1

    .line 104
    .restart local v0       #pm:Landroid/content/pm/PackageManager;
    :cond_2
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/etc/permissions/com.sec.feature.multiwindow.phone.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sIsPhone:Z

    goto :goto_0
.end method

.method public static isPinup(I)Z
    .locals 2
    .parameter "windowMode"

    .prologue
    .line 319
    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isMultiWindow(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->option(I)I

    move-result v0

    const/high16 v1, 0x80

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isResizable(I)Z
    .locals 2
    .parameter "windowMode"

    .prologue
    .line 315
    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->option(I)I

    move-result v0

    const/high16 v1, 0x20

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static mode(I)I
    .locals 1
    .parameter "windowMode"

    .prologue
    .line 299
    invoke-static {p0}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v0

    return v0
.end method

.method private static option(I)I
    .locals 1
    .parameter "windowMode"

    .prologue
    .line 303
    invoke-static {p0}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v0

    return v0
.end method

.method public static setCurrentStatusBarVisibility(Z)V
    .locals 0
    .parameter "isVisible"

    .prologue
    .line 69
    sput-boolean p0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sStatusBarVisibility:Z

    .line 70
    return-void
.end method

.method public static setSplitRect(ILandroid/graphics/Rect;)V
    .locals 2
    .parameter "direction"
    .parameter "rect"

    .prologue
    .line 111
    sget-object v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSplitRectLock:Ljava/lang/Object;

    monitor-enter v1

    .line 112
    :try_start_0
    sput p0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSplitDirection:I

    .line 113
    sput-object p1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSplitRect:Landroid/graphics/Rect;

    .line 114
    monitor-exit v1

    .line 115
    return-void

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static updateWindowRects()V
    .locals 12

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 149
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 150
    .local v0, fullscreen:Landroid/graphics/Point;
    invoke-static {v0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getAppDisplaySize(Landroid/graphics/Point;)V

    .line 152
    sget-boolean v10, Landroid/sec/multiwindow/impl/MultiWindowManager;->sStatusBarVisibility:Z

    if-eqz v10, :cond_1

    sget v6, Landroid/sec/multiwindow/impl/MultiWindowManager;->sStatusBarHeight:I

    .line 153
    .local v6, realStatusBarHeight:I
    :goto_0
    iget v2, v0, Landroid/graphics/Point;->x:I

    .line 154
    .local v2, iDeviceWidth:I
    iget v1, v0, Landroid/graphics/Point;->y:I

    .line 155
    .local v1, iDeviceHeight:I
    div-int/lit8 v10, v1, 0x2

    add-int v3, v10, v6

    .line 156
    .local v3, iHeightBoundary:I
    div-int/lit8 v4, v2, 0x2

    .line 158
    .local v4, iWidthBoundary:I
    if-le v2, v1, :cond_2

    move v5, v9

    .line 159
    .local v5, landscape:Z
    :goto_1
    const/4 v7, 0x0

    .line 162
    .local v7, splitHalfWidth:I
    sget-object v10, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSplitRectLock:Ljava/lang/Object;

    monitor-enter v10

    .line 163
    :try_start_0
    sget-object v11, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSplitRect:Landroid/graphics/Rect;

    if-eqz v11, :cond_0

    .line 164
    sget v11, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSplitDirection:I

    if-ne v11, v9, :cond_4

    .line 165
    if-eqz v5, :cond_3

    .line 166
    sget-object v9, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSplitRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    .line 167
    sget-object v9, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSplitRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    div-int/lit8 v7, v9, 0x2

    .line 182
    :cond_0
    :goto_2
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    sget v9, Landroid/sec/multiwindow/impl/MultiWindowManager;->sCenterBarInnerPadding:I

    sub-int/2addr v7, v9

    .line 185
    if-eqz v5, :cond_6

    .line 186
    new-instance v9, Landroid/graphics/Rect;

    sub-int v10, v4, v7

    invoke-direct {v9, v8, v6, v10, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v9, Landroid/sec/multiwindow/impl/MultiWindowManager;->C:Landroid/graphics/Rect;

    .line 187
    new-instance v9, Landroid/graphics/Rect;

    sub-int v10, v4, v7

    add-int v11, v1, v6

    invoke-direct {v9, v8, v3, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v9, Landroid/sec/multiwindow/impl/MultiWindowManager;->D:Landroid/graphics/Rect;

    .line 188
    new-instance v8, Landroid/graphics/Rect;

    add-int v9, v4, v7

    invoke-direct {v8, v9, v6, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v8, Landroid/sec/multiwindow/impl/MultiWindowManager;->E:Landroid/graphics/Rect;

    .line 189
    new-instance v8, Landroid/graphics/Rect;

    add-int v9, v4, v7

    add-int v10, v1, v6

    invoke-direct {v8, v9, v3, v2, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v8, Landroid/sec/multiwindow/impl/MultiWindowManager;->F:Landroid/graphics/Rect;

    .line 197
    :goto_3
    new-instance v8, Landroid/graphics/Rect;

    sget-object v9, Landroid/sec/multiwindow/impl/MultiWindowManager;->C:Landroid/graphics/Rect;

    invoke-direct {v8, v9}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    sput-object v8, Landroid/sec/multiwindow/impl/MultiWindowManager;->A:Landroid/graphics/Rect;

    .line 198
    sget-object v8, Landroid/sec/multiwindow/impl/MultiWindowManager;->A:Landroid/graphics/Rect;

    sget-object v9, Landroid/sec/multiwindow/impl/MultiWindowManager;->D:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 200
    new-instance v8, Landroid/graphics/Rect;

    sget-object v9, Landroid/sec/multiwindow/impl/MultiWindowManager;->E:Landroid/graphics/Rect;

    invoke-direct {v8, v9}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    sput-object v8, Landroid/sec/multiwindow/impl/MultiWindowManager;->B:Landroid/graphics/Rect;

    .line 201
    sget-object v8, Landroid/sec/multiwindow/impl/MultiWindowManager;->B:Landroid/graphics/Rect;

    sget-object v9, Landroid/sec/multiwindow/impl/MultiWindowManager;->F:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 202
    return-void

    .end local v1           #iDeviceHeight:I
    .end local v2           #iDeviceWidth:I
    .end local v3           #iHeightBoundary:I
    .end local v4           #iWidthBoundary:I
    .end local v5           #landscape:Z
    .end local v6           #realStatusBarHeight:I
    .end local v7           #splitHalfWidth:I
    :cond_1
    move v6, v8

    .line 152
    goto :goto_0

    .restart local v1       #iDeviceHeight:I
    .restart local v2       #iDeviceWidth:I
    .restart local v3       #iHeightBoundary:I
    .restart local v4       #iWidthBoundary:I
    .restart local v6       #realStatusBarHeight:I
    :cond_2
    move v5, v8

    .line 158
    goto :goto_1

    .line 169
    .restart local v5       #landscape:Z
    .restart local v7       #splitHalfWidth:I
    :cond_3
    :try_start_1
    sget-object v9, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSplitRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    .line 170
    sget-object v9, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSplitRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    div-int/lit8 v7, v9, 0x2

    goto :goto_2

    .line 172
    :cond_4
    sget v9, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSplitDirection:I

    const/4 v11, 0x2

    if-ne v9, v11, :cond_0

    .line 173
    if-eqz v5, :cond_5

    .line 174
    sget-object v9, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSplitRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    .line 175
    sget-object v9, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSplitRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    div-int/lit8 v7, v9, 0x2

    goto :goto_2

    .line 177
    :cond_5
    sget-object v9, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSplitRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    .line 178
    sget-object v9, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSplitRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    div-int/lit8 v7, v9, 0x2

    goto/16 :goto_2

    .line 182
    :catchall_0
    move-exception v8

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 191
    :cond_6
    new-instance v9, Landroid/graphics/Rect;

    sub-int v10, v3, v7

    invoke-direct {v9, v8, v6, v4, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v9, Landroid/sec/multiwindow/impl/MultiWindowManager;->C:Landroid/graphics/Rect;

    .line 192
    new-instance v9, Landroid/graphics/Rect;

    add-int v10, v3, v7

    add-int v11, v1, v6

    invoke-direct {v9, v8, v10, v4, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v9, Landroid/sec/multiwindow/impl/MultiWindowManager;->E:Landroid/graphics/Rect;

    .line 193
    new-instance v8, Landroid/graphics/Rect;

    sub-int v9, v3, v7

    invoke-direct {v8, v4, v6, v2, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v8, Landroid/sec/multiwindow/impl/MultiWindowManager;->D:Landroid/graphics/Rect;

    .line 194
    new-instance v8, Landroid/graphics/Rect;

    add-int v9, v3, v7

    add-int v10, v1, v6

    invoke-direct {v8, v4, v9, v2, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v8, Landroid/sec/multiwindow/impl/MultiWindowManager;->F:Landroid/graphics/Rect;

    goto/16 :goto_3
.end method
