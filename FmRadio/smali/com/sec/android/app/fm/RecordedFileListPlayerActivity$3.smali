.class Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "RecordedFileListPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->registerBroadcastReceiverSDCard(Z)V
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
    .line 272
    iput-object p1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$3;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 275
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 276
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 277
    iget-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$3;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    #getter for: Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mEventHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->access$400(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 278
    iget-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$3;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    #getter for: Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mEventHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->access$400(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xfd2

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 296
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 281
    iget-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$3;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    #getter for: Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mEventHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->access$400(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 282
    iget-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$3;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    #getter for: Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mEventHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->access$400(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xfd3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 283
    :cond_2
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 284
    iget-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$3;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    #getter for: Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mEventHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->access$400(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 285
    iget-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$3;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    #getter for: Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mEventHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->access$400(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xfd5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 286
    :cond_3
    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 287
    iget-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$3;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    #getter for: Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mEventHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->access$400(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 288
    iget-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$3;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    #getter for: Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mEventHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->access$400(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xff6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 290
    :cond_4
    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 292
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 293
    iget-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$3;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    #getter for: Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mEventHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->access$400(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 294
    iget-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$3;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    #getter for: Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mEventHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->access$400(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xfd4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
