.class public Lcom/android/settings/SmartNetworkPreference;
.super Landroid/preference/CheckBoxPreference;
.source "SmartNetworkPreference.java"


# instance fields
.field private mGuideDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, v0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    iput-object v0, p0, Lcom/android/settings/SmartNetworkPreference;->mGuideDialog:Landroid/app/AlertDialog;

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SmartNetworkPreference;->mGuideDialog:Landroid/app/AlertDialog;

    .line 47
    return-void
.end method

.method private showGuideDialog(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    .line 114
    iget-object v4, p0, Lcom/android/settings/SmartNetworkPreference;->mGuideDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    .line 115
    iget-object v4, p0, Lcom/android/settings/SmartNetworkPreference;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 116
    iput-object v7, p0, Lcom/android/settings/SmartNetworkPreference;->mGuideDialog:Landroid/app/AlertDialog;

    .line 119
    :cond_0
    const-string v4, "layout_inflater"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 120
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f0400ec

    invoke-virtual {v2, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 121
    .local v3, layout:Landroid/view/View;
    const v4, 0x7f0b0079

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 123
    .local v0, checkBox:Landroid/widget/CheckBox;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 124
    .local v1, guideDialogBuilder:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f09000f

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    new-instance v6, Lcom/android/settings/SmartNetworkPreference$1;

    invoke-direct {v6, p0, p1, v0}, Lcom/android/settings/SmartNetworkPreference$1;-><init>(Lcom/android/settings/SmartNetworkPreference;Landroid/content/Context;Landroid/widget/CheckBox;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x104

    invoke-virtual {v4, v5, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 137
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/SmartNetworkPreference;->mGuideDialog:Landroid/app/AlertDialog;

    .line 138
    iget-object v4, p0, Lcom/android/settings/SmartNetworkPreference;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d3

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 139
    iget-object v4, p0, Lcom/android/settings/SmartNetworkPreference;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 140
    return-void
.end method


# virtual methods
.method public checkSmartNetwork(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Lcom/android/settings/SmartNetworkPreference;->shouldShowGuideDialog(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    invoke-direct {p0, p1}, Lcom/android/settings/SmartNetworkPreference;->showGuideDialog(Landroid/content/Context;)V

    .line 110
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings/SmartNetworkPreference;->updateSmartNetworkPreference(Landroid/content/Context;)V

    .line 111
    return-void

    .line 106
    :cond_0
    const-string v0, "SmartNetworkPreference"

    const-string v1, "checkSmartNetwork - toggleValue"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-virtual {p0, p1}, Lcom/android/settings/SmartNetworkPreference;->toggleValue(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public disableGuideDialog(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 63
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 64
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 65
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "smart_network_guide_sharedpref"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 66
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 67
    return-void
.end method

.method public shouldShowGuideDialog(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 54
    const/4 v1, 0x1

    .line 56
    .local v1, result:Z
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 57
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v2, "smart_network_guide_sharedpref"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 59
    return v1
.end method

.method public toggleValue(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "smart_network"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-lez v5, :cond_0

    move v1, v3

    .line 73
    .local v1, isOn:Z
    :goto_0
    const-string v5, "statusbar"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/StatusBarManager;

    .line 74
    .local v2, mStatusBar:Landroid/app/StatusBarManager;
    const-string v5, "smart_network"

    const v6, 0x7f02035c

    invoke-virtual {v2, v5, v6, v4, v7}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 76
    if-eqz v1, :cond_1

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "smart_network"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "wifi_sleep_policy"

    const/4 v6, 0x2

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 81
    const-string v3, "smart_network"

    invoke-virtual {v2, v3, v4}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 90
    :goto_1
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.phone.smartnetwork.widget_reload_action"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 91
    .local v0, broadcastIntent:Landroid/content/Intent;
    invoke-virtual {p1, v0, v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 92
    return-void

    .end local v0           #broadcastIntent:Landroid/content/Intent;
    .end local v1           #isOn:Z
    .end local v2           #mStatusBar:Landroid/app/StatusBarManager;
    :cond_0
    move v1, v4

    .line 70
    goto :goto_0

    .line 83
    .restart local v1       #isOn:Z
    .restart local v2       #mStatusBar:Landroid/app/StatusBarManager;
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "smart_network"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_sleep_policy"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 87
    const-string v4, "smart_network"

    invoke-virtual {v2, v4, v3}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method public updateSmartNetworkPreference(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "smart_network"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 98
    .local v0, isOn:Z
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings/SmartNetworkPreference;->setChecked(Z)V

    .line 99
    return-void
.end method
