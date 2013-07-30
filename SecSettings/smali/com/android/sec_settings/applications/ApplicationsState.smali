.class public Lcom/android/sec_settings/applications/ApplicationsState;
.super Ljava/lang/Object;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/sec_settings/applications/ApplicationsState$BackgroundHandler;,
        Lcom/android/sec_settings/applications/ApplicationsState$Session;,
        Lcom/android/sec_settings/applications/ApplicationsState$MainHandler;,
        Lcom/android/sec_settings/applications/ApplicationsState$PackageIntentReceiver;,
        Lcom/android/sec_settings/applications/ApplicationsState$AppEntry;,
        Lcom/android/sec_settings/applications/ApplicationsState$SizeInfo;,
        Lcom/android/sec_settings/applications/ApplicationsState$AppFilter;,
        Lcom/android/sec_settings/applications/ApplicationsState$Callbacks;
    }
.end annotation


# static fields
.field public static final ALPHA_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/sec_settings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/sec_settings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final INTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/sec_settings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final ON_SD_CARD_FILTER:Lcom/android/sec_settings/applications/ApplicationsState$AppFilter;

.field static final REMOVE_DIACRITICALS_PATTERN:Ljava/util/regex/Pattern;

.field public static final SIZE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/sec_settings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final THIRD_PARTY_FILTER:Lcom/android/sec_settings/applications/ApplicationsState$AppFilter;

.field static sInstance:Lcom/android/sec_settings/applications/ApplicationsState;

.field static final sLock:Ljava/lang/Object;


# instance fields
.field final mActiveSessions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/sec_settings/applications/ApplicationsState$Session;",
            ">;"
        }
    .end annotation
.end field

.field final mAppEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/sec_settings/applications/ApplicationsState$AppEntry;",
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

.field final mBackgroundHandler:Lcom/android/sec_settings/applications/ApplicationsState$BackgroundHandler;

.field final mContext:Landroid/content/Context;

.field mCurComputingSizePkg:Ljava/lang/String;

.field mCurId:J

.field final mEntriesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/sec_settings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field final mInterestingConfigChanges:Lcom/android/sec_settings/applications/InterestingConfigChanges;

.field final mMainHandler:Lcom/android/sec_settings/applications/ApplicationsState$MainHandler;

.field mPackageIntentReceiver:Lcom/android/sec_settings/applications/ApplicationsState$PackageIntentReceiver;

.field final mPm:Landroid/content/pm/PackageManager;

.field final mRebuildingSessions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/sec_settings/applications/ApplicationsState$Session;",
            ">;"
        }
    .end annotation
.end field

.field mResumed:Z

.field final mSessions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/sec_settings/applications/ApplicationsState$Session;",
            ">;"
        }
    .end annotation
.end field

.field mSessionsChanged:Z

