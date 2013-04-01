.class Lcom/sec/android/app/fm/DeleteFileListPlayerActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "DeleteFileListPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->registerBroadcastReceiverLowBattery(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 230
    iput-object p1, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity$3;->this$0:Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 235
    :try_start_0
    invoke-static {}, Lcom/sec/android/app/fm/listplayer/FMListUtil;->isLowBattery()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 237
    iget-object v1, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity$3;->this$0:Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a00cf

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/fm/listplayer/FMListUtil;->showToast(Landroid/content/Context;II)V

    .line 238
    iget-object v1, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity$3;->this$0:Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;

    #getter for: Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mEventHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->access$000(Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 239
    iget-object v1, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity$3;->this$0:Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;

    #getter for: Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mEventHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->access$000(Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xff0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    :cond_0
    :goto_0
    return-void

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
