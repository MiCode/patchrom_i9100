.class Lcom/sec/android/app/fm/DeleteFileActivity$5;
.super Ljava/lang/Object;
.source "DeleteFileActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/fm/DeleteFileActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/DeleteFileActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/DeleteFileActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 280
    iput-object p1, p0, Lcom/sec/android/app/fm/DeleteFileActivity$5;->this$0:Lcom/sec/android/app/fm/DeleteFileActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 283
    iget-object v0, p0, Lcom/sec/android/app/fm/DeleteFileActivity$5;->this$0:Lcom/sec/android/app/fm/DeleteFileActivity;

    #getter for: Lcom/sec/android/app/fm/DeleteFileActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/app/fm/DeleteFileActivity;->access$300(Lcom/sec/android/app/fm/DeleteFileActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 284
    new-instance v0, Lcom/sec/android/app/fm/DeleteFileActivity$DeleteFileThread;

    iget-object v1, p0, Lcom/sec/android/app/fm/DeleteFileActivity$5;->this$0:Lcom/sec/android/app/fm/DeleteFileActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/fm/DeleteFileActivity$DeleteFileThread;-><init>(Lcom/sec/android/app/fm/DeleteFileActivity;Lcom/sec/android/app/fm/DeleteFileActivity$1;)V

    invoke-virtual {v0}, Lcom/sec/android/app/fm/DeleteFileActivity$DeleteFileThread;->start()V

    .line 285
    return-void
.end method
