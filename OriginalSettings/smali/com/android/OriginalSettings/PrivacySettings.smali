.class public Lcom/android/OriginalSettings/PrivacySettings;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "PrivacySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mAutoRestore:Landroid/preference/CheckBoxPreference;

.field private mBackup:Landroid/preference/CheckBoxPreference;

.field private mBackupManager:Landroid/app/backup/IBackupManager;

.field private mConfigure:Landroid/preference/PreferenceScreen;

.field private mConfirmDialog:Landroid/app/Dialog;

.field private mDialogType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private setBackupEnabled(Z)V
    .locals 5
    .parameter "enable"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 209
    iget-object v1, p0, Lcom/android/OriginalSettings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    if-eqz v1, :cond_0

    .line 211
    :try_start_0
    iget-object v1, p0, Lcom/android/OriginalSettings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v1, p1}, Landroid/app/backup/IBackupManager;->setBackupEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :cond_0
    iget-object v1, p0, Lcom/android/OriginalSettings/PrivacySettings;->mBackup:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 219
    iget-object v1, p0, Lcom/android/OriginalSettings/PrivacySettings;->mAutoRestore:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 220
    iget-object v1, p0, Lcom/android/OriginalSettings/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, p1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 221
    :goto_0
    return-void

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, e:Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/android/OriginalSettings/PrivacySettings;->mBackup:Landroid/preference/CheckBoxPreference;

    if-nez p1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 214
    iget-object v1, p0, Lcom/android/OriginalSettings/PrivacySettings;->mAutoRestore:Landroid/preference/CheckBoxPreference;

    if-nez p1, :cond_2

    :goto_2
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    move v1, v3

    .line 213
    goto :goto_1

    :cond_2
    move v2, v3

    .line 214
    goto :goto_2
.end method

.method private setConfigureSummary(Ljava/lang/String;)V
    .locals 2
    .parameter "summary"

    .prologue
    .line 175
    if-eqz p1, :cond_0

    .line 176
    iget-object v0, p0, Lcom/android/OriginalSettings/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 180
    :goto_0
    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0b05cd

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0
.end method

.method private showEraseBackupDialog()V
    .locals 3

    .prologue
    .line 131
    iget-object v1, p0, Lcom/android/OriginalSettings/PrivacySettings;->mBackup:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 133
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/OriginalSettings/PrivacySettings;->mDialogType:I

    .line 134
    invoke-virtual {p0}, Lcom/android/OriginalSettings/PrivacySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b05d4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 136
    .local v0, msg:Ljava/lang/CharSequence;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b05d3

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/PrivacySettings;->mConfirmDialog:Landroid/app/Dialog;

    .line 142
    return-void
.end method

