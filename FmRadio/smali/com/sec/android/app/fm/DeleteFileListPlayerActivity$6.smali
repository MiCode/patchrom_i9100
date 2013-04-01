.class Lcom/sec/android/app/fm/DeleteFileListPlayerActivity$6;
.super Ljava/lang/Object;
.source "DeleteFileListPlayerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;
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
    .line 428
    iput-object p1, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity$6;->this$0:Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 430
    packed-switch p2, :pswitch_data_0

    .line 440
    :goto_0
    return-void

    .line 432
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity$6;->this$0:Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mListChange:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->access$102(Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;Z)Z

    .line 433
    iget-object v0, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity$6;->this$0:Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;

    #calls: Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->deleteFile()V
    invoke-static {v0}, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->access$600(Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;)V

    goto :goto_0

    .line 436
    :pswitch_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 437
    iget-object v0, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity$6;->this$0:Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mDeletePopup:Landroid/app/AlertDialog;

    goto :goto_0

    .line 430
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
