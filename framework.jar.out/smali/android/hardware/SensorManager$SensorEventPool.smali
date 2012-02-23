.class Landroid/hardware/SensorManager$SensorEventPool;
.super Ljava/lang/Object;
.source "SensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/SensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SensorEventPool"
.end annotation


# instance fields
.field private mNumItemsInPool:I

.field private final mPool:[Landroid/hardware/SensorEvent;

.field private final mPoolSize:I

.field final synthetic this$0:Landroid/hardware/SensorManager;


# direct methods
.method constructor <init>(Landroid/hardware/SensorManager;I)V
    .locals 1
    .parameter
    .parameter "poolSize"

    .prologue
    .line 400
    iput-object p1, p0, Landroid/hardware/SensorManager$SensorEventPool;->this$0:Landroid/hardware/SensorManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 401
    iput p2, p0, Landroid/hardware/SensorManager$SensorEventPool;->mPoolSize:I

    .line 402
    iput p2, p0, Landroid/hardware/SensorManager$SensorEventPool;->mNumItemsInPool:I

    .line 403
    new-array v0, p2, [Landroid/hardware/SensorEvent;

    iput-object v0, p0, Landroid/hardware/SensorManager$SensorEventPool;->mPool:[Landroid/hardware/SensorEvent;

    .line 404
    return-void
.end method

.method private createSensorEvent()Landroid/hardware/SensorEvent;
    .locals 2

    .prologue
    .line 397
    new-instance v0, Landroid/hardware/SensorEvent;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/hardware/SensorEvent;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method getFromPool()Landroid/hardware/SensorEvent;
    .locals 4

    .prologue
    .line 407
    const/4 v1, 0x0

    .line 408
    .local v1, t:Landroid/hardware/SensorEvent;
    monitor-enter p0

    .line 409
    :try_start_0
    iget v2, p0, Landroid/hardware/SensorManager$SensorEventPool;->mNumItemsInPool:I

    if-lez v2, :cond_0

    .line 411
    iget v2, p0, Landroid/hardware/SensorManager$SensorEventPool;->mPoolSize:I

    iget v3, p0, Landroid/hardware/SensorManager$SensorEventPool;->mNumItemsInPool:I

    sub-int v0, v2, v3

    .line 412
    .local v0, index:I
    iget-object v2, p0, Landroid/hardware/SensorManager$SensorEventPool;->mPool:[Landroid/hardware/SensorEvent;

    aget-object v1, v2, v0

    .line 413
    iget-object v2, p0, Landroid/hardware/SensorManager$SensorEventPool;->mPool:[Landroid/hardware/SensorEvent;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 414
    iget v2, p0, Landroid/hardware/SensorManager$SensorEventPool;->mNumItemsInPool:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/hardware/SensorManager$SensorEventPool;->mNumItemsInPool:I

    .line 416
    .end local v0           #index:I
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 417
    if-nez v1, :cond_1

    .line 420
    invoke-direct {p0}, Landroid/hardware/SensorManager$SensorEventPool;->createSensorEvent()Landroid/hardware/SensorEvent;

    move-result-object v1

    .line 422
    :cond_1
    return-object v1

    .line 416
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method returnToPool(Landroid/hardware/SensorEvent;)V
    .locals 3
    .parameter "t"

    .prologue
    .line 426
    monitor-enter p0

    .line 428
    :try_start_0
    iget v1, p0, Landroid/hardware/SensorManager$SensorEventPool;->mNumItemsInPool:I

    iget v2, p0, Landroid/hardware/SensorManager$SensorEventPool;->mPoolSize:I

    if-ge v1, v2, :cond_0

    .line 430
    iget v1, p0, Landroid/hardware/SensorManager$SensorEventPool;->mNumItemsInPool:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/hardware/SensorManager$SensorEventPool;->mNumItemsInPool:I

    .line 431
    iget v1, p0, Landroid/hardware/SensorManager$SensorEventPool;->mPoolSize:I

    iget v2, p0, Landroid/hardware/SensorManager$SensorEventPool;->mNumItemsInPool:I

    sub-int v0, v1, v2

    .line 432
    .local v0, index:I
    iget-object v1, p0, Landroid/hardware/SensorManager$SensorEventPool;->mPool:[Landroid/hardware/SensorEvent;

    aput-object p1, v1, v0

    .line 434
    .end local v0           #index:I
    :cond_0
    monitor-exit p0

    .line 435
    return-void

    .line 434
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
