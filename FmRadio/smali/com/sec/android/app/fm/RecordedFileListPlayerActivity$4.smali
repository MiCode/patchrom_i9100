.class Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$4;
.super Landroid/content/BroadcastReceiver;
.source "RecordedFileListPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->registerBroadcastReceiverLowBattery(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 323
    iput-object p1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$4;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 328
    :try_start_0
    invoke-static {}, Lcom/sec/android/app/fm/listplayer/FMListUtil;->isLowBattery()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 330
    iget-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$4;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a00cf

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/fm/listplayer/FMListUtil;->showToast(Landroid/content/Context;II)V

    .line 331
    iget-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$4;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    #getter for: Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mEventHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->access$400(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 332
    iget-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$4;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    #getter for: Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mEventHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->access$400(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xff0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 334
    :catch_0
    move-exception v0

    .line 335
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
