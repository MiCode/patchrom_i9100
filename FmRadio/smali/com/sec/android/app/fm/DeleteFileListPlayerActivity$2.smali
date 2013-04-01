.class Lcom/sec/android/app/fm/DeleteFileListPlayerActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "DeleteFileListPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->registerBroadcastReceiverSDCard(Z)V
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
    .line 177
    iput-object p1, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity$2;->this$0:Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 180
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 182
    iget-object v1, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity$2;->this$0:Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;

    #getter for: Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mEventHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->access$000(Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 183
    iget-object v1, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity$2;->this$0:Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;

    #getter for: Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mEventHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->access$000(Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xfd2

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 186
    iget-object v1, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity$2;->this$0:Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;

    #getter for: Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mEventHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->access$000(Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 187
    iget-object v1, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity$2;->this$0:Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;

    #getter for: Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mEventHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->access$000(Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xfd3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 188
    :cond_2
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 189
    iget-object v1, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity$2;->this$0:Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;

    #getter for: Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mEventHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->access$000(Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 190
    iget-object v1, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity$2;->this$0:Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;

    #getter for: Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mEventHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->access$000(Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xfd5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 191
    :cond_3
    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 192
    iget-object v1, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity$2;->this$0:Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;

    #getter for: Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mEventHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->access$000(Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 193
    iget-object v1, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity$2;->this$0:Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;

    #getter for: Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mEventHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->access$000(Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xff6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 195
    :cond_4
    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 196
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    iget-object v1, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity$2;->this$0:Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;

    #getter for: Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mEventHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->access$000(Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 198
    iget-object v1, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity$2;->this$0:Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;

    #getter for: Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mEventHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->access$000(Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xfd4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
