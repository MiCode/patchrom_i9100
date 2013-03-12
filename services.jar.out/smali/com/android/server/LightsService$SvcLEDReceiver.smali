.class final Lcom/android/server/LightsService$SvcLEDReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SvcLEDReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LightsService;


# direct methods
.method private constructor <init>(Lcom/android/server/LightsService;)V
    .locals 0
    .parameter

    .prologue
    .line 438
    iput-object p1, p0, Lcom/android/server/LightsService$SvcLEDReceiver;->this$0:Lcom/android/server/LightsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/LightsService;Lcom/android/server/LightsService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 438
    invoke-direct {p0, p1}, Lcom/android/server/LightsService$SvcLEDReceiver;-><init>(Lcom/android/server/LightsService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    .line 442
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 443
    .local v0, calendar:Ljava/util/Calendar;
    const/16 v5, 0xa

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 444
    .local v1, hour:I
    const/16 v5, 0x9

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v5, v7, :cond_0

    .line 445
    add-int/lit8 v1, v1, 0xc

    .line 447
    :cond_0
    const/16 v5, 0xc

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 448
    .local v2, minute:I
    const/16 v5, 0xd

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 449
    .local v3, second:I
    mul-int/lit16 v5, v1, 0x2710

    mul-int/lit8 v6, v2, 0x64

    add-int/2addr v5, v6

    add-int v4, v5, v3

    .line 451
    .local v4, time:I
    const v5, 0xc350

    if-le v4, v5, :cond_1

    const v5, 0x35b60

    if-ge v4, v5, :cond_1

    .line 452
    iget-object v5, p0, Lcom/android/server/LightsService$SvcLEDReceiver;->this$0:Lcom/android/server/LightsService;

    const/4 v6, 0x0

    #setter for: Lcom/android/server/LightsService;->isHappyNight:Z
    invoke-static {v5, v6}, Lcom/android/server/LightsService;->access$2502(Lcom/android/server/LightsService;Z)Z

    .line 456
    :goto_0
    const-string v5, "LightsService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[SvcLED] SvcLEDReceiver::isHappyNight = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/LightsService$SvcLEDReceiver;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->isHappyNight:Z
    invoke-static {v7}, Lcom/android/server/LightsService;->access$2500(Lcom/android/server/LightsService;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget-object v5, p0, Lcom/android/server/LightsService$SvcLEDReceiver;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;
    invoke-static {v5}, Lcom/android/server/LightsService;->access$300(Lcom/android/server/LightsService;)Landroid/os/HandlerThread;

    move-result-object v6

    monitor-enter v6

    .line 461
    :try_start_0
    iget-object v5, p0, Lcom/android/server/LightsService$SvcLEDReceiver;->this$0:Lcom/android/server/LightsService;

    const/4 v7, 0x1

    #calls: Lcom/android/server/LightsService;->enableSvcLEDLightSensorLocked(Z)V
    invoke-static {v5, v7}, Lcom/android/server/LightsService;->access$2000(Lcom/android/server/LightsService;Z)V

    .line 462
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 481
    return-void

    .line 454
    :cond_1
    iget-object v5, p0, Lcom/android/server/LightsService$SvcLEDReceiver;->this$0:Lcom/android/server/LightsService;

    #setter for: Lcom/android/server/LightsService;->isHappyNight:Z
    invoke-static {v5, v7}, Lcom/android/server/LightsService;->access$2502(Lcom/android/server/LightsService;Z)Z

    goto :goto_0

    .line 462
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method
