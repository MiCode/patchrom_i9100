.class Lcom/android/settings/fmm/SimChangeAlert$PreferenceArea$1;
.super Ljava/lang/Object;
.source "SimChangeAlert.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fmm/SimChangeAlert$PreferenceArea;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fmm/SimChangeAlert$PreferenceArea;


# direct methods
.method constructor <init>(Lcom/android/settings/fmm/SimChangeAlert$PreferenceArea;)V
    .locals 0
    .parameter

    .prologue
    .line 291
    iput-object p1, p0, Lcom/android/settings/fmm/SimChangeAlert$PreferenceArea$1;->this$0:Lcom/android/settings/fmm/SimChangeAlert$PreferenceArea;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 308
    invoke-static {}, Lcom/android/settings/fmm/SimChangeAlert;->access$700()Landroid/preference/EditTextPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    .line 309
    iget-object v0, p0, Lcom/android/settings/fmm/SimChangeAlert$PreferenceArea$1;->this$0:Lcom/android/settings/fmm/SimChangeAlert$PreferenceArea;

    invoke-virtual {v0}, Lcom/android/settings/fmm/SimChangeAlert$PreferenceArea;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090930

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 311
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 303
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 297
    return-void
.end method
