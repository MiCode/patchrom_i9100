.class Lcom/sec/android/internal/ims/IMSService$ShutdownReceiver;
.super Landroid/content/BroadcastReceiver;
.source "IMSService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/internal/ims/IMSService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShutdownReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/internal/ims/IMSService;


# direct methods
.method private constructor <init>(Lcom/sec/android/internal/ims/IMSService;)V
    .locals 0
    .parameter

    .prologue
    .line 586
    iput-object p1, p0, Lcom/sec/android/internal/ims/IMSService$ShutdownReceiver;->this$0:Lcom/sec/android/internal/ims/IMSService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/internal/ims/IMSService;Lcom/sec/android/internal/ims/IMSService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 586
    invoke-direct {p0, p1}, Lcom/sec/android/internal/ims/IMSService$ShutdownReceiver;-><init>(Lcom/sec/android/internal/ims/IMSService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 589
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 590
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 591
    const-string v1, "Received android.intent.action.ACTION_SHUTDOWN"

    invoke-static {v1}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 592
    iget-object v1, p0, Lcom/sec/android/internal/ims/IMSService$ShutdownReceiver;->this$0:Lcom/sec/android/internal/ims/IMSService;

    invoke-virtual {v1}, Lcom/sec/android/internal/ims/IMSService;->onPowerOff()V

    .line 594
    :cond_0
    return-void
.end method
