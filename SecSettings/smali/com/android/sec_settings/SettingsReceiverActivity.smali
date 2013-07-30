.class public Lcom/android/sec_settings/SettingsReceiverActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "SettingsReceiverActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mAlwaysCheck:Landroid/widget/CheckBox;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "position"

    .prologue
    .line 84
    packed-switch p2, :pswitch_data_0

    .line 98
    :goto_0
    return-void

    .line 86
    :pswitch_0
    const-string v2, "SettingsReceiverActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mAlwaysCheck : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/sec_settings/SettingsReceiverActivity;->mAlwaysCheck:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v2, p0, Lcom/android/sec_settings/SettingsReceiverActivity;->mAlwaysCheck:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    const-string v2, "NoUSBPreference"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/sec_settings/SettingsReceiverActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 89
    .local v1, mSharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 90
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_dont_ask_again"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 91
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 93
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #mSharedPreferences:Landroid/content/SharedPreferences;
    :cond_0
    invoke-virtual {p0}, Lcom/android/sec_settings/SettingsReceiverActivity;->finish()V

    goto :goto_0

    .line 84
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x0

    .line 48
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const-string v5, "NoUSBPreference"

    invoke-virtual {p0, v5, v8}, Lcom/android/sec_settings/SettingsReceiverActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 51
    .local v3, mSharedPreferences:Landroid/content/SharedPreferences;
    const-string v5, "SettingsReceiverActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PREF_DONT_ASK_AGAIN : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "pref_dont_ask_again"

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const-string v5, "pref_dont_ask_again"

    invoke-interface {v3, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/android/sec_settings/SettingsReceiverActivity;->finish()V

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/android/sec_settings/SettingsReceiverActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 57
    .local v0, ap:Lcom/android/internal/app/AlertController$AlertParams;
    invoke-virtual {p0}, Lcom/android/sec_settings/SettingsReceiverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0900e6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 58
    invoke-virtual {p0}, Lcom/android/sec_settings/SettingsReceiverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x104000a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 59
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 61
    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Lcom/android/sec_settings/SettingsReceiverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    iput-object v5, p0, Lcom/android/sec_settings/SettingsReceiverActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 62
    iget-object v5, p0, Lcom/android/sec_settings/SettingsReceiverActivity;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f0400b1

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 63
    iget-object v5, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v6, 0x7f0b00c0

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/android/sec_settings/SettingsReceiverActivity;->mAlwaysCheck:Landroid/widget/CheckBox;

    .line 64
    iget-object v5, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v6, 0x7f0b01f1

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 66
    .local v2, mNoUSB:Landroid/widget/TextView;
    const-string v5, "dev.kiessupport"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, kies:Ljava/lang/String;
    const-string v5, "SettingsReceiverActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dev.kiessupport is : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const-string v5, "TRUE"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 70
    const v5, 0x7f090d68

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 74
    :goto_0
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 75
    .local v4, out:Landroid/util/TypedValue;
    iget-object v5, v0, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v6, 0x1010355

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v4, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 76
    iget v5, v4, Landroid/util/TypedValue;->resourceId:I

    iput v5, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 77
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 79
    invoke-virtual {p0}, Lcom/android/sec_settings/SettingsReceiverActivity;->setupAlert()V

    .line 80
    return-void

    .line 72
    .end local v4           #out:Landroid/util/TypedValue;
    :cond_1
    const v5, 0x7f090d69

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
