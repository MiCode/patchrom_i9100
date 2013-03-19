.class Lcom/android/settings/net/DataUsageMeteredSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "DataUsageMeteredSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/net/DataUsageMeteredSettings;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/net/DataUsageMeteredSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/net/DataUsageMeteredSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/settings/net/DataUsageMeteredSettings$1;->this$0:Lcom/android/settings/net/DataUsageMeteredSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 69
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/android/settings/net/DataUsageMeteredSettings$1;->this$0:Lcom/android/settings/net/DataUsageMeteredSettings;

    #calls: Lcom/android/settings/net/DataUsageMeteredSettings;->updateNetworks(Landroid/content/Context;)V
    invoke-static {v1, p1}, Lcom/android/settings/net/DataUsageMeteredSettings;->access$000(Lcom/android/settings/net/DataUsageMeteredSettings;Landroid/content/Context;)V

    .line 73
    :cond_0
    return-void
.end method
