.class Lcom/sec/android/app/callsetting/voicecall/CallBarring$6;
.super Ljava/lang/Object;
.source "CallBarring.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/callsetting/voicecall/CallBarring;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/callsetting/voicecall/CallBarring;


# direct methods
.method constructor <init>(Lcom/sec/android/app/callsetting/voicecall/CallBarring;)V
    .locals 0
    .parameter

    .prologue
    .line 418
    iput-object p1, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring$6;->this$0:Lcom/sec/android/app/callsetting/voicecall/CallBarring;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 420
    iget-object v0, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring$6;->this$0:Lcom/sec/android/app/callsetting/voicecall/CallBarring;

    iget-object v1, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring$6;->this$0:Lcom/sec/android/app/callsetting/voicecall/CallBarring;

    iget-object v1, v1, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/sec/android/app/callsetting/voicecall/CallBarring;->callbarring_password:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->access$002(Lcom/sec/android/app/callsetting/voicecall/CallBarring;Ljava/lang/String;)Ljava/lang/String;

    .line 421
    iget-object v0, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring$6;->this$0:Lcom/sec/android/app/callsetting/voicecall/CallBarring;

    #getter for: Lcom/sec/android/app/callsetting/voicecall/CallBarring;->imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->access$1100(Lcom/sec/android/app/callsetting/voicecall/CallBarring;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring$6;->this$0:Lcom/sec/android/app/callsetting/voicecall/CallBarring;

    iget-object v1, v1, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 423
    iget-object v0, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring$6;->this$0:Lcom/sec/android/app/callsetting/voicecall/CallBarring;

    #getter for: Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mCB_Checked:Z
    invoke-static {v0}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->access$1200(Lcom/sec/android/app/callsetting/voicecall/CallBarring;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring$6;->this$0:Lcom/sec/android/app/callsetting/voicecall/CallBarring;

    #getter for: Lcom/sec/android/app/callsetting/voicecall/CallBarring;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->access$1300(Lcom/sec/android/app/callsetting/voicecall/CallBarring;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring$6;->this$0:Lcom/sec/android/app/callsetting/voicecall/CallBarring;

    iget-object v1, v1, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->doActivate:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 428
    :goto_0
    return-void

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring$6;->this$0:Lcom/sec/android/app/callsetting/voicecall/CallBarring;

    #getter for: Lcom/sec/android/app/callsetting/voicecall/CallBarring;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->access$1300(Lcom/sec/android/app/callsetting/voicecall/CallBarring;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring$6;->this$0:Lcom/sec/android/app/callsetting/voicecall/CallBarring;

    iget-object v1, v1, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->doDeactivate:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
