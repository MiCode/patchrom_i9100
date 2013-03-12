.class Lcom/android/server/enterprise/WifiPolicy$3;
.super Landroid/content/BroadcastReceiver;
.source "WifiPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/WifiPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/WifiPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/WifiPolicy;)V
    .locals 0
    .parameter

    .prologue
    .line 2685
    iput-object p1, p0, Lcom/android/server/enterprise/WifiPolicy$3;->this$0:Lcom/android/server/enterprise/WifiPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v9, 0x1

    .line 2688
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "edm.intent.action.lock"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2689
    iget-object v7, p0, Lcom/android/server/enterprise/WifiPolicy$3;->this$0:Lcom/android/server/enterprise/WifiPolicy;

    invoke-virtual {v7}, Lcom/android/server/enterprise/WifiPolicy;->getTlsCertificateSecurityLevel()I

    move-result v7

    if-ne v7, v9, :cond_0

    .line 2690
    new-instance v1, Ljava/lang/Thread;

    new-instance v7, Lcom/android/server/enterprise/WifiPolicy$3$1;

    invoke-direct {v7, p0}, Lcom/android/server/enterprise/WifiPolicy$3$1;-><init>(Lcom/android/server/enterprise/WifiPolicy$3;)V

    invoke-direct {v1, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2695
    .local v1, lockKeystore:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 2729
    .end local v1           #lockKeystore:Ljava/lang/Thread;
    :cond_0
    :goto_0
    return-void

    .line 2697
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2698
    const-string v7, "wifi_state"

    const/4 v8, 0x4

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 2700
    .local v2, state:I
    const/4 v7, 0x3

    if-ne v2, v7, :cond_0

    .line 2705
    new-instance v4, Lcom/android/server/enterprise/WifiPolicy$3$2;

    invoke-direct {v4, p0}, Lcom/android/server/enterprise/WifiPolicy$3$2;-><init>(Lcom/android/server/enterprise/WifiPolicy$3;)V

    .line 2710
    .local v4, taskToupdateConfiguredNetworks:Ljava/lang/Runnable;
    new-instance v5, Ljava/lang/Thread;

    invoke-direct {v5, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2712
    .local v5, threadToUpdateConfiguredNetworks:Ljava/lang/Thread;
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 2714
    .end local v2           #state:I
    .end local v4           #taskToupdateConfiguredNetworks:Ljava/lang/Runnable;
    .end local v5           #threadToUpdateConfiguredNetworks:Ljava/lang/Thread;
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2715
    const-string v7, "networkInfo"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 2717
    .local v0, info:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/server/enterprise/WifiPolicy$3;->this$0:Lcom/android/server/enterprise/WifiPolicy;

    #calls: Lcom/android/server/enterprise/WifiPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-static {v7}, Lcom/android/server/enterprise/WifiPolicy;->access$100(Lcom/android/server/enterprise/WifiPolicy;)Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/enterprise/EnterpriseDeviceManager;->hasAnyActiveAdmin()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2718
    new-instance v3, Lcom/android/server/enterprise/WifiPolicy$3$3;

    invoke-direct {v3, p0}, Lcom/android/server/enterprise/WifiPolicy$3$3;-><init>(Lcom/android/server/enterprise/WifiPolicy$3;)V

    .line 2723
    .local v3, taskToWpsBlockedNetworks:Ljava/lang/Runnable;
    new-instance v6, Ljava/lang/Thread;

    invoke-direct {v6, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2724
    .local v6, threadToUpdateWpsBlockedNetworks:Ljava/lang/Thread;
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 2726
    .end local v0           #info:Landroid/net/NetworkInfo;
    .end local v3           #taskToWpsBlockedNetworks:Ljava/lang/Runnable;
    .end local v6           #threadToUpdateWpsBlockedNetworks:Ljava/lang/Thread;
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2727
    invoke-static {v9}, Lcom/android/server/enterprise/WifiPolicy;->access$302(Z)Z

    goto :goto_0
.end method
