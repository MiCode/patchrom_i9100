.class Lcom/android/server/WifiOffloadService$4;
.super Ljava/util/TimerTask;
.source "WifiOffloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/WifiOffloadService;->startDataActivityTimer()V
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
    .line 620
    iput-object p1, p0, Lcom/android/server/WifiOffloadService$4;->this$0:Lcom/android/server/WifiOffloadService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 623
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$4;->this$0:Lcom/android/server/WifiOffloadService;

    const-string v1, "checkDataActivityTimer excecuted"

    invoke-virtual {v0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 624
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$4;->this$0:Lcom/android/server/WifiOffloadService;

    invoke-virtual {v0}, Lcom/android/server/WifiOffloadService;->getIntelligentWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 625
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$4;->this$0:Lcom/android/server/WifiOffloadService;

    const-string v1, "Intel mode is ON"

    invoke-virtual {v0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 626
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$4;->this$0:Lcom/android/server/WifiOffloadService;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WifiOffloadService;->wifiOffloadFlow(Ljava/lang/String;Z)Z

    .line 631
    :goto_0
    return-void

    .line 628
    :cond_0
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$4;->this$0:Lcom/android/server/WifiOffloadService;

    const-string v1, "Intel mode is OFF"

    invoke-virtual {v0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    goto :goto_0
.end method
