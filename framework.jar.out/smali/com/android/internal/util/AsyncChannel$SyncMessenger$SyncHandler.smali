.class Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;
.super Landroid/os/Handler;
.source "AsyncChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/AsyncChannel$SyncMessenger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SyncHandler"
.end annotation


# instance fields
.field private mLockObject:Ljava/lang/Object;

.field private mResultMsg:Landroid/os/Message;

.field final synthetic this$0:Lcom/android/internal/util/AsyncChannel$SyncMessenger;


# direct methods
.method private constructor <init>(Lcom/android/internal/util/AsyncChannel$SyncMessenger;Landroid/os/Looper;)V
    .locals 1
    .parameter
    .parameter "looper"

    .prologue
    .line 756
    iput-object p1, p0, Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;->this$0:Lcom/android/internal/util/AsyncChannel$SyncMessenger;

    .line 757
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 751
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;->mLockObject:Ljava/lang/Object;

    .line 758
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/util/AsyncChannel$SyncMessenger;Landroid/os/Looper;Lcom/android/internal/util/AsyncChannel$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 749
    invoke-direct {p0, p1, p2}, Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;-><init>(Lcom/android/internal/util/AsyncChannel$SyncMessenger;Landroid/os/Looper;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 749
    iget-object v0, p0, Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;->mLockObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 749
    iget-object v0, p0, Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;->mResultMsg:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;Landroid/os/Message;)Landroid/os/Message;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 749
    iput-object p1, p0, Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;->mResultMsg:Landroid/os/Message;

    return-object p1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 763
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;->mResultMsg:Landroid/os/Message;

    .line 764
    iget-object v0, p0, Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;->mResultMsg:Landroid/os/Message;

    invoke-virtual {v0, p1}, Landroid/os/Message;->copyFrom(Landroid/os/Message;)V

    .line 765
    iget-object v1, p0, Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;->mLockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 766
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;->mLockObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 767
    monitor-exit v1

    .line 768
    return-void

    .line 767
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
