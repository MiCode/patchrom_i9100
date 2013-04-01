.class Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$5;
.super Landroid/content/BroadcastReceiver;
.source "RecordedFileListPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->registerBroadcastReceiverVolume(Z)V
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
    .line 358
    iput-object p1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$5;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 361
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$5;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    #getter for: Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mEventHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->access$400(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xffa

    invoke-static {v0, v1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 362
    return-void
.end method
