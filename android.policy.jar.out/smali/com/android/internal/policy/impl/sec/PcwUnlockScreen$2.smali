.class Lcom/android/internal/policy/impl/sec/PcwUnlockScreen$2;
.super Ljava/lang/Object;
.source "PcwUnlockScreen.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 213
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 226
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 222
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 216
    const-string v0, "PcwUnlockScreen"

    const-string v1, "TextWatcher"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->access$000(Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 218
    return-void
.end method
