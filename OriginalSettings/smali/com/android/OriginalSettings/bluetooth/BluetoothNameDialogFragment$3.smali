.class Lcom/android/settings/bluetooth/BluetoothNameDialogFragment$3;
.super Ljava/lang/Object;
.source "BluetoothNameDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->createDialogView(Ljava/lang/String;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment$3;->this$0:Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 197
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment$3;->this$0:Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;

    iget-object v2, v2, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 198
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_0

    .line 199
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment$3;->this$0:Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 201
    :cond_0
    if-eqz v0, :cond_1

    .line 202
    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 203
    .local v1, inputManager:Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment$3;->this$0:Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;

    iget-object v2, v2, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 206
    .end local v1           #inputManager:Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    return-void
.end method
