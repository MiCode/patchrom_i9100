.class Lcom/sec/android/app/fm/RecordedFileListActivity$3;
.super Landroid/database/ContentObserver;
.source "RecordedFileListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/fm/RecordedFileListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/RecordedFileListActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/RecordedFileListActivity;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 187
    iput-object p1, p0, Lcom/sec/android/app/fm/RecordedFileListActivity$3;->this$0:Lcom/sec/android/app/fm/RecordedFileListActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 190
    invoke-static {}, Lcom/sec/android/app/fm/RecordedFileListActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChange() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListActivity$3;->this$0:Lcom/sec/android/app/fm/RecordedFileListActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/RecordedFileListActivity;->invalidateOptionsMenu()V

    .line 192
    return-void
.end method
