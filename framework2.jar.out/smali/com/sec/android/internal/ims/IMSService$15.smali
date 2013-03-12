.class Lcom/sec/android/internal/ims/IMSService$15;
.super Landroid/content/BroadcastReceiver;
.source "IMSService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/internal/ims/IMSService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/internal/ims/IMSService;


# direct methods
.method constructor <init>(Lcom/sec/android/internal/ims/IMSService;)V
    .locals 0
    .parameter

    .prologue
    .line 3069
    iput-object p1, p0, Lcom/sec/android/internal/ims/IMSService$15;->this$0:Lcom/sec/android/internal/ims/IMSService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 3073
    const-string v0, "AlwaysOnSmsReceiveListener"

    .line 3074
    .local v0, FN_TAG:Ljava/lang/String;
    const-string v3, "FN_TAG Entering ---"

    invoke-static {v3}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 3076
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 3077
    .local v1, action:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "SMSIntentAction = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 3078
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, " com.android.receiver.action.ALWAYS_ON_STATUS_UPDATE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3081
    :cond_0
    const-string v3, "always_on_status"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 3082
    .local v2, isAlwaysOn:Z
    iget-object v3, p0, Lcom/sec/android/internal/ims/IMSService$15;->this$0:Lcom/sec/android/internal/ims/IMSService;

    invoke-virtual {v3, v2}, Lcom/sec/android/internal/ims/IMSService;->handleAlwaysOnChangefromSMS(Z)Z

    .line 3102
    const-string v3, "FN_TAG Exiting ---"

    invoke-static {v3}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 3103
    return-void
.end method
