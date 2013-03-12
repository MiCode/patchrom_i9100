.class Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;
.super Ljava/lang/Object;
.source "SensorHubManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/sensorhub/SensorHubManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListenerDelegate"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mSensorHubEventListener:Landroid/hardware/sensorhub/SensorHubEventListener;

.field private final mSensorHubList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/sensorhub/SensorHub;",
            ">;"
        }
    .end annotation
.end field

.field public mSensorHubs:Landroid/util/SparseBooleanArray;

.field final synthetic this$0:Landroid/hardware/sensorhub/SensorHubManager;


# direct methods
.method constructor <init>(Landroid/hardware/sensorhub/SensorHubManager;Landroid/hardware/sensorhub/SensorHubEventListener;Landroid/hardware/sensorhub/SensorHub;Landroid/os/Handler;)V
    .locals 2
    .parameter
    .parameter "listener"
    .parameter "sensorhub"
    .parameter "handler"

    .prologue
    .line 208
    iput-object p1, p0, Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;->this$0:Landroid/hardware/sensorhub/SensorHubManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 204
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;->mSensorHubList:Ljava/util/ArrayList;

    .line 206
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;->mSensorHubs:Landroid/util/SparseBooleanArray;

    .line 209
    iput-object p2, p0, Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;->mSensorHubEventListener:Landroid/hardware/sensorhub/SensorHubEventListener;

    .line 210
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 212
    .local v0, looper:Landroid/os/Looper;
    :goto_0
    new-instance v1, Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate$1;

    invoke-direct {v1, p0, v0, p1}, Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate$1;-><init>(Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;Landroid/os/Looper;Landroid/hardware/sensorhub/SensorHubManager;)V

    iput-object v1, p0, Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;->mHandler:Landroid/os/Handler;

    .line 221
    invoke-virtual {p0, p3}, Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;->addSensorHub(Landroid/hardware/sensorhub/SensorHub;)V

    .line 222
    return-void

    .line 210
    .end local v0           #looper:Landroid/os/Looper;
    :cond_0
    iget-object v0, p1, Landroid/hardware/sensorhub/SensorHubManager;->mMainLooper:Landroid/os/Looper;

    goto :goto_0
.end method

.method static synthetic access$100(Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;)Landroid/hardware/sensorhub/SensorHubEventListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 202
    iget-object v0, p0, Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;->mSensorHubEventListener:Landroid/hardware/sensorhub/SensorHubEventListener;

    return-object v0
.end method


# virtual methods
.method addSensorHub(Landroid/hardware/sensorhub/SensorHub;)V
    .locals 3
    .parameter "sensorhub"

    .prologue
    .line 229
    iget-object v0, p0, Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;->mSensorHubs:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/hardware/sensorhub/SensorHub;->getHandle()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 230
    iget-object v0, p0, Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;->mSensorHubList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    return-void
.end method

.method getListener()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;->mSensorHubEventListener:Landroid/hardware/sensorhub/SensorHubEventListener;

    return-object v0
.end method

.method getSensorHubs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/sensorhub/SensorHub;",
            ">;"
        }
    .end annotation

    .prologue
    .line 241
    iget-object v0, p0, Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;->mSensorHubList:Ljava/util/ArrayList;

    return-object v0
.end method

.method hasSensorHub(Landroid/hardware/sensorhub/SensorHub;)Z
    .locals 2
    .parameter "sensorhub"

    .prologue
    .line 238
    iget-object v0, p0, Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;->mSensorHubs:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/hardware/sensorhub/SensorHub;->getHandle()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method

.method onGetSensorHubDataLocked(Landroid/hardware/sensorhub/SensorHub;[BI[F[J)V
    .locals 8
    .parameter "sensorhub"
    .parameter "buffer"
    .parameter "length"
    .parameter "values"
    .parameter "timestamp"

    .prologue
    const/4 v7, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 245
    invoke-static {}, Landroid/hardware/sensorhub/SensorHubManager;->access$200()Landroid/hardware/sensorhub/SensorHubManager$SensorHubEventPool;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/sensorhub/SensorHubManager$SensorHubEventPool;->getFromPool()Landroid/hardware/sensorhub/SensorHubEvent;

    move-result-object v2

    .line 246
    .local v2, t:Landroid/hardware/sensorhub/SensorHubEvent;
    new-array v3, p3, [B

    iput-object v3, v2, Landroid/hardware/sensorhub/SensorHubEvent;->buffer:[B

    .line 247
    const/4 v3, 0x3

    new-array v3, v3, [F

    iput-object v3, v2, Landroid/hardware/sensorhub/SensorHubEvent;->values:[F

    .line 249
    iput-object p1, v2, Landroid/hardware/sensorhub/SensorHubEvent;->sensorhub:Landroid/hardware/sensorhub/SensorHub;

    .line 250
    iput p3, v2, Landroid/hardware/sensorhub/SensorHubEvent;->length:I

    .line 251
    iput-object p4, v2, Landroid/hardware/sensorhub/SensorHubEvent;->values:[F

    .line 252
    aget-wide v3, p5, v6

    iput-wide v3, v2, Landroid/hardware/sensorhub/SensorHubEvent;->timestamp:J

    .line 254
    iget-object v3, v2, Landroid/hardware/sensorhub/SensorHubEvent;->values:[F

    aget v4, p4, v6

    aput v4, v3, v6

    .line 255
    iget-object v3, v2, Landroid/hardware/sensorhub/SensorHubEvent;->values:[F

    aget v4, p4, v5

    aput v4, v3, v5

    .line 256
    iget-object v3, v2, Landroid/hardware/sensorhub/SensorHubEvent;->values:[F

    aget v4, p4, v7

    aput v4, v3, v7

    .line 258
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 259
    iget-object v3, v2, Landroid/hardware/sensorhub/SensorHubEvent;->buffer:[B

    aget-byte v4, p2, v0

    aput-byte v4, v3, v0

    .line 258
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 263
    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_1

    .line 264
    const-string v3, "SensorHubManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onGetSensorHubDataLocked["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Landroid/hardware/sensorhub/SensorHubEvent;->buffer:[B

    aget-byte v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 267
    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 268
    .local v1, msg:Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    .line 269
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 270
    iget-object v3, p0, Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 271
    return-void
.end method

.method removeSensorHub(Landroid/hardware/sensorhub/SensorHub;)I
    .locals 2
    .parameter "sensorhub"

    .prologue
    .line 233
    iget-object v0, p0, Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;->mSensorHubs:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/hardware/sensorhub/SensorHub;->getHandle()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 234
    iget-object v0, p0, Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;->mSensorHubList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 235
    iget-object v0, p0, Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;->mSensorHubs:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    return v0
.end method
