.class public Landroid/view/ViewConfiguration;
.super Ljava/lang/Object;
.source "ViewConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewConfiguration$1;,
        Landroid/view/ViewConfiguration$Injector;
    }
.end annotation


# static fields
.field public static final ALPHA_THRESHOLD:F = 0.020833334f

.field public static final ALPHA_THRESHOLD_INT:F = 5.2916665f

.field private static final DEFAULT_LONG_PRESS_TIMEOUT:I = 0x1f4

.field private static final DOUBLE_TAP_SLOP:I = 0x64

.field private static final DOUBLE_TAP_TIMEOUT:I = 0x12c

.field private static final DOUBLE_TAP_TOUCH_SLOP:I = 0x10

.field private static final EDGE_SLOP:I = 0xc

.field private static final FADING_EDGE_LENGTH:I = 0xc

.field private static final GLOBAL_ACTIONS_KEY_TIMEOUT:I = 0x1f4

.field private static final HOVER_TAP_SLOP:I = 0x14

.field private static final HOVER_TAP_TIMEOUT:I = 0x96

.field private static final JUMP_TAP_TIMEOUT:I = 0x1f4

.field private static final KEY_REPEAT_DELAY:I = 0x32

.field private static final MAXIMUM_DRAWING_CACHE_SIZE:I = 0x177000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final MAXIMUM_FLING_VELOCITY:I = 0x1f40

.field private static final MINIMUM_FLING_VELOCITY:I = 0x32

.field private static final OVERFLING_DISTANCE:I = 0x6

.field private static final OVERSCROLL_DISTANCE:I = 0x0

.field private static final PAGING_TOUCH_SLOP:I = 0x20

.field public static final PANEL_BIT_DEPTH:F = 24.0f

.field private static final PRESSED_STATE_DURATION:I = 0x40

.field private static final SCROLL_BAR_DEFAULT_DELAY:I = 0x12c

.field private static final SCROLL_BAR_FADE_DURATION:I = 0xfa

.field private static final SCROLL_BAR_SIZE:I = 0xa

.field private static final SCROLL_FRICTION:F = 0.015f

.field private static final SEND_RECURRING_ACCESSIBILITY_EVENTS_INTERVAL_MILLIS:J = 0x64L

.field private static final TAP_TIMEOUT:I = 0xb4

.field private static final TOUCH_SLOP:I = 0x10

.field private static final WINDOW_TOUCH_SLOP:I = 0x10

.field private static final ZOOM_CONTROLS_TIMEOUT:I = 0xbb8

.field static final sConfigurations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/ViewConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDoubleTapSlop:I

.field private final mDoubleTapTouchSlop:I

.field private final mEdgeSlop:I

.field private final mFadingEdgeLength:I

.field private final mFadingMarqueeEnabled:Z

.field private final mMaximumDrawingCacheSize:I

.field private final mMaximumFlingVelocity:I

.field private final mMinimumFlingVelocity:I

.field private final mOverflingDistance:I

.field private final mOverscrollDistance:I

.field private final mPagingTouchSlop:I

.field private final mScrollbarSize:I

.field private final mTouchSlop:I

.field private final mWindowTouchSlop:I

.field private sHasPermanentMenuKey:Z

