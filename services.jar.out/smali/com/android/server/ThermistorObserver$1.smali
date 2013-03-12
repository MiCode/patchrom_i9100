.class Lcom/android/server/ThermistorObserver$1;
.super Landroid/content/BroadcastReceiver;
.source "ThermistorObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ThermistorObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ThermistorObserver;


# direct methods
.method constructor <init>(Lcom/android/server/ThermistorObserver;)V
    .locals 0
    .parameter

    .prologue
    .line 624
    iput-object p1, p0, Lcom/android/server/ThermistorObserver$1;->this$0:Lcom/android/server/ThermistorObserver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v6, 0x14

    const/4 v5, -0x1

    .line 627
    iget-object v2, p0, Lcom/android/server/ThermistorObserver$1;->this$0:Lcom/android/server/ThermistorObserver;

    monitor-enter v2

    .line 628
    :try_start_0
    const-string v1, "level"

    iget-object v3, p0, Lcom/android/server/ThermistorObserver$1;->this$0:Lcom/android/server/ThermistorObserver;

    #getter for: Lcom/android/server/ThermistorObserver;->mLatestBatteryLevel:I
    invoke-static {v3}, Lcom/android/server/ThermistorObserver;->access$1300(Lcom/android/server/ThermistorObserver;)I

    move-result v3

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 629
    .local v0, currentBatteryLevel:I
    invoke-static {}, Lcom/android/server/ThermistorObserver;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mBatteryBR : currentBatteryLevel : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  mLatestBatteryLevel : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/ThermistorObserver$1;->this$0:Lcom/android/server/ThermistorObserver;

    #getter for: Lcom/android/server/ThermistorObserver;->mLatestBatteryLevel:I
    invoke-static {v4}, Lcom/android/server/ThermistorObserver;->access$1300(Lcom/android/server/ThermistorObserver;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    if-ne v0, v5, :cond_0

    .line 632
    invoke-static {}, Lcom/android/server/ThermistorObserver;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v3, "mBatteryBR : ERROR : getting Battery Level is fail "

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    monitor-exit v2

    .line 667
    :goto_0
    return-void

    .line 636
    :cond_0
    iget-object v1, p0, Lcom/android/server/ThermistorObserver$1;->this$0:Lcom/android/server/ThermistorObserver;

    #getter for: Lcom/android/server/ThermistorObserver;->mIsLaunchedLimitCharging:Z
    invoke-static {v1}, Lcom/android/server/ThermistorObserver;->access$1400(Lcom/android/server/ThermistorObserver;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 637
    invoke-static {}, Lcom/android/server/ThermistorObserver;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v3, "mBatteryBR : ERROR : mIsLaunchedLimitCharging : false"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    monitor-exit v2

    goto :goto_0

    .line 666
    .end local v0           #currentBatteryLevel:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 641
    .restart local v0       #currentBatteryLevel:I
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/ThermistorObserver$1;->this$0:Lcom/android/server/ThermistorObserver;

    #getter for: Lcom/android/server/ThermistorObserver;->mLatestBatteryLevel:I
    invoke-static {v1}, Lcom/android/server/ThermistorObserver;->access$1300(Lcom/android/server/ThermistorObserver;)I

    move-result v1

    if-ne v1, v5, :cond_3

    .line 642
    if-le v0, v6, :cond_2

    .line 643
    iget-object v1, p0, Lcom/android/server/ThermistorObserver$1;->this$0:Lcom/android/server/ThermistorObserver;

    iget-object v3, p0, Lcom/android/server/ThermistorObserver$1;->this$0:Lcom/android/server/ThermistorObserver;

    #getter for: Lcom/android/server/ThermistorObserver;->mLastSIOPLevel:Lcom/android/server/ThermistorObserver$SIOPLevel;
    invoke-static {v3}, Lcom/android/server/ThermistorObserver;->access$1500(Lcom/android/server/ThermistorObserver;)Lcom/android/server/ThermistorObserver$SIOPLevel;

    move-result-object v3

    #getter for: Lcom/android/server/ThermistorObserver$SIOPLevel;->limitChargingCurrent:I
    invoke-static {v3}, Lcom/android/server/ThermistorObserver$SIOPLevel;->access$1000(Lcom/android/server/ThermistorObserver$SIOPLevel;)I

    move-result v3

    #calls: Lcom/android/server/ThermistorObserver;->limitChargingCurrent(I)V
    invoke-static {v1, v3}, Lcom/android/server/ThermistorObserver;->access$1600(Lcom/android/server/ThermistorObserver;I)V

    .line 665
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/server/ThermistorObserver$1;->this$0:Lcom/android/server/ThermistorObserver;

    #setter for: Lcom/android/server/ThermistorObserver;->mLatestBatteryLevel:I
    invoke-static {v1, v0}, Lcom/android/server/ThermistorObserver;->access$1302(Lcom/android/server/ThermistorObserver;I)I

    .line 666
    monitor-exit v2

    goto :goto_0

    .line 647
    :cond_3
    iget-object v1, p0, Lcom/android/server/ThermistorObserver$1;->this$0:Lcom/android/server/ThermistorObserver;

    #getter for: Lcom/android/server/ThermistorObserver;->mLatestBatteryLevel:I
    invoke-static {v1}, Lcom/android/server/ThermistorObserver;->access$1300(Lcom/android/server/ThermistorObserver;)I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 648
    iget-object v1, p0, Lcom/android/server/ThermistorObserver$1;->this$0:Lcom/android/server/ThermistorObserver;

    #getter for: Lcom/android/server/ThermistorObserver;->mLatestBatteryLevel:I
    invoke-static {v1}, Lcom/android/server/ThermistorObserver;->access$1300(Lcom/android/server/ThermistorObserver;)I

    move-result v1

    if-le v0, v1, :cond_4

    .line 649
    const/16 v1, 0x19

    if-le v0, v1, :cond_2

    .line 650
    iget-object v1, p0, Lcom/android/server/ThermistorObserver$1;->this$0:Lcom/android/server/ThermistorObserver;

    #getter for: Lcom/android/server/ThermistorObserver;->mIsChargingCurrentLimited:Z
    invoke-static {v1}, Lcom/android/server/ThermistorObserver;->access$1700(Lcom/android/server/ThermistorObserver;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 651
    iget-object v1, p0, Lcom/android/server/ThermistorObserver$1;->this$0:Lcom/android/server/ThermistorObserver;

    iget-object v3, p0, Lcom/android/server/ThermistorObserver$1;->this$0:Lcom/android/server/ThermistorObserver;

    #getter for: Lcom/android/server/ThermistorObserver;->mLastSIOPLevel:Lcom/android/server/ThermistorObserver$SIOPLevel;
    invoke-static {v3}, Lcom/android/server/ThermistorObserver;->access$1500(Lcom/android/server/ThermistorObserver;)Lcom/android/server/ThermistorObserver$SIOPLevel;

    move-result-object v3

    #getter for: Lcom/android/server/ThermistorObserver$SIOPLevel;->limitChargingCurrent:I
    invoke-static {v3}, Lcom/android/server/ThermistorObserver$SIOPLevel;->access$1000(Lcom/android/server/ThermistorObserver$SIOPLevel;)I

    move-result v3

    #calls: Lcom/android/server/ThermistorObserver;->limitChargingCurrent(I)V
    invoke-static {v1, v3}, Lcom/android/server/ThermistorObserver;->access$1600(Lcom/android/server/ThermistorObserver;I)V

    goto :goto_1

    .line 656
    :cond_4
    if-gt v0, v6, :cond_2

    .line 657
    iget-object v1, p0, Lcom/android/server/ThermistorObserver$1;->this$0:Lcom/android/server/ThermistorObserver;

    #getter for: Lcom/android/server/ThermistorObserver;->mIsChargingCurrentLimited:Z
    invoke-static {v1}, Lcom/android/server/ThermistorObserver;->access$1700(Lcom/android/server/ThermistorObserver;)Z

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    .line 658
    iget-object v1, p0, Lcom/android/server/ThermistorObserver$1;->this$0:Lcom/android/server/ThermistorObserver;

    const/4 v3, 0x0

    #calls: Lcom/android/server/ThermistorObserver;->limitChargingCurrent(I)V
    invoke-static {v1, v3}, Lcom/android/server/ThermistorObserver;->access$1600(Lcom/android/server/ThermistorObserver;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
