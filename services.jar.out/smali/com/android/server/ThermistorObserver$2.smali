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
    .line 670
    iput-object p1, p0, Lcom/android/server/ThermistorObserver$2;->this$0:Lcom/android/server/ThermistorObserver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 673
    iget-object v3, p0, Lcom/android/server/ThermistorObserver$2;->this$0:Lcom/android/server/ThermistorObserver;

    monitor-enter v3

    .line 674
    :try_start_0
    const-string v2, "temperature"

    const/4 v4, 0x0

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 675
    .local v1, newTemperature:I
    const/16 v0, 0x1a4

    .line 676
    .local v0, TEMPERATURE_THRESHOLD:I
    invoke-static {}, Lcom/android/server/ThermistorObserver;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mBatteryBRForAMOLED :: onReceive(). newTemperature ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    iget-object v2, p0, Lcom/android/server/ThermistorObserver$2;->this$0:Lcom/android/server/ThermistorObserver;

    #getter for: Lcom/android/server/ThermistorObserver;->mBoolCurrentLimitBrightnessForAMOLED:Z
    invoke-static {v2}, Lcom/android/server/ThermistorObserver;->access$1800(Lcom/android/server/ThermistorObserver;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 679
    if-le v1, v0, :cond_0

    .line 680
    iget-object v2, p0, Lcom/android/server/ThermistorObserver$2;->this$0:Lcom/android/server/ThermistorObserver;

    const/4 v4, 0x1

    #setter for: Lcom/android/server/ThermistorObserver;->mBoolCurrentLimitBrightnessForAMOLED:Z
    invoke-static {v2, v4}, Lcom/android/server/ThermistorObserver;->access$1802(Lcom/android/server/ThermistorObserver;Z)Z

    .line 681
    iget-object v2, p0, Lcom/android/server/ThermistorObserver$2;->this$0:Lcom/android/server/ThermistorObserver;

    const/16 v4, 0xe6

    #calls: Lcom/android/server/ThermistorObserver;->limitBrightness(I)V
    invoke-static {v2, v4}, Lcom/android/server/ThermistorObserver;->access$1900(Lcom/android/server/ThermistorObserver;I)V

    .line 690
    :cond_0
    :goto_0
    monitor-exit v3

    .line 691
    return-void

    .line 685
    :cond_1
    if-gt v1, v0, :cond_0

    .line 686
    iget-object v2, p0, Lcom/android/server/ThermistorObserver$2;->this$0:Lcom/android/server/ThermistorObserver;

    const/4 v4, 0x0

    #setter for: Lcom/android/server/ThermistorObserver;->mBoolCurrentLimitBrightnessForAMOLED:Z
    invoke-static {v2, v4}, Lcom/android/server/ThermistorObserver;->access$1802(Lcom/android/server/ThermistorObserver;Z)Z

    .line 687
    iget-object v2, p0, Lcom/android/server/ThermistorObserver$2;->this$0:Lcom/android/server/ThermistorObserver;

    const/4 v4, -0x1

    #calls: Lcom/android/server/ThermistorObserver;->limitBrightness(I)V
    invoke-static {v2, v4}, Lcom/android/server/ThermistorObserver;->access$1900(Lcom/android/server/ThermistorObserver;I)V

    goto :goto_0

    .line 690
    .end local v0           #TEMPERATURE_THRESHOLD:I
    .end local v1           #newTemperature:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
