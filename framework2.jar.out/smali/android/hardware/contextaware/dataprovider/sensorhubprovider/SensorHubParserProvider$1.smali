.class Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider$1;
.super Ljava/lang/Object;
.source "SensorHubParserProvider.java"

# interfaces
.implements Landroid/hardware/sensorhub/SensorHubEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;


# direct methods
.method constructor <init>(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider$1;->this$0:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetSensorHubData(Landroid/hardware/sensorhub/SensorHubEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 86
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider$1;->this$0:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;

    #getter for: Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mParserMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->access$000(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider$1;->this$0:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;

    #getter for: Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mParserMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->access$000(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGetSensorHubData Event [event buffer len :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/hardware/sensorhub/SensorHubEvent;->length:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/CALogger;->debug(Ljava/lang/String;)V

    .line 93
    iget v0, p1, Landroid/hardware/sensorhub/SensorHubEvent;->length:I

    if-gtz v0, :cond_2

    .line 94
    const-string v0, "Event buffer size is zero."

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/CALogger;->error(Ljava/lang/String;)V

    .line 97
    :cond_2
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider$1;->this$0:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;

    iget-object v1, p1, Landroid/hardware/sensorhub/SensorHubEvent;->buffer:[B

    #calls: Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->parse([B)Z
    invoke-static {v0, v1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->access$100(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;[B)Z

    goto :goto_0
.end method
