.class public Lcom/android/settings/customizablekey/CustomizableKeySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "CustomizableKeySettings.java"


# instance fields
.field private mLongPress:Landroid/preference/Preference;

.field private mResetSettings:Landroid/preference/Preference;

.field private mShortPress:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/customizablekey/CustomizableKeySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/settings/customizablekey/CustomizableKeySettings;->updateUI()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/customizablekey/CustomizableKeySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/settings/customizablekey/CustomizableKeySettings;->resetCustomizableKey()V

    return-void
.end method

.method private resetCustomizableKey()V
    .locals 3

    .prologue
    .line 171
    const-string v0, "CustomizableKeySettings"

    const-string v1, "resetCustomizableKey() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-virtual {p0}, Lcom/android/settings/customizablekey/CustomizableKeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "short_press_app"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 174
    invoke-virtual {p0}, Lcom/android/settings/customizablekey/CustomizableKeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "long_press_app"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 175
    return-void
.end method

.method private updateUI()V
    .locals 5

    .prologue
    const v4, 0x7f09017f

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/customizablekey/CustomizableKeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "short_press_app"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/customizablekey/CustomizableKeySettings;->getApplicationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, short_app:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/customizablekey/CustomizableKeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "long_press_app"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/customizablekey/CustomizableKeySettings;->getApplicationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, long_app:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 91
    :cond_0
    iget-object v2, p0, Lcom/android/settings/customizablekey/CustomizableKeySettings;->mShortPress:Landroid/preference/Preference;

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setSummary(I)V

    .line 95
    :goto_0
    if-eqz v0, :cond_1

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 96
    :cond_1
    iget-object v2, p0, Lcom/android/settings/customizablekey/CustomizableKeySettings;->mLongPress:Landroid/preference/Preference;

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setSummary(I)V

    .line 100
    :goto_1
    return-void

    .line 93
    :cond_2
    iget-object v2, p0, Lcom/android/settings/customizablekey/CustomizableKeySettings;->mShortPress:Landroid/preference/Preference;

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 98
    :cond_3
    iget-object v2, p0, Lcom/android/settings/customizablekey/CustomizableKeySettings;->mLongPress:Landroid/preference/Preference;

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method public getApplicationName(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "db"

    .prologue
    const/4 v11, 0x0

    .line 103
    const-string v2, ""

    .line 104
    .local v2, appName:Ljava/lang/String;
    const-string v8, "CustomizableKeySettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "db: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    if-eqz p1, :cond_0

    const-string v8, ""

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    move-object v3, v2

    .line 118
    .end local v2           #appName:Ljava/lang/String;
    .local v3, appName:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 107
    .end local v3           #appName:Ljava/lang/String;
    .restart local v2       #appName:Ljava/lang/String;
    :cond_1
    const/16 v8, 0x2f

    invoke-virtual {p1, v8, v11}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    .line 108
    .local v6, package_index:I
    invoke-virtual {p1, v11, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 109
    .local v7, package_name:Ljava/lang/String;
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, activity_name:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/customizablekey/CustomizableKeySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    new-instance v9, Landroid/content/ComponentName;

    invoke-direct {v9, v7, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v10, 0x80

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    .line 113
    .local v5, info:Landroid/content/pm/ActivityInfo;
    invoke-virtual {p0}, Lcom/android/settings/customizablekey/CustomizableKeySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v5           #info:Landroid/content/pm/ActivityInfo;
    :goto_1
    move-object v3, v2

    .line 118
    .end local v2           #appName:Ljava/lang/String;
    .restart local v3       #appName:Ljava/lang/String;
    goto :goto_0

    .line 114
    .end local v3           #appName:Ljava/lang/String;
    .restart local v2       #appName:Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 115
    .local v4, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v8, "CustomizableKeySettings"

    const-string v9, "cannot find app name !"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const v0, 0x7f07001d

    invoke-virtual {p0, v0}, Lcom/android/settings/customizablekey/CustomizableKeySettings;->addPreferencesFromResource(I)V

    .line 61
    const-string v0, "short_press_key"

    invoke-virtual {p0, v0}, Lcom/android/settings/customizablekey/CustomizableKeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/customizablekey/CustomizableKeySettings;->mShortPress:Landroid/preference/Preference;

    .line 62
    const-string v0, "long_press_key"

    invoke-virtual {p0, v0}, Lcom/android/settings/customizablekey/CustomizableKeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/customizablekey/CustomizableKeySettings;->mLongPress:Landroid/preference/Preference;

    .line 63
    const-string v0, "reset_key"

    invoke-virtual {p0, v0}, Lcom/android/settings/customizablekey/CustomizableKeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/customizablekey/CustomizableKeySettings;->mResetSettings:Landroid/preference/Preference;

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/customizablekey/CustomizableKeySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/customizablekey/CustomizableKeySettings;->mShortPress:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 66
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter "dialogId"

    .prologue
    const/4 v2, 0x0

    .line 144
    invoke-virtual {p0}, Lcom/android/settings/customizablekey/CustomizableKeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/android/settings/customizablekey/CustomizableKeySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 145
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f0400b3

    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 147
    .local v1, layout:Landroid/view/View;
    packed-switch p1, :pswitch_data_0

    .line 166
    :goto_0
    return-object v2

    .line 149
    :pswitch_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/customizablekey/CustomizableKeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f090d47

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/android/settings/customizablekey/CustomizableKeySettings$2;

    invoke-direct {v4, p0}, Lcom/android/settings/customizablekey/CustomizableKeySettings$2;-><init>(Lcom/android/settings/customizablekey/CustomizableKeySettings;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    new-instance v4, Lcom/android/settings/customizablekey/CustomizableKeySettings$1;

    invoke-direct {v4, p0}, Lcom/android/settings/customizablekey/CustomizableKeySettings$1;-><init>(Lcom/android/settings/customizablekey/CustomizableKeySettings;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_0

    .line 147
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 76
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 77
    const-string v0, "CustomizableKeySettings"

    const-string v1, "onPause() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x1

    .line 122
    iget-object v2, p0, Lcom/android/settings/customizablekey/CustomizableKeySettings;->mShortPress:Landroid/preference/Preference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 123
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 124
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.customizablekey.AppList"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    const-string v2, "pressed_type"

    const-string v3, "short"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    invoke-virtual {p0, v0}, Lcom/android/settings/customizablekey/CustomizableKeySettings;->startActivity(Landroid/content/Intent;)V

    .line 138
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return v1

    .line 128
    :cond_0
    iget-object v2, p0, Lcom/android/settings/customizablekey/CustomizableKeySettings;->mLongPress:Landroid/preference/Preference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 129
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 130
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.customizablekey.AppList"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    const-string v2, "pressed_type"

    const-string v3, "long"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    invoke-virtual {p0, v0}, Lcom/android/settings/customizablekey/CustomizableKeySettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 134
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    iget-object v2, p0, Lcom/android/settings/customizablekey/CustomizableKeySettings;->mResetSettings:Landroid/preference/Preference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 135
    invoke-virtual {p0, v1}, Lcom/android/settings/customizablekey/CustomizableKeySettings;->showDialog(I)V

    goto :goto_0

    .line 138
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 69
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 70
    invoke-direct {p0}, Lcom/android/settings/customizablekey/CustomizableKeySettings;->updateUI()V

    .line 71
    const-string v0, "CustomizableKeySettings"

    const-string v1, "onResume() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 82
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 83
    const-string v0, "CustomizableKeySettings"

    const-string v1, "onStop() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    return-void
.end method