.method private updateConfigureSummary()V
    .locals 3

    .prologue
    .line 184
    :try_start_0
    iget-object v2, p0, Lcom/android/OriginalSettings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v2}, Landroid/app/backup/IBackupManager;->getCurrentTransport()Ljava/lang/String;

    move-result-object v1

    .line 185
    .local v1, transport:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/OriginalSettings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v2, v1}, Landroid/app/backup/IBackupManager;->getDestinationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, summary:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/PrivacySettings;->setConfigureSummary(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    .end local v0           #summary:Ljava/lang/String;
    .end local v1           #transport:Ljava/lang/String;
    :goto_0
    return-void

    .line 187
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private updateToggles()V
    .locals 11

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 148
    invoke-virtual {p0}, Lcom/android/OriginalSettings/PrivacySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 150
    .local v5, res:Landroid/content/ContentResolver;
    const/4 v0, 0x0

    .line 151
    .local v0, backupEnabled:Z
    const/4 v1, 0x0

    .line 152
    .local v1, configIntent:Landroid/content/Intent;
    const/4 v2, 0x0

    .line 154
    .local v2, configSummary:Ljava/lang/String;
    :try_start_0
    iget-object v7, p0, Lcom/android/OriginalSettings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v7}, Landroid/app/backup/IBackupManager;->isBackupEnabled()Z

    move-result v0

    .line 155
    iget-object v7, p0, Lcom/android/OriginalSettings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v7}, Landroid/app/backup/IBackupManager;->getCurrentTransport()Ljava/lang/String;

    move-result-object v6

    .line 156
    .local v6, transport:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/OriginalSettings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v7, v6}, Landroid/app/backup/IBackupManager;->getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 157
    iget-object v7, p0, Lcom/android/OriginalSettings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v7, v6}, Landroid/app/backup/IBackupManager;->getDestinationString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 162
    .end local v6           #transport:Ljava/lang/String;
    :goto_0
    iget-object v7, p0, Lcom/android/OriginalSettings/PrivacySettings;->mBackup:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 164
    iget-object v10, p0, Lcom/android/OriginalSettings/PrivacySettings;->mAutoRestore:Landroid/preference/CheckBoxPreference;

    const-string v7, "backup_auto_restore"

    invoke-static {v5, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v8, :cond_0

    move v7, v8

    :goto_1
    invoke-virtual {v10, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 166
    iget-object v7, p0, Lcom/android/OriginalSettings/PrivacySettings;->mAutoRestore:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 168
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    move v3, v8

    .line 169
    .local v3, configureEnabled:Z
    :goto_2
    iget-object v7, p0, Lcom/android/OriginalSettings/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 170
    iget-object v7, p0, Lcom/android/OriginalSettings/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v1}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 171
    invoke-direct {p0, v2}, Lcom/android/OriginalSettings/PrivacySettings;->setConfigureSummary(Ljava/lang/String;)V

    .line 172
    return-void

    .line 158
    .end local v3           #configureEnabled:Z
    :catch_0
    move-exception v4

    .line 160
    .local v4, e:Landroid/os/RemoteException;
    iget-object v7, p0, Lcom/android/OriginalSettings/PrivacySettings;->mBackup:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v9}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .end local v4           #e:Landroid/os/RemoteException;
    :cond_0
    move v7, v9

    .line 164
    goto :goto_1

    :cond_1
    move v3, v9

    .line 168
    goto :goto_2
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x0

    .line 193
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 195
    iget v0, p0, Lcom/android/OriginalSettings/PrivacySettings;->mDialogType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 196
    invoke-direct {p0, v2}, Lcom/android/OriginalSettings/PrivacySettings;->setBackupEnabled(Z)V

    .line 197
    invoke-direct {p0}, Lcom/android/OriginalSettings/PrivacySettings;->updateConfigureSummary()V

    .line 200
    :cond_0
    iput v2, p0, Lcom/android/OriginalSettings/PrivacySettings;->mDialogType:I

    .line 201
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const v1, 0x7f050025

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/PrivacySettings;->addPreferencesFromResource(I)V

    .line 66
    invoke-virtual {p0}, Lcom/android/OriginalSettings/PrivacySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 68
    .local v0, screen:Landroid/preference/PreferenceScreen;
    const-string v1, "backup"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    .line 71
    const-string v1, "backup_data"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/OriginalSettings/PrivacySettings;->mBackup:Landroid/preference/CheckBoxPreference;

    .line 72
    const-string v1, "auto_restore"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/OriginalSettings/PrivacySettings;->mAutoRestore:Landroid/preference/CheckBoxPreference;

    .line 73
    const-string v1, "configure_account"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/OriginalSettings/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    .line 76
    invoke-virtual {p0}, Lcom/android/OriginalSettings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.google.settings"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    if-nez v1, :cond_0

    .line 78
    const-string v1, "backup_category"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/PrivacySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 80
    :cond_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/PrivacySettings;->updateToggles()V

    .line 81
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v2, 0x1

    .line 113
    iget-object v3, p0, Lcom/android/OriginalSettings/PrivacySettings;->mBackup:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_2

    .line 114
    iget-object v3, p0, Lcom/android/OriginalSettings/PrivacySettings;->mBackup:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_1

    .line 115
    invoke-direct {p0}, Lcom/android/OriginalSettings/PrivacySettings;->showEraseBackupDialog()V

    .line 127
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2

    .line 117
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/OriginalSettings/PrivacySettings;->setBackupEnabled(Z)V

    goto :goto_0

    .line 119
    :cond_2
    iget-object v3, p0, Lcom/android/OriginalSettings/PrivacySettings;->mAutoRestore:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_0

    .line 120
    iget-object v3, p0, Lcom/android/OriginalSettings/PrivacySettings;->mAutoRestore:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 122
    .local v0, curState:Z
    :try_start_0
    iget-object v3, p0, Lcom/android/OriginalSettings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v3, v0}, Landroid/app/backup/IBackupManager;->setAutoRestore(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 123
    :catch_0
    move-exception v1

    .line 124
    .local v1, e:Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/android/OriginalSettings/PrivacySettings;->mAutoRestore:Landroid/preference/CheckBoxPreference;

    if-nez v0, :cond_3

    :goto_1
    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 85
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 87
    const-string v3, "enterprise_policy"

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/PrivacySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 88
    .local v0, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v2

    .line 89
    .local v2, rp:Landroid/app/enterprise/RestrictionPolicy;
    iget-object v3, p0, Lcom/android/OriginalSettings/PrivacySettings;->mBackup:Landroid/preference/CheckBoxPreference;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/app/enterprise/RestrictionPolicy;->isBackupAllowed(Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 91
    invoke-virtual {p0}, Lcom/android/OriginalSettings/PrivacySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, "master_clear"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    .line 92
    .local v1, factoryReset:Landroid/preference/PreferenceScreen;
    invoke-virtual {v2}, Landroid/app/enterprise/RestrictionPolicy;->isFactoryResetAllowed()Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 97
    invoke-direct {p0}, Lcom/android/OriginalSettings/PrivacySettings;->updateToggles()V

    .line 98
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/OriginalSettings/PrivacySettings;->mConfirmDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/PrivacySettings;->mConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/OriginalSettings/PrivacySettings;->mConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 105
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/PrivacySettings;->mConfirmDialog:Landroid/app/Dialog;

    .line 106
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/OriginalSettings/PrivacySettings;->mDialogType:I

    .line 107
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onStop()V

    .line 108
    return-void
.end method
