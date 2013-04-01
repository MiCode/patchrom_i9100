.class Lcom/sec/android/app/fm/RenameFileListPlayerActivity$1;
.super Landroid/os/Handler;
.source "RenameFileListPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/fm/RenameFileListPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/RenameFileListPlayerActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/RenameFileListPlayerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/sec/android/app/fm/RenameFileListPlayerActivity$1;->this$0:Lcom/sec/android/app/fm/RenameFileListPlayerActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 101
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 117
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 118
    return-void

    .line 111
    :sswitch_0
    iget-object v0, p0, Lcom/sec/android/app/fm/RenameFileListPlayerActivity$1;->this$0:Lcom/sec/android/app/fm/RenameFileListPlayerActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/RenameFileListPlayerActivity;->finish()V

    goto :goto_0

    .line 101
    nop

    :sswitch_data_0
    .sparse-switch
        0xff0 -> :sswitch_0
        0xfff -> :sswitch_0
    .end sparse-switch
.end method
