.class Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$7;
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
    .line 429
    iput-object p1, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$7;->this$0:Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 432
    iget-object v0, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$7;->this$0:Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;

    #setter for: Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mSkipCallBarringReq:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->access$202(Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;Z)Z

    .line 433
    iget-object v0, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$7;->this$0:Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;

    #getter for: Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->access$1100(Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$7;->this$0:Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;

    iget-object v3, v3, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->editText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 434
    iget-object v0, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$7;->this$0:Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;

    #getter for: Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mPreference:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->access$400(Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$7;->this$0:Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;

    #getter for: Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mSelectedIndex:I
    invoke-static {v3}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->access$300(Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$7;->this$0:Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;

    #getter for: Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mVCB_Checked:Z
    invoke-static {v3}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->access$1200(Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 435
    return-void

    :cond_0
    move v1, v2

    .line 434
    goto :goto_0
.end method
