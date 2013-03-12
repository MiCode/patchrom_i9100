.class Lcom/android/server/WifiOffloadService$2;
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
    .line 572
    iput-object p1, p0, Lcom/android/server/WifiOffloadService$2;->this$0:Lcom/android/server/WifiOffloadService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 576
    iget-object v1, p0, Lcom/android/server/WifiOffloadService$2;->this$0:Lcom/android/server/WifiOffloadService;

    const-string v2, "onReceive -- WiFiTimerReceiver"

    invoke-virtual {v1, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 577
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 578
    .local v0, action:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/WifiOffloadService$2;->this$0:Lcom/android/server/WifiOffloadService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive -- WiFiTimerReceiver action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 580
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 582
    iget-object v1, p0, Lcom/android/server/WifiOffloadService$2;->this$0:Lcom/android/server/WifiOffloadService;

    const/4 v2, 0x1

    #setter for: Lcom/android/server/WifiOffloadService;->isBootCompleted:Z
    invoke-static {v1, v2}, Lcom/android/server/WifiOffloadService;->access$302(Lcom/android/server/WifiOffloadService;Z)Z

    .line 583
    iget-object v1, p0, Lcom/android/server/WifiOffloadService$2;->this$0:Lcom/android/server/WifiOffloadService;

    invoke-virtual {v1}, Lcom/android/server/WifiOffloadService;->getIntelligentWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 584
    iget-object v1, p0, Lcom/android/server/WifiOffloadService$2;->this$0:Lcom/android/server/WifiOffloadService;

    invoke-virtual {v1}, Lcom/android/server/WifiOffloadService;->startDataActivityTimer()V

    .line 586
    :cond_0
    iget-object v1, p0, Lcom/android/server/WifiOffloadService$2;->this$0:Lcom/android/server/WifiOffloadService;

    #getter for: Lcom/android/server/WifiOffloadService;->bootCompleteReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/android/server/WifiOffloadService;->access$400(Lcom/android/server/WifiOffloadService;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 589
    :cond_1
    return-void
.end method
