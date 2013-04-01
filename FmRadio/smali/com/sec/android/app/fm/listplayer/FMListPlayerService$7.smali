.class Lcom/sec/android/app/fm/listplayer/FMListPlayerService$7;
.super Landroid/content/BroadcastReceiver;
.source "FMListPlayerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->registerBroadcastReceiverPalmTouch(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/listplayer/FMListPlayerService;)V
    .locals 0
    .parameter

    .prologue
    .line 651
    iput-object p1, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService$7;->this$0:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 655
    const-string v0, "FMListPlayerService"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PALM_DOWN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 657
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService$7;->this$0:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    #getter for: Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->mEventHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->access$500(Lcom/sec/android/app/fm/listplayer/FMListPlayerService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1004

    invoke-static {v0, v1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 665
    :cond_0
    return-void
.end method
