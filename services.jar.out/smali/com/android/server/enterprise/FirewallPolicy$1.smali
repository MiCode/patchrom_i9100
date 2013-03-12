.class Lcom/android/server/enterprise/FirewallPolicy$1;
.super Landroid/content/BroadcastReceiver;
.source "FirewallPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/FirewallPolicy;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/FirewallPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/FirewallPolicy;)V
    .locals 0
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/server/enterprise/FirewallPolicy$1;->this$0:Lcom/android/server/enterprise/FirewallPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "arg0"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 145
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 147
    iget-object v2, p0, Lcom/android/server/enterprise/FirewallPolicy$1;->this$0:Lcom/android/server/enterprise/FirewallPolicy;

    #calls: Lcom/android/server/enterprise/FirewallPolicy;->getLastUidForRules()I
    invoke-static {v2}, Lcom/android/server/enterprise/FirewallPolicy;->access$000(Lcom/android/server/enterprise/FirewallPolicy;)I

    move-result v1

    .line 148
    .local v1, rulesUid:I
    if-eq v1, v4, :cond_0

    .line 149
    iget-object v2, p0, Lcom/android/server/enterprise/FirewallPolicy$1;->this$0:Lcom/android/server/enterprise/FirewallPolicy;

    invoke-virtual {v2, v5, v1}, Lcom/android/server/enterprise/FirewallPolicy;->enableRulesWithUid(ZI)Z

    .line 152
    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/FirewallPolicy$1;->this$0:Lcom/android/server/enterprise/FirewallPolicy;

    #calls: Lcom/android/server/enterprise/FirewallPolicy;->getLastUidForProxy()I
    invoke-static {v2}, Lcom/android/server/enterprise/FirewallPolicy;->access$100(Lcom/android/server/enterprise/FirewallPolicy;)I

    move-result v0

    .line 153
    .local v0, proxyUid:I
    if-eq v0, v4, :cond_1

    .line 154
    iget-object v2, p0, Lcom/android/server/enterprise/FirewallPolicy$1;->this$0:Lcom/android/server/enterprise/FirewallPolicy;

    invoke-virtual {v2, v5, v0}, Lcom/android/server/enterprise/FirewallPolicy;->enableProxyWithUid(ZI)Z

    .line 157
    :cond_1
    iget-object v2, p0, Lcom/android/server/enterprise/FirewallPolicy$1;->this$0:Lcom/android/server/enterprise/FirewallPolicy;

    #calls: Lcom/android/server/enterprise/FirewallPolicy;->applyNetworkForMarket()V
    invoke-static {v2}, Lcom/android/server/enterprise/FirewallPolicy;->access$200(Lcom/android/server/enterprise/FirewallPolicy;)V

    .line 161
    .end local v0           #proxyUid:I
    .end local v1           #rulesUid:I
    :cond_2
    return-void
.end method