.field private sHasPermanentMenuKeySet:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 243
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Landroid/view/ViewConfiguration;->sConfigurations:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/16 v0, 0xc

    const/16 v1, 0x10

    .line 250
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 251
    iput v0, p0, Landroid/view/ViewConfiguration;->mEdgeSlop:I

    .line 252
    iput v0, p0, Landroid/view/ViewConfiguration;->mFadingEdgeLength:I

    .line 253
    const/16 v0, 0x32

    iput v0, p0, Landroid/view/ViewConfiguration;->mMinimumFlingVelocity:I

    .line 254
    const/16 v0, 0x1f40

    iput v0, p0, Landroid/view/ViewConfiguration;->mMaximumFlingVelocity:I

    .line 255
    const/16 v0, 0xa

    iput v0, p0, Landroid/view/ViewConfiguration;->mScrollbarSize:I

    .line 256
    iput v1, p0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    .line 257
    iput v1, p0, Landroid/view/ViewConfiguration;->mDoubleTapTouchSlop:I

    .line 258
    const/16 v0, 0x20

    iput v0, p0, Landroid/view/ViewConfiguration;->mPagingTouchSlop:I

    .line 259
    const/16 v0, 0x64

    iput v0, p0, Landroid/view/ViewConfiguration;->mDoubleTapSlop:I

    .line 260
    iput v1, p0, Landroid/view/ViewConfiguration;->mWindowTouchSlop:I

    .line 262
    const v0, 0x177000

    iput v0, p0, Landroid/view/ViewConfiguration;->mMaximumDrawingCacheSize:I

    .line 263
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewConfiguration;->mOverscrollDistance:I

    .line 264
    const/4 v0, 0x6

    iput v0, p0, Landroid/view/ViewConfiguration;->mOverflingDistance:I

    .line 265
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewConfiguration;->mFadingMarqueeEnabled:Z

    .line 266
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 13
    .parameter "context"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/high16 v11, 0x4140

    const/high16 v12, 0x3f00

    .line 278
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 279
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 280
    .local v5, res:Landroid/content/res/Resources;
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 281
    .local v4, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 282
    .local v0, config:Landroid/content/res/Configuration;
    iget v1, v4, Landroid/util/DisplayMetrics;->density:F

    .line 284
    .local v1, density:F
    const/4 v10, 0x4

    invoke-virtual {v0, v10}, Landroid/content/res/Configuration;->isLayoutSizeAtLeast(I)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 285
    const/high16 v10, 0x3fc0

    mul-float v6, v1, v10

    .line 290
    .local v6, sizeAndDensity:F
    :goto_0
    mul-float v10, v6, v11

    add-float/2addr v10, v12

    float-to-int v10, v10

    iput v10, p0, Landroid/view/ViewConfiguration;->mEdgeSlop:I

    .line 291
    mul-float v10, v6, v11

    add-float/2addr v10, v12

    float-to-int v10, v10

    iput v10, p0, Landroid/view/ViewConfiguration;->mFadingEdgeLength:I

    .line 292
    const/high16 v10, 0x4248

    mul-float/2addr v10, v1

    add-float/2addr v10, v12

    float-to-int v10, v10

    iput v10, p0, Landroid/view/ViewConfiguration;->mMinimumFlingVelocity:I

    .line 293
    const/high16 v10, 0x45fa

    mul-float/2addr v10, v1

    add-float/2addr v10, v12

    float-to-int v10, v10

    iput v10, p0, Landroid/view/ViewConfiguration;->mMaximumFlingVelocity:I

    .line 294
    const/high16 v10, 0x4120

    mul-float/2addr v10, v1

    add-float/2addr v10, v12

    float-to-int v10, v10

    iput v10, p0, Landroid/view/ViewConfiguration;->mScrollbarSize:I

    .line 295
    const/high16 v10, 0x42c8

    mul-float/2addr v10, v6

    add-float/2addr v10, v12

    float-to-int v10, v10

    iput v10, p0, Landroid/view/ViewConfiguration;->mDoubleTapSlop:I

    .line 296
    const/high16 v10, 0x4180

    mul-float/2addr v10, v6

    add-float/2addr v10, v12

    float-to-int v10, v10

    iput v10, p0, Landroid/view/ViewConfiguration;->mWindowTouchSlop:I

    .line 298
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 300
    .local v2, display:Landroid/view/Display;
    invoke-virtual {v2}, Landroid/view/Display;->getRawWidth()I

    move-result v10

    mul-int/lit8 v10, v10, 0x4

    invoke-virtual {v2}, Landroid/view/Display;->getRawHeight()I

    move-result v11

    mul-int/2addr v10, v11

    iput v10, p0, Landroid/view/ViewConfiguration;->mMaximumDrawingCacheSize:I

    .line 302
    const/4 v10, 0x0

    mul-float/2addr v10, v6

    add-float/2addr v10, v12

    float-to-int v10, v10

    invoke-static {p1, v10}, Landroid/view/ViewConfiguration$Injector;->getOverScrollDistance(Landroid/content/Context;I)I

    move-result v10

    iput v10, p0, Landroid/view/ViewConfiguration;->mOverscrollDistance:I

    .line 303
    const/high16 v10, 0x40c0

    mul-float/2addr v10, v6

    add-float/2addr v10, v12

    float-to-int v10, v10

    invoke-static {p1, v10}, Landroid/view/ViewConfiguration$Injector;->getOverFlingDistance(Landroid/content/Context;I)I

    move-result v10

    iput v10, p0, Landroid/view/ViewConfiguration;->mOverflingDistance:I

    .line 305
    iget-boolean v10, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKeySet:Z

    if-nez v10, :cond_0

    .line 306
    invoke-static {}, Landroid/view/Display;->getWindowManager()Landroid/view/IWindowManager;

    move-result-object v7

    .line 308
    .local v7, wm:Landroid/view/IWindowManager;
    :try_start_0
    invoke-interface {v7}, Landroid/view/IWindowManager;->hasSystemNavBar()Z

    move-result v10

    if-nez v10, :cond_2

    invoke-interface {v7}, Landroid/view/IWindowManager;->hasNavigationBar()Z

    move-result v10

    if-nez v10, :cond_2

    :goto_1
    iput-boolean v8, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKey:Z

    .line 309
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKeySet:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    .end local v7           #wm:Landroid/view/IWindowManager;
    :cond_0
    :goto_2
    const v8, 0x111000c

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    iput-boolean v8, p0, Landroid/view/ViewConfiguration;->mFadingMarqueeEnabled:Z

    .line 317
    const v8, 0x1050008

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, p0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    .line 319
    iget v8, p0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    mul-int/lit8 v8, v8, 0x2

    iput v8, p0, Landroid/view/ViewConfiguration;->mPagingTouchSlop:I

    .line 321
    iget v8, p0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    iput v8, p0, Landroid/view/ViewConfiguration;->mDoubleTapTouchSlop:I

    .line 322
    return-void

    .line 287
    .end local v2           #display:Landroid/view/Display;
    .end local v6           #sizeAndDensity:F
    :cond_1
    move v6, v1

    .restart local v6       #sizeAndDensity:F
    goto/16 :goto_0

    .restart local v2       #display:Landroid/view/Display;
    .restart local v7       #wm:Landroid/view/IWindowManager;
    :cond_2
    move v8, v9

    .line 308
    goto :goto_1

    .line 310
    :catch_0
    move-exception v3

    .line 311
    .local v3, ex:Landroid/os/RemoteException;
    iput-boolean v9, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKey:Z

    goto :goto_2
