.class Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;
.super Lcom/android/internal/view/IInputConnectionWrapper;
.source "InputMethodManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/InputMethodManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ControlledInputConnectionWrapper"
.end annotation


# instance fields
.field private mActive:Z

.field private final mParentInputMethodManager:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/InputMethodManager;)V
    .locals 1
    .parameter "mainLooper"
    .parameter "conn"
    .parameter "inputMethodManager"

    .prologue
    .line 426
    invoke-direct {p0, p1, p2}, Lcom/android/internal/view/IInputConnectionWrapper;-><init>(Landroid/os/Looper;Landroid/view/inputmethod/InputConnection;)V

    .line 427
    iput-object p3, p0, Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;->mParentInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 428
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;->mActive:Z

    .line 429
    return-void
.end method


# virtual methods
.method deactivate()V
    .locals 1

    .prologue
    .line 437
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;->mActive:Z

    .line 438
    return-void
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;->mParentInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-boolean v0, v0, Landroid/view/inputmethod/InputMethodManager;->mActive:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;->mActive:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
