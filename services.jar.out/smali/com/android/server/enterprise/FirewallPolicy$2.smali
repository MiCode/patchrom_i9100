.class Lcom/android/server/enterprise/FirewallPolicy$2;
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
    .line 172
    iput-object p1, p0, Lcom/android/server/enterprise/FirewallPolicy$2;->this$0:Lcom/android/server/enterprise/FirewallPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 175
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/android/server/enterprise/FirewallPolicy$2;->this$0:Lcom/android/server/enterprise/FirewallPolicy;

    #calls: Lcom/android/server/enterprise/FirewallPolicy;->handleConnectivityAction()V
    invoke-static {v0}, Lcom/android/server/enterprise/FirewallPolicy;->access$300(Lcom/android/server/enterprise/FirewallPolicy;)V

    .line 181
    :cond_0
    return-void
.end method
