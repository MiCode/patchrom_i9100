.class Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$2;
.super Landroid/os/Handler;
.source "RecordedFileListPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;
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
    .line 224
    iput-object p1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$2;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 227
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 263
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 264
    return-void

    .line 231
    :sswitch_0
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$2;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mRenameDialog:Lcom/sec/android/app/fm/ui/RenameDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$2;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mRenameDialog:Lcom/sec/android/app/fm/ui/RenameDialog;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/ui/RenameDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$2;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mRenameDialog:Lcom/sec/android/app/fm/ui/RenameDialog;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/ui/RenameDialog;->dismiss()V

    goto :goto_0

    .line 236
    :sswitch_1
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$2;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    #getter for: Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mLowBattDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->access$100(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$2;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    #getter for: Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mLowBattDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->access$100(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$2;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    #getter for: Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mLowBattDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->access$100(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 239
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$2;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    #getter for: Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mDrmDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->access$200(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$2;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    #getter for: Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mDrmDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->access$200(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 240
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$2;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    #getter for: Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mDrmDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->access$200(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 242
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$2;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mOptionPopupDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$2;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mOptionPopupDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 243
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$2;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mOptionPopupDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 245
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$2;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mDeleteDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$2;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$2;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto/16 :goto_0

    .line 253
    :sswitch_2
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$2;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->finish()V

    goto/16 :goto_0

    .line 256
    :sswitch_3
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$2;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    #calls: Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->setVolume()V
    invoke-static {v0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->access$300(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)V

    goto/16 :goto_0

    .line 227
    nop

    :sswitch_data_0
    .sparse-switch
        0xfd2 -> :sswitch_0
        0xfd3 -> :sswitch_0
        0xfd4 -> :sswitch_1
        0xff0 -> :sswitch_2
        0xffa -> :sswitch_3
    .end sparse-switch
.end method
