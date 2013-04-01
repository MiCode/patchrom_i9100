.class Lcom/sec/android/app/fm/AllChannelActivity$6;
.super Ljava/lang/Object;
.source "AllChannelActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/fm/AllChannelActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/AllChannelActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/AllChannelActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 519
    iput-object p1, p0, Lcom/sec/android/app/fm/AllChannelActivity$6;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 523
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    if-nez v0, :cond_1

    .line 541
    :cond_0
    :goto_0
    return-void

    .line 526
    :cond_1
    if-nez p2, :cond_2

    .line 530
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->startScan(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/sec/android/app/fm/AllChannelActivity$6;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/fm/AllChannelActivity;->showDialog(I)V

    .line 532
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/MainActivity;->removeAllChannel()V

    goto :goto_0

    .line 535
    :cond_2
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->startScan(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/sec/android/app/fm/AllChannelActivity$6;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/fm/AllChannelActivity;->showDialog(I)V

    .line 538
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/MainActivity;->clearNonFavChannel()V

    goto :goto_0
.end method
