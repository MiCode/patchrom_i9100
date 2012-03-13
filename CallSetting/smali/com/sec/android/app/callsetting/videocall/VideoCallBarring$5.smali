.class Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$5;
.super Ljava/lang/Object;
.source "VideoCallBarring.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
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
    .line 395
    iput-object p1, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$5;->this$0:Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 397
    iget-object v0, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$5;->this$0:Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;

    #getter for: Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->access$1100(Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$5;->this$0:Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;

    iget-object v1, v1, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->editText:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 398
    return-void
.end method
