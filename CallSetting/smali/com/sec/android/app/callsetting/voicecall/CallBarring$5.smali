.class Lcom/sec/android/app/callsetting/voicecall/CallBarring$5;
.super Ljava/lang/Object;
.source "CallBarring.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/callsetting/voicecall/CallBarring;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
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
    .line 397
    iput-object p1, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring$5;->this$0:Lcom/sec/android/app/callsetting/voicecall/CallBarring;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 399
    iget-object v0, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring$5;->this$0:Lcom/sec/android/app/callsetting/voicecall/CallBarring;

    #getter for: Lcom/sec/android/app/callsetting/voicecall/CallBarring;->imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->access$1100(Lcom/sec/android/app/callsetting/voicecall/CallBarring;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring$5;->this$0:Lcom/sec/android/app/callsetting/voicecall/CallBarring;

    iget-object v1, v1, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->editText:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 400
    return-void
.end method
