.class Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment$2;
.super Ljava/lang/Object;
.source "KeyboardLayoutDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment$2;->this$0:Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment$2;->this$0:Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment;

    #calls: Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment;->onSetupLayoutsButtonClicked()V
    invoke-static {v0}, Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment;->access$100(Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment;)V

    .line 102
    return-void
.end method
