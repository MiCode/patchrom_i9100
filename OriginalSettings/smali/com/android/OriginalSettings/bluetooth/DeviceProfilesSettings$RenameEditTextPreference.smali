.class Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;
.super Ljava/lang/Object;
.source "DeviceProfilesSettings.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RenameEditTextPreference"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;


# direct methods
.method private constructor <init>(Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;->this$0:Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;-><init>(Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;)V

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

    .line 77
    iget-object v5, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;->this$0:Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;

    #getter for: Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Landroid/preference/EditTextPreference;
    invoke-static {v5}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->access$000(Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;)Landroid/preference/EditTextPreference;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 78
    .local v0, d:Landroid/app/Dialog;
    instance-of v5, v0, Landroid/app/AlertDialog;

    if-eqz v5, :cond_2

    .line 79
    const/4 v4, 0x0

    .line 80
    .local v4, spaceNum:I
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v3

    .line 81
    .local v3, length:I
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, deviceName:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 84
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v9, :cond_0

    .line 85
    add-int/lit8 v4, v4, 0x1

    .line 83
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 88
    :cond_1
    check-cast v0, Landroid/app/AlertDialog;

    .end local v0           #d:Landroid/app/Dialog;
    const/4 v5, -0x1

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v8

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v5

    if-lez v5, :cond_3

    if-eq v3, v4, :cond_3

    move v5, v6

    :goto_1
    invoke-virtual {v8, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 92
    .end local v1           #deviceName:Ljava/lang/String;
    .end local v2           #i:I
    .end local v3           #length:I
    .end local v4           #spaceNum:I
    :cond_2
    new-array v5, v6, [Landroid/text/InputFilter;

    new-instance v6, Lcom/android/OriginalSettings/bluetooth/Utf8ByteLengthFilter;

    invoke-direct {v6, v9}, Lcom/android/OriginalSettings/bluetooth/Utf8ByteLengthFilter;-><init>(I)V

    aput-object v6, v5, v7

    invoke-interface {p1, v5}, Landroid/text/Editable;->setFilters([Landroid/text/InputFilter;)V

    .line 96
    return-void

    .restart local v1       #deviceName:Ljava/lang/String;
    .restart local v2       #i:I
    .restart local v3       #length:I
    .restart local v4       #spaceNum:I
    :cond_3
    move v5, v7

    .line 88
    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 101
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 106
    return-void
.end method
