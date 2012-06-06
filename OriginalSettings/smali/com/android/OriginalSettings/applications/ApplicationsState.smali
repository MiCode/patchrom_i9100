.class public Lcom/android/OriginalSettings/applications/ApplicationsState;
.super Ljava/lang/Object;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/applications/ApplicationsState$BackgroundHandler;,
        Lcom/android/OriginalSettings/applications/ApplicationsState$MainHandler;,
        Lcom/android/OriginalSettings/applications/ApplicationsState$PackageIntentReceiver;,
        Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;,
        Lcom/android/OriginalSettings/applications/ApplicationsState$SizeInfo;,
        Lcom/android/OriginalSettings/applications/ApplicationsState$AppFilter;,
        Lcom/android/OriginalSettings/applications/ApplicationsState$Callbacks;
    }
.end annotation


# static fields
.field public static final ALPHA_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final INTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final ON_SD_CARD_FILTER:Lcom/android/OriginalSettings/applications/ApplicationsState$AppFilter;

.field static final REMOVE_DIACRITICALS_PATTERN:Ljava/util/regex/Pattern;

.field public static final SIZE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final THIRD_PARTY_FILTER:Lcom/android/OriginalSettings/applications/ApplicationsState$AppFilter;

.field static sInstance:Lcom/android/OriginalSettings/applications/ApplicationsState;

.field static final sLock:Ljava/lang/Object;


# instance fields
.field final mAppEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field mApplications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mBackgroundHandler:Lcom/android/OriginalSettings/applications/ApplicationsState$BackgroundHandler;

.field final mContext:Landroid/content/Context;

.field mCurCallbacks:Lcom/android/OriginalSettings/applications/ApplicationsState$Callbacks;

.field mCurComputingSizePkg:Ljava/lang/String;

.field mCurId:J

.field final mEntriesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field final mInterestingConfigChanges:Lcom/android/OriginalSettings/applications/InterestingConfigChanges;

.field final mMainHandler:Lcom/android/OriginalSettings/applications/ApplicationsState$MainHandler;

.field mPackageIntentReceiver:Lcom/android/OriginalSettings/applications/ApplicationsState$PackageIntentReceiver;

.field final mPm:Landroid/content/pm/PackageManager;

.field mRebuildAsync:Z

.field mRebuildComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field mRebuildFilter:Lcom/android/OriginalSettings/applications/ApplicationsState$AppFilter;

.field mRebuildRequested:Z

.field mRebuildResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field final mRebuildSync:Ljava/lang/Object;

.field mResumed:Z

