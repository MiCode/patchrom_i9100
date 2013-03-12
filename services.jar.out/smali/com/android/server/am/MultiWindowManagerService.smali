.class public Lcom/android/server/am/MultiWindowManagerService;
.super Ljava/lang/Object;
.source "MultiWindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final TAG:Ljava/lang/String; = "MultiWindowManagerService"

.field private static mSelf:Lcom/android/server/am/MultiWindowManagerService;


# instance fields
.field private SPLIT_ZONE_LEFT:Z

.field private SPLIT_ZONE_RIGHT:Z

.field private mBehaviorBasedLaunch:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentLaunchMode:I

.field private mIgnoreIntentWindowMode:Z

.field private mLastDisplay:Landroid/graphics/Point;

.field private mLock:Ljava/lang/Object;

.field private mMinimizedSlotManager:Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;

.field private mSupportAllApps:Z

.field mSupportAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSupportControlbar:Z

.field mSupportType:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mWindowDefHeight:I

.field mWindowDefWidth:I

.field mWindowGap:I

.field private mWindowInfoMapByComponent:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowInfoMapByTaskId:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field mWindowMinimizedHeight:I

.field mWindowMinimizedWidth:I

.field mbLoadSupportControlbar:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/android/server/am/MultiWindowManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/server/am/MultiWindowManagerService;->$assertionsDisabled:Z

    .line 40
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/MultiWindowManagerService;->mSelf:Lcom/android/server/am/MultiWindowManagerService;

    return-void

    .line 36
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 75
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    .line 42
    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mIgnoreIntentWindowMode:Z

    .line 43
    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mBehaviorBasedLaunch:Z

    .line 44
    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportAllApps:Z

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentLaunchMode:I

    .line 47
    iput-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mLastDisplay:Landroid/graphics/Point;

    .line 49
    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowManagerService;->SPLIT_ZONE_LEFT:Z

    .line 50
    iput-boolean v2, p0, Lcom/android/server/am/MultiWindowManagerService;->SPLIT_ZONE_RIGHT:Z

    .line 64
    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    .line 65
    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowDefWidth:I

    .line 66
    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowDefHeight:I

    .line 67
    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedWidth:I

    .line 68
    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedHeight:I

    .line 70
    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mbLoadSupportControlbar:Z

    .line 71
    iput-boolean v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportControlbar:Z

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportAppList:Ljava/util/ArrayList;

    .line 73
    iput-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportType:Ljava/util/ArrayList;

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByTaskId:Ljava/util/HashMap;

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByComponent:Ljava/util/HashMap;

    .line 908
    new-instance v0, Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;

    invoke-direct {v0, p0}, Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;-><init>(Lcom/android/server/am/MultiWindowManagerService;)V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizedSlotManager:Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;

    .line 76
    iput-object p1, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    .line 77
    sput-object p0, Lcom/android/server/am/MultiWindowManagerService;->mSelf:Lcom/android/server/am/MultiWindowManagerService;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "image,video,application"

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportType:Ljava/util/ArrayList;

    .line 81
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/am/MultiWindowManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/am/MultiWindowManagerService$1;-><init>(Lcom/android/server/am/MultiWindowManagerService;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 88
    return-void
.end method

.method private calculateCascadeWindowPosition(Landroid/graphics/Rect;Landroid/os/Bundle;)V
    .locals 5
    .parameter "currentRect"
    .parameter "baseWinInfo"

    .prologue
    .line 577
    if-eqz p2, :cond_2

    .line 578
    const-string v2, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 579
    .local v0, baseSize:Landroid/graphics/Rect;
    if-nez v0, :cond_0

    .line 580
    const-string v2, "android.intent.extra.WINDOW_DEFAULT_SIZE"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .end local v0           #baseSize:Landroid/graphics/Rect;
    check-cast v0, Landroid/graphics/Rect;

    .line 583
    .restart local v0       #baseSize:Landroid/graphics/Rect;
    :cond_0
    if-eqz v0, :cond_2

    .line 584
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 585
    .local v1, fullscreen:Landroid/graphics/Point;
    invoke-static {v1}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getAppDisplaySize(Landroid/graphics/Point;)V

    .line 587
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    add-int/2addr v3, v4

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 591
    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    if-ge v2, v3, :cond_1

    .line 592
    iget v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 594
    :cond_1
    iget v2, v1, Landroid/graphics/Point;->y:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v2, v3, :cond_2

    .line 595
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 599
    .end local v0           #baseSize:Landroid/graphics/Rect;
    .end local v1           #fullscreen:Landroid/graphics/Point;
    :cond_2
    return-void
.end method

.method private calculateCascadeWindowSize(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Z)Landroid/graphics/Rect;
    .locals 10
    .parameter "current"
    .parameter "prev"
    .parameter "useDefault"

    .prologue
    .line 602
    iget v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowDefWidth:I

    .line 603
    .local v4, width:I
    iget v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowDefHeight:I

    .line 605
    .local v0, height:I
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {p0, v6, v7}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v5

    .line 606
    .local v5, winInfo:Landroid/os/Bundle;
    if-nez v5, :cond_0

    .line 607
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 608
    :try_start_0
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const/4 v9, 0x0

    invoke-virtual {p0, v6, v8, v9}, Lcom/android/server/am/MultiWindowManagerService;->getDefaultWindowInfoLocked(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5

    .line 609
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 611
    :cond_0
    if-eqz v5, :cond_3

    .line 612
    const-string v6, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 616
    .local v1, lastSize:Landroid/graphics/Rect;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    if-eqz p3, :cond_2

    .line 617
    :cond_1
    const-string v6, "android.intent.extra.WINDOW_DEFAULT_SIZE"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .end local v1           #lastSize:Landroid/graphics/Rect;
    check-cast v1, Landroid/graphics/Rect;

    .line 619
    .restart local v1       #lastSize:Landroid/graphics/Rect;
    :cond_2
    if-eqz v1, :cond_3

    .line 620
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 621
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 626
    .end local v1           #lastSize:Landroid/graphics/Rect;
    :cond_3
    new-instance v2, Landroid/graphics/Rect;

    iget v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    iget v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    iget v8, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    add-int/2addr v8, v4

    iget v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    add-int/2addr v9, v0

    invoke-direct {v2, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 629
    .local v2, rect:Landroid/graphics/Rect;
    if-eqz p2, :cond_4

    .line 630
    iget-object v6, p2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v7, p2, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {p0, v6, v7}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v3

    .line 631
    .local v3, topWinInfo:Landroid/os/Bundle;
    invoke-direct {p0, v2, v3}, Lcom/android/server/am/MultiWindowManagerService;->calculateCascadeWindowPosition(Landroid/graphics/Rect;Landroid/os/Bundle;)V

    .line 634
    .end local v3           #topWinInfo:Landroid/os/Bundle;
    :cond_4
    return-object v2

    .line 609
    .end local v2           #rect:Landroid/graphics/Rect;
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method private calculateRotatedPosition(Landroid/os/Bundle;Landroid/graphics/Point;)V
    .locals 15
    .parameter "winInfo"
    .parameter "fullscreen"

    .prologue
    .line 548
    const-string v11, "android.intent.extra.WINDOW_LAST_SIZE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 549
    .local v3, lastSize:Landroid/graphics/Rect;
    if-nez v3, :cond_0

    .line 550
    const-string v11, "android.intent.extra.WINDOW_DEFAULT_SIZE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    .end local v3           #lastSize:Landroid/graphics/Rect;
    check-cast v3, Landroid/graphics/Rect;

    .line 553
    .restart local v3       #lastSize:Landroid/graphics/Rect;
    :cond_0
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 555
    .local v4, nextPoint:Landroid/graphics/Point;
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v11

    int-to-double v11, v11

    iget-object v13, p0, Lcom/android/server/am/MultiWindowManagerService;->mLastDisplay:Landroid/graphics/Point;

    iget v13, v13, Landroid/graphics/Point;->x:I

    int-to-double v13, v13

    div-double v5, v11, v13

    .line 556
    .local v5, relativeRateX:D
    iget v11, v3, Landroid/graphics/Rect;->top:I

    int-to-double v11, v11

    iget-object v13, p0, Lcom/android/server/am/MultiWindowManagerService;->mLastDisplay:Landroid/graphics/Point;

    iget v13, v13, Landroid/graphics/Point;->y:I

    int-to-double v13, v13

    div-double v7, v11, v13

    .line 558
    .local v7, relativeRateY:D
    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/Point;->x:I

    int-to-double v11, v11

    mul-double/2addr v11, v5

    double-to-int v1, v11

    .line 559
    .local v1, calculatedReferencePointX:I
    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/Point;->y:I

    int-to-double v11, v11

    mul-double/2addr v11, v7

    double-to-int v2, v11

    .line 561
    .local v2, calculatedReferencePointY:I
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    sub-int v11, v1, v11

    iput v11, v4, Landroid/graphics/Point;->x:I

    .line 562
    iput v2, v4, Landroid/graphics/Point;->y:I

    .line 565
    iget v11, v4, Landroid/graphics/Point;->x:I

    iget v12, v3, Landroid/graphics/Rect;->left:I

    sub-int v9, v11, v12

    .line 566
    .local v9, xDiff:I
    iget v11, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v11, v9

    iput v11, v3, Landroid/graphics/Rect;->left:I

    .line 567
    iget v11, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v11, v9

    iput v11, v3, Landroid/graphics/Rect;->right:I

    .line 570
    iget v11, v4, Landroid/graphics/Point;->y:I

    iget v12, v3, Landroid/graphics/Rect;->top:I

    sub-int v10, v11, v12

    .line 571
    .local v10, yDiff:I
    iget v11, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v11, v10

    iput v11, v3, Landroid/graphics/Rect;->top:I

    .line 572
    iget v11, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v11, v10

    iput v11, v3, Landroid/graphics/Rect;->bottom:I

    .line 573
    return-void
.end method

.method private generateMinimizedOffset(I)Landroid/graphics/Point;
    .locals 9
    .parameter "index"

    .prologue
    .line 971
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 972
    .local v0, fullscreen:Landroid/graphics/Point;
    invoke-static {v0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getAppDisplaySize(Landroid/graphics/Point;)V

    .line 974
    iget v6, v0, Landroid/graphics/Point;->x:I

    iget v7, v0, Landroid/graphics/Point;->y:I

    if-le v6, v7, :cond_0

    iget v1, v0, Landroid/graphics/Point;->y:I

    .line 975
    .local v1, shortSize:I
    :goto_0
    mul-int/lit16 v6, v1, 0xa0

    sget v7, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    div-int v2, v6, v7

    .line 980
    .local v2, shortSizeDp:I
    const/16 v6, 0x258

    if-ge v2, v6, :cond_1

    .line 981
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x105000a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 982
    .local v3, statusbarHeight:I
    const/4 v4, 0x2

    .line 983
    .local v4, x:I
    iget v6, v0, Landroid/graphics/Point;->y:I

    iget v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedHeight:I

    add-int/lit8 v7, v7, 0x2

    add-int/lit8 v8, p1, 0x1

    mul-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x6

    sub-int/2addr v6, v7

    sub-int v5, v6, v3

    .line 994
    .end local v3           #statusbarHeight:I
    .local v5, y:I
    :goto_1
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    return-object v6

    .line 974
    .end local v1           #shortSize:I
    .end local v2           #shortSizeDp:I
    .end local v4           #x:I
    .end local v5           #y:I
    :cond_0
    iget v1, v0, Landroid/graphics/Point;->x:I

    goto :goto_0

    .line 986
    .restart local v1       #shortSize:I
    .restart local v2       #shortSizeDp:I
    :cond_1
    iget v6, v0, Landroid/graphics/Point;->x:I

    iget v7, v0, Landroid/graphics/Point;->y:I

    if-lt v6, v7, :cond_2

    .line 987
    iget v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedWidth:I

    add-int/lit8 v6, v6, 0x6

    rem-int/lit8 v7, p1, 0x3

    mul-int/2addr v6, v7

    add-int/lit8 v4, v6, 0x2

    .line 988
    .restart local v4       #x:I
    iget v6, v0, Landroid/graphics/Point;->y:I

    iget v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedHeight:I

    add-int/lit8 v7, v7, 0x2

    div-int/lit8 v8, p1, 0x3

    add-int/lit8 v8, v8, 0x1

    mul-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x6

    sub-int v5, v6, v7

    .restart local v5       #y:I
    goto :goto_1

    .line 990
    .end local v4           #x:I
    .end local v5           #y:I
    :cond_2
    iget v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedWidth:I

    add-int/lit8 v6, v6, 0x6

    rem-int/lit8 v7, p1, 0x2

    mul-int/2addr v6, v7

    add-int/lit8 v4, v6, 0x2

    .line 991
    .restart local v4       #x:I
    iget v6, v0, Landroid/graphics/Point;->y:I

    iget v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedHeight:I

    add-int/lit8 v7, v7, 0x2

    div-int/lit8 v8, p1, 0x2

    add-int/lit8 v8, v8, 0x1

    mul-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x6

    sub-int v5, v6, v7

    .restart local v5       #y:I
    goto :goto_1
.end method

.method private getEmptySplitZone(Ljava/util/ArrayList;)I
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, frontActivities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/16 v7, 0x20

    .line 177
    const/4 v0, 0x0

    .line 178
    .local v0, emptyZone:I
    const/4 v3, 0x0

    .line 181
    .local v3, usedZone:I
    if-eqz p1, :cond_0

    .line 182
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 183
    .local v2, r:Lcom/android/server/am/ActivityRecord;
    iget v4, v2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    goto :goto_0

    .line 188
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #r:Lcom/android/server/am/ActivityRecord;
    :cond_0
    if-eqz v3, :cond_3

    .line 189
    xor-int/lit8 v4, v3, -0x1

    and-int/lit8 v0, v4, 0x1e

    .line 190
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 191
    and-int/lit8 v4, v0, 0x6

    if-eqz v4, :cond_4

    .line 193
    and-int/lit8 v0, v0, -0x19

    .line 194
    and-int/lit8 v4, v0, 0x6

    const/4 v6, 0x6

    if-ne v4, v6, :cond_2

    .line 196
    :try_start_0
    iget v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentLaunchMode:I

    if-eq v4, v7, :cond_1

    iget v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentLaunchMode:I

    const/16 v6, 0x10

    if-ne v4, v6, :cond_2

    .line 198
    :cond_1
    and-int/lit8 v0, v0, -0x5

    .line 207
    :cond_2
    :goto_1
    monitor-exit v5

    .line 209
    :cond_3
    return v0

    .line 200
    :cond_4
    and-int/lit8 v4, v0, 0x18

    const/16 v6, 0x18

    if-ne v4, v6, :cond_2

    .line 203
    iget v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentLaunchMode:I

    if-eq v4, v7, :cond_5

    iget v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentLaunchMode:I

    const/16 v6, 0x8

    if-ne v4, v6, :cond_2

    .line 205
    :cond_5
    and-int/lit8 v0, v0, -0x11

    goto :goto_1

    .line 207
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public static getSelf()Lcom/android/server/am/MultiWindowManagerService;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/android/server/am/MultiWindowManagerService;->mSelf:Lcom/android/server/am/MultiWindowManagerService;

    return-object v0
.end method


# virtual methods
.method public addWindowInfo(Lcom/android/server/am/ActivityRecord;Ljava/util/ArrayList;)V
    .locals 17
    .parameter "r"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActivityRecord;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 317
    .local p2, frontActivities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v10, v14, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 318
    .local v10, taskId:I
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 319
    .local v5, intent:Landroid/content/Intent;
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 320
    .local v4, info:Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    .line 322
    .local v6, realActivity:Landroid/content/ComponentName;
    const/4 v12, 0x0

    .line 324
    .local v12, topWinInfo:Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_0

    .line 325
    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ActivityRecord;

    .line 326
    .local v11, top:Lcom/android/server/am/ActivityRecord;
    if-eqz v11, :cond_0

    .line 327
    iget-object v14, v11, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v14, v14, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v15, v11, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v12

    .line 331
    .end local v11           #top:Lcom/android/server/am/ActivityRecord;
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v15

    .line 332
    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v12}, Lcom/android/server/am/MultiWindowManagerService;->getDefaultWindowInfoLocked(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v13

    .line 334
    .local v13, winInfodefault:Landroid/os/Bundle;
    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v14, v14, 0x4000

    if-nez v14, :cond_1

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v14}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v14

    const/high16 v16, 0x200

    move/from16 v0, v16

    if-ne v14, v0, :cond_1

    .line 336
    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v14, v14, 0xff

    if-eqz v14, :cond_3

    const/4 v8, 0x1

    .line 337
    .local v8, replace:Z
    :goto_0
    if-nez v8, :cond_1

    .line 338
    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v14, v14, -0x100

    move-object/from16 v0, p1

    iput v14, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 339
    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MultiWindowManagerService;->getNextSplitZone(Ljava/util/ArrayList;Lcom/android/server/am/ActivityRecord;)I

    move-result v16

    or-int v14, v14, v16

    move-object/from16 v0, p1

    iput v14, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 343
    .end local v8           #replace:Z
    :cond_1
    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v14, v14, 0xff

    if-eqz v14, :cond_4

    .line 344
    const-string v14, "android.intent.extra.WINDOW_LAST_SIZE"

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/sec/multiwindow/impl/MultiWindowManager;->calculateSplitWindowSize(I)Landroid/graphics/Rect;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v14, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 352
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByTaskId:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Bundle;

    .line 353
    .local v9, taskBundle:Landroid/os/Bundle;
    if-eqz v9, :cond_5

    .line 354
    invoke-virtual {v9, v13}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 359
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByComponent:Ljava/util/HashMap;

    invoke-virtual {v14, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 360
    .local v3, cmpBundle:Landroid/os/Bundle;
    if-eqz v3, :cond_6

    .line 361
    invoke-virtual {v3, v13}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 365
    :goto_3
    monitor-exit v15

    .line 366
    return-void

    .line 336
    .end local v3           #cmpBundle:Landroid/os/Bundle;
    .end local v9           #taskBundle:Landroid/os/Bundle;
    :cond_3
    const/4 v8, 0x0

    goto :goto_0

    .line 345
    :cond_4
    invoke-virtual {v5}, Landroid/content/Intent;->getWindowPosition()Landroid/graphics/Rect;

    move-result-object v14

    if-nez v14, :cond_2

    .line 348
    const-string v14, "android.intent.extra.WINDOW_DEFAULT_SIZE"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    .line 349
    .local v7, rect:Landroid/graphics/Rect;
    const-string v14, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual {v13, v14, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_1

    .line 365
    .end local v7           #rect:Landroid/graphics/Rect;
    .end local v13           #winInfodefault:Landroid/os/Bundle;
    :catchall_0
    move-exception v14

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v14

    .line 356
    .restart local v9       #taskBundle:Landroid/os/Bundle;
    .restart local v13       #winInfodefault:Landroid/os/Bundle;
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByTaskId:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 363
    .restart local v3       #cmpBundle:Landroid/os/Bundle;
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByComponent:Ljava/util/HashMap;

    invoke-virtual {v14, v6, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method

.method public arrangeWindowInfo(ILandroid/os/Bundle;)V
    .locals 11
    .parameter "windowMode"
    .parameter "winInfo"

    .prologue
    .line 934
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 935
    :try_start_0
    invoke-static {p1}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v1

    .line 936
    .local v1, mode:I
    const/high16 v5, 0x100

    if-ne v1, v5, :cond_0

    .line 937
    monitor-exit v6

    .line 968
    :goto_0
    return-void

    .line 939
    :cond_0
    invoke-static {p1}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v3

    .line 941
    .local v3, options:I
    and-int/lit16 v5, p1, 0xff

    if-eqz v5, :cond_1

    .line 942
    const-string v5, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-static {p1}, Landroid/sec/multiwindow/impl/MultiWindowManager;->calculateSplitWindowSize(I)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {p2, v5, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 946
    :cond_1
    const-string v5, "android.intent.extra.WINDOW_MINIMIZED_SLOT"

    const/4 v7, -0x1

    invoke-virtual {p2, v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 947
    .local v4, slot:I
    const/high16 v5, 0x10

    and-int/2addr v5, v3

    if-eqz v5, :cond_3

    .line 948
    if-gez v4, :cond_2

    .line 949
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizedSlotManager:Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;

    invoke-virtual {v5}, Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;->getSlot()I

    move-result v4

    .line 950
    const-string v5, "android.intent.extra.WINDOW_MINIMIZED_SLOT"

    invoke-virtual {p2, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 951
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizedSlotManager:Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;

    const/4 v7, 0x1

    invoke-virtual {v5, v4, v7}, Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;->setSlot(IZ)V

    .line 956
    :goto_1
    invoke-direct {p0, v4}, Lcom/android/server/am/MultiWindowManagerService;->generateMinimizedOffset(I)Landroid/graphics/Point;

    move-result-object v2

    .line 957
    .local v2, offset:Landroid/graphics/Point;
    new-instance v0, Landroid/graphics/Rect;

    iget v5, v2, Landroid/graphics/Point;->x:I

    iget v7, v2, Landroid/graphics/Point;->y:I

    iget v8, v2, Landroid/graphics/Point;->x:I

    iget v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedWidth:I

    add-int/2addr v8, v9

    iget v9, v2, Landroid/graphics/Point;->y:I

    iget v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedHeight:I

    add-int/2addr v9, v10

    invoke-direct {v0, v5, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 959
    .local v0, minimizedSize:Landroid/graphics/Rect;
    const-string v5, "android.intent.extra.WINDOW_MINIMIZED_SIZE"

    invoke-virtual {p2, v5, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 967
    .end local v0           #minimizedSize:Landroid/graphics/Rect;
    .end local v2           #offset:Landroid/graphics/Point;
    :goto_2
    monitor-exit v6

    goto :goto_0

    .end local v1           #mode:I
    .end local v3           #options:I
    .end local v4           #slot:I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 953
    .restart local v1       #mode:I
    .restart local v3       #options:I
    .restart local v4       #slot:I
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizedSlotManager:Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;

    const/4 v7, 0x1

    invoke-virtual {v5, v4, v7}, Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;->setSlot(IZ)V

    goto :goto_1

    .line 961
    :cond_3
    if-gez v4, :cond_4

    .line 962
    monitor-exit v6

    goto :goto_0

    .line 964
    :cond_4
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizedSlotManager:Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v7}, Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;->setSlot(IZ)V

    .line 965
    const-string v5, "android.intent.extra.WINDOW_MINIMIZED_SLOT"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public arrangeWindowInfos(IILjava/util/ArrayList;)V
    .locals 29
    .parameter "changes"
    .parameter "mode"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 658
    .local p3, frontActivities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    move-object/from16 v24, v0

    monitor-enter v24

    .line 659
    :try_start_0
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    .line 660
    .local v8, fullscreen:Landroid/graphics/Point;
    invoke-static {v8}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getAppDisplaySize(Landroid/graphics/Point;)V

    .line 662
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 663
    .local v4, N:I
    const/4 v7, 0x0

    .line 664
    .local v7, divideCount:I
    const/4 v10, 0x0

    .line 666
    .local v10, j:I
    const/high16 v23, 0x1000

    and-int v23, v23, p1

    if-eqz v23, :cond_1

    .line 667
    const/4 v11, 0x0

    .local v11, k:I
    :goto_0
    if-ge v11, v4, :cond_0

    .line 668
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/am/ActivityRecord;

    .line 669
    .local v18, r:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v23, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v22

    .line 670
    .local v22, winInfo:Landroid/os/Bundle;
    const-string v23, "android.intent.extra.WINDOW_OUT_OF_ARRANGE"

    const/16 v25, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 671
    const-string v23, "android.intent.extra.WINDOW_MINIMIZED_SLOT"

    invoke-virtual/range {v22 .. v23}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 667
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 673
    .end local v18           #r:Lcom/android/server/am/ActivityRecord;
    .end local v22           #winInfo:Landroid/os/Bundle;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizedSlotManager:Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;->clearSlots()V

    .line 675
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    if-ge v9, v4, :cond_3

    .line 676
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/am/ActivityRecord;

    .line 677
    .restart local v18       #r:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v23, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v22

    .line 678
    .restart local v22       #winInfo:Landroid/os/Bundle;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/am/MultiWindowManagerService;->generateMinimizedOffset(I)Landroid/graphics/Point;

    move-result-object v14

    .line 679
    .local v14, offset:Landroid/graphics/Point;
    new-instance v13, Landroid/graphics/Rect;

    iget v0, v14, Landroid/graphics/Point;->x:I

    move/from16 v23, v0

    iget v0, v14, Landroid/graphics/Point;->y:I

    move/from16 v25, v0

    iget v0, v14, Landroid/graphics/Point;->x:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedWidth:I

    move/from16 v27, v0

    add-int v26, v26, v27

    iget v0, v14, Landroid/graphics/Point;->y:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedHeight:I

    move/from16 v28, v0

    add-int v27, v27, v28

    move/from16 v0, v23

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-direct {v13, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 681
    .local v13, minimizedSize:Landroid/graphics/Rect;
    const-string v23, "android.intent.extra.WINDOW_MINIMIZED_SIZE"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v13}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 683
    const-string v23, "android.intent.extra.WINDOW_MINIMIZED_SLOT"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizedSlotManager:Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizedSlotManager:Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;->getSlot()I

    move-result v25

    const/16 v26, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;->setSlot(IZ)V

    .line 675
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 686
    .end local v9           #i:I
    .end local v11           #k:I
    .end local v13           #minimizedSize:Landroid/graphics/Rect;
    .end local v14           #offset:Landroid/graphics/Point;
    .end local v18           #r:Lcom/android/server/am/ActivityRecord;
    .end local v22           #winInfo:Landroid/os/Bundle;
    :cond_1
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x80

    move/from16 v23, v0

    if-eqz v23, :cond_3

    .line 687
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/MultiWindowManagerService;->loadDefaultWindowInfo()V

    .line 689
    const/4 v9, 0x0

    .restart local v9       #i:I
    :goto_2
    if-ge v9, v4, :cond_3

    .line 690
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/am/ActivityRecord;

    .line 691
    .restart local v18       #r:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v23, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v22

    .line 692
    .restart local v22       #winInfo:Landroid/os/Bundle;
    const-string v23, "android.intent.extra.WINDOW_MINIMIZED_SLOT"

    const/16 v25, -0x1

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v20

    .line 693
    .local v20, slot:I
    if-ltz v20, :cond_2

    .line 694
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/am/MultiWindowManagerService;->generateMinimizedOffset(I)Landroid/graphics/Point;

    move-result-object v14

    .line 695
    .restart local v14       #offset:Landroid/graphics/Point;
    new-instance v13, Landroid/graphics/Rect;

    iget v0, v14, Landroid/graphics/Point;->x:I

    move/from16 v23, v0

    iget v0, v14, Landroid/graphics/Point;->y:I

    move/from16 v25, v0

    iget v0, v14, Landroid/graphics/Point;->x:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedWidth:I

    move/from16 v27, v0

    add-int v26, v26, v27

    iget v0, v14, Landroid/graphics/Point;->y:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedHeight:I

    move/from16 v28, v0

    add-int v27, v27, v28

    move/from16 v0, v23

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-direct {v13, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 697
    .restart local v13       #minimizedSize:Landroid/graphics/Rect;
    const-string v23, "android.intent.extra.WINDOW_MINIMIZED_SIZE"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v13}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 689
    .end local v13           #minimizedSize:Landroid/graphics/Rect;
    .end local v14           #offset:Landroid/graphics/Point;
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 702
    .end local v9           #i:I
    .end local v18           #r:Lcom/android/server/am/ActivityRecord;
    .end local v20           #slot:I
    .end local v22           #winInfo:Landroid/os/Bundle;
    :cond_3
    const/16 v16, 0x0

    .line 703
    .local v16, prev:Lcom/android/server/am/ActivityRecord;
    move/from16 v0, p2

    and-int/lit16 v0, v0, -0x401

    move/from16 p2, v0

    .line 707
    const/16 v21, 0x3c

    .line 709
    .local v21, splitModeMask:I
    and-int v23, p2, v21

    if-eqz v23, :cond_8

    .line 710
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 711
    .local v5, arrangedActivities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    add-int/lit8 v9, v4, -0x1

    .restart local v9       #i:I
    :goto_3
    if-ltz v9, :cond_7

    .line 712
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/am/ActivityRecord;

    .line 713
    .restart local v18       #r:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v23, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v22

    .line 715
    .restart local v22       #winInfo:Landroid/os/Bundle;
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v15

    .line 716
    .local v15, option:I
    const/high16 v23, 0x80

    and-int v23, v23, v15

    if-nez v23, :cond_4

    const-string v23, "android.intent.extra.WINDOW_OUT_OF_ARRANGE"

    invoke-virtual/range {v22 .. v23}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_6

    .line 718
    :cond_4
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x80

    move/from16 v23, v0

    if-eqz v23, :cond_5

    .line 719
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v8}, Lcom/android/server/am/MultiWindowManagerService;->calculateRotatedPosition(Landroid/os/Bundle;Landroid/graphics/Point;)V

    .line 721
    :cond_5
    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 711
    :cond_6
    add-int/lit8 v9, v9, -0x1

    goto :goto_3

    .line 724
    .end local v15           #option:I
    .end local v18           #r:Lcom/android/server/am/ActivityRecord;
    .end local v22           #winInfo:Landroid/os/Bundle;
    :cond_7
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 725
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 728
    .end local v5           #arrangedActivities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v9           #i:I
    :cond_8
    sparse-switch p2, :sswitch_data_0

    .line 901
    :cond_9
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x80

    move/from16 v23, v0

    if-eqz v23, :cond_a

    .line 902
    new-instance v23, Landroid/graphics/Point;

    move-object/from16 v0, v23

    invoke-direct {v0, v8}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/MultiWindowManagerService;->mLastDisplay:Landroid/graphics/Point;

    .line 904
    :cond_a
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/MultiWindowManagerService;->mCurrentLaunchMode:I

    .line 905
    monitor-exit v24

    .line 906
    return-void

    .line 730
    :sswitch_0
    add-int/lit8 v9, v4, -0x1

    .restart local v9       #i:I
    :goto_4
    if-ltz v9, :cond_9

    .line 731
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/am/ActivityRecord;

    .line 732
    .restart local v18       #r:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v23, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v22

    .line 734
    .restart local v22       #winInfo:Landroid/os/Bundle;
    const-string v23, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual/range {v22 .. v23}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    .line 735
    .local v12, lastSize:Landroid/graphics/Rect;
    const-string v23, "android.intent.extra.WINDOW_DEFAULT_SIZE"

    invoke-virtual/range {v22 .. v23}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    .line 737
    .local v6, defaultSize:Landroid/graphics/Rect;
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v15

    .line 738
    .restart local v15       #option:I
    const/high16 v23, 0x80

    and-int v23, v23, v15

    if-nez v23, :cond_b

    const-string v23, "android.intent.extra.WINDOW_OUT_OF_ARRANGE"

    invoke-virtual/range {v22 .. v23}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_d

    .line 740
    :cond_b
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x80

    move/from16 v23, v0

    if-eqz v23, :cond_c

    .line 741
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v8}, Lcom/android/server/am/MultiWindowManagerService;->calculateRotatedPosition(Landroid/os/Bundle;Landroid/graphics/Point;)V

    .line 750
    :cond_c
    :goto_5
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v23, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v25

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/MultiWindowManagerService;->updateWindowInfo(ILandroid/content/ComponentName;Landroid/os/Bundle;)V

    .line 730
    add-int/lit8 v9, v9, -0x1

    goto :goto_4

    .line 742
    :cond_d
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x80

    move/from16 v23, v0

    if-eqz v23, :cond_e

    invoke-virtual {v12, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_e

    .line 744
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v8}, Lcom/android/server/am/MultiWindowManagerService;->calculateRotatedPosition(Landroid/os/Bundle;Landroid/graphics/Point;)V

    goto :goto_5

    .line 905
    .end local v4           #N:I
    .end local v6           #defaultSize:Landroid/graphics/Rect;
    .end local v7           #divideCount:I
    .end local v8           #fullscreen:Landroid/graphics/Point;
    .end local v9           #i:I
    .end local v10           #j:I
    .end local v12           #lastSize:Landroid/graphics/Rect;
    .end local v15           #option:I
    .end local v16           #prev:Lcom/android/server/am/ActivityRecord;
    .end local v18           #r:Lcom/android/server/am/ActivityRecord;
    .end local v21           #splitModeMask:I
    .end local v22           #winInfo:Landroid/os/Bundle;
    :catchall_0
    move-exception v23

    monitor-exit v24
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v23

    .line 746
    .restart local v4       #N:I
    .restart local v6       #defaultSize:Landroid/graphics/Rect;
    .restart local v7       #divideCount:I
    .restart local v8       #fullscreen:Landroid/graphics/Point;
    .restart local v9       #i:I
    .restart local v10       #j:I
    .restart local v12       #lastSize:Landroid/graphics/Rect;
    .restart local v15       #option:I
    .restart local v16       #prev:Lcom/android/server/am/ActivityRecord;
    .restart local v18       #r:Lcom/android/server/am/ActivityRecord;
    .restart local v21       #splitModeMask:I
    .restart local v22       #winInfo:Landroid/os/Bundle;
    :cond_e
    :try_start_1
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    and-int/lit8 v23, v23, -0x1f

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 747
    const-string v25, "android.intent.extra.WINDOW_LAST_SIZE"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentLaunchMode:I

    move/from16 v23, v0

    move/from16 v0, p2

    move/from16 v1, v23

    if-eq v0, v1, :cond_f

    const/16 v23, 0x1

    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/MultiWindowManagerService;->calculateCascadeWindowSize(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Z)Landroid/graphics/Rect;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 748
    move-object/from16 v16, v18

    goto :goto_5

    .line 747
    :cond_f
    const/16 v23, 0x0

    goto :goto_6

    .line 754
    .end local v6           #defaultSize:Landroid/graphics/Rect;
    .end local v9           #i:I
    .end local v12           #lastSize:Landroid/graphics/Rect;
    .end local v15           #option:I
    .end local v18           #r:Lcom/android/server/am/ActivityRecord;
    .end local v22           #winInfo:Landroid/os/Bundle;
    :sswitch_1
    const/4 v7, 0x2

    .line 755
    rem-int/lit8 v23, v4, 0x2

    if-nez v23, :cond_11

    const/4 v10, 0x1

    .line 756
    :goto_7
    add-int/lit8 v9, v4, -0x1

    .restart local v9       #i:I
    :goto_8
    if-ltz v9, :cond_9

    .line 757
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/am/ActivityRecord;

    .line 758
    .restart local v18       #r:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v23, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v22

    .line 760
    .restart local v22       #winInfo:Landroid/os/Bundle;
    const/high16 v23, 0x1000

    and-int v23, v23, p1

    if-eqz v23, :cond_10

    .line 761
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    and-int/lit8 v23, v23, -0x1f

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 762
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v25, v0

    rem-int v23, v10, v7

    if-nez v23, :cond_12

    const/16 v23, 0x6

    :goto_9
    or-int v23, v23, v25

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 765
    :cond_10
    const-string v23, "android.intent.extra.WINDOW_LAST_SIZE"

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/sec/multiwindow/impl/MultiWindowManager;->calculateSplitWindowSize(I)Landroid/graphics/Rect;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 767
    add-int/lit8 v23, v10, 0x1

    rem-int v10, v23, v7

    .line 756
    add-int/lit8 v9, v9, -0x1

    goto :goto_8

    .line 755
    .end local v9           #i:I
    .end local v18           #r:Lcom/android/server/am/ActivityRecord;
    .end local v22           #winInfo:Landroid/os/Bundle;
    :cond_11
    const/4 v10, 0x0

    goto :goto_7

    .line 762
    .restart local v9       #i:I
    .restart local v18       #r:Lcom/android/server/am/ActivityRecord;
    .restart local v22       #winInfo:Landroid/os/Bundle;
    :cond_12
    const/16 v23, 0x18

    goto :goto_9

    .line 771
    .end local v9           #i:I
    .end local v18           #r:Lcom/android/server/am/ActivityRecord;
    .end local v22           #winInfo:Landroid/os/Bundle;
    :sswitch_2
    const/4 v7, 0x3

    .line 772
    add-int/lit8 v9, v4, -0x1

    .restart local v9       #i:I
    :goto_a
    if-ltz v9, :cond_9

    .line 773
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/am/ActivityRecord;

    .line 774
    .restart local v18       #r:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v23, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v22

    .line 776
    .restart local v22       #winInfo:Landroid/os/Bundle;
    const/high16 v23, 0x1000

    and-int v23, v23, p1

    if-eqz v23, :cond_13

    .line 777
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    and-int/lit8 v23, v23, -0x1f

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 778
    rem-int v10, v9, v7

    .line 779
    rem-int v23, v10, v7

    if-nez v23, :cond_14

    .line 780
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    or-int/lit8 v23, v23, 0x6

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 787
    :cond_13
    :goto_b
    const-string v23, "android.intent.extra.WINDOW_LAST_SIZE"

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/sec/multiwindow/impl/MultiWindowManager;->calculateSplitWindowSize(I)Landroid/graphics/Rect;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 772
    add-int/lit8 v9, v9, -0x1

    goto :goto_a

    .line 781
    :cond_14
    rem-int v23, v10, v7

    const/16 v25, 0x1

    move/from16 v0, v23

    move/from16 v1, v25

    if-ne v0, v1, :cond_15

    .line 782
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    or-int/lit8 v23, v23, 0x8

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto :goto_b

    .line 784
    :cond_15
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    or-int/lit8 v23, v23, 0x10

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto :goto_b

    .line 791
    .end local v9           #i:I
    .end local v18           #r:Lcom/android/server/am/ActivityRecord;
    .end local v22           #winInfo:Landroid/os/Bundle;
    :sswitch_3
    const/4 v7, 0x3

    .line 792
    add-int/lit8 v9, v4, -0x1

    .restart local v9       #i:I
    :goto_c
    if-ltz v9, :cond_9

    .line 793
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/am/ActivityRecord;

    .line 794
    .restart local v18       #r:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v23, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v22

    .line 796
    .restart local v22       #winInfo:Landroid/os/Bundle;
    const/high16 v23, 0x1000

    and-int v23, v23, p1

    if-eqz v23, :cond_16

    .line 797
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    and-int/lit8 v23, v23, -0x1f

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 798
    rem-int v10, v9, v7

    .line 799
    rem-int v23, v10, v7

    if-nez v23, :cond_17

    .line 800
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    or-int/lit8 v23, v23, 0x2

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 807
    :cond_16
    :goto_d
    const-string v23, "android.intent.extra.WINDOW_LAST_SIZE"

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/sec/multiwindow/impl/MultiWindowManager;->calculateSplitWindowSize(I)Landroid/graphics/Rect;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 792
    add-int/lit8 v9, v9, -0x1

    goto :goto_c

    .line 801
    :cond_17
    rem-int v23, v10, v7

    const/16 v25, 0x1

    move/from16 v0, v23

    move/from16 v1, v25

    if-ne v0, v1, :cond_18

    .line 802
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    or-int/lit8 v23, v23, 0x4

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto :goto_d

    .line 804
    :cond_18
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    or-int/lit8 v23, v23, 0x18

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto :goto_d

    .line 811
    .end local v9           #i:I
    .end local v18           #r:Lcom/android/server/am/ActivityRecord;
    .end local v22           #winInfo:Landroid/os/Bundle;
    :sswitch_4
    const/4 v7, 0x4

    .line 812
    const/4 v9, 0x0

    .restart local v9       #i:I
    :goto_e
    if-ge v9, v4, :cond_9

    .line 813
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/am/ActivityRecord;

    .line 814
    .restart local v18       #r:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v23, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v22

    .line 816
    .restart local v22       #winInfo:Landroid/os/Bundle;
    const/high16 v23, 0x1000

    and-int v23, v23, p1

    if-eqz v23, :cond_19

    .line 817
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    and-int/lit8 v23, v23, -0x1f

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 818
    rem-int v10, v9, v7

    .line 819
    rem-int v23, v10, v7

    if-nez v23, :cond_1a

    .line 820
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    or-int/lit8 v23, v23, 0x2

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 829
    :cond_19
    :goto_f
    const-string v23, "android.intent.extra.WINDOW_LAST_SIZE"

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/sec/multiwindow/impl/MultiWindowManager;->calculateSplitWindowSize(I)Landroid/graphics/Rect;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 812
    add-int/lit8 v9, v9, 0x1

    goto :goto_e

    .line 821
    :cond_1a
    rem-int v23, v10, v7

    const/16 v25, 0x1

    move/from16 v0, v23

    move/from16 v1, v25

    if-ne v0, v1, :cond_1b

    .line 822
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    or-int/lit8 v23, v23, 0x4

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto :goto_f

    .line 823
    :cond_1b
    rem-int v23, v10, v7

    const/16 v25, 0x2

    move/from16 v0, v23

    move/from16 v1, v25

    if-ne v0, v1, :cond_1c

    .line 824
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    or-int/lit8 v23, v23, 0x8

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto :goto_f

    .line 826
    :cond_1c
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    or-int/lit8 v23, v23, 0x10

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto :goto_f

    .line 833
    .end local v9           #i:I
    .end local v18           #r:Lcom/android/server/am/ActivityRecord;
    .end local v22           #winInfo:Landroid/os/Bundle;
    :sswitch_5
    add-int/lit8 v9, v4, -0x1

    .restart local v9       #i:I
    :goto_10
    if-ltz v9, :cond_9

    .line 834
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/am/ActivityRecord;

    .line 836
    .restart local v18       #r:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    and-int/lit8 v23, v23, -0x1f

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 833
    add-int/lit8 v9, v9, -0x1

    goto :goto_10

    .line 841
    .end local v9           #i:I
    .end local v18           #r:Lcom/android/server/am/ActivityRecord;
    :sswitch_6
    const/high16 v23, 0x1000

    and-int v23, v23, p1

    if-nez v23, :cond_9

    .line 842
    add-int/lit8 v9, v4, -0x1

    .restart local v9       #i:I
    :goto_11
    if-ltz v9, :cond_9

    .line 843
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/am/ActivityRecord;

    .line 844
    .restart local v18       #r:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v23, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v22

    .line 846
    .restart local v22       #winInfo:Landroid/os/Bundle;
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x80

    move/from16 v23, v0

    if-eqz v23, :cond_1d

    .line 847
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v8}, Lcom/android/server/am/MultiWindowManagerService;->calculateRotatedPosition(Landroid/os/Bundle;Landroid/graphics/Point;)V

    .line 842
    :cond_1d
    add-int/lit8 v9, v9, -0x1

    goto :goto_11

    .line 852
    .end local v9           #i:I
    .end local v18           #r:Lcom/android/server/am/ActivityRecord;
    .end local v22           #winInfo:Landroid/os/Bundle;
    :sswitch_7
    const/16 v23, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/am/ActivityRecord;

    .line 853
    .restart local v18       #r:Lcom/android/server/am/ActivityRecord;
    const/16 v19, 0x1

    .line 854
    .local v19, restored:Z
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v23, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v22

    .line 855
    .restart local v22       #winInfo:Landroid/os/Bundle;
    const-string v23, "android.intent.extra.REQUEST_WINDOW_MODE"

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v25

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v17

    .line 856
    .local v17, prevOption:I
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    const/high16 v25, 0x10

    and-int v23, v23, v25

    if-eqz v23, :cond_1f

    .line 857
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    const v25, -0x100001

    and-int v23, v23, v25

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 858
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    const v25, -0x800001

    and-int v23, v23, v25

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 869
    :goto_12
    const-string v23, "android.intent.extra.WINDOW_LAST_SIZE"

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/sec/multiwindow/impl/MultiWindowManager;->calculateSplitWindowSize(I)Landroid/graphics/Rect;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 871
    const/4 v9, 0x1

    .restart local v9       #i:I
    :goto_13
    if-ge v9, v4, :cond_9

    .line 872
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    .end local v18           #r:Lcom/android/server/am/ActivityRecord;
    check-cast v18, Lcom/android/server/am/ActivityRecord;

    .line 873
    .restart local v18       #r:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v23, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v22

    .line 874
    if-eqz v19, :cond_21

    .line 875
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    const v25, -0x800001

    and-int v23, v23, v25

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 876
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    const v25, -0x100001

    and-int v23, v23, v25

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 877
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    const/16 v25, 0x1e

    move/from16 v0, v23

    move/from16 v1, v25

    if-ne v0, v1, :cond_1e

    .line 878
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    move/from16 v0, v23

    and-int/lit16 v0, v0, -0x100

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 879
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    const-string v25, "android.intent.extra.REQUEST_WINDOW_MODE"

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v26

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v25

    or-int v23, v23, v25

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 871
    :cond_1e
    :goto_14
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_13

    .line 860
    .end local v9           #i:I
    :cond_1f
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    const/16 v25, 0x1e

    move/from16 v0, v23

    move/from16 v1, v25

    if-ne v0, v1, :cond_20

    .line 861
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    move/from16 v0, v23

    and-int/lit16 v0, v0, -0x100

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 862
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    or-int v23, v23, v17

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto/16 :goto_12

    .line 864
    :cond_20
    const/16 v19, 0x0

    .line 865
    const-string v23, "android.intent.extra.REQUEST_WINDOW_MODE"

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v25

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 866
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    or-int/lit8 v23, v23, 0x1e

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto/16 :goto_12

    .line 882
    .restart local v9       #i:I
    :cond_21
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    const/high16 v25, 0x80

    or-int v23, v23, v25

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 883
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    const/high16 v25, 0x10

    or-int v23, v23, v25

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto/16 :goto_14

    .line 888
    .end local v9           #i:I
    .end local v17           #prevOption:I
    .end local v18           #r:Lcom/android/server/am/ActivityRecord;
    .end local v19           #restored:Z
    .end local v22           #winInfo:Landroid/os/Bundle;
    :sswitch_8
    const/4 v9, 0x0

    .restart local v9       #i:I
    :goto_15
    if-ge v9, v4, :cond_9

    .line 889
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/am/ActivityRecord;

    .line 890
    .restart local v18       #r:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v23, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v22

    .line 891
    .restart local v22       #winInfo:Landroid/os/Bundle;
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    if-eqz v23, :cond_23

    .line 892
    const-string v23, "android.intent.extra.WINDOW_LAST_SIZE"

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/sec/multiwindow/impl/MultiWindowManager;->calculateSplitWindowSize(I)Landroid/graphics/Rect;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 888
    :cond_22
    :goto_16
    add-int/lit8 v9, v9, 0x1

    goto :goto_15

    .line 893
    :cond_23
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x80

    move/from16 v23, v0

    if-eqz v23, :cond_22

    .line 894
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v8}, Lcom/android/server/am/MultiWindowManagerService;->calculateRotatedPosition(Landroid/os/Bundle;Landroid/graphics/Point;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_16

    .line 728
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_8
        0x2 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_2
        0x10 -> :sswitch_3
        0x20 -> :sswitch_4
        0x40 -> :sswitch_7
        0x80 -> :sswitch_6
        0x100 -> :sswitch_6
        0x200 -> :sswitch_5
    .end sparse-switch
.end method

.method public calculateControlbar(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Rect;
    .locals 7
    .parameter "r"

    .prologue
    .line 638
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v3, v5, Landroid/content/res/Configuration;->orientation:I

    .line 639
    .local v3, orientation:I
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v5, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v4

    .line 640
    .local v4, winInfo:Landroid/os/Bundle;
    const-string v5, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 641
    .local v2, lastSize:Landroid/graphics/Rect;
    if-nez v2, :cond_0

    .line 642
    const-string v5, "android.intent.extra.WINDOW_DEFAULT_SIZE"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    .end local v2           #lastSize:Landroid/graphics/Rect;
    check-cast v2, Landroid/graphics/Rect;

    .line 645
    .restart local v2       #lastSize:Landroid/graphics/Rect;
    :cond_0
    const/4 v1, 0x0

    .line 646
    .local v1, centerBarRect:Landroid/graphics/Rect;
    const/4 v5, 0x1

    if-ne v3, v5, :cond_2

    .line 647
    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    .line 648
    .local v0, boundary:I
    new-instance v1, Landroid/graphics/Rect;

    .end local v1           #centerBarRect:Landroid/graphics/Rect;
    iget v5, v2, Landroid/graphics/Rect;->left:I

    iget v6, v2, Landroid/graphics/Rect;->right:I

    invoke-direct {v1, v5, v0, v6, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 654
    .end local v0           #boundary:I
    .restart local v1       #centerBarRect:Landroid/graphics/Rect;
    :cond_1
    :goto_0
    return-object v1

    .line 649
    :cond_2
    const/4 v5, 0x2

    if-ne v3, v5, :cond_1

    .line 650
    iget v5, v2, Landroid/graphics/Rect;->right:I

    iget v6, v2, Landroid/graphics/Rect;->left:I

    sub-int v0, v5, v6

    .line 651
    .restart local v0       #boundary:I
    new-instance v1, Landroid/graphics/Rect;

    .end local v1           #centerBarRect:Landroid/graphics/Rect;
    iget v5, v2, Landroid/graphics/Rect;->top:I

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v1, v0, v5, v0, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v1       #centerBarRect:Landroid/graphics/Rect;
    goto :goto_0
.end method

.method public checkBehaviorBasedLaunch()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mBehaviorBasedLaunch:Z

    return v0
.end method

.method public checkIdleStateNow(Ljava/util/ArrayList;Lcom/android/server/am/ActivityRecord;)Z
    .locals 6
    .parameter
    .parameter "r"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;",
            "Lcom/android/server/am/ActivityRecord;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 303
    .local p1, resumedActivities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/4 v4, 0x0

    .line 304
    .local v4, zoneInfo:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 305
    .local v0, N:I
    add-int/lit8 v3, v0, -0x1

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_0

    .line 306
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 307
    .local v1, ar:Lcom/android/server/am/ActivityRecord;
    iget v5, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    .line 305
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 309
    .end local v1           #ar:Lcom/android/server/am/ActivityRecord;
    :cond_0
    iget v5, p2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v5}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v2

    .line 310
    .local v2, currentWindowMode:I
    const/16 v5, 0x1e

    if-eq v4, v5, :cond_1

    const/high16 v5, 0x200

    if-ne v2, v5, :cond_2

    .line 311
    :cond_1
    const/4 v5, 0x1

    .line 313
    :goto_1
    return v5

    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public checkIgnoreIntentWindowMode()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mIgnoreIntentWindowMode:Z

    return v0
.end method

.method public checkSupportAllApps()Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportAllApps:Z

    return v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 95
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 96
    :try_start_0
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 97
    const-string v0, "----------------------------------------------------------------------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 98
    const-string v0, "MULTIWINDOW SERVICE (dumpsys multiwindow service)"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 100
    const-string v0, "----------------------------------------------------------------------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 101
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 102
    monitor-exit v1

    .line 103
    return-void

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCurrentLaunchMode()I
    .locals 2

    .prologue
    .line 171
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 172
    :try_start_0
    iget v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentLaunchMode:I

    monitor-exit v1

    return v0

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDefaultWindowInfoLocked(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 24
    .parameter "info"
    .parameter "intent"
    .parameter "topWinInfo"

    .prologue
    .line 482
    const/4 v5, 0x0

    .line 483
    .local v5, defWidth:I
    const/4 v3, 0x0

    .line 484
    .local v3, defHeight:I
    const/4 v12, 0x0

    .line 485
    .local v12, minWidth:I
    const/4 v10, 0x0

    .line 486
    .local v10, minHeight:I
    const/4 v14, 0x0

    .line 487
    .local v14, r:Landroid/content/res/Resources;
    new-instance v16, Landroid/os/Bundle;

    invoke-direct/range {v16 .. v16}, Landroid/os/Bundle;-><init>()V

    .line 488
    .local v16, winInfo:Landroid/os/Bundle;
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    .line 489
    .local v7, fullscreen:Landroid/graphics/Point;
    invoke-static {v7}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getAppDisplaySize(Landroid/graphics/Point;)V

    .line 491
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v18, v0

    if-eqz v18, :cond_9

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v9, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 493
    .local v9, metaData:Landroid/os/Bundle;
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v14

    .line 494
    if-eqz v9, :cond_3

    .line 495
    const-string v18, "com.sec.android.multiwindow.DEFAULT_SIZE_W"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 496
    .local v4, defSizeId:I
    if-eqz v4, :cond_0

    .line 497
    invoke-virtual {v14, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v5, v0

    .line 499
    :cond_0
    const-string v18, "com.sec.android.multiwindow.DEFAULT_SIZE_H"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 500
    if-eqz v4, :cond_1

    .line 501
    invoke-virtual {v14, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v3, v0

    .line 504
    :cond_1
    const-string v18, "com.sec.android.multiwindow.MINIMUM_SIZE_W"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 505
    .local v11, minSizeId:I
    if-eqz v11, :cond_2

    .line 506
    invoke-virtual {v14, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v12, v0

    .line 508
    :cond_2
    const-string v18, "com.sec.android.multiwindow.MINIMUM_SIZE_H"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 509
    if-eqz v11, :cond_3

    .line 510
    invoke-virtual {v14, v11}, Landroid/content/res/Resources;->getDimension(I)F
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v18

    move/from16 v0, v18

    float-to-int v10, v0

    .line 519
    .end local v4           #defSizeId:I
    .end local v11           #minSizeId:I
    :cond_3
    :goto_1
    if-nez v5, :cond_4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowDefWidth:I

    .line 520
    :cond_4
    if-nez v3, :cond_5

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowDefHeight:I

    .line 522
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isPhone(Landroid/content/Context;)Z

    move-result v18

    if-nez v18, :cond_7

    .line 523
    if-nez v12, :cond_6

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedWidth:I

    .line 524
    :cond_6
    if-nez v10, :cond_7

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedHeight:I

    .line 527
    :cond_7
    iget v0, v7, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    sub-int v18, v18, v5

    shr-int/lit8 v8, v18, 0x1

    .line 528
    .local v8, left:I
    iget v0, v7, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    sub-int v18, v18, v3

    shr-int/lit8 v15, v18, 0x1

    .line 529
    .local v15, top:I
    new-instance v17, Landroid/graphics/Rect;

    add-int v18, v8, v5

    add-int v19, v15, v3

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v8, v15, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 532
    .local v17, windowRect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/MultiWindowManagerService;->calculateCascadeWindowPosition(Landroid/graphics/Rect;Landroid/os/Bundle;)V

    .line 534
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getWindowPosition()Landroid/graphics/Rect;

    move-result-object v13

    .line 535
    .local v13, overridePosition:Landroid/graphics/Rect;
    if-eqz v13, :cond_8

    .line 536
    const-string v18, "android.intent.extra.WINDOW_LAST_SIZE"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v13}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 539
    :cond_8
    const-string v18, "android.intent.extra.WINDOW_DEFAULT_SIZE"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 540
    const-string v18, "android.intent.extra.WINDOW_MINIMUM_SIZE"

    new-instance v19, Landroid/graphics/Rect;

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2, v12, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 541
    const-string v18, "android.intent.extra.WINDOW_MINIMIZED_SIZE"

    new-instance v19, Landroid/graphics/Rect;

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedWidth:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedHeight:I

    move/from16 v23, v0

    invoke-direct/range {v19 .. v23}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 542
    const-string v19, "android.intent.extra.WINDOW_OUT_OF_ARRANGE"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentLaunchMode:I

    move/from16 v18, v0

    const/16 v20, 0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_a

    const/16 v18, 0x1

    :goto_2
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 544
    return-object v16

    .line 491
    .end local v8           #left:I
    .end local v9           #metaData:Landroid/os/Bundle;
    .end local v13           #overridePosition:Landroid/graphics/Rect;
    .end local v15           #top:I
    .end local v17           #windowRect:Landroid/graphics/Rect;
    :cond_9
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    goto/16 :goto_0

    .line 513
    .restart local v9       #metaData:Landroid/os/Bundle;
    :catch_0
    move-exception v6

    .line 514
    .local v6, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v6}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_1

    .line 515
    .end local v6           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v6

    .line 516
    .local v6, e:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v6}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto/16 :goto_1

    .line 542
    .end local v6           #e:Landroid/content/res/Resources$NotFoundException;
    .restart local v8       #left:I
    .restart local v13       #overridePosition:Landroid/graphics/Rect;
    .restart local v15       #top:I
    .restart local v17       #windowRect:Landroid/graphics/Rect;
    :cond_a
    const/16 v18, 0x0

    goto :goto_2
.end method

.method public getNextSplitZone(Ljava/util/ArrayList;Lcom/android/server/am/ActivityRecord;)I
    .locals 8
    .parameter
    .parameter "r"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;",
            "Lcom/android/server/am/ActivityRecord;",
            ")I"
        }
    .end annotation

    .prologue
    .local p1, frontActivities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/4 v7, 0x6

    .line 214
    const/4 v2, 0x0

    .line 215
    .local v2, topActivity:Lcom/android/server/am/ActivityRecord;
    const/4 v1, 0x0

    .line 216
    .local v1, splitZone:I
    invoke-direct {p0, p1}, Lcom/android/server/am/MultiWindowManagerService;->getEmptySplitZone(Ljava/util/ArrayList;)I

    move-result v1

    .line 219
    if-nez v1, :cond_2

    .line 220
    const/4 v3, 0x0

    .line 221
    .local v3, topWindowMode:I
    if-eqz p1, :cond_0

    .line 224
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 225
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 226
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #topActivity:Lcom/android/server/am/ActivityRecord;
    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 227
    .restart local v2       #topActivity:Lcom/android/server/am/ActivityRecord;
    iget v3, v2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 230
    :cond_0
    invoke-static {v3}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v0

    .line 232
    .local v0, options:I
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 234
    :try_start_0
    iget v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentLaunchMode:I

    sparse-switch v4, :sswitch_data_0

    .line 296
    :cond_1
    :goto_0
    monitor-exit v5

    .line 299
    .end local v0           #options:I
    .end local v3           #topWindowMode:I
    :cond_2
    return v1

    .line 236
    .restart local v0       #options:I
    .restart local v3       #topWindowMode:I
    :sswitch_0
    and-int/lit8 v4, v0, 0x6

    if-ne v4, v7, :cond_3

    .line 238
    const/16 v1, 0x18

    goto :goto_0

    .line 240
    :cond_3
    const/4 v1, 0x6

    .line 242
    goto :goto_0

    .line 244
    :sswitch_1
    and-int/lit8 v4, v0, 0x6

    if-ne v4, v7, :cond_4

    .line 246
    const/16 v1, 0x8

    goto :goto_0

    .line 247
    :cond_4
    and-int/lit8 v4, v0, 0x8

    if-eqz v4, :cond_5

    .line 248
    const/16 v1, 0x10

    goto :goto_0

    .line 249
    :cond_5
    and-int/lit8 v4, v0, 0x10

    if-eqz v4, :cond_6

    .line 250
    const/4 v1, 0x6

    goto :goto_0

    .line 252
    :cond_6
    const/4 v1, 0x6

    .line 254
    goto :goto_0

    .line 256
    :sswitch_2
    and-int/lit8 v4, v0, 0x2

    if-eqz v4, :cond_7

    .line 257
    const/4 v1, 0x4

    goto :goto_0

    .line 258
    :cond_7
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_8

    .line 259
    const/16 v1, 0x18

    goto :goto_0

    .line 260
    :cond_8
    and-int/lit8 v4, v0, 0x18

    const/16 v6, 0x18

    if-ne v4, v6, :cond_9

    .line 262
    const/4 v1, 0x2

    goto :goto_0

    .line 264
    :cond_9
    const/4 v1, 0x2

    .line 266
    goto :goto_0

    .line 268
    :sswitch_3
    and-int/lit8 v4, v0, 0x2

    if-eqz v4, :cond_a

    .line 269
    const/4 v1, 0x4

    goto :goto_0

    .line 270
    :cond_a
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_b

    .line 271
    const/16 v1, 0x8

    goto :goto_0

    .line 272
    :cond_b
    and-int/lit8 v4, v0, 0x8

    if-eqz v4, :cond_c

    .line 273
    const/16 v1, 0x10

    goto :goto_0

    .line 274
    :cond_c
    and-int/lit8 v4, v0, 0x10

    if-eqz v4, :cond_d

    .line 275
    const/4 v1, 0x2

    goto :goto_0

    .line 277
    :cond_d
    const/4 v1, 0x2

    .line 279
    goto :goto_0

    .line 281
    :sswitch_4
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isPhone(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz p2, :cond_1

    .line 282
    iget v4, p2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v4, v4, 0xff

    if-nez v4, :cond_1

    .line 283
    if-eqz v2, :cond_f

    const-string v4, "android"

    iget-object v6, v2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v4, :cond_e

    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-nez v4, :cond_f

    .line 284
    :cond_e
    and-int/lit16 v1, v0, 0xff

    goto :goto_0

    .line 286
    :cond_f
    and-int/lit8 v4, v0, 0x6

    if-ne v4, v7, :cond_10

    .line 287
    const/16 v1, 0x18

    goto/16 :goto_0

    .line 289
    :cond_10
    const/4 v1, 0x6

    goto/16 :goto_0

    .line 296
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 234
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x4 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x20 -> :sswitch_3
    .end sparse-switch
.end method

.method public getSupportLaunchFlag(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)I
    .locals 8
    .parameter "r"
    .parameter "source"
    .parameter "taskTop"

    .prologue
    const/high16 v7, 0x20

    .line 109
    const/4 v3, 0x0

    .line 110
    .local v3, launchFlags:I
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 112
    .local v1, intent:Landroid/content/Intent;
    if-eqz p2, :cond_0

    iget v5, p2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/2addr v5, v7

    if-nez v5, :cond_0

    move v4, v3

    .line 134
    .end local v3           #launchFlags:I
    .local v4, launchFlags:I
    :goto_0
    return v4

    .line 116
    .end local v4           #launchFlags:I
    .restart local v3       #launchFlags:I
    :cond_0
    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    .line 117
    .local v2, intentType:Ljava/lang/String;
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v5, :cond_1

    if-eqz v2, :cond_1

    .line 118
    const-string v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v0, v5, v6

    .line 119
    .local v0, contentType:Ljava/lang/String;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.intent.action.VIEW"

    if-ne v5, v6, :cond_1

    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportType:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 120
    iget v5, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/2addr v5, v7

    if-eqz v5, :cond_1

    .line 121
    const/high16 v5, 0x3000

    or-int/2addr v3, v5

    .line 123
    iget v5, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v5, v5, 0xff

    if-nez v5, :cond_1

    .line 124
    if-eqz p3, :cond_2

    iget-object v5, p3, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v5, v6, :cond_2

    .line 125
    iget v5, p3, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    iput v5, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .end local v0           #contentType:Ljava/lang/String;
    :cond_1
    :goto_1
    move v4, v3

    .line 134
    .end local v3           #launchFlags:I
    .restart local v4       #launchFlags:I
    goto :goto_0

    .line 126
    .end local v4           #launchFlags:I
    .restart local v0       #contentType:Ljava/lang/String;
    .restart local v3       #launchFlags:I
    :cond_2
    if-eqz p2, :cond_1

    .line 127
    const v5, 0x8000

    or-int/2addr v3, v5

    .line 128
    iget v5, p2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    iput v5, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto :goto_1
.end method

.method public getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;
    .locals 6
    .parameter "taskId"
    .parameter "realActivity"

    .prologue
    .line 138
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 139
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByTaskId:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 141
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByTaskId:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 142
    .local v2, taskBundle:Landroid/os/Bundle;
    const-string v3, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 143
    .local v1, lastSize:Landroid/graphics/Rect;
    if-nez v1, :cond_0

    .line 144
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByComponent:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 146
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByComponent:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 147
    .local v0, cmpBundle:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 148
    const-string v3, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .end local v1           #lastSize:Landroid/graphics/Rect;
    check-cast v1, Landroid/graphics/Rect;

    .line 149
    .restart local v1       #lastSize:Landroid/graphics/Rect;
    if-eqz v1, :cond_0

    .line 150
    const-string v3, "android.intent.extra.WINDOW_LAST_SIZE"

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 155
    .end local v0           #cmpBundle:Landroid/os/Bundle;
    :cond_0
    monitor-exit v4

    .line 158
    .end local v1           #lastSize:Landroid/graphics/Rect;
    .end local v2           #taskBundle:Landroid/os/Bundle;
    :goto_0
    return-object v2

    .line 157
    :cond_1
    sget-boolean v3, Lcom/android/server/am/MultiWindowManagerService;->$assertionsDisabled:Z

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 159
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 158
    :cond_2
    :try_start_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getWindowInfoByComponent(Landroid/content/ComponentName;)Landroid/os/Bundle;
    .locals 1
    .parameter "realActivity"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByComponent:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByComponent:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 166
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportApp(Ljava/lang/String;)Z
    .locals 1
    .parameter "packageName"

    .prologue
    .line 474
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportAppList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 475
    :cond_0
    const/4 v0, 0x1

    .line 478
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportControlbar()Z
    .locals 2

    .prologue
    .line 465
    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mbLoadSupportControlbar:Z

    if-nez v0, :cond_0

    .line 466
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mbLoadSupportControlbar:Z

    .line 467
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110045

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportControlbar:Z

    .line 470
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportControlbar:Z

    return v0
.end method

.method public loadDefaultSupportedAppList()V
    .locals 11

    .prologue
    .line 442
    iget-object v8, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportAppList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 444
    iget-object v8, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x107003f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 445
    .local v7, supportAppList:[Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 446
    move-object v1, v7

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v6, v1, v4

    .line 447
    .local v6, supportApp:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportAppList:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 451
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #supportApp:Ljava/lang/String;
    :cond_0
    iget-object v8, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isPhone(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 452
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_MultiWindow_AddOnApp"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 453
    .local v2, cscAddOnApp:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 454
    new-instance v3, Ljava/util/ArrayList;

    const-string v8, ","

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 455
    .local v3, cscAddOnAppList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v3, :cond_1

    .line 456
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 457
    .local v0, addOnApp:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportAppList:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 462
    .end local v0           #addOnApp:Ljava/lang/String;
    .end local v2           #cscAddOnApp:Ljava/lang/String;
    .end local v3           #cscAddOnAppList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public loadDefaultWindowInfo()V
    .locals 2

    .prologue
    .line 434
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105005a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    .line 435
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105005b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowDefWidth:I

    .line 436
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105005c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowDefHeight:I

    .line 437
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105005d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedWidth:I

    .line 438
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105005e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedHeight:I

    .line 439
    return-void
.end method

.method public removeMinimizedSlot(I)V
    .locals 5
    .parameter "taskId"

    .prologue
    .line 419
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 420
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByTaskId:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 422
    .local v1, winInfo:Landroid/os/Bundle;
    if-nez v1, :cond_0

    .line 423
    monitor-exit v3

    .line 431
    :goto_0
    return-void

    .line 425
    :cond_0
    const-string v2, "android.intent.extra.WINDOW_MINIMIZED_SLOT"

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 426
    .local v0, slot:I
    if-ltz v0, :cond_1

    .line 427
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizedSlotManager:Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4}, Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;->setSlot(IZ)V

    .line 428
    const-string v2, "android.intent.extra.WINDOW_MINIMIZED_SLOT"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 430
    :cond_1
    monitor-exit v3

    goto :goto_0

    .end local v0           #slot:I
    .end local v1           #winInfo:Landroid/os/Bundle;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public removeWindowInfo(I)V
    .locals 3
    .parameter "taskId"

    .prologue
    .line 412
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 413
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/MultiWindowManagerService;->removeMinimizedSlot(I)V

    .line 414
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByTaskId:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    monitor-exit v1

    .line 416
    return-void

    .line 415
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateSplitZone(Lcom/android/server/am/ActivityRecord;Ljava/util/ArrayList;Z)V
    .locals 5
    .parameter "r"
    .parameter
    .parameter "useDefault"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActivityRecord;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 370
    .local p2, frontActivities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    iget v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentLaunchMode:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    if-eqz p2, :cond_0

    .line 371
    iget v3, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v3, v3, -0x100

    iput v3, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 374
    :cond_0
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v3, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {p0, v3, v4}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v0

    .line 376
    .local v0, targetWinInfo:Landroid/os/Bundle;
    iget v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentLaunchMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 377
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3, p3}, Lcom/android/server/am/MultiWindowManagerService;->calculateCascadeWindowSize(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Z)Landroid/graphics/Rect;

    move-result-object v2

    .line 379
    .local v2, windowRect:Landroid/graphics/Rect;
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 380
    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 381
    .local v1, top:Lcom/android/server/am/ActivityRecord;
    invoke-direct {p0, p1, v1, p3}, Lcom/android/server/am/MultiWindowManagerService;->calculateCascadeWindowSize(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Z)Landroid/graphics/Rect;

    move-result-object v2

    .line 384
    .end local v1           #top:Lcom/android/server/am/ActivityRecord;
    :cond_1
    const-string v3, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 396
    .end local v2           #windowRect:Landroid/graphics/Rect;
    :cond_2
    :goto_0
    return-void

    .line 386
    :cond_3
    iget v3, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v3, v3, 0x4000

    if-nez v3, :cond_4

    iget v3, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v3}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v3

    const/high16 v4, 0x200

    if-ne v3, v4, :cond_4

    .line 388
    iget v3, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v3, v3, -0x100

    iput v3, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 389
    iget v3, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/MultiWindowManagerService;->getNextSplitZone(Ljava/util/ArrayList;Lcom/android/server/am/ActivityRecord;)I

    move-result v4

    or-int/2addr v3, v4

    iput v3, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 392
    :cond_4
    iget v3, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v3, v3, 0xff

    if-eqz v3, :cond_2

    .line 393
    const-string v3, "android.intent.extra.WINDOW_LAST_SIZE"

    iget v4, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v4}, Landroid/sec/multiwindow/impl/MultiWindowManager;->calculateSplitWindowSize(I)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method public updateWindowInfo(ILandroid/content/ComponentName;Landroid/os/Bundle;)V
    .locals 5
    .parameter "taskId"
    .parameter "realActivity"
    .parameter "winInfo"

    .prologue
    .line 399
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 400
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByTaskId:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 401
    .local v1, taskBundle:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 402
    invoke-virtual {v1, p3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 404
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByComponent:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 405
    .local v0, cmpBundle:Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 406
    invoke-virtual {v0, p3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 408
    :cond_1
    monitor-exit v3

    .line 409
    return-void

    .line 408
    .end local v0           #cmpBundle:Landroid/os/Bundle;
    .end local v1           #taskBundle:Landroid/os/Bundle;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
