.class Landroid/app/enterprise/WifiPolicyCache$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiPolicyCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/enterprise/WifiPolicyCache;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/enterprise/WifiPolicyCache;


# direct methods
.method constructor <init>(Landroid/app/enterprise/WifiPolicyCache;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Landroid/app/enterprise/WifiPolicyCache$1;->this$0:Landroid/app/enterprise/WifiPolicyCache;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 71
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.app.enterprise.action.ACTION_WIFI_POLICY_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 73
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 74
    .local v1, extras:Landroid/os/Bundle;
    if-eqz v1, :cond_1

    .line 75
    const-string v3, "android.app.enterprise.extra.WIFI_TYPE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, type:Ljava/lang/String;
    iget-object v3, p0, Landroid/app/enterprise/WifiPolicyCache$1;->this$0:Landroid/app/enterprise/WifiPolicyCache;

    #calls: Landroid/app/enterprise/WifiPolicyCache;->readVariables(Ljava/lang/String;)V
    invoke-static {v3, v2}, Landroid/app/enterprise/WifiPolicyCache;->access$000(Landroid/app/enterprise/WifiPolicyCache;Ljava/lang/String;)V

    .line 81
    .end local v1           #extras:Landroid/os/Bundle;
    .end local v2           #type:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 78
    .restart local v1       #extras:Landroid/os/Bundle;
    :cond_1
    iget-object v3, p0, Landroid/app/enterprise/WifiPolicyCache$1;->this$0:Landroid/app/enterprise/WifiPolicyCache;

    const/4 v4, 0x0

    #calls: Landroid/app/enterprise/WifiPolicyCache;->readVariables(Ljava/lang/String;)V
    invoke-static {v3, v4}, Landroid/app/enterprise/WifiPolicyCache;->access$000(Landroid/app/enterprise/WifiPolicyCache;Ljava/lang/String;)V

    goto :goto_0
.end method
