.class Lcom/sec/android/app/fm/DeleteFileActivity$4;
.super Landroid/database/ContentObserver;
.source "DeleteFileActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/fm/DeleteFileActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/DeleteFileActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/DeleteFileActivity;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 227
    iput-object p1, p0, Lcom/sec/android/app/fm/DeleteFileActivity$4;->this$0:Lcom/sec/android/app/fm/DeleteFileActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 230
    invoke-static {}, Lcom/sec/android/app/fm/DeleteFileActivity;->access$200()Ljava/lang/String;

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

    .line 231
    iget-object v0, p0, Lcom/sec/android/app/fm/DeleteFileActivity$4;->this$0:Lcom/sec/android/app/fm/DeleteFileActivity;

    #calls: Lcom/sec/android/app/fm/DeleteFileActivity;->refreshLayout()V
    invoke-static {v0}, Lcom/sec/android/app/fm/DeleteFileActivity;->access$500(Lcom/sec/android/app/fm/DeleteFileActivity;)V

    .line 233
    iget-object v0, p0, Lcom/sec/android/app/fm/DeleteFileActivity$4;->this$0:Lcom/sec/android/app/fm/DeleteFileActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/DeleteFileActivity;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/sec/android/app/fm/DeleteFileActivity$4;->this$0:Lcom/sec/android/app/fm/DeleteFileActivity;

    #getter for: Lcom/sec/android/app/fm/DeleteFileActivity;->mDialogDeleteConfirm:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/sec/android/app/fm/DeleteFileActivity;->access$600(Lcom/sec/android/app/fm/DeleteFileActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/fm/DeleteFileActivity$4;->this$0:Lcom/sec/android/app/fm/DeleteFileActivity;

    #getter for: Lcom/sec/android/app/fm/DeleteFileActivity;->mDialogDeleteConfirm:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/sec/android/app/fm/DeleteFileActivity;->access$600(Lcom/sec/android/app/fm/DeleteFileActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/sec/android/app/fm/DeleteFileActivity$4;->this$0:Lcom/sec/android/app/fm/DeleteFileActivity;

    #getter for: Lcom/sec/android/app/fm/DeleteFileActivity;->mDialogDeleteConfirm:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/sec/android/app/fm/DeleteFileActivity;->access$600(Lcom/sec/android/app/fm/DeleteFileActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 238
    :cond_0
    return-void
.end method
