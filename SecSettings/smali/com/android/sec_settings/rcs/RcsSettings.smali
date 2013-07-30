.class public Lcom/android/sec_settings/rcs/RcsSettings;
.super Ljava/lang/Object;
.source "RcsSettings.java"


# static fields
.field private static final RCS_CONTENT_URI:Landroid/net/Uri;

.field private static final RCS_CONTENT_URI_SHOW_SETTINGS_WHEN_UNPROVISIONED:Landroid/net/Uri;

.field private static mRcsSettingsPreference:Landroid/preference/Preference;


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mRcsContentObserver:Landroid/database/ContentObserver;

.field private mSettingsTreeParent:Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/android/sec_settings/rcs/RcsSettings;->mRcsSettingsPreference:Landroid/preference/Preference;

    .line 36
    const-string v0, "content://com.samsung.rcs.settings/rcse_provisioned"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/sec_settings/rcs/RcsSettings;->RCS_CONTENT_URI:Landroid/net/Uri;

    .line 39
    const-string v0, "content://com.samsung.rcs.settings/rcse_show_settings_when_unprovisioned"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/sec_settings/rcs/RcsSettings;->RCS_CONTENT_URI_SHOW_SETTINGS_WHEN_UNPROVISIONED:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-class v0, Lcom/android/sec_settings/rcs/RcsSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sec_settings/rcs/RcsSettings;->LOG_TAG:Ljava/lang/String;

    .line 45
    iput-object v1, p0, Lcom/android/sec_settings/rcs/RcsSettings;->mRcsContentObserver:Landroid/database/ContentObserver;

    .line 50
    iput-object v1, p0, Lcom/android/sec_settings/rcs/RcsSettings;->mContext:Landroid/content/Context;

    .line 55
    iput-object v1, p0, Lcom/android/sec_settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/preference/PreferenceScreen;

    .line 66
    iput-object p1, p0, Lcom/android/sec_settings/rcs/RcsSettings;->mContext:Landroid/content/Context;

    .line 67
    iput-object p2, p0, Lcom/android/sec_settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/preference/PreferenceScreen;

    .line 68
    const-string v0, "rcs_settings"

    invoke-virtual {p2, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    sput-object v0, Lcom/android/sec_settings/rcs/RcsSettings;->mRcsSettingsPreference:Landroid/preference/Preference;

    .line 70
    sget-object v0, Lcom/android/sec_settings/rcs/RcsSettings;->mRcsSettingsPreference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 71
    sget-object v0, Lcom/android/sec_settings/rcs/RcsSettings;->mRcsSettingsPreference:Landroid/preference/Preference;

    invoke-virtual {p2, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 73
    :cond_0
    return-void
.end method


# virtual methods
.method public registerRcsProviderObserver()V
    .locals 4

    .prologue
    .line 146
    iget-object v1, p0, Lcom/android/sec_settings/rcs/RcsSettings;->mRcsContentObserver:Landroid/database/ContentObserver;

    if-nez v1, :cond_0

    .line 147
    new-instance v1, Lcom/android/sec_settings/rcs/RcsSettings$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/sec_settings/rcs/RcsSettings$1;-><init>(Lcom/android/sec_settings/rcs/RcsSettings;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/sec_settings/rcs/RcsSettings;->mRcsContentObserver:Landroid/database/ContentObserver;

    .line 154
    :cond_0
    iget-object v1, p0, Lcom/android/sec_settings/rcs/RcsSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 155
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/sec_settings/rcs/RcsSettings;->RCS_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/sec_settings/rcs/RcsSettings;->mRcsContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 157
    return-void
.end method

.method public unregisterRcsProviderObserver()V
    .locals 2

    .prologue
    .line 164
    iget-object v1, p0, Lcom/android/sec_settings/rcs/RcsSettings;->mRcsContentObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/android/sec_settings/rcs/RcsSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 166
    .local v0, resolver:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/sec_settings/rcs/RcsSettings;->mRcsContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 168
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :cond_0
    return-void
.end method

.method public updateRcsSettingsVisibility()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 81
    sget-object v1, Lcom/android/sec_settings/rcs/RcsSettings;->mRcsSettingsPreference:Landroid/preference/Preference;

    if-nez v1, :cond_0

    .line 138
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v1, p0, Lcom/android/sec_settings/rcs/RcsSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 87
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v9, 0x0

    .line 90
    .local v9, rcsCur:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/android/sec_settings/rcs/RcsSettings;->RCS_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 98
    const/4 v7, 0x0

    .local v7, bVal:Z
    const/4 v6, 0x0

    .line 100
    .local v6, bShowSettingsWhenUnprovisioned:Z
    if-eqz v9, :cond_2

    .line 101
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 102
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 103
    .local v10, value:Ljava/lang/String;
    if-eqz v10, :cond_1

    .line 104
    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 106
    .end local v10           #value:Ljava/lang/String;
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 110
    :cond_2
    :try_start_1
    sget-object v1, Lcom/android/sec_settings/rcs/RcsSettings;->RCS_CONTENT_URI_SHOW_SETTINGS_WHEN_UNPROVISIONED:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v9

    .line 120
    if-eqz v9, :cond_4

    .line 121
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 122
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 123
    .restart local v10       #value:Ljava/lang/String;
    if-eqz v10, :cond_3

    .line 124
    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 127
    .end local v10           #value:Ljava/lang/String;
    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 130
    :cond_4
    if-nez v7, :cond_5

    if-eqz v6, :cond_6

    .line 132
    :cond_5
    iget-object v1, p0, Lcom/android/sec_settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/preference/PreferenceScreen;

    sget-object v2, Lcom/android/sec_settings/rcs/RcsSettings;->mRcsSettingsPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 91
    .end local v6           #bShowSettingsWhenUnprovisioned:Z
    .end local v7           #bVal:Z
    :catch_0
    move-exception v8

    .line 92
    .local v8, e:Ljava/lang/NullPointerException;
    iget-object v1, p0, Lcom/android/sec_settings/rcs/RcsSettings;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Couldn\'t query \'RCS_CONTENT_URI\' provider. Please install latest RCSe aplication."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-virtual {v8}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 113
    .end local v8           #e:Ljava/lang/NullPointerException;
    .restart local v6       #bShowSettingsWhenUnprovisioned:Z
    .restart local v7       #bVal:Z
    :catch_1
    move-exception v8

    .line 114
    .restart local v8       #e:Ljava/lang/NullPointerException;
    iget-object v1, p0, Lcom/android/sec_settings/rcs/RcsSettings;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Couldn\'t query \'RCS_CONTENT_URI_SHOW_SETTINGS_WHEN_UNPROVISIONED\' provider. Please install latest RCSe aplication."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-virtual {v8}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 135
    .end local v8           #e:Ljava/lang/NullPointerException;
    :cond_6
    iget-object v1, p0, Lcom/android/sec_settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/preference/PreferenceScreen;

    sget-object v2, Lcom/android/sec_settings/rcs/RcsSettings;->mRcsSettingsPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method
