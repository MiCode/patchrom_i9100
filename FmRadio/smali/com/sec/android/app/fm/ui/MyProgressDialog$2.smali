.class Lcom/sec/android/app/fm/ui/MyProgressDialog$2;
.super Ljava/lang/Object;
.source "MyProgressDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/fm/ui/MyProgressDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/ui/MyProgressDialog;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/ui/MyProgressDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/sec/android/app/fm/ui/MyProgressDialog$2;->this$0:Lcom/sec/android/app/fm/ui/MyProgressDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 42
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 43
    iget-object v2, p0, Lcom/sec/android/app/fm/ui/MyProgressDialog$2;->this$0:Lcom/sec/android/app/fm/ui/MyProgressDialog;

    const-string v3, "FMPlayer"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/fm/ui/MyProgressDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/media/fmradio/FMPlayer;

    .line 45
    .local v1, mPlayer:Lcom/samsung/media/fmradio/FMPlayer;
    :try_start_0
    invoke-virtual {v1}, Lcom/samsung/media/fmradio/FMPlayer;->cancelAFSwitching()V
    :try_end_0
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/fm/ui/MyProgressDialog$2;->this$0:Lcom/sec/android/app/fm/ui/MyProgressDialog;

    invoke-virtual {v2}, Lcom/sec/android/app/fm/ui/MyProgressDialog;->finish()V

    .line 53
    .end local v1           #mPlayer:Lcom/samsung/media/fmradio/FMPlayer;
    :cond_0
    const/4 v2, 0x0

    return v2

    .line 46
    .restart local v1       #mPlayer:Lcom/samsung/media/fmradio/FMPlayer;
    :catch_0
    move-exception v0

    .line 48
    .local v0, e:Lcom/samsung/media/fmradio/FMPlayerException;
    :try_start_1
    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayerException;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 49
    :catch_1
    move-exception v2

    goto :goto_0
.end method
