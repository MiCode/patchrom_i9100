.class Lcom/android/sec_settings/wifi/WifiConnectionMonitorService$ConnectionMonitoringHandler;
.super Landroid/os/Handler;
.source "WifiConnectionMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sec_settings/wifi/WifiConnectionMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectionMonitoringHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/wifi/WifiConnectionMonitorService;


# direct methods
.method public constructor <init>(Lcom/android/sec_settings/wifi/WifiConnectionMonitorService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 321
    iput-object p1, p0, Lcom/android/sec_settings/wifi/WifiConnectionMonitorService$ConnectionMonitoringHandler;->this$0:Lcom/android/sec_settings/wifi/WifiConnectionMonitorService;

    .line 322
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 323
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 327
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 328
    .local v0, arguments:Landroid/os/Bundle;
    invoke-static {}, Lcom/android/sec_settings/wifi/WifiConnectionMonitorService;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "WifiConnectionMonitorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 344
    :cond_1
    :goto_0
    return-void

    .line 331
    :pswitch_0
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiConnectionMonitorService$ConnectionMonitoringHandler;->this$0:Lcom/android/sec_settings/wifi/WifiConnectionMonitorService;

    invoke-virtual {v1}, Lcom/android/sec_settings/wifi/WifiConnectionMonitorService;->doWifiConnectionMonitoringPolicy()V

    .line 332
    const/16 v1, 0x3e9

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/sec_settings/wifi/WifiConnectionMonitorService$ConnectionMonitoringHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 335
    :pswitch_1
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiConnectionMonitorService$ConnectionMonitoringHandler;->this$0:Lcom/android/sec_settings/wifi/WifiConnectionMonitorService;

    #getter for: Lcom/android/sec_settings/wifi/WifiConnectionMonitorService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/sec_settings/wifi/WifiConnectionMonitorService;->access$100(Lcom/android/sec_settings/wifi/WifiConnectionMonitorService;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 336
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiConnectionMonitorService$ConnectionMonitoringHandler;->this$0:Lcom/android/sec_settings/wifi/WifiConnectionMonitorService;

    #getter for: Lcom/android/sec_settings/wifi/WifiConnectionMonitorService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/sec_settings/wifi/WifiConnectionMonitorService;->access$100(Lcom/android/sec_settings/wifi/WifiConnectionMonitorService;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->startScanActive()Z

    .line 337
    const/16 v1, 0x3ea

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/sec_settings/wifi/WifiConnectionMonitorService$ConnectionMonitoringHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 329
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
