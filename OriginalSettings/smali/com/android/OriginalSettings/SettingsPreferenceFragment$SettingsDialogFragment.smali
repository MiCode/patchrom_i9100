.class public Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;
.super Landroid/app/DialogFragment;
.source "SettingsPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SettingsDialogFragment"
.end annotation


# instance fields
.field private mDialogId:I

.field private mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mParentFragment:Landroid/app/Fragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 146
    return-void
.end method

.method public constructor <init>(Lcom/android/OriginalSettings/DialogCreatable;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 148
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 149
    iput p2, p0, Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;->mDialogId:I

    .line 150
    instance-of v0, p1, Landroid/app/Fragment;

    if-nez v0, :cond_0

    .line 151
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fragment argument must be an instance of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Landroid/app/Fragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_0
    check-cast p1, Landroid/app/Fragment;

    iput-object p1, p0, Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    .line 155
    return-void
.end method


# virtual methods
.method public getDialogId()I
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;->mDialogId:I

    return v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 190
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 191
    iget-object v0, p0, Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    .line 194
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 168
    if-eqz p1, :cond_1

    .line 169
    const-string v0, "key_dialog_id"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;->mDialogId:I

    .line 170
    const-string v0, "key_parent_fragment_id"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 171
    if-le v0, v2, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    .line 173
    iget-object v0, p0, Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    instance-of v0, v0, Lcom/android/OriginalSettings/DialogCreatable;

    if-nez v0, :cond_0

    .line 174
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key_parent_fragment_id must implement "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/android/OriginalSettings/DialogCreatable;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    instance-of v0, v0, Lcom/android/OriginalSettings/SettingsPreferenceFragment;

    if-eqz v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/android/OriginalSettings/SettingsPreferenceFragment;

    #setter for: Lcom/android/OriginalSettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;
    invoke-static {v0, p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->access$202(Lcom/android/OriginalSettings/SettingsPreferenceFragment;Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;)Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/android/OriginalSettings/DialogCreatable;

    iget v1, p0, Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;->mDialogId:I

    invoke-interface {v0, v1}, Lcom/android/OriginalSettings/DialogCreatable;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 210
    invoke-super {p0}, Landroid/app/DialogFragment;->onDetach()V

    .line 213
    iget-object v0, p0, Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    instance-of v0, v0, Lcom/android/OriginalSettings/SettingsPreferenceFragment;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/android/OriginalSettings/SettingsPreferenceFragment;

    #getter for: Lcom/android/OriginalSettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;
    invoke-static {v0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->access$200(Lcom/android/OriginalSettings/SettingsPreferenceFragment;)Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/android/OriginalSettings/SettingsPreferenceFragment;

    const/4 v1, 0x0

    #setter for: Lcom/android/OriginalSettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;
    invoke-static {v0, v1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->access$202(Lcom/android/OriginalSettings/SettingsPreferenceFragment;Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;)Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 219
    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 198
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 199
    iget-object v0, p0, Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 202
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 159
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 160
    iget-object v0, p0, Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    .line 161
    const-string v0, "key_dialog_id"

    iget v1, p0, Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;->mDialogId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 162
    const-string v0, "key_parent_fragment_id"

    iget-object v1, p0, Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 164
    :cond_0
    return-void
.end method
