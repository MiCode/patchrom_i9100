.class public abstract Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;
.super Landroid/hardware/contextaware/dataprovider/DataProvider;
.source "SensorHubProvider.java"

# interfaces
.implements Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;
.implements Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubCmdProtocol;


# instance fields
.field protected mContextManager:Landroid/hardware/sensorhub/SensorHubManager;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;)V
    .locals 0
    .parameter "context"
    .parameter "looper"
    .parameter "observable"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/contextaware/dataprovider/DataProvider;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;)V

    .line 32
    return-void
.end method

.method private sendPacketToSensorHub(I[B)V
    .locals 3
    .parameter "len"
    .parameter "packet"

    .prologue
    .line 76
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mContextManager:Landroid/hardware/sensorhub/SensorHubManager;

    if-nez v0, :cond_0

    .line 77
    const-string v0, "mContextManager is null."

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/CALogger;->error(Ljava/lang/String;)V

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mContextManager:Landroid/hardware/sensorhub/SensorHubManager;

    iget-object v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mContextManager:Landroid/hardware/sensorhub/SensorHubManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/sensorhub/SensorHubManager;->getDefaultSensorHub(I)Landroid/hardware/sensorhub/SensorHub;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/hardware/sensorhub/SensorHubManager;->SendSensorHubData(Landroid/hardware/sensorhub/SensorHub;I[B)I

    goto :goto_0
.end method


# virtual methods
.method protected initialize()V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/DataProvider;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 45
    const-string v0, "mContext is null."

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/CALogger;->error(Ljava/lang/String;)V

    .line 48
    :cond_0
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/DataProvider;->mContext:Landroid/content/Context;

    const-string v1, "sensorhub"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/sensorhub/SensorHubManager;

    iput-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mContextManager:Landroid/hardware/sensorhub/SensorHubManager;

    .line 50
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mContextManager:Landroid/hardware/sensorhub/SensorHubManager;

    if-nez v0, :cond_1

    .line 51
    const-string v0, "ContextManager is null."

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/CALogger;->error(Ljava/lang/String;)V

    .line 54
    :cond_1
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->clear()V

    .line 55
    return-void
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 118
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 128
    return-void
.end method

.method protected sendCmdToSensorHub(BB[B)V
    .locals 6
    .parameter "inst"
    .parameter "type"
    .parameter "data"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 97
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 98
    .local v0, packet:[B
    aput-byte p1, v0, v2

    .line 99
    aput-byte p2, v0, v3

    .line 100
    aget-byte v1, p3, v2

    aput-byte v1, v0, v4

    .line 101
    aget-byte v1, p3, v3

    aput-byte v1, v0, v5

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-byte v2, v0, v2

    invoke-static {v2}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v2, v0, v3

    invoke-static {v2}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v2, v0, v4

    invoke-static {v2}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v2, v0, v5

    invoke-static {v2}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/contextaware/utilbundle/CALogger;->info(Ljava/lang/String;)V

    .line 107
    array-length v1, v0

    invoke-direct {p0, v1, v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->sendPacketToSensorHub(I[B)V

    .line 108
    return-void
.end method

.method protected terminate()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mContextManager:Landroid/hardware/sensorhub/SensorHubManager;

    .line 65
    return-void
.end method
