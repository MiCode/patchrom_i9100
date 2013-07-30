.class public Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment;
.super Landroid/app/DialogFragment;
.source "KeyboardLayoutDialogFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment$OnSetupKeyboardLayoutsListener;,
        Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;,
        Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutLoader;,
        Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/DialogFragment;",
        "Landroid/hardware/input/InputManager$InputDeviceListener;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;",
        ">;"
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;

.field private mIm:Landroid/hardware/input/InputManager;

.field private mInputDeviceDescriptor:Ljava/lang/String;

.field private mInputDeviceId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment;->mInputDeviceId:I

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "inputDeviceDescriptor"

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment;->mInputDeviceId:I

    .line 62
    iput-object p1, p0, Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment;->mInputDeviceDescriptor:Ljava/lang/String;

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment;->onKeyboardLayoutClicked(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment;->onSetupLayoutsButtonClicked()V

    return-void
.end method

.method private onKeyboardLayoutClicked(I)V
    .locals 4
    .parameter "which"

    .prologue
    .line 156
    if-ltz p1, :cond_1

    iget-object v1, p0, Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment;->mAdapter:Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;

    invoke-virtual {v1}, Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->getCount()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 157
    iget-object v1, p0, Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment;->mAdapter:Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;

    invoke-virtual {v1, p1}, Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/KeyboardLayout;

    .line 158
    .local v0, keyboardLayout:Landroid/hardware/input/KeyboardLayout;
    if-eqz v0, :cond_0

    .line 159
    iget-object v1, p0, Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment;->mIm:Landroid/hardware/input/InputManager;

    iget-object v2, p0, Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment;->mInputDeviceDescriptor:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/input/InputManager;->setCurrentKeyboardLayoutForInputDevice(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_0
    invoke-virtual {p0}, Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment;->dismiss()V

    .line 164
    .end local v0           #keyboardLayout:Landroid/hardware/input/KeyboardLayout;
    :cond_1
    return-void
.end method

.method private onSetupLayoutsButtonClicked()V
    .locals 2

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment$OnSetupKeyboardLayoutsListener;

    iget-object v1, p0, Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment;->mInputDeviceDescriptor:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment$OnSetupKeyboardLayoutsListener;->onSetupKeyboardLayouts(Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method private updateSwitchHintVisibility()V
    .locals 4

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog;

    .line 209
    .local v1, dialog:Landroid/app/AlertDialog;
    if-eqz v1, :cond_0

    .line 210
    const v2, 0x102027a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 211
    .local v0, customPanel:Landroid/view/View;
    iget-object v2, p0, Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment;->mAdapter:Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;

    invoke-virtual {v2}, Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 213
    .end local v0           #customPanel:Landroid/view/View;
    :cond_0
    return-void

    .line 211
    .restart local v0       #customPanel:Landroid/view/View;
    :cond_1
    const/16 v2, 0x8

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 151
    invoke-super {p0, p1, p2, p3}, Landroid/app/DialogFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 152
    invoke-virtual {p0}, Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "layout"

    invoke-virtual {p0, v0, v1}, Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 69
    invoke-virtual {p1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 70
    .local v0, context:Landroid/content/Context;
    const-string v1, "input"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManager;

    iput-object v1, p0, Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment;->mIm:Landroid/hardware/input/InputManager;

    .line 71
    new-instance v1, Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;

    invoke-direct {v1, v0}, Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment;->mAdapter:Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;

    .line 72
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 140
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 141
    invoke-virtual {p0}, Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment;->dismiss()V

    .line 142
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 78
    if-eqz p1, :cond_0

    .line 79
    const-string v0, "inputDeviceDescriptor"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment;->mInputDeviceDescriptor:Ljava/lang/String;

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 83
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 94
    .local v1, context:Landroid/content/Context;
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 95
    .local v2, inflater:Landroid/view/LayoutInflater;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f090643

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f090644

    new-instance v5, Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment$2;

    invoke-direct {v5, p0}, Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment$2;-><init>(Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment;->mAdapter:Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;

    const/4 v5, -0x1

    new-instance v6, Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment$1;

    invoke-direct {v6, p0}, Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment$1;-><init>(Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment;)V

    invoke-virtual {v3, v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f040078

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 112
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-direct {p0}, Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment;->updateSwitchHintVisibility()V

    .line 113
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;",
            ">;"
        }
    .end annotation

    .prologue
    .line 168
    new-instance v0, Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutLoader;

    invoke-virtual {p0}, Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment;->mInputDeviceDescriptor:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutLoader;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public onInputDeviceAdded(I)V
    .locals 0
    .parameter "deviceId"

    .prologue
    .line 191
    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 3
    .parameter "deviceId"

    .prologue
    .line 195
    iget v0, p0, Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment;->mInputDeviceId:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment;->mInputDeviceId:I

    if-ne p1, v0, :cond_0

    .line 196
    invoke-virtual {p0}, Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 198
    :cond_0
    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 1
    .parameter "deviceId"

    .prologue
    .line 202
    iget v0, p0, Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment;->mInputDeviceId:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment;->mInputDeviceId:I

    if-ne p1, v0, :cond_0

    .line 203
    invoke-virtual {p0}, Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment;->dismiss()V

    .line 205
    :cond_0
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;)V
    .locals 4
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;",
            ">;",
            "Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;",
            ")V"
        }
    .end annotation

    .prologue
    .line 173
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;>;"
    iget-object v1, p0, Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment;->mAdapter:Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;

    invoke-virtual {v1}, Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->clear()V

    .line 174
    iget-object v1, p0, Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment;->mAdapter:Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;

    iget-object v2, p2, Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;->keyboardLayouts:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->addAll(Ljava/util/Collection;)V

    .line 175
    iget-object v1, p0, Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment;->mAdapter:Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;

    iget v2, p2, Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;->current:I

    invoke-virtual {v1, v2}, Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->setCheckedItem(I)V

    .line 176
    invoke-virtual {p0}, Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    .line 177
    .local v0, dialog:Landroid/app/AlertDialog;
    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget v2, p2, Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;->current:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 180
    :cond_0
    invoke-direct {p0}, Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment;->updateSwitchHintVisibility()V

    .line 181
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    check-cast p2, Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment;->onLoadFinished(Landroid/content/Loader;Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 185
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;>;"
    iget-object v0, p0, Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment;->mAdapter:Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;

    invoke-virtual {v0}, Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->clear()V

    .line 186
    invoke-direct {p0}, Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment;->updateSwitchHintVisibility()V

    .line 187
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    .line 133
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment;->mInputDeviceId:I

    .line 135
    invoke-super {p0}, Landroid/app/DialogFragment;->onPause()V

    .line 136
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 118
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    .line 120
    iget-object v1, p0, Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment;->mIm:Landroid/hardware/input/InputManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 122
    iget-object v1, p0, Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment;->mIm:Landroid/hardware/input/InputManager;

    iget-object v2, p0, Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment;->mInputDeviceDescriptor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/hardware/input/InputManager;->getInputDeviceByDescriptor(Ljava/lang/String;)Landroid/view/InputDevice;

    move-result-object v0

    .line 123
    .local v0, inputDevice:Landroid/view/InputDevice;
    if-nez v0, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment;->dismiss()V

    .line 128
    :goto_0
    return-void

    .line 127
    :cond_0
    invoke-virtual {v0}, Landroid/view/InputDevice;->getId()I

    move-result v1

    iput v1, p0, Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment;->mInputDeviceId:I

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 87
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 88
    const-string v0, "inputDeviceDescriptor"

    iget-object v1, p0, Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment;->mInputDeviceDescriptor:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void
.end method
