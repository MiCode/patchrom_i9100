.class Lcom/android/server/enterprise/ExchangeAccountPolicy$1;
.super Landroid/content/BroadcastReceiver;
.source "ExchangeAccountPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/ExchangeAccountPolicy;->getDeviceId()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/ExchangeAccountPolicy;

.field final synthetic val$sync:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/ExchangeAccountPolicy;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1005
    iput-object p1, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy$1;->this$0:Lcom/android/server/enterprise/ExchangeAccountPolicy;

    iput-object p2, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy$1;->val$sync:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1008
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1009
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.enterprise.GET_DEVICEID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1010
    const-string v1, "deviceid"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->access$002(Ljava/lang/String;)Ljava/lang/String;

    .line 1012
    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy$1;->val$sync:Ljava/lang/Object;

    monitor-enter v2

    .line 1013
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy$1;->val$sync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1014
    monitor-exit v2

    .line 1015
    return-void

    .line 1014
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
