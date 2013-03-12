.class Lcom/android/server/WifiOffloadService$1;
.super Landroid/os/Handler;
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
    .line 521
    iput-object p1, p0, Lcom/android/server/WifiOffloadService$1;->this$0:Lcom/android/server/WifiOffloadService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 524
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 525
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$1;->this$0:Lcom/android/server/WifiOffloadService;

    #getter for: Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/server/WifiOffloadService;->access$000(Lcom/android/server/WifiOffloadService;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 526
    iget-object v1, p0, Lcom/android/server/WifiOffloadService$1;->this$0:Lcom/android/server/WifiOffloadService;

    iget-object v0, p0, Lcom/android/server/WifiOffloadService$1;->this$0:Lcom/android/server/WifiOffloadService;

    #getter for: Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/WifiOffloadService;->access$100(Lcom/android/server/WifiOffloadService;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    #setter for: Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1, v0}, Lcom/android/server/WifiOffloadService;->access$002(Lcom/android/server/WifiOffloadService;Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiManager;

    .line 528
    :cond_0
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$1;->this$0:Lcom/android/server/WifiOffloadService;

    #getter for: Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/server/WifiOffloadService;->access$000(Lcom/android/server/WifiOffloadService;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 529
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$1;->this$0:Lcom/android/server/WifiOffloadService;

    invoke-virtual {v0}, Lcom/android/server/WifiOffloadService;->checkIsWifiConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 530
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$1;->this$0:Lcom/android/server/WifiOffloadService;

    const-string v1, "After Wifi disconnect 5min over so turn Wifi OFF"

    invoke-virtual {v0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 531
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$1;->this$0:Lcom/android/server/WifiOffloadService;

    #setter for: Lcom/android/server/WifiOffloadService;->mSeamlessConnectWhileConnecting:Z
    invoke-static {v0, v3}, Lcom/android/server/WifiOffloadService;->access$202(Lcom/android/server/WifiOffloadService;Z)Z

    .line 532
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$1;->this$0:Lcom/android/server/WifiOffloadService;

    #getter for: Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/server/WifiOffloadService;->access$000(Lcom/android/server/WifiOffloadService;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 536
    :cond_1
    return-void
.end method