.end method

.method synthetic constructor <init>(Landroid/content/Context;Landroid/view/ViewConfiguration$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/view/ViewConfiguration;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static get(Landroid/content/Context;)Landroid/view/ViewConfiguration;
    .locals 6
    .parameter "context"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    invoke-static {p0}, Landroid/view/ViewConfiguration$Injector;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .local v0, cfg:Landroid/view/ViewConfiguration;
    if-eqz v0, :cond_0

    .end local v0           #cfg:Landroid/view/ViewConfiguration;
    :goto_0
    return-object v0

    .restart local v0       #cfg:Landroid/view/ViewConfiguration;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .local v3, metrics:Landroid/util/DisplayMetrics;
    const/high16 v4, 0x42c8

    iget v5, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v5

    float-to-int v2, v4

    .local v2, density:I
    sget-object v4, Landroid/view/ViewConfiguration;->sConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewConfiguration;

    .local v1, configuration:Landroid/view/ViewConfiguration;
    if-nez v1, :cond_1

    new-instance v1, Landroid/view/ViewConfiguration;

    .end local v1           #configuration:Landroid/view/ViewConfiguration;
    invoke-direct {v1, p0}, Landroid/view/ViewConfiguration;-><init>(Landroid/content/Context;)V

    .restart local v1       #configuration:Landroid/view/ViewConfiguration;
    sget-object v4, Landroid/view/ViewConfiguration;->sConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static getDoubleTapSlop()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 534
    const/16 v0, 0x64

    return v0
.end method

.method public static getDoubleTapTimeout()I
    .locals 1

    .prologue
    .line 449
    const/16 v0, 0x12c

    return v0
.end method

.method public static getEdgeSlop()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 480
    const/16 v0, 0xc

    return v0
.end method

.method public static getFadingEdgeLength()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 384
    const/16 v0, 0xc

    return v0
.end method

.method public static getGlobalActionKeyTimeout()J
    .locals 2

    .prologue
    .line 669
    const-wide/16 v0, 0x1f4

    return-wide v0
.end method

.method public static getHoverTapSlop()I
    .locals 1

    .prologue
    .line 469
    const/16 v0, 0x14

    return v0
.end method

.method public static getHoverTapTimeout()I
    .locals 1

    .prologue
    .line 459
    const/16 v0, 0x96

    return v0
.end method

.method public static getJumpTapTimeout()I
    .locals 1

    .prologue
    .line 440
    const/16 v0, 0x1f4

    return v0
.end method

.method public static getKeyRepeatDelay()I
    .locals 1

    .prologue
    .line 422
    const/16 v0, 0x32

    return v0
.end method

.method public static getKeyRepeatTimeout()I
    .locals 1

    .prologue
    .line 415
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    return v0
.end method

.method public static getLongPressTimeout()I
    .locals 2

    .prologue
    .line 407
    const-string v0, "long_press_timeout"

    const/16 v1, 0x1f4

    invoke-static {v0, v1}, Landroid/app/AppGlobals;->getIntCoreSetting(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getMaximumDrawingCacheSize()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 622
    const v0, 0x177000

    return v0
.end method

.method public static getMaximumFlingVelocity()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 602
    const/16 v0, 0x1f40

    return v0
.end method

.method public static getMinimumFlingVelocity()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 585
    const/16 v0, 0x32

    return v0
.end method

.method public static getPressedStateDuration()I
    .locals 1

    .prologue
    .line 399
    const/16 v0, 0x40

    return v0
.end method

.method public static getScrollBarFadeDuration()I
    .locals 1

    .prologue
    .line 367
    const/16 v0, 0xfa

    return v0
.end method

.method public static getScrollBarSize()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 352
    const/16 v0, 0xa

    return v0
.end method

.method public static getScrollDefaultDelay()I
    .locals 1

    .prologue
    .line 374
    const/16 v0, 0x12c

    return v0
.end method

.method public static getScrollFriction()F
    .locals 1

    .prologue
    .line 679
    const v0, 0x3c75c28f

    return v0
.end method

.method public static getSendRecurringAccessibilityEventsInterval()J
    .locals 2

    .prologue
    .line 555
    const-wide/16 v0, 0x64

    return-wide v0
.end method

.method public static getTapTimeout()I
    .locals 1

    .prologue
    .line 431
    const/16 v0, 0xb4

    return v0
.end method

.method public static getTouchSlop()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 498
    const/16 v0, 0x10

    return v0
.end method

.method public static getWindowTouchSlop()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 567
    const/16 v0, 0x10

    return v0
.end method

.method public static getZoomControlsTimeout()J
    .locals 2

    .prologue
    .line 658
    const-wide/16 v0, 0xbb8

    return-wide v0
.end method


# virtual methods
.method public getScaledDoubleTapSlop()I
    .locals 1

    .prologue
    .line 542
    iget v0, p0, Landroid/view/ViewConfiguration;->mDoubleTapSlop:I

    return v0
.end method

.method public getScaledDoubleTapTouchSlop()I
    .locals 1

    .prologue
    .line 514
    iget v0, p0, Landroid/view/ViewConfiguration;->mDoubleTapTouchSlop:I

    return v0
.end method

.method public getScaledEdgeSlop()I
    .locals 1

    .prologue
    .line 488
    iget v0, p0, Landroid/view/ViewConfiguration;->mEdgeSlop:I

    return v0
.end method

.method public getScaledFadingEdgeLength()I
    .locals 1

    .prologue
    .line 391
    iget v0, p0, Landroid/view/ViewConfiguration;->mFadingEdgeLength:I

    return v0
.end method

.method public getScaledMaximumDrawingCacheSize()I
    .locals 1

    .prologue
    .line 631
    iget v0, p0, Landroid/view/ViewConfiguration;->mMaximumDrawingCacheSize:I

    return v0
.end method

.method public getScaledMaximumFlingVelocity()I
    .locals 1

    .prologue
    .line 609
    iget v0, p0, Landroid/view/ViewConfiguration;->mMaximumFlingVelocity:I

    return v0
.end method

.method public getScaledMinimumFlingVelocity()I
    .locals 1

    .prologue
    .line 592
    iget v0, p0, Landroid/view/ViewConfiguration;->mMinimumFlingVelocity:I

    return v0
.end method

.method public getScaledOverflingDistance()I
    .locals 1

    .prologue
    .line 647
    iget v0, p0, Landroid/view/ViewConfiguration;->mOverflingDistance:I

    return v0
.end method

.method public getScaledOverscrollDistance()I
    .locals 1

    .prologue
    .line 639
    iget v0, p0, Landroid/view/ViewConfiguration;->mOverscrollDistance:I

    return v0
.end method

.method public getScaledPagingTouchSlop()I
    .locals 1

    .prologue
    .line 522
    iget v0, p0, Landroid/view/ViewConfiguration;->mPagingTouchSlop:I

    return v0
.end method

.method public getScaledScrollBarSize()I
    .locals 1

    .prologue
    .line 360
    iget v0, p0, Landroid/view/ViewConfiguration;->mScrollbarSize:I

    return v0
.end method

.method public getScaledTouchSlop()I
    .locals 1

    .prologue
    .line 505
    iget v0, p0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    return v0
.end method

.method public getScaledWindowTouchSlop()I
    .locals 1

    .prologue
    .line 575
    iget v0, p0, Landroid/view/ViewConfiguration;->mWindowTouchSlop:I

    return v0
.end method

.method public hasPermanentMenuKey()Z
    .locals 1

    .prologue
    .line 695
    iget-boolean v0, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKey:Z

    return v0
.end method

.method public isFadingMarqueeEnabled()Z
    .locals 1

    .prologue
    .line 703
    iget-boolean v0, p0, Landroid/view/ViewConfiguration;->mFadingMarqueeEnabled:Z

    return v0
.end method
