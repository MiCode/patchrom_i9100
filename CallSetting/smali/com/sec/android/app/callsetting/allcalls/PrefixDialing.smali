.class public Lcom/sec/android/app/callsetting/allcalls/PrefixDialing;
.super Landroid/preference/PreferenceActivity;
.source "PrefixDialing.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static FROM:[Ljava/lang/String;


# instance fields
.field private mPrefixDialingChecked:Landroid/preference/CheckBoxPreference;

.field private mPrefixDialingList:Landroid/preference/PreferenceScreen;

.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 45
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "prefix_number"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "prefix_checked"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialing;->FROM:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private getPrefixNumber()Landroid/database/Cursor;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 122
    sget-object v1, Lcom/sec/android/app/callsetting/allcalls/ProviderConstants;->PREFIX_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/app/callsetting/allcalls/PrefixDialing;->FROM:[Ljava/lang/String;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialing;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private setPrefixNumber(Landroid/database/Cursor;)V
    .locals 8
    .parameter "cursor"

    .prologue
    .line 129
    const/4 v3, 0x0

    .line 130
    .local v3, idx:I
    const/4 v4, 0x0

    .line 132
    .local v4, isSetSummary:Z
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 135
    :cond_0
    const/4 v6, 0x0

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 136
    .local v1, id:J
    const/4 v6, 0x1

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 137
    .local v5, num:Ljava/lang/String;
    const/4 v6, 0x2

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 141
    .local v0, checked:I
    if-lez v0, :cond_3

    .line 143
    iget-object v6, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialing;->mPrefixDialingList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v5}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 144
    const/4 v4, 0x1

    .line 150
    .end local v0           #checked:I
    .end local v1           #id:J
    .end local v5           #num:Ljava/lang/String;
    :cond_1
    :goto_0
    if-nez v4, :cond_2

    .line 151
    iget-object v6, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialing;->mPrefixDialingList:Landroid/preference/PreferenceScreen;

    const v7, 0x7f0700ab

    invoke-virtual {p0, v7}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialing;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 152
    :cond_2
    return-void

    .line 147
    .restart local v0       #checked:I
    .restart local v1       #id:J
    .restart local v5       #num:Ljava/lang/String;
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const v0, 0x7f040005

    invoke-virtual {p0, v0}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialing;->addPreferencesFromResource(I)V

    .line 67
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialing;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialing;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 68
    const-string v0, "prefixdialling_preference"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialing;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialing;->mPrefixDialingChecked:Landroid/preference/CheckBoxPreference;

    .line 69
    const-string v0, "prefixdialling_list_preference"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialing;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialing;->mPrefixDialingList:Landroid/preference/PreferenceScreen;

    .line 70
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 94
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 96
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialing;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 97
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 80
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialing;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 82
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialing;->getPrefixNumber()Landroid/database/Cursor;

    move-result-object v0

    .line 83
    .local v0, cursor:Landroid/database/Cursor;
    invoke-direct {p0, v0}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialing;->setPrefixNumber(Landroid/database/Cursor;)V

    .line 84
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialing;->mPrefixDialingChecked:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "prefix_mode"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 86
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 4
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    const/4 v0, 0x0

    .line 107
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "========== onSharedPreferenceChanged : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 109
    const-string v1, "prefixdialling_preference"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 111
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 112
    .local v0, prefix_checked:I
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "prefix_mode"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 117
    .end local v0           #prefix_checked:I
    :cond_1
    return-void
.end method
