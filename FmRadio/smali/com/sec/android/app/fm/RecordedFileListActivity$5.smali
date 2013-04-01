.class Lcom/sec/android/app/fm/RecordedFileListActivity$5;
.super Ljava/lang/Object;
.source "RecordedFileListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/fm/RecordedFileListActivity;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 370
    iput-object p1, p0, Lcom/sec/android/app/fm/RecordedFileListActivity$5;->this$0:Lcom/sec/android/app/fm/RecordedFileListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 374
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListActivity$5;->this$0:Lcom/sec/android/app/fm/RecordedFileListActivity;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/RecordedFileListActivity;->removeDialog(I)V

    .line 375
    return-void
.end method
