.class public Lcom/samsung/wfd/WfdManager$Channel;
.super Ljava/lang/Object;
.source "WfdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wfd/WfdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Channel"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/wfd/WfdManager$Channel$WfdHandler;
    }
.end annotation


# instance fields
.field mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

.field private mChannelListener:Lcom/samsung/wfd/WfdManager$ChannelListener;

.field mHandler:Lcom/samsung/wfd/WfdManager$Channel$WfdHandler;

.field private mListenerKey:I

.field private mListenerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mListenerMapLock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/os/Looper;Lcom/samsung/wfd/WfdManager$ChannelListener;)V
    .locals 1
    .parameter "looper"
    .parameter "l"

    .prologue
    .line 403
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 409
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/wfd/WfdManager$Channel;->mListenerMap:Ljava/util/HashMap;

    .line 410
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/wfd/WfdManager$Channel;->mListenerMapLock:Ljava/lang/Object;

    .line 411
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/wfd/WfdManager$Channel;->mListenerKey:I

    .line 404
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v0, p0, Lcom/samsung/wfd/WfdManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    .line 405
    new-instance v0, Lcom/samsung/wfd/WfdManager$Channel$WfdHandler;

    invoke-direct {v0, p0, p1}, Lcom/samsung/wfd/WfdManager$Channel$WfdHandler;-><init>(Lcom/samsung/wfd/WfdManager$Channel;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/wfd/WfdManager$Channel;->mHandler:Lcom/samsung/wfd/WfdManager$Channel$WfdHandler;

    .line 406
    iput-object p2, p0, Lcom/samsung/wfd/WfdManager$Channel;->mChannelListener:Lcom/samsung/wfd/WfdManager$ChannelListener;

    .line 407
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/wfd/WfdManager$Channel;)Lcom/samsung/wfd/WfdManager$ChannelListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 402
    iget-object v0, p0, Lcom/samsung/wfd/WfdManager$Channel;->mChannelListener:Lcom/samsung/wfd/WfdManager$ChannelListener;

    return-object v0
.end method

.method static synthetic access$002(Lcom/samsung/wfd/WfdManager$Channel;Lcom/samsung/wfd/WfdManager$ChannelListener;)Lcom/samsung/wfd/WfdManager$ChannelListener;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 402
    iput-object p1, p0, Lcom/samsung/wfd/WfdManager$Channel;->mChannelListener:Lcom/samsung/wfd/WfdManager$ChannelListener;

    return-object p1
.end method


# virtual methods
.method getListener(I)Ljava/lang/Object;
    .locals 3
    .parameter "key"

    .prologue
    .line 448
    iget-object v1, p0, Lcom/samsung/wfd/WfdManager$Channel;->mListenerMapLock:Ljava/lang/Object;

    monitor-enter v1

    .line 449
    :try_start_0
    iget-object v0, p0, Lcom/samsung/wfd/WfdManager$Channel;->mListenerMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 450
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method putListener(Ljava/lang/Object;)I
    .locals 4
    .parameter "listener"

    .prologue
    .line 438
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 444
    :goto_0
    return v0

    .line 440
    :cond_0
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager$Channel;->mListenerMapLock:Ljava/lang/Object;

    monitor-enter v2

    .line 441
    :try_start_0
    iget v0, p0, Lcom/samsung/wfd/WfdManager$Channel;->mListenerKey:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/samsung/wfd/WfdManager$Channel;->mListenerKey:I

    .line 442
    .local v0, key:I
    iget-object v1, p0, Lcom/samsung/wfd/WfdManager$Channel;->mListenerMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    monitor-exit v2

    goto :goto_0

    .end local v0           #key:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
