.class Lcom/android/server/FMRadioService$1;
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
    .line 200
    iput-object p1, p0, Lcom/android/server/FMRadioService$1;->this$0:Lcom/android/server/FMRadioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v4, 0xa

    const/4 v5, 0x0

    .line 202
    iget-object v2, p0, Lcom/android/server/FMRadioService$1;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->volumeLock:Z
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$000(Lcom/android/server/FMRadioService;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 204
    const-string v2, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 205
    .local v0, stream:I
    const-string v2, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 206
    .local v1, volume:I
    const-string v2, "*** mReceiver: VOLUME_CHANGED_ACTION"

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 207
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "   stream: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 208
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "   volume: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 211
    if-eq v0, v4, :cond_0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/FMRadioService$1;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mIsOn:Z
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$100(Lcom/android/server/FMRadioService;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 212
    :cond_0
    iget-object v2, p0, Lcom/android/server/FMRadioService$1;->this$0:Lcom/android/server/FMRadioService;

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Lcom/android/server/FMRadioService;->setVolume(J)V

    .line 220
    .end local v0           #stream:I
    .end local v1           #volume:I
    :cond_1
    :goto_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.fm.volume_lock"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 221
    const-string v2, "Volume Locked..."

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 222
    iget-object v2, p0, Lcom/android/server/FMRadioService$1;->this$0:Lcom/android/server/FMRadioService;

    const/4 v3, 0x1

    #setter for: Lcom/android/server/FMRadioService;->volumeLock:Z
    invoke-static {v2, v3}, Lcom/android/server/FMRadioService;->access$002(Lcom/android/server/FMRadioService;Z)Z

    .line 228
    :cond_2
    :goto_1
    return-void

    .line 214
    :cond_3
    iget-object v2, p0, Lcom/android/server/FMRadioService$1;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->volumeLock:Z
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$000(Lcom/android/server/FMRadioService;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 216
    iget-object v2, p0, Lcom/android/server/FMRadioService$1;->this$0:Lcom/android/server/FMRadioService;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    goto :goto_0

    .line 224
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.fm.volume_unlock"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 225
    const-string v2, "Volume Unlocked..."

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 226
    iget-object v2, p0, Lcom/android/server/FMRadioService$1;->this$0:Lcom/android/server/FMRadioService;

    #setter for: Lcom/android/server/FMRadioService;->volumeLock:Z
    invoke-static {v2, v5}, Lcom/android/server/FMRadioService;->access$002(Lcom/android/server/FMRadioService;Z)Z

    goto :goto_1
.end method
