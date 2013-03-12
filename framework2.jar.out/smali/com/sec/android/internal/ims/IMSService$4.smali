.class Lcom/sec/android/internal/ims/IMSService$4;
.super Landroid/content/BroadcastReceiver;
.source "IMSService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/internal/ims/IMSService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/internal/ims/IMSService;


# direct methods
.method constructor <init>(Lcom/sec/android/internal/ims/IMSService;)V
    .locals 0
    .parameter

    .prologue
    .line 463
    iput-object p1, p0, Lcom/sec/android/internal/ims/IMSService$4;->this$0:Lcom/sec/android/internal/ims/IMSService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 466
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 468
    .local v0, action:Ljava/lang/String;
    const-string v2, "IMS/IMSService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BroadcastReceiver  action string = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    const-string v2, "com.sec.android.internal.ims.FLIGHT_MODE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 471
    iget-object v2, p0, Lcom/sec/android/internal/ims/IMSService$4;->this$0:Lcom/sec/android/internal/ims/IMSService;

    #getter for: Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/internal/ims/IMSService;->access$600(Lcom/sec/android/internal/ims/IMSService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 472
    .local v1, mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {}, Lcom/sec/android/internal/ims/IMSService;->access$100()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 498
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/internal/ims/external/NativeInterface;->onPowerOff()V

    .line 499
    iget-object v2, p0, Lcom/sec/android/internal/ims/IMSService$4;->this$0:Lcom/sec/android/internal/ims/IMSService;

    invoke-virtual {v2}, Lcom/sec/android/internal/ims/IMSService;->cancelVTNotification()V

    .line 500
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/android/internal/ims/IMSService;->access$102(Z)Z

    .line 505
    .end local v1           #mWifiManager:Landroid/net/wifi/WifiManager;
    :cond_0
    return-void
.end method
