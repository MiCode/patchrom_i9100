.class final Lcom/android/server/location/GpsLocationProvider$ProviderHandler;
.super Landroid/os/Handler;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ProviderHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider;


# direct methods
.method private constructor <init>(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 2358
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/location/GpsLocationProvider;Lcom/android/server/location/GpsLocationProvider$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2358
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2362
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2364
    .local v0, message:I
    packed-switch v0, :pswitch_data_0

    .line 2409
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$2900(Lcom/android/server/location/GpsLocationProvider;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    monitor-enter v3

    .line 2410
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    shl-int/2addr v2, v0

    xor-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Lcom/android/server/location/GpsLocationProvider;->access$3072(Lcom/android/server/location/GpsLocationProvider;I)I

    .line 2411
    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const/16 v1, 0xb

    if-ne v0, v1, :cond_2

    .line 2412
    :cond_1
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$3110(Lcom/android/server/location/GpsLocationProvider;)I

    .line 2414
    :cond_2
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mPendingMessageBits:I
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$3000(Lcom/android/server/location/GpsLocationProvider;)I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mPendingListenerMessages:I
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$3100(Lcom/android/server/location/GpsLocationProvider;)I

    move-result v1

    if-nez v1, :cond_3

    .line 2415
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$2900(Lcom/android/server/location/GpsLocationProvider;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2417
    :cond_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2419
    return-void

    .line 2366
    :pswitch_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v2, :cond_4

    .line 2367
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #calls: Lcom/android/server/location/GpsLocationProvider;->handleEnable()V
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$1400(Lcom/android/server/location/GpsLocationProvider;)V

    goto :goto_0

    .line 2369
    :cond_4
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #calls: Lcom/android/server/location/GpsLocationProvider;->handleDisable()V
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$1500(Lcom/android/server/location/GpsLocationProvider;)V

    goto :goto_0

    .line 2373
    :pswitch_1
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v2, :cond_5

    move v1, v2

    :cond_5
    #calls: Lcom/android/server/location/GpsLocationProvider;->handleEnableLocationTracking(Z)V
    invoke-static {v3, v1}, Lcom/android/server/location/GpsLocationProvider;->access$1600(Lcom/android/server/location/GpsLocationProvider;Z)V

    goto :goto_0

    .line 2376
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #calls: Lcom/android/server/location/GpsLocationProvider;->handleRequestSingleShot()V
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$1700(Lcom/android/server/location/GpsLocationProvider;)V

    goto :goto_0

    .line 2379
    :pswitch_3
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/NetworkInfo;

    #calls: Lcom/android/server/location/GpsLocationProvider;->handleUpdateNetworkState(ILandroid/net/NetworkInfo;)V
    invoke-static {v3, v4, v1}, Lcom/android/server/location/GpsLocationProvider;->access$1800(Lcom/android/server/location/GpsLocationProvider;ILandroid/net/NetworkInfo;)V

    goto :goto_0

    .line 2382
    :pswitch_4
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mInjectNtpTimeStarted:Z
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$1900(Lcom/android/server/location/GpsLocationProvider;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2383
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #calls: Lcom/android/server/location/GpsLocationProvider;->handleInjectNtpTime()V
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$2000(Lcom/android/server/location/GpsLocationProvider;)V

    goto :goto_0

    .line 2387
    :pswitch_5
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v2, :cond_6

    move v1, v2

    :cond_6
    #calls: Lcom/android/server/location/GpsLocationProvider;->handleInjectNtpTimeCompleted(Z)V
    invoke-static {v3, v1}, Lcom/android/server/location/GpsLocationProvider;->access$2100(Lcom/android/server/location/GpsLocationProvider;Z)V

    goto :goto_0

    .line 2390
    :pswitch_6
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mSupportsXtra:Z
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$2200(Lcom/android/server/location/GpsLocationProvider;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataStarted:Z
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$2300(Lcom/android/server/location/GpsLocationProvider;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2391
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #calls: Lcom/android/server/location/GpsLocationProvider;->handleDownloadXtraData()V
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$2400(Lcom/android/server/location/GpsLocationProvider;)V

    goto/16 :goto_0

    .line 2395
    :pswitch_7
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #calls: Lcom/android/server/location/GpsLocationProvider;->handleDownloadXtraDataCompleted()V
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$2500(Lcom/android/server/location/GpsLocationProvider;)V

    goto/16 :goto_0

    .line 2398
    :pswitch_8
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/location/Location;

    #calls: Lcom/android/server/location/GpsLocationProvider;->handleUpdateLocation(Landroid/location/Location;)V
    invoke-static {v3, v1}, Lcom/android/server/location/GpsLocationProvider;->access$2600(Lcom/android/server/location/GpsLocationProvider;Landroid/location/Location;)V

    goto/16 :goto_0

    .line 2401
    :pswitch_9
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    iget v3, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/server/location/GpsLocationProvider;->handleAddListener(I)V
    invoke-static {v1, v3}, Lcom/android/server/location/GpsLocationProvider;->access$2700(Lcom/android/server/location/GpsLocationProvider;I)V

    goto/16 :goto_0

    .line 2404
    :pswitch_a
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    iget v3, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/server/location/GpsLocationProvider;->handleRemoveListener(I)V
    invoke-static {v1, v3}, Lcom/android/server/location/GpsLocationProvider;->access$2800(Lcom/android/server/location/GpsLocationProvider;I)V

    goto/16 :goto_0

    .line 2417
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 2364
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_2
    .end packed-switch
.end method
