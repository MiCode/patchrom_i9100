.class Lcom/android/server/FMRadioService$9;
.super Landroid/content/BroadcastReceiver;
.source "FMRadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/FMRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/FMRadioService;


# direct methods
.method constructor <init>(Lcom/android/server/FMRadioService;)V
    .locals 0
    .parameter

    .prologue
    .line 609
    iput-object p1, p0, Lcom/android/server/FMRadioService$9;->this$0:Lcom/android/server/FMRadioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private off()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 618
    iget-object v0, p0, Lcom/android/server/FMRadioService$9;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mIsOn:Z
    invoke-static {v0}, Lcom/android/server/FMRadioService;->access$100(Lcom/android/server/FMRadioService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 619
    const-string v0, "Powering off: stop FM"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 620
    iget-object v0, p0, Lcom/android/server/FMRadioService$9;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v0}, Lcom/android/server/FMRadioService;->cancelSeek()V

    .line 621
    iget-object v0, p0, Lcom/android/server/FMRadioService$9;->this$0:Lcom/android/server/FMRadioService;

    const/4 v1, 0x6

    #calls: Lcom/android/server/FMRadioService;->offInternal(ZIZ)Z
    invoke-static {v0, v2, v1, v2}, Lcom/android/server/FMRadioService;->access$700(Lcom/android/server/FMRadioService;ZIZ)Z

    .line 623
    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 611
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 612
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 613
    invoke-direct {p0}, Lcom/android/server/FMRadioService$9;->off()V

    .line 615
    :cond_0
    return-void
.end method
