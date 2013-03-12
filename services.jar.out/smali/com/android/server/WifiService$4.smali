.class Lcom/android/server/WifiService$4;
.super Landroid/content/BroadcastReceiver;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/WifiService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiService;


# direct methods
.method constructor <init>(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter

    .prologue
    .line 842
    iput-object p1, p0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 845
    iget-object v0, p0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    const/4 v1, 0x1

    #setter for: Lcom/android/server/WifiService;->isBootCompleted:Z
    invoke-static {v0, v1}, Lcom/android/server/WifiService;->access$2202(Lcom/android/server/WifiService;Z)Z

    .line 846
    const-string v0, "WifiService"

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    iget-object v0, p0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    invoke-virtual {v0}, Lcom/android/server/WifiService;->checkAndStartWifi()V

    .line 848
    return-void
.end method
