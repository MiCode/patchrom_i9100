.class Lcom/android/server/WifiOffloadService$7;
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
    .line 1129
    iput-object p1, p0, Lcom/android/server/WifiOffloadService$7;->this$0:Lcom/android/server/WifiOffloadService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1132
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1133
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1134
    iget-object v1, p0, Lcom/android/server/WifiOffloadService$7;->this$0:Lcom/android/server/WifiOffloadService;

    #getter for: Lcom/android/server/WifiOffloadService;->scanResultAvailable:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/android/server/WifiOffloadService;->access$700(Lcom/android/server/WifiOffloadService;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1136
    iget-object v1, p0, Lcom/android/server/WifiOffloadService$7;->this$0:Lcom/android/server/WifiOffloadService;

    invoke-virtual {v1}, Lcom/android/server/WifiOffloadService;->showAPDialog()Z

    .line 1138
    :cond_0
    return-void
.end method