.field final mThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-string v0, "\\p{InCombiningDiacriticalMarks}+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/OriginalSettings/applications/ApplicationsState;->REMOVE_DIACRITICALS_PATTERN:Ljava/util/regex/Pattern;

    .line 152
    new-instance v0, Lcom/android/OriginalSettings/applications/ApplicationsState$1;

    invoke-direct {v0}, Lcom/android/OriginalSettings/applications/ApplicationsState$1;-><init>()V

    sput-object v0, Lcom/android/OriginalSettings/applications/ApplicationsState;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    .line 163
    new-instance v0, Lcom/android/OriginalSettings/applications/ApplicationsState$2;

    invoke-direct {v0}, Lcom/android/OriginalSettings/applications/ApplicationsState$2;-><init>()V

    sput-object v0, Lcom/android/OriginalSettings/applications/ApplicationsState;->SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 174
    new-instance v0, Lcom/android/OriginalSettings/applications/ApplicationsState$3;

    invoke-direct {v0}, Lcom/android/OriginalSettings/applications/ApplicationsState$3;-><init>()V

    sput-object v0, Lcom/android/OriginalSettings/applications/ApplicationsState;->INTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 185
    new-instance v0, Lcom/android/OriginalSettings/applications/ApplicationsState$4;

    invoke-direct {v0}, Lcom/android/OriginalSettings/applications/ApplicationsState$4;-><init>()V

    sput-object v0, Lcom/android/OriginalSettings/applications/ApplicationsState;->EXTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 196
    new-instance v0, Lcom/android/OriginalSettings/applications/ApplicationsState$5;

    invoke-direct {v0}, Lcom/android/OriginalSettings/applications/ApplicationsState$5;-><init>()V

    sput-object v0, Lcom/android/OriginalSettings/applications/ApplicationsState;->THIRD_PARTY_FILTER:Lcom/android/OriginalSettings/applications/ApplicationsState$AppFilter;

    .line 211
    new-instance v0, Lcom/android/OriginalSettings/applications/ApplicationsState$6;

    invoke-direct {v0}, Lcom/android/OriginalSettings/applications/ApplicationsState$6;-><init>()V

    sput-object v0, Lcom/android/OriginalSettings/applications/ApplicationsState;->ON_SD_CARD_FILTER:Lcom/android/OriginalSettings/applications/ApplicationsState$AppFilter;

    .line 352
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/OriginalSettings/applications/ApplicationsState;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/app/Application;)V
    .locals 4
    .parameter "app"

    .prologue
    const-wide/16 v1, 0x1

    .line 364
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 234
    new-instance v0, Lcom/android/OriginalSettings/applications/InterestingConfigChanges;

    invoke-direct {v0}, Lcom/android/OriginalSettings/applications/InterestingConfigChanges;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mInterestingConfigChanges:Lcom/android/OriginalSettings/applications/InterestingConfigChanges;

    .line 235
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    .line 236
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    .line 238
    iput-wide v1, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mCurId:J

    .line 242
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mRebuildSync:Ljava/lang/Object;

    .line 348
    new-instance v0, Lcom/android/OriginalSettings/applications/ApplicationsState$MainHandler;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/applications/ApplicationsState$MainHandler;-><init>(Lcom/android/OriginalSettings/applications/ApplicationsState;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mMainHandler:Lcom/android/OriginalSettings/applications/ApplicationsState$MainHandler;

    .line 365
    iput-object p1, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    .line 366
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    .line 367
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ApplicationsState.Loader"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mThread:Landroid/os/HandlerThread;

    .line 369
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 370
    new-instance v0, Lcom/android/OriginalSettings/applications/ApplicationsState$BackgroundHandler;

    iget-object v1, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/OriginalSettings/applications/ApplicationsState$BackgroundHandler;-><init>(Lcom/android/OriginalSettings/applications/ApplicationsState;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/OriginalSettings/applications/ApplicationsState$BackgroundHandler;

    .line 386
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 388
    :try_start_0
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    :goto_0
    :try_start_1
    monitor-exit v1

    .line 392
    return-void

    .line 391
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 389
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/applications/ApplicationsState;Landroid/content/pm/PackageStats;)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/applications/ApplicationsState;->getTotalInternalSize(Landroid/content/pm/PackageStats;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/applications/ApplicationsState;J)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/OriginalSettings/applications/ApplicationsState;->getSizeStr(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/applications/ApplicationsState;Landroid/content/pm/PackageStats;)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/applications/ApplicationsState;->getTotalExternalSize(Landroid/content/pm/PackageStats;)J

    move-result-wide v0

    return-wide v0
.end method

.method static getInstance(Landroid/app/Application;)Lcom/android/OriginalSettings/applications/ApplicationsState;
    .locals 2
    .parameter "app"

    .prologue
    .line 356
    sget-object v1, Lcom/android/OriginalSettings/applications/ApplicationsState;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 357
    :try_start_0
    sget-object v0, Lcom/android/OriginalSettings/applications/ApplicationsState;->sInstance:Lcom/android/OriginalSettings/applications/ApplicationsState;

    if-nez v0, :cond_0

    .line 358
    new-instance v0, Lcom/android/OriginalSettings/applications/ApplicationsState;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/applications/ApplicationsState;-><init>(Landroid/app/Application;)V

    sput-object v0, Lcom/android/OriginalSettings/applications/ApplicationsState;->sInstance:Lcom/android/OriginalSettings/applications/ApplicationsState;

    .line 360
    :cond_0
    sget-object v0, Lcom/android/OriginalSettings/applications/ApplicationsState;->sInstance:Lcom/android/OriginalSettings/applications/ApplicationsState;

    monitor-exit v1

    return-object v0

    .line 361
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getSizeStr(J)Ljava/lang/String;
    .locals 2
    .parameter "size"

    .prologue
    .line 698
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 699
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 701
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTotalExternalSize(Landroid/content/pm/PackageStats;)J
    .locals 4
    .parameter "ps"

    .prologue
    .line 690
    if-eqz p1, :cond_0

    .line 691
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->externalCodeSize:J

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalDataSize:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalMediaSize:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalObbSize:J

    add-long/2addr v0, v2

    .line 694
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x2

    goto :goto_0
.end method

.method private getTotalInternalSize(Landroid/content/pm/PackageStats;)J
    .locals 4
    .parameter "ps"

    .prologue
    .line 683
    if-eqz p1, :cond_0

    .line 684
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->codeSize:J

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->dataSize:J

    add-long/2addr v0, v2

    .line 686
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x2

    goto :goto_0
.end method

.method public static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "str"

    .prologue
    .line 65
    sget-object v1, Ljava/text/Normalizer$Form;->NFD:Ljava/text/Normalizer$Form;

    invoke-static {p0, v1}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, tmp:Ljava/lang/String;
    sget-object v1, Lcom/android/OriginalSettings/applications/ApplicationsState;->REMOVE_DIACRITICALS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method addPackage(Ljava/lang/String;)V
    .locals 4
    .parameter "pkgName"

    .prologue
    .line 609
    :try_start_0
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 612
    :try_start_1
    iget-boolean v1, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mResumed:Z

    if-nez v1, :cond_0

    .line 617
    monitor-exit v2

    .line 638
    :goto_0
    return-void

    .line 619
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/applications/ApplicationsState;->indexOfApplicationInfoLocked(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    .line 622
    monitor-exit v2

    goto :goto_0

    .line 635
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 636
    :catch_0
    move-exception v1

    goto :goto_0

    .line 624
    :cond_1
    :try_start_3
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    const/16 v3, 0x2200

    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 627
    .local v0, info:Landroid/content/pm/ApplicationInfo;
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 628
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/OriginalSettings/applications/ApplicationsState$BackgroundHandler;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/android/OriginalSettings/applications/ApplicationsState$BackgroundHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 629
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/OriginalSettings/applications/ApplicationsState$BackgroundHandler;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/android/OriginalSettings/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 631
    :cond_2
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mMainHandler:Lcom/android/OriginalSettings/applications/ApplicationsState$MainHandler;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/android/OriginalSettings/applications/ApplicationsState$MainHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 632
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mMainHandler:Lcom/android/OriginalSettings/applications/ApplicationsState$MainHandler;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/android/OriginalSettings/applications/ApplicationsState$MainHandler;->sendEmptyMessage(I)Z

    .line 635
    :cond_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method ensureIcon(Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;)V
    .locals 2
    .parameter "entry"

    .prologue
    .line 566
    iget-object v0, p1, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 572
    :goto_0
    return-void

    .line 569
    :cond_0
    monitor-enter p1

    .line 570
    :try_start_0
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0, v1}, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->ensureIconLocked(Landroid/content/Context;Landroid/content/pm/PackageManager;)Z

    .line 571
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getEntry(Ljava/lang/String;)Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;
    .locals 5
    .parameter "packageName"

    .prologue
    .line 549
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 550
    :try_start_0
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    .line 551
    .local v0, entry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;
    if-nez v0, :cond_0

    .line 552
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 553
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 554
    .local v2, info:Landroid/content/pm/ApplicationInfo;
    iget-object v3, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 555
    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/applications/ApplicationsState;->getEntryLocked(Landroid/content/pm/ApplicationInfo;)Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    move-result-object v0

    .line 561
    .end local v1           #i:I
    .end local v2           #info:Landroid/content/pm/ApplicationInfo;
    :cond_0
    monitor-exit v4

    return-object v0

    .line 552
    .restart local v1       #i:I
    .restart local v2       #info:Landroid/content/pm/ApplicationInfo;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 562
    .end local v0           #entry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;
    .end local v1           #i:I
    .end local v2           #info:Landroid/content/pm/ApplicationInfo;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method getEntryLocked(Landroid/content/pm/ApplicationInfo;)Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;
    .locals 6
    .parameter "info"

    .prologue
    .line 667
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    .line 669
    .local v0, entry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;
    if-nez v0, :cond_1

    .line 671
    new-instance v0, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    .end local v0           #entry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mCurId:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mCurId:J

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;-><init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;J)V

    .line 672
    .restart local v0       #entry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 677
    :cond_0
    :goto_0
    return-object v0

    .line 674
    :cond_1
    iget-object v1, v0, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eq v1, p1, :cond_0

    .line 675
    iput-object p1, v0, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    goto :goto_0
