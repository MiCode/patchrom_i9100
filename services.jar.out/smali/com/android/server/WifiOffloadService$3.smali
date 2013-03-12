.class Lcom/android/server/WifiOffloadService$3;
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
    .line 595
    iput-object p1, p0, Lcom/android/server/WifiOffloadService$3;->this$0:Lcom/android/server/WifiOffloadService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 599
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 600
    .local v0, action:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/WifiOffloadService$3;->this$0:Lcom/android/server/WifiOffloadService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive -- WiFiTimerReceiver action "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 601
    iget-object v2, p0, Lcom/android/server/WifiOffloadService$3;->this$0:Lcom/android/server/WifiOffloadService;

    #getter for: Lcom/android/server/WifiOffloadService;->EXTRA_SSID:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/WifiOffloadService;->access$500(Lcom/android/server/WifiOffloadService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 602
    .local v1, ssid:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/WifiOffloadService$3;->this$0:Lcom/android/server/WifiOffloadService;

    #getter for: Lcom/android/server/WifiOffloadService;->ACTION_DELETE_REQUEST:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/WifiOffloadService;->access$600(Lcom/android/server/WifiOffloadService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 603
    iget-object v2, p0, Lcom/android/server/WifiOffloadService$3;->this$0:Lcom/android/server/WifiOffloadService;

    invoke-virtual {v2, v1}, Lcom/android/server/WifiOffloadService;->deleteNetwork(Ljava/lang/String;)I

    .line 606
    :cond_0
    return-void
.end method
