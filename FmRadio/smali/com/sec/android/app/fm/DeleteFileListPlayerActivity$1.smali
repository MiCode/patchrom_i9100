.class Lcom/sec/android/app/fm/DeleteFileListPlayerActivity$1;
.super Landroid/os/Handler;
.source "DeleteFileListPlayerActivity.java"


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
    .line 154
    iput-object p1, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity$1;->this$0:Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 157
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 167
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 168
    return-void

    .line 162
    :sswitch_0
    iget-object v0, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity$1;->this$0:Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->finish()V

    goto :goto_0

    .line 157
    nop

    :sswitch_data_0
    .sparse-switch
        0xff0 -> :sswitch_0
        0xff5 -> :sswitch_0
        0xff6 -> :sswitch_0
        0xfff -> :sswitch_0
    .end sparse-switch
.end method