.end method

.method handleRebuildList()V
    .locals 11

    .prologue
    .line 488
    iget-object v9, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mRebuildSync:Ljava/lang/Object;

    monitor-enter v9

    .line 489
    :try_start_0
    iget-boolean v8, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mRebuildRequested:Z

    if-nez v8, :cond_0

    .line 490
    monitor-exit v9

    .line 545
    :goto_0
    return-void

    .line 493
    :cond_0
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mRebuildFilter:Lcom/android/OriginalSettings/applications/ApplicationsState$AppFilter;

    .line 494
    .local v3, filter:Lcom/android/OriginalSettings/applications/ApplicationsState$AppFilter;
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mRebuildComparator:Ljava/util/Comparator;

    .line 495
    .local v1, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;>;"
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mRebuildRequested:Z

    .line 496
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mRebuildFilter:Lcom/android/OriginalSettings/applications/ApplicationsState$AppFilter;

    .line 497
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mRebuildComparator:Ljava/util/Comparator;

    .line 498
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 500
    const/4 v8, -0x2

    invoke-static {v8}, Landroid/os/Process;->setThreadPriority(I)V

    .line 502
    if-eqz v3, :cond_1

    .line 503
    invoke-interface {v3}, Lcom/android/OriginalSettings/applications/ApplicationsState$AppFilter;->init()V

    .line 507
    :cond_1
    iget-object v9, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v9

    .line 508
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 509
    .local v0, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 511
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 513
    .local v4, filteredApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;>;"
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_4

    .line 514
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ApplicationInfo;

    .line 515
    .local v6, info:Landroid/content/pm/ApplicationInfo;
    if-eqz v3, :cond_2

    invoke-interface {v3, v6}, Lcom/android/OriginalSettings/applications/ApplicationsState$AppFilter;->filterApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 516
    :cond_2
    iget-object v9, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v9

    .line 518
    :try_start_2
    invoke-virtual {p0, v6}, Lcom/android/OriginalSettings/applications/ApplicationsState;->getEntryLocked(Landroid/content/pm/ApplicationInfo;)Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    move-result-object v2

    .line 519
    .local v2, entry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;
    iget-object v8, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v8}, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->ensureLabel(Landroid/content/Context;)V

    .line 521
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 523
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 513
    .end local v2           #entry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 498
    .end local v0           #apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v1           #comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;>;"
    .end local v3           #filter:Lcom/android/OriginalSettings/applications/ApplicationsState$AppFilter;
    .end local v4           #filteredApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;>;"
    .end local v5           #i:I
    .end local v6           #info:Landroid/content/pm/ApplicationInfo;
    :catchall_0
    move-exception v8

    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v8

    .line 509
    .restart local v1       #comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;>;"
    .restart local v3       #filter:Lcom/android/OriginalSettings/applications/ApplicationsState$AppFilter;
    :catchall_1
    move-exception v8

    :try_start_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v8

    .line 523
    .restart local v0       #apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v4       #filteredApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;>;"
    .restart local v5       #i:I
    .restart local v6       #info:Landroid/content/pm/ApplicationInfo;
    :catchall_2
    move-exception v8

    :try_start_5
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v8

    .line 527
    .end local v6           #info:Landroid/content/pm/ApplicationInfo;
    :cond_4
    invoke-static {v4, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 529
    iget-object v9, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mRebuildSync:Ljava/lang/Object;

    monitor-enter v9

    .line 530
    :try_start_6
    iget-boolean v8, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mRebuildRequested:Z

    if-nez v8, :cond_5

    .line 531
    iget-boolean v8, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mRebuildAsync:Z

    if-nez v8, :cond_6

    .line 532
    iput-object v4, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mRebuildResult:Ljava/util/ArrayList;

    .line 533
    iget-object v8, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mRebuildSync:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    .line 542
    :cond_5
    :goto_2
    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 544
    const/16 v8, 0xa

    invoke-static {v8}, Landroid/os/Process;->setThreadPriority(I)V

    goto :goto_0

    .line 535
    :cond_6
    :try_start_7
    iget-object v8, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mMainHandler:Lcom/android/OriginalSettings/applications/ApplicationsState$MainHandler;

    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Lcom/android/OriginalSettings/applications/ApplicationsState$MainHandler;->hasMessages(I)Z

    move-result v8

    if-nez v8, :cond_5

    .line 536
    iget-object v8, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mMainHandler:Lcom/android/OriginalSettings/applications/ApplicationsState$MainHandler;

    const/4 v10, 0x1

    invoke-virtual {v8, v10, v4}, Lcom/android/OriginalSettings/applications/ApplicationsState$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 538
    .local v7, msg:Landroid/os/Message;
    iget-object v8, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mMainHandler:Lcom/android/OriginalSettings/applications/ApplicationsState$MainHandler;

    invoke-virtual {v8, v7}, Lcom/android/OriginalSettings/applications/ApplicationsState$MainHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 542
    .end local v7           #msg:Landroid/os/Message;
    :catchall_3
    move-exception v8

    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v8
.end method

.method indexOfApplicationInfoLocked(Ljava/lang/String;)I
    .locals 2
    .parameter "pkgName"

    .prologue
    .line 599
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 600
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 604
    .end local v0           #i:I
    :goto_1
    return v0

    .line 599
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 604
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method invalidatePackage(Ljava/lang/String;)V
    .locals 0
    .parameter "pkgName"

    .prologue
    .line 662
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/applications/ApplicationsState;->removePackage(Ljava/lang/String;)V

    .line 663
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/applications/ApplicationsState;->addPackage(Ljava/lang/String;)V

    .line 664
    return-void
.end method

.method pause()V
    .locals 2

    .prologue
    .line 446
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 447
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mCurCallbacks:Lcom/android/OriginalSettings/applications/ApplicationsState$Callbacks;

    .line 448
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mResumed:Z

    .line 450
    monitor-exit v1

    .line 451
    return-void

    .line 450
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method rebuild(Lcom/android/OriginalSettings/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;)Ljava/util/ArrayList;
    .locals 10
    .parameter "filter"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/OriginalSettings/applications/ApplicationsState$AppFilter;",
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 455
    .local p2, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;>;"
    iget-object v5, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mRebuildSync:Ljava/lang/Object;

    monitor-enter v5

    .line 456
    const/4 v4, 0x1

    :try_start_0
    iput-boolean v4, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mRebuildRequested:Z

    .line 457
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mRebuildAsync:Z

    .line 458
    iput-object p1, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mRebuildFilter:Lcom/android/OriginalSettings/applications/ApplicationsState$AppFilter;

    .line 459
    iput-object p2, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mRebuildComparator:Ljava/util/Comparator;

    .line 460
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mRebuildResult:Ljava/util/ArrayList;

    .line 461
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/OriginalSettings/applications/ApplicationsState$BackgroundHandler;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/android/OriginalSettings/applications/ApplicationsState$BackgroundHandler;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 462
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/OriginalSettings/applications/ApplicationsState$BackgroundHandler;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/android/OriginalSettings/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 466
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0xfa

    add-long v2, v6, v8

    .line 468
    .local v2, waitend:J
    :goto_0
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mRebuildResult:Ljava/util/ArrayList;

    if-nez v4, :cond_1

    .line 469
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 470
    .local v0, now:J
    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    .line 479
    .end local v0           #now:J
    :cond_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mRebuildAsync:Z

    .line 481
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mRebuildResult:Ljava/util/ArrayList;

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v4

    .line 474
    .restart local v0       #now:J
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mRebuildSync:Ljava/lang/Object;

    sub-long v6, v2, v0

    invoke-virtual {v4, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 475
    :catch_0
    move-exception v4

    goto :goto_0

    .line 482
    .end local v0           #now:J
    .end local v2           #waitend:J
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method

.method removePackage(Ljava/lang/String;)V
    .locals 5
    .parameter "pkgName"

    .prologue
    .line 641
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 643
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/applications/ApplicationsState;->indexOfApplicationInfoLocked(Ljava/lang/String;)I

    move-result v1

    .line 645
    .local v1, idx:I
    if-ltz v1, :cond_1

    .line 646
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    .line 648
    .local v0, entry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;
    if-eqz v0, :cond_0

    .line 649
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 652
    :cond_0
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 653
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mMainHandler:Lcom/android/OriginalSettings/applications/ApplicationsState$MainHandler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/android/OriginalSettings/applications/ApplicationsState$MainHandler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 654
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mMainHandler:Lcom/android/OriginalSettings/applications/ApplicationsState$MainHandler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/android/OriginalSettings/applications/ApplicationsState$MainHandler;->sendEmptyMessage(I)Z

    .line 658
    .end local v0           #entry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;
    :cond_1
    monitor-exit v3

    .line 659
    return-void

    .line 658
    .end local v1           #idx:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method requestSize(Ljava/lang/String;)V
    .locals 4
    .parameter "packageName"

    .prologue
    .line 576
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 577
    :try_start_0
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    .line 578
    .local v0, entry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;
    if-eqz v0, :cond_0

    .line 579
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/OriginalSettings/applications/ApplicationsState$BackgroundHandler;

    iget-object v3, v3, Lcom/android/OriginalSettings/applications/ApplicationsState$BackgroundHandler;->mStatsObserver:Landroid/content/pm/IPackageStatsObserver$Stub;

    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V

    .line 582
    :cond_0
    monitor-exit v2

    .line 583
    return-void

    .line 582
    .end local v0           #entry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method resume(Lcom/android/OriginalSettings/applications/ApplicationsState$Callbacks;)V
    .locals 6
    .parameter "callbacks"

    .prologue
    .line 396
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 397
    :try_start_0
    iput-object p1, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mCurCallbacks:Lcom/android/OriginalSettings/applications/ApplicationsState$Callbacks;

    .line 398
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mResumed:Z

    .line 399
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/OriginalSettings/applications/ApplicationsState$PackageIntentReceiver;

    if-nez v3, :cond_0

    .line 400
    new-instance v3, Lcom/android/OriginalSettings/applications/ApplicationsState$PackageIntentReceiver;

    const/4 v5, 0x0

    invoke-direct {v3, p0, v5}, Lcom/android/OriginalSettings/applications/ApplicationsState$PackageIntentReceiver;-><init>(Lcom/android/OriginalSettings/applications/ApplicationsState;Lcom/android/OriginalSettings/applications/ApplicationsState$1;)V

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/OriginalSettings/applications/ApplicationsState$PackageIntentReceiver;

    .line 401
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/OriginalSettings/applications/ApplicationsState$PackageIntentReceiver;

    invoke-virtual {v3}, Lcom/android/OriginalSettings/applications/ApplicationsState$PackageIntentReceiver;->registerReceiver()V

    .line 403
    :cond_0
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    const/16 v5, 0x2200

    invoke-virtual {v3, v5}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    .line 406
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    if-nez v3, :cond_1

    .line 407
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    .line 410
    :cond_1
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mInterestingConfigChanges:Lcom/android/OriginalSettings/applications/InterestingConfigChanges;

    iget-object v5, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/OriginalSettings/applications/InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 413
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 414
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 421
    :cond_2
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_6

    .line 422
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 425
    .local v2, info:Landroid/content/pm/ApplicationInfo;
    iget-boolean v3, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v3, :cond_5

    iget v3, v2, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    const/4 v5, 0x3

    if-eq v3, v5, :cond_5

    .line 427
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 428
    add-int/lit8 v1, v1, -0x1

    .line 421
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 416
    .end local v1           #i:I
    .end local v2           #info:Landroid/content/pm/ApplicationInfo;
    :cond_4
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 417
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    const/4 v5, 0x1

    iput-boolean v5, v3, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->sizeStale:Z

    .line 416
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 431
    .restart local v2       #info:Landroid/content/pm/ApplicationInfo;
    :cond_5
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    iget-object v5, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    .line 432
    .local v0, entry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;
    if-eqz v0, :cond_3

    .line 433
    iput-object v2, v0, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    goto :goto_1

    .line 441
    .end local v0           #entry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;
    .end local v1           #i:I
    .end local v2           #info:Landroid/content/pm/ApplicationInfo;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 436
    .restart local v1       #i:I
    :cond_6
    const/4 v3, 0x0

    :try_start_1
    iput-object v3, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    .line 437
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/OriginalSettings/applications/ApplicationsState$BackgroundHandler;

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Lcom/android/OriginalSettings/applications/ApplicationsState$BackgroundHandler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_7

    .line 438
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/OriginalSettings/applications/ApplicationsState$BackgroundHandler;

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Lcom/android/OriginalSettings/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 441
    :cond_7
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 442
    return-void
.end method

.method sumCacheSizes()J
    .locals 7

    .prologue
    .line 586
    const-wide/16 v1, 0x0

    .line 588
    .local v1, sum:J
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 590
    :try_start_0
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 591
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v5, v3, Lcom/android/OriginalSettings/applications/ApplicationsState$SizeInfo;->cacheSize:J

    add-long/2addr v1, v5

    .line 590
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 594
    :cond_0
    monitor-exit v4

    .line 595
    return-wide v1

    .line 594
    .end local v0           #i:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
