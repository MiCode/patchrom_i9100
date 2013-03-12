.class Landroid/hardware/contextaware/utilbundle/CAAutoTest$ScenarioThread;
.super Ljava/lang/Thread;
.source "CAAutoTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/utilbundle/CAAutoTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScenarioThread"
.end annotation


# instance fields
.field private final mDelayTime:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPacket:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field private mStopFlag:Z

.field final synthetic this$0:Landroid/hardware/contextaware/utilbundle/CAAutoTest;


# direct methods
.method constructor <init>(Landroid/hardware/contextaware/utilbundle/CAAutoTest;)V
    .locals 1
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Landroid/hardware/contextaware/utilbundle/CAAutoTest$ScenarioThread;->this$0:Landroid/hardware/contextaware/utilbundle/CAAutoTest;

    .line 126
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/contextaware/utilbundle/CAAutoTest$ScenarioThread;->mStopFlag:Z

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/CAAutoTest$ScenarioThread;->mPacket:Ljava/util/List;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/CAAutoTest$ScenarioThread;->mDelayTime:Ljava/util/List;

    .line 129
    return-void
.end method


# virtual methods
.method putPacket([B)V
    .locals 1
    .parameter "packet"

    .prologue
    .line 186
    invoke-static {}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->getInstance()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->parseForScenarioTesting([B)Z

    .line 188
    return-void
.end method

.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 138
    iget-object v6, p0, Landroid/hardware/contextaware/utilbundle/CAAutoTest$ScenarioThread;->this$0:Landroid/hardware/contextaware/utilbundle/CAAutoTest;

    #getter for: Landroid/hardware/contextaware/utilbundle/CAAutoTest;->mTestMode:I
    invoke-static {v6}, Landroid/hardware/contextaware/utilbundle/CAAutoTest;->access$000(Landroid/hardware/contextaware/utilbundle/CAAutoTest;)I

    move-result v6

    if-ne v6, v11, :cond_3

    .line 139
    const-string v6, "========== Scenario Test Start (ContextAware_All_Test) =========="

    invoke-static {v6}, Landroid/hardware/contextaware/utilbundle/CALogger;->debug(Ljava/lang/String;)V

    .line 145
    :cond_0
    :goto_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    :try_start_0
    iget-object v6, p0, Landroid/hardware/contextaware/utilbundle/CAAutoTest$ScenarioThread;->mPacket:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 146
    iget-object v6, p0, Landroid/hardware/contextaware/utilbundle/CAAutoTest$ScenarioThread;->mDelayTime:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 148
    iget-boolean v6, p0, Landroid/hardware/contextaware/utilbundle/CAAutoTest$ScenarioThread;->mStopFlag:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_4

    .line 171
    :cond_1
    :goto_2
    iget-object v6, p0, Landroid/hardware/contextaware/utilbundle/CAAutoTest$ScenarioThread;->this$0:Landroid/hardware/contextaware/utilbundle/CAAutoTest;

    #getter for: Landroid/hardware/contextaware/utilbundle/CAAutoTest;->mTestMode:I
    invoke-static {v6}, Landroid/hardware/contextaware/utilbundle/CAAutoTest;->access$000(Landroid/hardware/contextaware/utilbundle/CAAutoTest;)I

    move-result v6

    if-ne v6, v11, :cond_8

    .line 172
    const-string v6, "========== Scenario Test Stop (SSP_ALL_TEST) =========="

    invoke-static {v6}, Landroid/hardware/contextaware/utilbundle/CALogger;->debug(Ljava/lang/String;)V

    .line 176
    :cond_2
    :goto_3
    iget-object v6, p0, Landroid/hardware/contextaware/utilbundle/CAAutoTest$ScenarioThread;->this$0:Landroid/hardware/contextaware/utilbundle/CAAutoTest;

    invoke-virtual {v6}, Landroid/hardware/contextaware/utilbundle/CAAutoTest;->stopAutoTest()V

    .line 177
    return-void

    .line 140
    .end local v2           #i:I
    :cond_3
    iget-object v6, p0, Landroid/hardware/contextaware/utilbundle/CAAutoTest$ScenarioThread;->this$0:Landroid/hardware/contextaware/utilbundle/CAAutoTest;

    #getter for: Landroid/hardware/contextaware/utilbundle/CAAutoTest;->mTestMode:I
    invoke-static {v6}, Landroid/hardware/contextaware/utilbundle/CAAutoTest;->access$000(Landroid/hardware/contextaware/utilbundle/CAAutoTest;)I

    move-result v6

    if-ne v6, v10, :cond_0

    .line 141
    const-string v6, "========== Scenario Test Start (ConatextAware_Manager_Test) =========="

    invoke-static {v6}, Landroid/hardware/contextaware/utilbundle/CALogger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 152
    .restart local v2       #i:I
    :cond_4
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Scenario ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/hardware/contextaware/utilbundle/CALogger;->debug(Ljava/lang/String;)V

    .line 153
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DelayTime = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v6, p0, Landroid/hardware/contextaware/utilbundle/CAAutoTest$ScenarioThread;->mDelayTime:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/hardware/contextaware/utilbundle/CALogger;->info(Ljava/lang/String;)V

    .line 155
    iget-object v6, p0, Landroid/hardware/contextaware/utilbundle/CAAutoTest$ScenarioThread;->mPacket:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .local v0, arr$:[B
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_4
    if-ge v3, v5, :cond_5

    aget-byte v4, v0, v3

    .line 156
    .local v4, j:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Packet = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/hardware/contextaware/utilbundle/CALogger;->info(Ljava/lang/String;)V

    .line 155
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 159
    .end local v4           #j:I
    :cond_5
    iget-object v6, p0, Landroid/hardware/contextaware/utilbundle/CAAutoTest$ScenarioThread;->this$0:Landroid/hardware/contextaware/utilbundle/CAAutoTest;

    #getter for: Landroid/hardware/contextaware/utilbundle/CAAutoTest;->mTestMode:I
    invoke-static {v6}, Landroid/hardware/contextaware/utilbundle/CAAutoTest;->access$000(Landroid/hardware/contextaware/utilbundle/CAAutoTest;)I

    move-result v6

    if-ne v6, v11, :cond_7

    .line 160
    iget-object v6, p0, Landroid/hardware/contextaware/utilbundle/CAAutoTest$ScenarioThread;->this$0:Landroid/hardware/contextaware/utilbundle/CAAutoTest;

    #getter for: Landroid/hardware/contextaware/utilbundle/CAAutoTest;->mContextManager:Landroid/hardware/sensorhub/SensorHubManager;
    invoke-static {v6}, Landroid/hardware/contextaware/utilbundle/CAAutoTest;->access$100(Landroid/hardware/contextaware/utilbundle/CAAutoTest;)Landroid/hardware/sensorhub/SensorHubManager;

    move-result-object v7

    iget-object v6, p0, Landroid/hardware/contextaware/utilbundle/CAAutoTest$ScenarioThread;->this$0:Landroid/hardware/contextaware/utilbundle/CAAutoTest;

    #getter for: Landroid/hardware/contextaware/utilbundle/CAAutoTest;->mContextManager:Landroid/hardware/sensorhub/SensorHubManager;
    invoke-static {v6}, Landroid/hardware/contextaware/utilbundle/CAAutoTest;->access$100(Landroid/hardware/contextaware/utilbundle/CAAutoTest;)Landroid/hardware/sensorhub/SensorHubManager;

    move-result-object v6

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Landroid/hardware/sensorhub/SensorHubManager;->getDefaultSensorHub(I)Landroid/hardware/sensorhub/SensorHub;

    move-result-object v8

    iget-object v6, p0, Landroid/hardware/contextaware/utilbundle/CAAutoTest$ScenarioThread;->mPacket:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    array-length v9, v6

    iget-object v6, p0, Landroid/hardware/contextaware/utilbundle/CAAutoTest$ScenarioThread;->mPacket:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    invoke-virtual {v7, v8, v9, v6}, Landroid/hardware/sensorhub/SensorHubManager;->SendSensorHubData(Landroid/hardware/sensorhub/SensorHub;I[B)I

    .line 145
    :cond_6
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 163
    :cond_7
    iget-object v6, p0, Landroid/hardware/contextaware/utilbundle/CAAutoTest$ScenarioThread;->this$0:Landroid/hardware/contextaware/utilbundle/CAAutoTest;

    #getter for: Landroid/hardware/contextaware/utilbundle/CAAutoTest;->mTestMode:I
    invoke-static {v6}, Landroid/hardware/contextaware/utilbundle/CAAutoTest;->access$000(Landroid/hardware/contextaware/utilbundle/CAAutoTest;)I

    move-result v6

    if-ne v6, v10, :cond_6

    .line 164
    iget-object v6, p0, Landroid/hardware/contextaware/utilbundle/CAAutoTest$ScenarioThread;->mPacket:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    invoke-virtual {p0, v6}, Landroid/hardware/contextaware/utilbundle/CAAutoTest$ScenarioThread;->putPacket([B)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    .line 167
    .end local v0           #arr$:[B
    .end local v3           #i$:I
    .end local v5           #len$:I
    :catch_0
    move-exception v1

    .line 168
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-static {v1}, Landroid/hardware/contextaware/utilbundle/CALogger;->exception(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 173
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_8
    iget-object v6, p0, Landroid/hardware/contextaware/utilbundle/CAAutoTest$ScenarioThread;->this$0:Landroid/hardware/contextaware/utilbundle/CAAutoTest;

    #getter for: Landroid/hardware/contextaware/utilbundle/CAAutoTest;->mTestMode:I
    invoke-static {v6}, Landroid/hardware/contextaware/utilbundle/CAAutoTest;->access$000(Landroid/hardware/contextaware/utilbundle/CAAutoTest;)I

    move-result v6

    if-ne v6, v10, :cond_2

    .line 174
    const-string v6, "========== Scenario Test Stop (SSP_MANAGER_TEST) =========="

    invoke-static {v6}, Landroid/hardware/contextaware/utilbundle/CALogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method setPacketList([BI)V
    .locals 2
    .parameter "packet"
    .parameter "delayTime"

    .prologue
    .line 199
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CAAutoTest$ScenarioThread;->mPacket:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CAAutoTest$ScenarioThread;->mDelayTime:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    return-void
.end method

.method stopThread()V
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/contextaware/utilbundle/CAAutoTest$ScenarioThread;->mStopFlag:Z

    .line 208
    return-void
.end method
