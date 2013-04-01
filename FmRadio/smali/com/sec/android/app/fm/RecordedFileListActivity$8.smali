.class Lcom/sec/android/app/fm/RecordedFileListActivity$8;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/sec/android/app/fm/RecordedFileListActivity;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 559
    iput-object p1, p0, Lcom/sec/android/app/fm/RecordedFileListActivity$8;->this$0:Lcom/sec/android/app/fm/RecordedFileListActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 562
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListActivity$8;->this$0:Lcom/sec/android/app/fm/RecordedFileListActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/RecordedFileListActivity;->mAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->notifyDataSetChanged()V

    .line 563
    return-void
.end method
