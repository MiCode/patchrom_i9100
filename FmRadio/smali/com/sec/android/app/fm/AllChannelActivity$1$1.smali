.class Lcom/sec/android/app/fm/AllChannelActivity$1$1;
.super Ljava/lang/Object;
.source "AllChannelActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/fm/AllChannelActivity$1;->scanningOver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/fm/AllChannelActivity$1;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/AllChannelActivity$1;)V
    .locals 0
    .parameter

    .prologue
    .line 207
    iput-object p1, p0, Lcom/sec/android/app/fm/AllChannelActivity$1$1;->this$1:Lcom/sec/android/app/fm/AllChannelActivity$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/sec/android/app/fm/AllChannelActivity$1$1;->this$1:Lcom/sec/android/app/fm/AllChannelActivity$1;

    iget-object v0, v0, Lcom/sec/android/app/fm/AllChannelActivity$1;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    #getter for: Lcom/sec/android/app/fm/AllChannelActivity;->mScanFinishedDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/sec/android/app/fm/AllChannelActivity;->access$100(Lcom/sec/android/app/fm/AllChannelActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/fm/AllChannelActivity$1$1;->this$1:Lcom/sec/android/app/fm/AllChannelActivity$1;

    iget-object v0, v0, Lcom/sec/android/app/fm/AllChannelActivity$1;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    #getter for: Lcom/sec/android/app/fm/AllChannelActivity;->mScanFinishedDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/sec/android/app/fm/AllChannelActivity;->access$100(Lcom/sec/android/app/fm/AllChannelActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/sec/android/app/fm/AllChannelActivity$1$1;->this$1:Lcom/sec/android/app/fm/AllChannelActivity$1;

    iget-object v0, v0, Lcom/sec/android/app/fm/AllChannelActivity$1;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    #getter for: Lcom/sec/android/app/fm/AllChannelActivity;->mScanFinishedDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/sec/android/app/fm/AllChannelActivity;->access$100(Lcom/sec/android/app/fm/AllChannelActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 214
    :cond_0
    return-void
.end method
