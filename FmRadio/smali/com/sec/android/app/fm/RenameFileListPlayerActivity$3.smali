.class Lcom/sec/android/app/fm/RenameFileListPlayerActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "RenameFileListPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/fm/RenameFileListPlayerActivity;->registerBroadcastReceiverFileDelete(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/RenameFileListPlayerActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/RenameFileListPlayerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/sec/android/app/fm/RenameFileListPlayerActivity$3;->this$0:Lcom/sec/android/app/fm/RenameFileListPlayerActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 193
    const-string v0, "VoiceListOptionRenameActivity"

    const-string v1, "File delete Intent Received"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v0, p0, Lcom/sec/android/app/fm/RenameFileListPlayerActivity$3;->this$0:Lcom/sec/android/app/fm/RenameFileListPlayerActivity;

    #getter for: Lcom/sec/android/app/fm/RenameFileListPlayerActivity;->mEventHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/fm/RenameFileListPlayerActivity;->access$000(Lcom/sec/android/app/fm/RenameFileListPlayerActivity;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/sec/android/app/fm/RenameFileListPlayerActivity$3;->this$0:Lcom/sec/android/app/fm/RenameFileListPlayerActivity;

    #getter for: Lcom/sec/android/app/fm/RenameFileListPlayerActivity;->mEventHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/fm/RenameFileListPlayerActivity;->access$000(Lcom/sec/android/app/fm/RenameFileListPlayerActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xfff

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 196
    :cond_0
    return-void
.end method