.field final mThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-string v0, "\\p{InCombiningDiacriticalMarks}+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/sec_settings/applications/ApplicationsState;->REMOVE_DIACRITICALS_PATTERN:Ljava/util/regex/Pattern;

    .line 162
    new-instance v0, Lcom/android/sec_settings/applications/ApplicationsState$1;

    invoke-direct {v0}, Lcom/android/sec_settings/applications/ApplicationsState$1;-><init>()V

    sput-object v0, Lcom/android/sec_settings/applications/ApplicationsState;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    .line 173
    new-instance v0, Lcom/android/sec_settings/applications/ApplicationsState$2;

    invoke-direct {v0}, Lcom/android/sec_settings/applications/ApplicationsState$2;-><init>()V

    sput-object v0, Lcom/android/sec_settings/applications/ApplicationsState;->SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 184
    new-instance v0, Lcom/android/sec_settings/applications/ApplicationsState$3;

    invoke-direct {v0}, Lcom/android/sec_settings/applications/ApplicationsState$3;-><init>()V

    sput-object v0, Lcom/android/sec_settings/applications/ApplicationsState;->INTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 195
    new-instance v0, Lcom/android/sec_settings/applications/ApplicationsState$4;

    invoke-direct {v0}, Lcom/android/sec_settings/applications/ApplicationsState$4;-><init>()V

    sput-object v0, Lcom/android/sec_settings/applications/ApplicationsState;->EXTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 206
    new-instance v0, Lcom/android/sec_settings/applications/ApplicationsState$5;

    invoke-direct {v0}, Lcom/android/sec_settings/applications/ApplicationsState$5;-><init>()V

    sput-object v0, Lcom/android/sec_settings/applications/ApplicationsState;->THIRD_PARTY_FILTER:Lcom/android/sec_settings/applications/ApplicationsState$AppFilter;

    .line 221
    new-instance v0, Lcom/android/sec_settings/applications/ApplicationsState$6;

    invoke-direct {v0}, Lcom/android/sec_settings/applications/ApplicationsState$6;-><init>()V

    sput-object v0, Lcom/android/sec_settings/applications/ApplicationsState;->ON_SD_CARD_FILTER:Lcom/android/sec_settings/applications/ApplicationsState$AppFilter;

    .line 381
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/sec_settings/applications/ApplicationsState;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/app/Application;)V
    .locals 4
    .parameter "app"

    .prologue
    const-wide/16 v1, 0x1

    .line 393
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 243
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/sec_settings/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    .line 244
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/sec_settings/applications/ApplicationsState;->mRebuildingSessions:Ljava/util/ArrayList;

    .line 245
    new-instance v0, Lcom/android/sec_settings/applications/InterestingConfigChanges;

    invoke-direct {v0}, Lcom/android/sec_settings/applications/InterestingConfigChanges;-><init>()V

    iput-object v0, p0, Lcom/android/sec_settings/applications/ApplicationsState;->mInterestingConfigChanges:Lcom/android/sec_settings/applications/InterestingConfigChanges;

    .line 246
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/sec_settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    .line 247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/sec_settings/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    .line 248
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/sec_settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    .line 249
    iput-wide v1, p0, Lcom/android/sec_settings/applications/ApplicationsState;->mCurId:J

    .line 254
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/sec_settings/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    .line 377
    new-instance v0, Lcom/android/sec_settings/applications/ApplicationsState$MainHandler;

    invoke-direct {v0, p0}, Lcom/android/sec_settings/applications/ApplicationsState$MainHandler;-><init>(Lcom/android/sec_settings/applications/ApplicationsState;)V

    iput-object v0, p0, Lcom/android/sec_settings/applications/ApplicationsState;->mMainHandler:Lcom/android/sec_settings/applications/ApplicationsState$MainHandler;

    .line 394
    iput-object p1, p0, Lcom/android/sec_settings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    .line 395
    iget-object v0, p0, Lcom/android/sec_settings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sec_settings/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    .line 396
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ApplicationsState.Loader"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/sec_settings/applications/ApplicationsState;->mThread:Landroid/os/HandlerThread;

    .line 398
    iget-object v0, p0, Lcom/android/sec_settings/applications/ApplicationsState;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 399
    new-instance v0, Lcom/android/sec_settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v1, p0, Lcom/android/sec_settings/applications/ApplicationsState;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/sec_settings/applications/ApplicationsState$BackgroundHandler;-><init>(Lcom/android/sec_settings/applications/ApplicationsState;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/sec_settings/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/sec_settings/applications/ApplicationsState$BackgroundHandler;

    .line 415
    iget-object v1, p0, Lcom/android/sec_settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 417
    :try_start_0
    iget-object v0, p0, Lcom/android/sec_settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 420
    :goto_0
    :try_start_1
    monitor-exit v1

    .line 421
    return-void

    .line 420
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 418
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/sec_settings/applications/ApplicationsState;Landroid/content/pm/PackageStats;)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/sec_settings/applications/ApplicationsState;->getTotalInternalSize(Landroid/content/pm/PackageStats;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$200(Lcom/android/sec_settings/applications/ApplicationsState;J)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/sec_settings/applications/ApplicationsState;->getSizeStr(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/sec_settings/applications/ApplicationsState;Landroid/content/pm/PackageStats;)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/sec_settings/applications/ApplicationsState;->getTotalExternalSize(Landroid/content/pm/PackageStats;)J

    move-result-wide v0

    return-wide v0
.end method

.method static getInstance(Landroid/app/Application;)Lcom/android/sec_settings/applications/ApplicationsState;
    .locals 2
    .parameter "app"

    .prologue
    .line 385
    sget-object v1, Lcom/android/sec_settings/applications/ApplicationsState;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 386
    :try_start_0
    sget-object v0, Lcom/android/sec_settings/applications/ApplicationsState;->sInstance:Lcom/android/sec_settings/applications/ApplicationsState;

    if-nez v0, :cond_0

    .line 387
    new-instance v0, Lcom/android/sec_settings/applications/ApplicationsState;

    invoke-direct {v0, p0}, Lcom/android/sec_settings/applications/ApplicationsState;-><init>(Landroid/app/Application;)V

    sput-object v0, Lcom/android/sec_settings/applications/ApplicationsState;->sInstance:Lcom/android/sec_settings/applications/ApplicationsState;

    .line 389
    :cond_0
    sget-object v0, Lcom/android/sec_settings/applications/ApplicationsState;->sInstance:Lcom/android/sec_settings/applications/ApplicationsState;

    monitor-exit v1

    return-object v0

    .line 390
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
    .line 796
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 797
    iget-object v0, p0, Lcom/android/sec_settings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 799
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
    .line 788
    if-eqz p1, :cond_0

    .line 789
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->externalCodeSize:J

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalDataSize:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalMediaSize:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalObbSize:J

    add-long/2addr v0, v2

    .line 792
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
    .line 781
    if-eqz p1, :cond_0

    .line 782
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->codeSize:J

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->dataSize:J

    add-long/2addr v0, v2

    .line 784
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
    sget-object v1, Lcom/android/sec_settings/applications/ApplicationsState;->REMOVE_DIACRITICALS_PATTERN:Ljava/util/regex/Pattern;

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
    .locals 5
    .parameter "pkgName"

    .prologue
    .line 707
    :try_start_0
    iget-object v2, p0, Lcom/android/sec_settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 708
    :try_start_1
    const-string v1, "ApplicationsState"

    const-string v3, "addPackage acquired lock"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    const-string v1, "ApplicationsState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    iget-boolean v1, p0, Lcom/android/sec_settings/applications/ApplicationsState;->mResumed:Z

    if-nez v1, :cond_0

    .line 714
    const-string v1, "ApplicationsState"

    const-string v3, "addPackage release lock: not resumed"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    monitor-exit v2

    .line 736
    :goto_0
    return-void

    .line 717
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/sec_settings/applications/ApplicationsState;->indexOfApplicationInfoLocked(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    .line 718
    const-string v1, "ApplicationsState"

    const-string v3, "Package already exists!"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    const-string v1, "ApplicationsState"

    const-string v3, "addPackage release lock: already exists"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    monitor-exit v2

    goto :goto_0

    .line 733
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 734
    :catch_0
    move-exception v1

    goto :goto_0

    .line 722
    :cond_1
    :try_start_3
    iget-object v1, p0, Lcom/android/sec_settings/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    const/16 v3, 0x2200

    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 725
    .local v0, info:Landroid/content/pm/ApplicationInfo;
    iget-object v1, p0, Lcom/android/sec_settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 726
    iget-object v1, p0, Lcom/android/sec_settings/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/sec_settings/applications/ApplicationsState$BackgroundHandler;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/android/sec_settings/applications/ApplicationsState$BackgroundHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 727
    iget-object v1, p0, Lcom/android/sec_settings/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/sec_settings/applications/ApplicationsState$BackgroundHandler;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/android/sec_settings/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 729
    :cond_2
    iget-object v1, p0, Lcom/android/sec_settings/applications/ApplicationsState;->mMainHandler:Lcom/android/sec_settings/applications/ApplicationsState$MainHandler;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/android/sec_settings/applications/ApplicationsState$MainHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 730
    iget-object v1, p0, Lcom/android/sec_settings/applications/ApplicationsState;->mMainHandler:Lcom/android/sec_settings/applications/ApplicationsState$MainHandler;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/android/sec_settings/applications/ApplicationsState$MainHandler;->sendEmptyMessage(I)Z

    .line 732
    :cond_3
    const-string v1, "ApplicationsState"

    const-string v3, "addPackage releasing lock"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method doPauseIfNeededLocked()V
    .locals 2

    .prologue
    .line 630
    iget-boolean v1, p0, Lcom/android/sec_settings/applications/ApplicationsState;->mResumed:Z

    if-nez v1, :cond_1

    .line 643
    :cond_0
    :goto_0
    return-void

    .line 633
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/android/sec_settings/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 634
    iget-object v1, p0, Lcom/android/sec_settings/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/sec_settings/applications/ApplicationsState$Session;

    iget-boolean v1, v1, Lcom/android/sec_settings/applications/ApplicationsState$Session;->mResumed:Z

    if-nez v1, :cond_0

    .line 633
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 638
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/sec_settings/applications/ApplicationsState;->mResumed:Z

    .line 639
    iget-object v1, p0, Lcom/android/sec_settings/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/sec_settings/applications/ApplicationsState$PackageIntentReceiver;

    if-eqz v1, :cond_0

    .line 640
    iget-object v1, p0, Lcom/android/sec_settings/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/sec_settings/applications/ApplicationsState$PackageIntentReceiver;

    invoke-virtual {v1}, Lcom/android/sec_settings/applications/ApplicationsState$PackageIntentReceiver;->unregisterReceiver()V

    .line 641
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/sec_settings/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/sec_settings/applications/ApplicationsState$PackageIntentReceiver;

    goto :goto_0
.end method

.method doResumeIfNeededLocked()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 582
    iget-boolean v3, p0, Lcom/android/sec_settings/applications/ApplicationsState;->mResumed:Z

    if-eqz v3, :cond_1

    .line 627
    :cond_0
    :goto_0
    return-void

    .line 585
    :cond_1
    iput-boolean v5, p0, Lcom/android/sec_settings/applications/ApplicationsState;->mResumed:Z

    .line 586
    iget-object v3, p0, Lcom/android/sec_settings/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/sec_settings/applications/ApplicationsState$PackageIntentReceiver;

    if-nez v3, :cond_2

    .line 587
    new-instance v3, Lcom/android/sec_settings/applications/ApplicationsState$PackageIntentReceiver;

    invoke-direct {v3, p0, v7}, Lcom/android/sec_settings/applications/ApplicationsState$PackageIntentReceiver;-><init>(Lcom/android/sec_settings/applications/ApplicationsState;Lcom/android/sec_settings/applications/ApplicationsState$1;)V

    iput-object v3, p0, Lcom/android/sec_settings/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/sec_settings/applications/ApplicationsState$PackageIntentReceiver;

    .line 588
    iget-object v3, p0, Lcom/android/sec_settings/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/sec_settings/applications/ApplicationsState$PackageIntentReceiver;

    invoke-virtual {v3}, Lcom/android/sec_settings/applications/ApplicationsState$PackageIntentReceiver;->registerReceiver()V

    .line 590
    :cond_2
    iget-object v3, p0, Lcom/android/sec_settings/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    const/16 v4, 0x2200

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/sec_settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    .line 593
    iget-object v3, p0, Lcom/android/sec_settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    if-nez v3, :cond_3

    .line 594
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/sec_settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    .line 597
    :cond_3
    iget-object v3, p0, Lcom/android/sec_settings/applications/ApplicationsState;->mInterestingConfigChanges:Lcom/android/sec_settings/applications/InterestingConfigChanges;

    iget-object v4, p0, Lcom/android/sec_settings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/sec_settings/applications/InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 600
    iget-object v3, p0, Lcom/android/sec_settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 601
    iget-object v3, p0, Lcom/android/sec_settings/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 608
    :cond_4
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v3, p0, Lcom/android/sec_settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_8

    .line 609
    iget-object v3, p0, Lcom/android/sec_settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 612
    .local v2, info:Landroid/content/pm/ApplicationInfo;
    iget-boolean v3, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v3, :cond_7

    iget v3, v2, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_7

    .line 614
    iget-object v3, p0, Lcom/android/sec_settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 615
    add-int/lit8 v1, v1, -0x1

    .line 608
    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 603
    .end local v1           #i:I
    .end local v2           #info:Landroid/content/pm/ApplicationInfo;
    :cond_6
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_3
    iget-object v3, p0, Lcom/android/sec_settings/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 604
    iget-object v3, p0, Lcom/android/sec_settings/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/sec_settings/applications/ApplicationsState$AppEntry;

    iput-boolean v5, v3, Lcom/android/sec_settings/applications/ApplicationsState$AppEntry;->sizeStale:Z

    .line 603
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 618
    .restart local v2       #info:Landroid/content/pm/ApplicationInfo;
    :cond_7
    iget-object v3, p0, Lcom/android/sec_settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    iget-object v4, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/sec_settings/applications/ApplicationsState$AppEntry;

    .line 619
    .local v0, entry:Lcom/android/sec_settings/applications/ApplicationsState$AppEntry;
    if-eqz v0, :cond_5

    .line 620
    iput-object v2, v0, Lcom/android/sec_settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    goto :goto_2

    .line 623
    .end local v0           #entry:Lcom/android/sec_settings/applications/ApplicationsState$AppEntry;
    .end local v2           #info:Landroid/content/pm/ApplicationInfo;
    :cond_8
    iput-object v7, p0, Lcom/android/sec_settings/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    .line 624
    iget-object v3, p0, Lcom/android/sec_settings/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/sec_settings/applications/ApplicationsState$BackgroundHandler;

    invoke-virtual {v3, v6}, Lcom/android/sec_settings/applications/ApplicationsState$BackgroundHandler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 625
    iget-object v3, p0, Lcom/android/sec_settings/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/sec_settings/applications/ApplicationsState$BackgroundHandler;

    invoke-virtual {v3, v6}, Lcom/android/sec_settings/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method

.method ensureIcon(Lcom/android/sec_settings/applications/ApplicationsState$AppEntry;)V
    .locals 2
    .parameter "entry"

    .prologue
    .line 664
    iget-object v0, p1, Lcom/android/sec_settings/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 670
    :goto_0
    return-void

    .line 667
    :cond_0
    monitor-enter p1

    .line 668
    :try_start_0
    iget-object v0, p0, Lcom/android/sec_settings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/sec_settings/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0, v1}, Lcom/android/sec_settings/applications/ApplicationsState$AppEntry;->ensureIconLocked(Landroid/content/Context;Landroid/content/pm/PackageManager;)Z

    .line 669
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getEntry(Ljava/lang/String;)Lcom/android/sec_settings/applications/ApplicationsState$AppEntry;
    .locals 6
    .parameter "packageName"

    .prologue
    .line 646
    const-string v3, "ApplicationsState"

    const-string v4, "getEntry about to acquire lock..."

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    iget-object v4, p0, Lcom/android/sec_settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 648
    :try_start_0
    iget-object v3, p0, Lcom/android/sec_settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/sec_settings/applications/ApplicationsState$AppEntry;

    .line 649
    .local v0, entry:Lcom/android/sec_settings/applications/ApplicationsState$AppEntry;
    if-nez v0, :cond_0

    .line 650
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/sec_settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 651
    iget-object v3, p0, Lcom/android/sec_settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 652
    .local v2, info:Landroid/content/pm/ApplicationInfo;
    iget-object v3, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 653
    invoke-virtual {p0, v2}, Lcom/android/sec_settings/applications/ApplicationsState;->getEntryLocked(Landroid/content/pm/ApplicationInfo;)Lcom/android/sec_settings/applications/ApplicationsState$AppEntry;

    move-result-object v0

    .line 658
    .end local v1           #i:I
    .end local v2           #info:Landroid/content/pm/ApplicationInfo;
    :cond_0
    const-string v3, "ApplicationsState"

    const-string v5, "...getEntry releasing lock"

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    monitor-exit v4

    return-object v0

    .line 650
    .restart local v1       #i:I
    .restart local v2       #info:Landroid/content/pm/ApplicationInfo;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 660
    .end local v0           #entry:Lcom/android/sec_settings/applications/ApplicationsState$AppEntry;
    .end local v1           #i:I
    .end local v2           #info:Landroid/content/pm/ApplicationInfo;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method getEntryLocked(Landroid/content/pm/ApplicationInfo;)Lcom/android/sec_settings/applications/ApplicationsState$AppEntry;
    .locals 6
    .parameter "info"

    .prologue
    .line 765
    iget-object v1, p0, Lcom/android/sec_settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/sec_settings/applications/ApplicationsState$AppEntry;

    .line 766
    .local v0, entry:Lcom/android/sec_settings/applications/ApplicationsState$AppEntry;
    const-string v1, "ApplicationsState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Looking up entry of pkg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    if-nez v0, :cond_1

    .line 768
    const-string v1, "ApplicationsState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating AppEntry for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    new-instance v0, Lcom/android/sec_settings/applications/ApplicationsState$AppEntry;

    .end local v0           #entry:Lcom/android/sec_settings/applications/ApplicationsState$AppEntry;
    iget-object v1, p0, Lcom/android/sec_settings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/android/sec_settings/applications/ApplicationsState;->mCurId:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/android/sec_settings/applications/ApplicationsState;->mCurId:J

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/android/sec_settings/applications/ApplicationsState$AppEntry;-><init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;J)V

    .line 770
    .restart local v0       #entry:Lcom/android/sec_settings/applications/ApplicationsState$AppEntry;
    iget-object v1, p0, Lcom/android/sec_settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    iget-object v1, p0, Lcom/android/sec_settings/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 775
    :cond_0
    :goto_0
    return-object v0

    .line 772
    :cond_1
    iget-object v1, v0, Lcom/android/sec_settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eq v1, p1, :cond_0

    .line 773
    iput-object p1, v0, Lcom/android/sec_settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    goto :goto_0
