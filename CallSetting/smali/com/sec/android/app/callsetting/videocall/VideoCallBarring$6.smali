.class Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$6;
.super Ljava/lang/Object;
.source "VideoCallBarring.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;


# direct methods
.method constructor <init>(Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;)V
    .locals 0
    .parameter

    .prologue
    .line 416
    iput-object p1, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$6;->this$0:Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 418
    iget-object v0, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$6;->this$0:Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;

    iget-object v1, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$6;->this$0:Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;

    iget-object v1, v1, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->callbarring_password:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->access$002(Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;Ljava/lang/String;)Ljava/lang/String;

    .line 419
    iget-object v0, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$6;->this$0:Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;

    #getter for: Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->access$1100(Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$6;->this$0:Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;

    iget-object v1, v1, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 421
    iget-object v0, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$6;->this$0:Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;

    #getter for: Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mVCB_Checked:Z
    invoke-static {v0}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->access$1200(Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$6;->this$0:Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;

    #getter for: Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->access$1300(Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$6;->this$0:Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;

    iget-object v1, v1, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->doActivate:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 426
    :goto_0
    return-void

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$6;->this$0:Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;

    #getter for: Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->access$1300(Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$6;->this$0:Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;

    iget-object v1, v1, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->doDeactivate:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
