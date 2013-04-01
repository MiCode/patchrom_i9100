.class Lcom/sec/android/app/fm/RecordedFileListActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "RecordedFileListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/fm/RecordedFileListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/RecordedFileListActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/RecordedFileListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/sec/android/app/fm/RecordedFileListActivity$1;->this$0:Lcom/sec/android/app/fm/RecordedFileListActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 74
    if-nez p2, :cond_1

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 78
    iget-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListActivity$1;->this$0:Lcom/sec/android/app/fm/RecordedFileListActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/fm/RecordedFileListActivity;->onMediaScannerStarted()V

    goto :goto_0

    .line 79
    :cond_2
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListActivity$1;->this$0:Lcom/sec/android/app/fm/RecordedFileListActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/fm/RecordedFileListActivity;->onMediaScannerFinished()V

    goto :goto_0
.end method
