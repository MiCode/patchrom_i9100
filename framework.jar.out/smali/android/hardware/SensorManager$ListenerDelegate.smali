.class Landroid/hardware/SensorManager$ListenerDelegate;
.super Ljava/lang/Object;
.source "SensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/SensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListenerDelegate"
.end annotation


# instance fields
.field private final NUMBEROFTYPES:I

.field private mDelay:[I

.field public mFirstEvent:Landroid/util/SparseBooleanArray;

.field private mGyroCalibrationLevel:I

.field private final mHandler:Landroid/os/Handler;

.field private mLastDelivery:[J

.field public mSensorAccuracies:Landroid/util/SparseIntArray;

.field private final mSensorEventListener:Landroid/hardware/SensorEventListener;

.field private final mSensorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field

.field public mSensors:Landroid/util/SparseBooleanArray;

.field final synthetic this$0:Landroid/hardware/SensorManager;


# direct methods
.method constructor <init>(Landroid/hardware/SensorManager;Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;Landroid/os/Handler;)V
    .locals 5
    .parameter
    .parameter "listener"
    .parameter "sensor"
    .parameter "handler"

    .prologue
    const/16 v4, 0x14

    .line 589
    iput-object p1, p0, Landroid/hardware/SensorManager$ListenerDelegate;->this$0:Landroid/hardware/SensorManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 578
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mSensorList:Ljava/util/ArrayList;

    .line 580
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v2, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mSensors:Landroid/util/SparseBooleanArray;

    .line 581
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v2, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mFirstEvent:Landroid/util/SparseBooleanArray;

    .line 582
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mSensorAccuracies:Landroid/util/SparseIntArray;

    .line 583
    iput v4, p0, Landroid/hardware/SensorManager$ListenerDelegate;->NUMBEROFTYPES:I

    .line 584
    new-array v2, v4, [I

    iput-object v2, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mDelay:[I

    .line 585
    new-array v2, v4, [J

    iput-object v2, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mLastDelivery:[J

    .line 587
    const/4 v2, 0x0

    iput v2, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mGyroCalibrationLevel:I

    .line 590
    iput-object p2, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 591
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 594
    .local v1, looper:Landroid/os/Looper;
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v4, :cond_1

    .line 595
    iget-object v2, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mDelay:[I

    const v3, 0x7fffffff

    aput v3, v2, v0

    .line 594
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 591
    .end local v0           #i:I
    .end local v1           #looper:Landroid/os/Looper;
    :cond_0
    iget-object v1, p1, Landroid/hardware/SensorManager;->mMainLooper:Landroid/os/Looper;

    goto :goto_0

    .line 600
    .restart local v0       #i:I
    .restart local v1       #looper:Landroid/os/Looper;
    :cond_1
    new-instance v2, Landroid/hardware/SensorManager$ListenerDelegate$1;

    invoke-direct {v2, p0, v1, p1}, Landroid/hardware/SensorManager$ListenerDelegate$1;-><init>(Landroid/hardware/SensorManager$ListenerDelegate;Landroid/os/Looper;Landroid/hardware/SensorManager;)V

    iput-object v2, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mHandler:Landroid/os/Handler;

    .line 632
    invoke-virtual {p0, p3}, Landroid/hardware/SensorManager$ListenerDelegate;->addSensor(Landroid/hardware/Sensor;)V

    .line 633
    return-void
.end method

.method static synthetic access$100(Landroid/hardware/SensorManager$ListenerDelegate;)Landroid/hardware/SensorEventListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 576
    iget-object v0, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    return-object v0
.end method


# virtual methods
.method addSensor(Landroid/hardware/Sensor;)V
    .locals 3
    .parameter "sensor"

    .prologue
    .line 640
    iget-object v0, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mSensors:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 641
    iget-object v0, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mSensorList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 642
    return-void
.end method

.method getDelay(Landroid/hardware/Sensor;)I
    .locals 2
    .parameter "sensor"

    .prologue
    .line 659
    iget-object v0, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mDelay:[I

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method getGyroCalibrationLevel()I
    .locals 1

    .prologue
    .line 667
    iget v0, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mGyroCalibrationLevel:I

    return v0
.end method

.method getListener()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 636
    iget-object v0, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method getSensors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 652
    iget-object v0, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mSensorList:Ljava/util/ArrayList;

    return-object v0
.end method

.method hasSensor(Landroid/hardware/Sensor;)Z
    .locals 2
    .parameter "sensor"

    .prologue
    .line 649
    iget-object v0, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mSensors:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method

.method onSensorChangedLocked(Landroid/hardware/Sensor;[F[JI)V
    .locals 10
    .parameter "sensor"
    .parameter "values"
    .parameter "timestamp"
    .parameter "accuracy"

    .prologue
    .line 671
    invoke-static {}, Landroid/hardware/SensorManager;->access$200()Landroid/hardware/SensorManager$SensorEventPool;

    move-result-object v6

    invoke-virtual {v6}, Landroid/hardware/SensorManager$SensorEventPool;->getFromPool()Landroid/hardware/SensorEvent;

    move-result-object v1

    .line 672
    .local v1, t:Landroid/hardware/SensorEvent;
    iget-object v5, v1, Landroid/hardware/SensorEvent;->values:[F

    .line 673
    .local v5, v:[F
    const-wide/16 v2, 0x0

    .line 674
    .local v2, timeAfterLastDelivery:J
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    .line 676
    .local v4, types:I
    const/4 v6, 0x0

    const/4 v7, 0x0

    aget v7, p2, v7

    aput v7, v5, v6

    .line 677
    const/4 v6, 0x1

    const/4 v7, 0x1

    aget v7, p2, v7

    aput v7, v5, v6

    .line 678
    const/4 v6, 0x2

    const/4 v7, 0x2

    aget v7, p2, v7

    aput v7, v5, v6

    .line 680
    const/4 v6, 0x0

    aget-wide v6, p3, v6

    iget-object v8, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mLastDelivery:[J

    aget-wide v8, v8, v4

    sub-long v2, v6, v8

    .line 681
    long-to-float v6, v2

    iget-object v7, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mDelay:[I

    aget v7, v7, v4

    mul-int/lit16 v7, v7, 0x3e8

    int-to-float v7, v7

    const/high16 v8, 0x3f40

    mul-float/2addr v7, v8

    cmpl-float v6, v6, v7

    if-gez v6, :cond_0

    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-ltz v6, :cond_0

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_2

    .line 688
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_1

    .line 689
    const/4 v6, 0x0

    aget v6, v5, v6

    float-to-int v6, v6

    if-lez v6, :cond_3

    const-string v6, "SensorManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Proximity, val = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    aget v8, v5, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  [far]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    :cond_1
    :goto_0
    const/4 v6, 0x0

    aget-wide v6, p3, v6

    iput-wide v6, v1, Landroid/hardware/SensorEvent;->timestamp:J

    .line 693
    iput p4, v1, Landroid/hardware/SensorEvent;->accuracy:I

    .line 694
    iput-object p1, v1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 695
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 696
    .local v0, msg:Landroid/os/Message;
    const/4 v6, 0x0

    iput v6, v0, Landroid/os/Message;->what:I

    .line 697
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 698
    iget-object v6, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 699
    iget-object v6, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mLastDelivery:[J

    const/4 v7, 0x0

    aget-wide v7, p3, v7

    aput-wide v7, v6, v4

    .line 704
    .end local v0           #msg:Landroid/os/Message;
    :cond_2
    return-void

    .line 690
    :cond_3
    const-string v6, "SensorManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Proximity, val = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    aget v8, v5, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  [close]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method removeSensor(Landroid/hardware/Sensor;)I
    .locals 2
    .parameter "sensor"

    .prologue
    .line 644
    iget-object v0, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mSensors:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 645
    iget-object v0, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mSensorList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 646
    iget-object v0, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mSensors:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    return v0
.end method

.method setDelay(Landroid/hardware/Sensor;I)V
    .locals 2
    .parameter "sensor"
    .parameter "delay"

    .prologue
    .line 655
    iget-object v0, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mDelay:[I

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    aput p2, v0, v1

    .line 656
    return-void
.end method

.method setGyroCalibrationLevel(I)V
    .locals 0
    .parameter "level"

    .prologue
    .line 664
    iput p1, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mGyroCalibrationLevel:I

    .line 665
    return-void
.end method
