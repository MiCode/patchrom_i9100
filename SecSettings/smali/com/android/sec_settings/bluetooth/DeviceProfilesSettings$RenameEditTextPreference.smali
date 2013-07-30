.class Lcom/android/sec_settings/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;
.super Ljava/lang/Object;
.source "DeviceProfilesSettings.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sec_settings/bluetooth/DeviceProfilesSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RenameEditTextPreference"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/bluetooth/DeviceProfilesSettings;


# direct methods
.method private constructor <init>(Lcom/android/sec_settings/bluetooth/DeviceProfilesSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/sec_settings/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;->this$0:Lcom/android/sec_settings/bluetooth/DeviceProfilesSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/sec_settings/bluetooth/DeviceProfilesSettings;Lcom/android/sec_settings/bluetooth/DeviceProfilesSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/android/sec_settings/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;-><init>(Lcom/android/sec_settings/bluetooth/DeviceProfilesSettings;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 10
    .parameter "s"

    .prologue
    const/16 v9, 0x20

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 101
    iget-object v5, p0, Lcom/android/sec_settings/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;->this$0:Lcom/android/sec_settings/bluetooth/DeviceProfilesSettings;

    #getter for: Lcom/android/sec_settings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Landroid/preference/EditTextPreference;
    invoke-static {v5}, Lcom/android/sec_settings/bluetooth/DeviceProfilesSettings;->access$000(Lcom/android/sec_settings/bluetooth/DeviceProfilesSettings;)Landroid/preference/EditTextPreference;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 102
    .local v0, d:Landroid/app/Dialog;
    instance-of v5, v0, Landroid/app/AlertDialog;

    if-eqz v5, :cond_2

    .line 103
    const/4 v4, 0x0

    .line 104
    .local v4, spaceNum:I
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v3

    .line 105
    .local v3, length:I
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, deviceName:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 108
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v9, :cond_0

    .line 109
    add-int/lit8 v4, v4, 0x1

    .line 107
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 112
    :cond_1
    iget-object v8, p0, Lcom/android/sec_settings/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;->this$0:Lcom/android/sec_settings/bluetooth/DeviceProfilesSettings;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v5

    if-lez v5, :cond_3

    if-eq v3, v4, :cond_3

    move v5, v6

    :goto_1
    #setter for: Lcom/android/sec_settings/bluetooth/DeviceProfilesSettings;->mNameEditedButtonEnabled:Z
    invoke-static {v8, v5}, Lcom/android/sec_settings/bluetooth/DeviceProfilesSettings;->access$102(Lcom/android/sec_settings/bluetooth/DeviceProfilesSettings;Z)Z

    .line 113
    check-cast v0, Landroid/app/AlertDialog;

    .end local v0           #d:Landroid/app/Dialog;
    const/4 v5, -0x1

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v5

    iget-object v8, p0, Lcom/android/sec_settings/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;->this$0:Lcom/android/sec_settings/bluetooth/DeviceProfilesSettings;

    #getter for: Lcom/android/sec_settings/bluetooth/DeviceProfilesSettings;->mNameEditedButtonEnabled:Z
    invoke-static {v8}, Lcom/android/sec_settings/bluetooth/DeviceProfilesSettings;->access$100(Lcom/android/sec_settings/bluetooth/DeviceProfilesSettings;)Z

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 117
    .end local v1           #deviceName:Ljava/lang/String;
    .end local v2           #i:I
    .end local v3           #length:I
    .end local v4           #spaceNum:I
    :cond_2
    new-array v5, v6, [Landroid/text/InputFilter;

    new-instance v6, Lcom/android/sec_settings/bluetooth/Utf8ByteLengthFilter;

    invoke-direct {v6, v9}, Lcom/android/sec_settings/bluetooth/Utf8ByteLengthFilter;-><init>(I)V

    aput-object v6, v5, v7

    invoke-interface {p1, v5}, Landroid/text/Editable;->setFilters([Landroid/text/InputFilter;)V

    .line 121
    return-void

    .restart local v0       #d:Landroid/app/Dialog;
    .restart local v1       #deviceName:Ljava/lang/String;
    .restart local v2       #i:I
    .restart local v3       #length:I
    .restart local v4       #spaceNum:I
    :cond_3
    move v5, v7

    .line 112
    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 126
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 131
    return-void
.end method
