.class public Lcom/sec/android/app/callsetting/allcalls/AllCalls;
.super Landroid/preference/PreferenceActivity;
.source "AllCalls.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static final dataFiles:[Ljava/lang/String;

.field private static final dataFilesInfo:[Ljava/lang/String;


# instance fields
.field private ALERTONCALL_MODE:[I

.field private CLIR_MODE:[I

.field private mAlertOnCallList:Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference;

.field private mOutgoingcallVibrationChecked:Landroid/preference/CheckBoxPreference;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mShowMyNumberList:Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 53
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "de-DE_gl0_sg.bin"

    aput-object v1, v0, v3

    const-string v1, "de-DE_ta.bin"

    aput-object v1, v0, v4

    const-string v1, "en-GB_kh0_sg.bin"

    aput-object v1, v0, v5

    const-string v1, "en-GB_ta.bin"

    aput-object v1, v0, v6

    const-string v1, "en-US_lh0_sg.bin"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "en-US_ta.bin"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "es-ES_ta.bin"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "es-ES_zl0_sg.bin"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "fr-FR_nk0_sg.bin"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "fr-FR_ta.bin"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "it-IT_cm0_sg.bin"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "it-IT_ta.bin"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/callsetting/allcalls/AllCalls;->dataFiles:[Ljava/lang/String;

    .line 59
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "deu-DEU"

    aput-object v1, v0, v3

    const-string v1, "deu-DEU"

    aput-object v1, v0, v4

    const-string v1, "eng-GBR"

    aput-object v1, v0, v5

    const-string v1, "eng-GBR"

    aput-object v1, v0, v6

    const-string v1, "eng-USA"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "eng-USA"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "spa-ESP"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "spa-ESP"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "fra-FRA"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "fra-FRA"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "ita-ITA"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "ita-ITA"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/callsetting/allcalls/AllCalls;->dataFilesInfo:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 71
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/AllCalls;->CLIR_MODE:[I

    .line 78
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/AllCalls;->ALERTONCALL_MODE:[I

    return-void

    .line 71
    :array_0
    .array-data 0x4
        0x4at 0x0t 0x7t 0x7ft
        0x4bt 0x0t 0x7t 0x7ft
        0x4ct 0x0t 0x7t 0x7ft
    .end array-data

    .line 78
    :array_1
    .array-data 0x4
        0x67t 0x0t 0x7t 0x7ft
        0x68t 0x0t 0x7t 0x7ft
        0x69t 0x0t 0x7t 0x7ft
        0x6at 0x0t 0x7t 0x7ft
    .end array-data
.end method


# virtual methods
.method protected checkTTSinstalled()Z
    .locals 6

    .prologue
    .line 122
    const/4 v1, 0x1

    .line 125
    .local v1, result:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v4, Lcom/sec/android/app/callsetting/allcalls/AllCalls;->dataFiles:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 126
    new-instance v2, Ljava/io/File;

    const-string v4, "/sdcard/svox/"

    sget-object v5, Lcom/sec/android/app/callsetting/allcalls/AllCalls;->dataFiles:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 127
    .local v2, tempFile:Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v4, "/system/tts/lang_pico/"

    sget-object v5, Lcom/sec/android/app/callsetting/allcalls/AllCalls;->dataFiles:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 128
    .local v3, tempFileSys:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 129
    const/4 v1, 0x0

    .line 134
    .end local v2           #tempFile:Ljava/io/File;
    .end local v3           #tempFileSys:Ljava/io/File;
    :cond_0
    return v1

    .line 125
    .restart local v2       #tempFile:Ljava/io/File;
    .restart local v3       #tempFileSys:Ljava/io/File;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 95
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 96
    const/high16 v0, 0x7f04

    invoke-virtual {p0, v0}, Lcom/sec/android/app/callsetting/allcalls/AllCalls;->addPreferencesFromResource(I)V

    .line 98
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/AllCalls;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/AllCalls;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 99
    const-string v0, "showmynumber_preference"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/callsetting/allcalls/AllCalls;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference;

    iput-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/AllCalls;->mShowMyNumberList:Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference;

    .line 100
    const-string v0, "alertoncall_preference"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/callsetting/allcalls/AllCalls;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference;

    iput-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/AllCalls;->mAlertOnCallList:Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference;

    .line 101
    const-string v0, "outgoingcall_vibration_preference"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/callsetting/allcalls/AllCalls;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/AllCalls;->mOutgoingcallVibrationChecked:Landroid/preference/CheckBoxPreference;

    .line 102
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 191
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 193
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/AllCalls;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 194
    return-void
.end method

.method protected onResume()V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 163
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 165
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/AllCalls;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "clir_mode"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 166
    .local v2, clirMode:I
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/AllCalls;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "alertoncall_mode"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 168
    .local v1, alertMode:I
    iget-object v6, p0, Lcom/sec/android/app/callsetting/allcalls/AllCalls;->mShowMyNumberList:Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference;

    iget-object v7, p0, Lcom/sec/android/app/callsetting/allcalls/AllCalls;->CLIR_MODE:[I

    aget v7, v7, v2

    invoke-virtual {p0, v7}, Lcom/sec/android/app/callsetting/allcalls/AllCalls;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v6, p0, Lcom/sec/android/app/callsetting/allcalls/AllCalls;->mAlertOnCallList:Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference;

    iget-object v7, p0, Lcom/sec/android/app/callsetting/allcalls/AllCalls;->ALERTONCALL_MODE:[I

    aget v7, v7, v1

    invoke-virtual {p0, v7}, Lcom/sec/android/app/callsetting/allcalls/AllCalls;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v6, p0, Lcom/sec/android/app/callsetting/allcalls/AllCalls;->mAlertOnCallList:Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference;

    invoke-virtual {v6}, Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    .line 172
    .local v0, ad:Landroid/app/AlertDialog;
    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 175
    const-string v6, "AllCalls"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "set previous alertMode value : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/callsetting/allcalls/AllCalls;->ALERTONCALL_MODE:[I

    aget v8, v8, v1

    invoke-virtual {p0, v8}, Lcom/sec/android/app/callsetting/allcalls/AllCalls;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v3

    .line 177
    .local v3, listView:Landroid/widget/ListView;
    invoke-virtual {v3, v1, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 181
    .end local v3           #listView:Landroid/widget/ListView;
    :cond_0
    iget-object v6, p0, Lcom/sec/android/app/callsetting/allcalls/AllCalls;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v6, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 182
    iget-object v6, p0, Lcom/sec/android/app/callsetting/allcalls/AllCalls;->mOutgoingcallVibrationChecked:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/AllCalls;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "vibration_call_connected"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-lez v7, :cond_1

    :goto_0
    invoke-virtual {v6, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 183
    return-void

    :cond_1
    move v4, v5

    .line 182
    goto :goto_0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 6
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    const/4 v2, 0x0

    .line 204
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "========== onSharedPreferenceChanged : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 206
    const-string v3, "showmynumber_preference"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 208
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/AllCalls;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "clir_mode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 210
    .local v1, clirMode:I
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/AllCalls;->mShowMyNumberList:Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference;

    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/AllCalls;->CLIR_MODE:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference;->setSummary(I)V

    .line 213
    .end local v1           #clirMode:I
    :cond_0
    const-string v3, "alertoncall_preference"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 215
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/AllCalls;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "alertoncall_mode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 217
    .local v0, alertMode:I
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/AllCalls;->mAlertOnCallList:Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference;

    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/AllCalls;->ALERTONCALL_MODE:[I

    aget v4, v4, v0

    invoke-virtual {p0, v4}, Lcom/sec/android/app/callsetting/allcalls/AllCalls;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 220
    .end local v0           #alertMode:I
    :cond_1
    const-string v3, "outgoingcall_vibration_preference"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 222
    invoke-interface {p1, p2, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    .line 223
    .local v2, vibration_checked:I
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/AllCalls;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "vibration_call_connected"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 228
    .end local v2           #vibration_checked:I
    :cond_3
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 138
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStart()V

    .line 140
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/AllCalls;->checkTTSinstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    const-string v0, "AllCalls"

    const-string v1, "setTTSinstalled(true)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/AllCalls;->mAlertOnCallList:Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference;->setTTSinstalled(Z)V

    .line 153
    :goto_0
    return-void

    .line 145
    :cond_0
    const-string v0, "AllCalls"

    const-string v1, "setTTSinstalled(false)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/AllCalls;->mAlertOnCallList:Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference;->setTTSinstalled(Z)V

    goto :goto_0
.end method