.end method

.method indexOfApplicationInfoLocked(Ljava/lang/String;)I
    .locals 2
    .parameter "pkgName"

    .prologue
    .line 697
    iget-object v1, p0, Lcom/android/sec_settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 698
    iget-object v1, p0, Lcom/android/sec_settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 702
    .end local v0           #i:I
    :goto_1
    return v0

    .line 697
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 702
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method invalidatePackage(Ljava/lang/String;)V
    .locals 0
    .parameter "pkgName"

    .prologue
    .line 760
    invoke-virtual {p0, p1}, Lcom/android/sec_settings/applications/ApplicationsState;->removePackage(Ljava/lang/String;)V

    .line 761
    invoke-virtual {p0, p1}, Lcom/android/sec_settings/applications/ApplicationsState;->addPackage(Ljava/lang/String;)V

    .line 762
    return-void
.end method

.method public newSession(Lcom/android/sec_settings/applications/ApplicationsState$Callbacks;)Lcom/android/sec_settings/applications/ApplicationsState$Session;
    .locals 3
    .parameter "callbacks"

    .prologue
    .line 574
    new-instance v0, Lcom/android/sec_settings/applications/ApplicationsState$Session;

    invoke-direct {v0, p0, p1}, Lcom/android/sec_settings/applications/ApplicationsState$Session;-><init>(Lcom/android/sec_settings/applications/ApplicationsState;Lcom/android/sec_settings/applications/ApplicationsState$Callbacks;)V

    .line 575
    .local v0, s:Lcom/android/sec_settings/applications/ApplicationsState$Session;
    iget-object v2, p0, Lcom/android/sec_settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 576
    :try_start_0
    iget-object v1, p0, Lcom/android/sec_settings/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 577
    monitor-exit v2

    .line 578
    return-object v0

    .line 577
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method rebuildActiveSessions()V
    .locals 4

    .prologue
    .line 314
    iget-object v3, p0, Lcom/android/sec_settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 315
    :try_start_0
    iget-boolean v2, p0, Lcom/android/sec_settings/applications/ApplicationsState;->mSessionsChanged:Z

    if-nez v2, :cond_0

    .line 316
    monitor-exit v3

    .line 326
    :goto_0
    return-void

    .line 318
    :cond_0
    iget-object v2, p0, Lcom/android/sec_settings/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 319
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/android/sec_settings/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 320
    iget-object v2, p0, Lcom/android/sec_settings/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/sec_settings/applications/ApplicationsState$Session;

    .line 321
    .local v1, s:Lcom/android/sec_settings/applications/ApplicationsState$Session;
    iget-boolean v2, v1, Lcom/android/sec_settings/applications/ApplicationsState$Session;->mResumed:Z

    if-eqz v2, :cond_1

    .line 322
    iget-object v2, p0, Lcom/android/sec_settings/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 325
    .end local v1           #s:Lcom/android/sec_settings/applications/ApplicationsState$Session;
    :cond_2
    monitor-exit v3

    goto :goto_0

    .end local v0           #i:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method removePackage(Ljava/lang/String;)V
    .locals 6
    .parameter "pkgName"

    .prologue
    .line 739
    iget-object v3, p0, Lcom/android/sec_settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 740
    :try_start_0
    const-string v2, "ApplicationsState"

    const-string v4, "removePackage acquired lock"

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    invoke-virtual {p0, p1}, Lcom/android/sec_settings/applications/ApplicationsState;->indexOfApplicationInfoLocked(Ljava/lang/String;)I

    move-result v1

    .line 742
    .local v1, idx:I
    const-string v2, "ApplicationsState"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removePackage: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " @ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    if-ltz v1, :cond_1

    .line 744
    iget-object v2, p0, Lcom/android/sec_settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/sec_settings/applications/ApplicationsState$AppEntry;

    .line 745
    .local v0, entry:Lcom/android/sec_settings/applications/ApplicationsState$AppEntry;
    const-string v2, "ApplicationsState"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removePackage: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    if-eqz v0, :cond_0

    .line 747
    iget-object v2, p0, Lcom/android/sec_settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    iget-object v2, p0, Lcom/android/sec_settings/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 750
    :cond_0
    iget-object v2, p0, Lcom/android/sec_settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 751
    iget-object v2, p0, Lcom/android/sec_settings/applications/ApplicationsState;->mMainHandler:Lcom/android/sec_settings/applications/ApplicationsState$MainHandler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/android/sec_settings/applications/ApplicationsState$MainHandler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 752
    iget-object v2, p0, Lcom/android/sec_settings/applications/ApplicationsState;->mMainHandler:Lcom/android/sec_settings/applications/ApplicationsState$MainHandler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/android/sec_settings/applications/ApplicationsState$MainHandler;->sendEmptyMessage(I)Z

    .line 755
    .end local v0           #entry:Lcom/android/sec_settings/applications/ApplicationsState$AppEntry;
    :cond_1
    const-string v2, "ApplicationsState"

    const-string v4, "removePackage releasing lock"

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    monitor-exit v3

    .line 757
    return-void

    .line 756
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
    .line 673
    const-string v1, "ApplicationsState"

    const-string v2, "requestSize about to acquire lock..."

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    iget-object v2, p0, Lcom/android/sec_settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 675
    :try_start_0
    iget-object v1, p0, Lcom/android/sec_settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/sec_settings/applications/ApplicationsState$AppEntry;

    .line 676
    .local v0, entry:Lcom/android/sec_settings/applications/ApplicationsState$AppEntry;
    if-eqz v0, :cond_0

    .line 677
    iget-object v1, p0, Lcom/android/sec_settings/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/sec_settings/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/sec_settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v3, v3, Lcom/android/sec_settings/applications/ApplicationsState$BackgroundHandler;->mStatsObserver:Landroid/content/pm/IPackageStatsObserver$Stub;

    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V

    .line 679
    :cond_0
    const-string v1, "ApplicationsState"

    const-string v3, "...requestSize releasing lock"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    monitor-exit v2

    .line 681
    return-void

    .line 680
    .end local v0           #entry:Lcom/android/sec_settings/applications/ApplicationsState$AppEntry;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method sumCacheSizes()J
    .locals 7

    .prologue
    .line 684
    const-wide/16 v1, 0x0

    .line 685
    .local v1, sum:J
    const-string v3, "ApplicationsState"

    const-string v4, "sumCacheSizes about to acquire lock..."

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    iget-object v4, p0, Lcom/android/sec_settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 687
    :try_start_0
    const-string v3, "ApplicationsState"

    const-string v5, "-> sumCacheSizes now has lock"

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    iget-object v3, p0, Lcom/android/sec_settings/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 689
    iget-object v3, p0, Lcom/android/sec_settings/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/sec_settings/applications/ApplicationsState$AppEntry;

    iget-wide v5, v3, Lcom/android/sec_settings/applications/ApplicationsState$SizeInfo;->cacheSize:J

    add-long/2addr v1, v5

    .line 688
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 691
    :cond_0
    const-string v3, "ApplicationsState"

    const-string v5, "...sumCacheSizes releasing lock"

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    monitor-exit v4

    .line 693
    return-wide v1

    .line 692
    .end local v0           #i:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
