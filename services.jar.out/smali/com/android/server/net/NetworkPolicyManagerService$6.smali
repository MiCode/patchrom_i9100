.class Lcom/android/server/net/NetworkPolicyManagerService$6;
.super Landroid/content/BroadcastReceiver;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 495
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$6;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 501
    const-string v1, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkTemplate;

    .line 502
    .local v0, template:Landroid/net/NetworkTemplate;
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$6;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    const/4 v2, 0x1

    #calls: Lcom/android/server/net/NetworkPolicyManagerService;->performSnooze(Landroid/net/NetworkTemplate;I)V
    invoke-static {v1, v0, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->access$800(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/NetworkTemplate;I)V

    .line 503
    return-void
.end method
