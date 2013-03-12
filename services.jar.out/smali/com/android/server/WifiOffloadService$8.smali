.class Lcom/android/server/WifiOffloadService$8;
.super Landroid/content/BroadcastReceiver;
.source "WifiOffloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WifiOffloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiOffloadService;


# direct methods
.method constructor <init>(Lcom/android/server/WifiOffloadService;)V
    .locals 0
    .parameter

    .prologue
    .line 1144
    iput-object p1, p0, Lcom/android/server/WifiOffloadService$8;->this$0:Lcom/android/server/WifiOffloadService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1147
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1148
    .local v0, action:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/WifiOffloadService$8;->this$0:Lcom/android/server/WifiOffloadService;

    const-string v2, "SCAN Results event received"

    invoke-virtual {v1, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1149
    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1150
    iget-object v1, p0, Lcom/android/server/WifiOffloadService$8;->this$0:Lcom/android/server/WifiOffloadService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    #setter for: Lcom/android/server/WifiOffloadService;->lastWifiScanTime:J
    invoke-static {v1, v2, v3}, Lcom/android/server/WifiOffloadService;->access$802(Lcom/android/server/WifiOffloadService;J)J

    .line 1151
    iget-object v1, p0, Lcom/android/server/WifiOffloadService$8;->this$0:Lcom/android/server/WifiOffloadService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SCAN Results obtained, so assign the current time "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/WifiOffloadService$8;->this$0:Lcom/android/server/WifiOffloadService;

    #getter for: Lcom/android/server/WifiOffloadService;->lastWifiScanTime:J
    invoke-static {v3}, Lcom/android/server/WifiOffloadService;->access$800(Lcom/android/server/WifiOffloadService;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1153
    iget-object v1, p0, Lcom/android/server/WifiOffloadService$8;->this$0:Lcom/android/server/WifiOffloadService;

    #getter for: Lcom/android/server/WifiOffloadService;->mWaitForScanResults:Z
    invoke-static {v1}, Lcom/android/server/WifiOffloadService;->access$900(Lcom/android/server/WifiOffloadService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1154
    iget-object v1, p0, Lcom/android/server/WifiOffloadService$8;->this$0:Lcom/android/server/WifiOffloadService;

    const-string v2, "Scan results available after seamless connect"

    invoke-virtual {v1, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1155
    iget-object v1, p0, Lcom/android/server/WifiOffloadService$8;->this$0:Lcom/android/server/WifiOffloadService;

    #calls: Lcom/android/server/WifiOffloadService;->hasNetworkInRange()V
    invoke-static {v1}, Lcom/android/server/WifiOffloadService;->access$1000(Lcom/android/server/WifiOffloadService;)V

    .line 1156
    iget-object v1, p0, Lcom/android/server/WifiOffloadService$8;->this$0:Lcom/android/server/WifiOffloadService;

    const/4 v2, 0x0

    #setter for: Lcom/android/server/WifiOffloadService;->mWaitForScanResults:Z
    invoke-static {v1, v2}, Lcom/android/server/WifiOffloadService;->access$902(Lcom/android/server/WifiOffloadService;Z)Z

    .line 1159
    :cond_0
    return-void
.end method
