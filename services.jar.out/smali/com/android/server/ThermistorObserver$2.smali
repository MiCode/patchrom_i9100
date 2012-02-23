.class Lcom/android/server/ThermistorObserver$2;
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
    .line 552
    iput-object p1, p0, Lcom/android/server/ThermistorObserver$2;->this$0:Lcom/android/server/ThermistorObserver;

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

    const/4 v4, 0x1

    .line 555
    const-string v1, "level"

    iget-object v2, p0, Lcom/android/server/ThermistorObserver$2;->this$0:Lcom/android/server/ThermistorObserver;

    #getter for: Lcom/android/server/ThermistorObserver;->mLatestBatteryLevel:I
    invoke-static {v2}, Lcom/android/server/ThermistorObserver;->access$200(Lcom/android/server/ThermistorObserver;)I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 556
    .local v0, currentBatteryLevel:I
    invoke-static {}, Lcom/android/server/ThermistorObserver;->access$300()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mBatteryBR : currentBatteryLevel : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  mLatestBatteryLevel : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ThermistorObserver$2;->this$0:Lcom/android/server/ThermistorObserver;

    #getter for: Lcom/android/server/ThermistorObserver;->mLatestBatteryLevel:I
    invoke-static {v3}, Lcom/android/server/ThermistorObserver;->access$200(Lcom/android/server/ThermistorObserver;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    if-ne v0, v5, :cond_0

    .line 559
    invoke-static {}, Lcom/android/server/ThermistorObserver;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mBatteryBR : ERROR : getting Battery Level is fail "

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    :goto_0
    return-void

    .line 562
    :cond_0
    iget-object v1, p0, Lcom/android/server/ThermistorObserver$2;->this$0:Lcom/android/server/ThermistorObserver;

    #getter for: Lcom/android/server/ThermistorObserver;->mThermistorState:I
    invoke-static {v1}, Lcom/android/server/ThermistorObserver;->access$400(Lcom/android/server/ThermistorObserver;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 563
    invoke-static {}, Lcom/android/server/ThermistorObserver;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mBatteryBR : ERROR : mThermistorState != ThermistorState.CONTROL"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 567
    :cond_1
    iget-object v1, p0, Lcom/android/server/ThermistorObserver$2;->this$0:Lcom/android/server/ThermistorObserver;

    #getter for: Lcom/android/server/ThermistorObserver;->mLatestBatteryLevel:I
    invoke-static {v1}, Lcom/android/server/ThermistorObserver;->access$200(Lcom/android/server/ThermistorObserver;)I

    move-result v1

    if-ne v1, v5, :cond_3

    .line 568
    if-le v0, v6, :cond_2

    .line 569
    iget-object v1, p0, Lcom/android/server/ThermistorObserver$2;->this$0:Lcom/android/server/ThermistorObserver;

    #calls: Lcom/android/server/ThermistorObserver;->limitChargingCurrent(Z)V
    invoke-static {v1, v4}, Lcom/android/server/ThermistorObserver;->access$500(Lcom/android/server/ThermistorObserver;Z)V

    .line 591
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/server/ThermistorObserver$2;->this$0:Lcom/android/server/ThermistorObserver;

    #setter for: Lcom/android/server/ThermistorObserver;->mLatestBatteryLevel:I
    invoke-static {v1, v0}, Lcom/android/server/ThermistorObserver;->access$202(Lcom/android/server/ThermistorObserver;I)I

    .line 592
    iget-object v1, p0, Lcom/android/server/ThermistorObserver$2;->this$0:Lcom/android/server/ThermistorObserver;

    #calls: Lcom/android/server/ThermistorObserver;->broadcastInformation()V
    invoke-static {v1}, Lcom/android/server/ThermistorObserver;->access$700(Lcom/android/server/ThermistorObserver;)V

    goto :goto_0

    .line 573
    :cond_3
    iget-object v1, p0, Lcom/android/server/ThermistorObserver$2;->this$0:Lcom/android/server/ThermistorObserver;

    #getter for: Lcom/android/server/ThermistorObserver;->mLatestBatteryLevel:I
    invoke-static {v1}, Lcom/android/server/ThermistorObserver;->access$200(Lcom/android/server/ThermistorObserver;)I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 574
    iget-object v1, p0, Lcom/android/server/ThermistorObserver$2;->this$0:Lcom/android/server/ThermistorObserver;

    #getter for: Lcom/android/server/ThermistorObserver;->mLatestBatteryLevel:I
    invoke-static {v1}, Lcom/android/server/ThermistorObserver;->access$200(Lcom/android/server/ThermistorObserver;)I

    move-result v1

    if-le v0, v1, :cond_4

    .line 575
    const/16 v1, 0x19

    if-le v0, v1, :cond_2

    .line 576
    iget-object v1, p0, Lcom/android/server/ThermistorObserver$2;->this$0:Lcom/android/server/ThermistorObserver;

    #getter for: Lcom/android/server/ThermistorObserver;->mIsChargingCurrentLimited:Z
    invoke-static {v1}, Lcom/android/server/ThermistorObserver;->access$600(Lcom/android/server/ThermistorObserver;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 577
    iget-object v1, p0, Lcom/android/server/ThermistorObserver$2;->this$0:Lcom/android/server/ThermistorObserver;

    #calls: Lcom/android/server/ThermistorObserver;->limitChargingCurrent(Z)V
    invoke-static {v1, v4}, Lcom/android/server/ThermistorObserver;->access$500(Lcom/android/server/ThermistorObserver;Z)V

    goto :goto_1

    .line 582
    :cond_4
    if-gt v0, v6, :cond_2

    .line 583
    iget-object v1, p0, Lcom/android/server/ThermistorObserver$2;->this$0:Lcom/android/server/ThermistorObserver;

    #getter for: Lcom/android/server/ThermistorObserver;->mIsChargingCurrentLimited:Z
    invoke-static {v1}, Lcom/android/server/ThermistorObserver;->access$600(Lcom/android/server/ThermistorObserver;)Z

    move-result v1

    if-ne v1, v4, :cond_2

    .line 584
    iget-object v1, p0, Lcom/android/server/ThermistorObserver$2;->this$0:Lcom/android/server/ThermistorObserver;

    const/4 v2, 0x0

    #calls: Lcom/android/server/ThermistorObserver;->limitChargingCurrent(Z)V
    invoke-static {v1, v2}, Lcom/android/server/ThermistorObserver;->access$500(Lcom/android/server/ThermistorObserver;Z)V

    goto :goto_1
.end method
