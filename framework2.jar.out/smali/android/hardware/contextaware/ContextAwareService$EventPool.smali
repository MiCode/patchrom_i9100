.class final Landroid/hardware/contextaware/ContextAwareService$EventPool;
.super Ljava/lang/Object;
.source "ContextAwareService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/ContextAwareService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EventPool"
.end annotation


# static fields
.field private static final POOL_SIZE:I = 0xa


# instance fields
.field private final lockEventPool:Ljava/lang/Object;

.field private sspEvents:[Landroid/hardware/contextaware/CAEvent;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0xa

    .line 417
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 418
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/hardware/contextaware/ContextAwareService$EventPool;->lockEventPool:Ljava/lang/Object;

    .line 419
    new-array v1, v3, [Landroid/hardware/contextaware/CAEvent;

    iput-object v1, p0, Landroid/hardware/contextaware/ContextAwareService$EventPool;->sspEvents:[Landroid/hardware/contextaware/CAEvent;

    .line 421
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 422
    iget-object v1, p0, Landroid/hardware/contextaware/ContextAwareService$EventPool;->sspEvents:[Landroid/hardware/contextaware/CAEvent;

    new-instance v2, Landroid/hardware/contextaware/CAEvent;

    invoke-direct {v2}, Landroid/hardware/contextaware/CAEvent;-><init>()V

    aput-object v2, v1, v0

    .line 421
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 424
    :cond_0
    return-void
.end method


# virtual methods
.method public obtain()Landroid/hardware/contextaware/CAEvent;
    .locals 5

    .prologue
    .line 432
    const/4 v0, 0x0

    .line 434
    .local v0, event:Landroid/hardware/contextaware/CAEvent;
    iget-object v3, p0, Landroid/hardware/contextaware/ContextAwareService$EventPool;->lockEventPool:Ljava/lang/Object;

    monitor-enter v3

    .line 435
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 436
    :try_start_0
    iget-object v2, p0, Landroid/hardware/contextaware/ContextAwareService$EventPool;->sspEvents:[Landroid/hardware/contextaware/CAEvent;

    aget-object v2, v2, v1

    if-eqz v2, :cond_2

    .line 437
    iget-object v2, p0, Landroid/hardware/contextaware/ContextAwareService$EventPool;->sspEvents:[Landroid/hardware/contextaware/CAEvent;

    aget-object v0, v2, v1

    .line 438
    iget-object v2, p0, Landroid/hardware/contextaware/ContextAwareService$EventPool;->sspEvents:[Landroid/hardware/contextaware/CAEvent;

    const/4 v4, 0x0

    aput-object v4, v2, v1

    .line 442
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 444
    if-nez v0, :cond_1

    .line 445
    new-instance v0, Landroid/hardware/contextaware/CAEvent;

    .end local v0           #event:Landroid/hardware/contextaware/CAEvent;
    invoke-direct {v0}, Landroid/hardware/contextaware/CAEvent;-><init>()V

    .line 447
    .restart local v0       #event:Landroid/hardware/contextaware/CAEvent;
    :cond_1
    return-object v0

    .line 435
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 442
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public recycle(Landroid/hardware/contextaware/CAEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 457
    iget-object v2, p0, Landroid/hardware/contextaware/ContextAwareService$EventPool;->lockEventPool:Ljava/lang/Object;

    monitor-enter v2

    .line 458
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 459
    :try_start_0
    iget-object v1, p0, Landroid/hardware/contextaware/ContextAwareService$EventPool;->sspEvents:[Landroid/hardware/contextaware/CAEvent;

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    .line 460
    iget-object v1, p0, Landroid/hardware/contextaware/ContextAwareService$EventPool;->sspEvents:[Landroid/hardware/contextaware/CAEvent;

    aput-object p1, v1, v0

    .line 464
    :cond_0
    monitor-exit v2

    .line 465
    return-void

    .line 458
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 464
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
