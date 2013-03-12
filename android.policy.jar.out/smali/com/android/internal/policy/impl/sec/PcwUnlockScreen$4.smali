.class Lcom/android/internal/policy/impl/sec/PcwUnlockScreen$4;
.super Ljava/lang/Object;
.source "PcwUnlockScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 276
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 279
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 280
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 281
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mPassword:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->access$100(Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 284
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;

    iget-object v1, v1, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->ad:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 285
    return-void
.end method
