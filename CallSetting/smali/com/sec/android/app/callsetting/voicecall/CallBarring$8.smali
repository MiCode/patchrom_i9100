.class Lcom/sec/android/app/callsetting/voicecall/CallBarring$8;
.super Ljava/lang/Object;
.source "CallBarring.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 440
    iput-object p1, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring$8;->this$0:Lcom/sec/android/app/callsetting/voicecall/CallBarring;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    const/4 v1, 0x1

    .line 443
    iget-object v0, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring$8;->this$0:Lcom/sec/android/app/callsetting/voicecall/CallBarring;

    #setter for: Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mSkipCallBarringReq:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->access$202(Lcom/sec/android/app/callsetting/voicecall/CallBarring;Z)Z

    .line 444
    iget-object v0, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring$8;->this$0:Lcom/sec/android/app/callsetting/voicecall/CallBarring;

    #getter for: Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mPreference:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->access$400(Lcom/sec/android/app/callsetting/voicecall/CallBarring;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring$8;->this$0:Lcom/sec/android/app/callsetting/voicecall/CallBarring;

    #getter for: Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mSelectedIndex:I
    invoke-static {v2}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->access$300(Lcom/sec/android/app/callsetting/voicecall/CallBarring;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring$8;->this$0:Lcom/sec/android/app/callsetting/voicecall/CallBarring;

    #getter for: Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mCB_Checked:Z
    invoke-static {v2}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->access$1200(Lcom/sec/android/app/callsetting/voicecall/CallBarring;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 445
    return-void

    .line 444
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
