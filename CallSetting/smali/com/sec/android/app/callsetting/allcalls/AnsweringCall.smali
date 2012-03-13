.class public Lcom/sec/android/app/callsetting/allcalls/AnsweringCall;
.super Landroid/preference/PreferenceActivity;
.source "AnsweringCall.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static final SRC_TAGS:[Ljava/lang/String;


# instance fields
.field private endPowerKeyEndChecked:Z

.field private mAlertDialog:Landroid/app/AlertDialog$Builder;

.field private mAnsweringTimeList:Landroid/preference/ListPreference;

.field private mAnykeyModeChecked:Landroid/preference/CheckBoxPreference;

.field private mPowerkeyPreference:Landroid/preference/CheckBoxPreference;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mWaitingTime:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 56
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "%d"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/callsetting/allcalls/AnsweringCall;->SRC_TAGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 67
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/AnsweringCall;->mWaitingTime:[I

    return-void

    :array_0
    .array-data 0x4
        0x95t 0x0t 0x7t 0x7ft
        0x5ct 0x0t 0x7t 0x7ft
        0x5dt 0x0t 0x7t 0x7ft
        0x5et 0x0t 0x7t 0x7ft
        0x5ft 0x0t 0x7t 0x7ft
        0x60t 0x0t 0x7t 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/sec/android/app/callsetting/allcalls/AnsweringCall;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/sec/android/app/callsetting/allcalls/AnsweringCall;->endPowerKeyEndChecked:Z

    return v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/callsetting/allcalls/AnsweringCall;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/sec/android/app/callsetting/allcalls/AnsweringCall;->endPowerKeyEndChecked:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/callsetting/allcalls/AnsweringCall;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/AnsweringCall;->mPowerkeyPreference:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 82
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    const v1, 0x7f040001

    invoke-virtual {p0, v1}, Lcom/sec/android/app/callsetting/allcalls/AnsweringCall;->addPreferencesFromResource(I)V

    .line 85
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/AnsweringCall;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/AnsweringCall;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 86
    const-string v1, "auto_time_preference"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/callsetting/allcalls/AnsweringCall;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/AnsweringCall;->mAnsweringTimeList:Landroid/preference/ListPreference;

    .line 87
    const-string v1, "anykey_mode_preference"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/callsetting/allcalls/AnsweringCall;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/AnsweringCall;->mAnykeyModeChecked:Landroid/preference/CheckBoxPreference;

    .line 88
    const-string v1, "powerkey_end_preference"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/callsetting/allcalls/AnsweringCall;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/AnsweringCall;->mPowerkeyPreference:Landroid/preference/CheckBoxPreference;

    .line 90
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/AnsweringCall;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 91
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 93
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 95
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    .line 270
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 271
    .local v1, itemId:I
    const v2, 0x102002c

    if-ne v1, v2, :cond_0

    .line 272
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 273
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.CallFeaturesSetting"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    const/high16 v2, 0x400

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 275
    const-string v2, "com.android.phone.MAIN"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    invoke-virtual {p0, v0}, Lcom/sec/android/app/callsetting/allcalls/AnsweringCall;->startActivity(Landroid/content/Intent;)V

    .line 277
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/AnsweringCall;->finish()V

    .line 278
    const/4 v2, 0x1

    .line 280
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return v2

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 163
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 164
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/AnsweringCall;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 165
    return-void
.end method

.method protected onResume()V
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x6

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 103
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 105
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/AnsweringCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "answeringmode_auto_time"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 107
    .local v7, waitingTime:I
    new-array v1, v12, [Ljava/lang/CharSequence;

    .line 108
    .local v1, entryList:[Ljava/lang/CharSequence;
    new-array v2, v12, [Ljava/lang/CharSequence;

    const-string v10, "0"

    aput-object v10, v2, v9

    const-string v10, "1"

    aput-object v10, v2, v8

    const-string v10, "2"

    aput-object v10, v2, v13

    const/4 v10, 0x3

    const-string v11, "3"

    aput-object v11, v2, v10

    const/4 v10, 0x4

    const-string v11, "4"

    aput-object v11, v2, v10

    const/4 v10, 0x5

    const-string v11, "5"

    aput-object v11, v2, v10

    .line 110
    .local v2, entryValue:[Ljava/lang/CharSequence;
    iget-object v10, p0, Lcom/sec/android/app/callsetting/allcalls/AnsweringCall;->mWaitingTime:[I

    aget v10, v10, v9

    invoke-virtual {p0, v10}, Lcom/sec/android/app/callsetting/allcalls/AnsweringCall;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    aput-object v10, v1, v9

    .line 112
    const/4 v3, 0x1

    .local v3, i:I
    :goto_0
    if-ge v3, v12, :cond_0

    .line 113
    new-array v6, v8, [Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v9

    .line 114
    .local v6, values:[Ljava/lang/String;
    iget-object v10, p0, Lcom/sec/android/app/callsetting/allcalls/AnsweringCall;->mWaitingTime:[I

    aget v10, v10, v3

    invoke-virtual {p0, v10}, Lcom/sec/android/app/callsetting/allcalls/AnsweringCall;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    sget-object v11, Lcom/sec/android/app/callsetting/allcalls/AnsweringCall;->SRC_TAGS:[Ljava/lang/String;

    invoke-static {v10, v11, v6}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    aput-object v10, v1, v3

    .line 112
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 117
    .end local v6           #values:[Ljava/lang/String;
    :cond_0
    if-lez v7, :cond_1

    .line 118
    new-array v6, v8, [Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v9

    .line 119
    .restart local v6       #values:[Ljava/lang/String;
    iget-object v10, p0, Lcom/sec/android/app/callsetting/allcalls/AnsweringCall;->mWaitingTime:[I

    aget v10, v10, v7

    invoke-virtual {p0, v10}, Lcom/sec/android/app/callsetting/allcalls/AnsweringCall;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    sget-object v11, Lcom/sec/android/app/callsetting/allcalls/AnsweringCall;->SRC_TAGS:[Ljava/lang/String;

    invoke-static {v10, v11, v6}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 125
    .end local v6           #values:[Ljava/lang/String;
    .local v5, summaryOn:Ljava/lang/CharSequence;
    :goto_1
    iget-object v10, p0, Lcom/sec/android/app/callsetting/allcalls/AnsweringCall;->mAnsweringTimeList:Landroid/preference/ListPreference;

    invoke-virtual {v10, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 126
    iget-object v10, p0, Lcom/sec/android/app/callsetting/allcalls/AnsweringCall;->mAnsweringTimeList:Landroid/preference/ListPreference;

    invoke-virtual {v10, v2}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 127
    iget-object v10, p0, Lcom/sec/android/app/callsetting/allcalls/AnsweringCall;->mAnsweringTimeList:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/AnsweringCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "answeringmode_auto_time"

    invoke-static {v11, v12, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 130
    iget-object v10, p0, Lcom/sec/android/app/callsetting/allcalls/AnsweringCall;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v10, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 132
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/AnsweringCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "proximity_sensor"

    invoke-static {v10, v11, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 134
    .local v4, proximitySensor:I
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/AnsweringCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "incall_power_button_behavior"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 142
    .local v0, endcallbutton:I
    if-ne v0, v13, :cond_2

    .line 143
    iput-boolean v8, p0, Lcom/sec/android/app/callsetting/allcalls/AnsweringCall;->endPowerKeyEndChecked:Z

    .line 144
    iget-object v10, p0, Lcom/sec/android/app/callsetting/allcalls/AnsweringCall;->mPowerkeyPreference:Landroid/preference/CheckBoxPreference;

    iget-boolean v11, p0, Lcom/sec/android/app/callsetting/allcalls/AnsweringCall;->endPowerKeyEndChecked:Z

    invoke-virtual {v10, v11}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 152
    :goto_2
    iget-object v10, p0, Lcom/sec/android/app/callsetting/allcalls/AnsweringCall;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v10, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 154
    iget-object v10, p0, Lcom/sec/android/app/callsetting/allcalls/AnsweringCall;->mAnykeyModeChecked:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/AnsweringCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "anykey_mode"

    invoke-static {v11, v12, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-lez v11, :cond_3

    :goto_3
    invoke-virtual {v10, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 155
    return-void

    .line 122
    .end local v0           #endcallbutton:I
    .end local v4           #proximitySensor:I
    .end local v5           #summaryOn:Ljava/lang/CharSequence;
    :cond_1
    iget-object v10, p0, Lcom/sec/android/app/callsetting/allcalls/AnsweringCall;->mWaitingTime:[I

    aget v10, v10, v7

    invoke-virtual {p0, v10}, Lcom/sec/android/app/callsetting/allcalls/AnsweringCall;->getString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #summaryOn:Ljava/lang/CharSequence;
    goto :goto_1

    .line 147
    .restart local v0       #endcallbutton:I
    .restart local v4       #proximitySensor:I
    :cond_2
    iput-boolean v9, p0, Lcom/sec/android/app/callsetting/allcalls/AnsweringCall;->endPowerKeyEndChecked:Z

    .line 148
    iget-object v10, p0, Lcom/sec/android/app/callsetting/allcalls/AnsweringCall;->mPowerkeyPreference:Landroid/preference/CheckBoxPreference;

    iget-boolean v11, p0, Lcom/sec/android/app/callsetting/allcalls/AnsweringCall;->endPowerKeyEndChecked:Z

    invoke-virtual {v10, v11}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_2

    :cond_3
    move v8, v9

    .line 154
    goto :goto_3
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 12
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 175
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "========== onSharedPreferenceChanged : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 177
    const-string v9, "anykey_mode_preference"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 179
    invoke-interface {p1, p2, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_3

    move v0, v7

    .line 180
    .local v0, anykey_mode:I
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/AnsweringCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "anykey_mode"

    invoke-static {v9, v10, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 183
    .end local v0           #anykey_mode:I
    :cond_0
    const-string v9, "auto_time_preference"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 185
    const/4 v9, 0x0

    invoke-interface {p1, p2, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 186
    .local v2, auto_time_index:Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 187
    .local v1, auto_time:I
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/AnsweringCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "answeringmode_auto_time"

    invoke-static {v9, v10, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 192
    if-lez v1, :cond_4

    .line 193
    new-array v6, v7, [Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    .line 194
    .local v6, values:[Ljava/lang/String;
    iget-object v9, p0, Lcom/sec/android/app/callsetting/allcalls/AnsweringCall;->mWaitingTime:[I

    aget v9, v9, v1

    invoke-virtual {p0, v9}, Lcom/sec/android/app/callsetting/allcalls/AnsweringCall;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    sget-object v10, Lcom/sec/android/app/callsetting/allcalls/AnsweringCall;->SRC_TAGS:[Ljava/lang/String;

    invoke-static {v9, v10, v6}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 203
    .end local v1           #auto_time:I
    .end local v2           #auto_time_index:Ljava/lang/String;
    .end local v6           #values:[Ljava/lang/String;
    :cond_1
    :goto_1
    const-string v9, "powerkey_end_preference"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 205
    invoke-interface {p1, p2, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 210
    .local v4, isChecked:Z
    if-eqz v4, :cond_6

    .line 211
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/AnsweringCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "proximity_sensor"

    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 214
    .local v3, currntProximitySensor:I
    if-nez v3, :cond_5

    .line 215
    iput-boolean v8, p0, Lcom/sec/android/app/callsetting/allcalls/AnsweringCall;->endPowerKeyEndChecked:Z

    .line 216
    iget-object v7, p0, Lcom/sec/android/app/callsetting/allcalls/AnsweringCall;->mPowerkeyPreference:Landroid/preference/CheckBoxPreference;

    iget-boolean v8, p0, Lcom/sec/android/app/callsetting/allcalls/AnsweringCall;->endPowerKeyEndChecked:Z

    invoke-virtual {v7, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 217
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/sec/android/app/callsetting/allcalls/AnsweringCall;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    .line 218
    iget-object v7, p0, Lcom/sec/android/app/callsetting/allcalls/AnsweringCall;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/AnsweringCall;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070026

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x1040014

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x1080027

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f0700ad

    new-instance v9, Lcom/sec/android/app/callsetting/allcalls/AnsweringCall$3;

    invoke-direct {v9, p0}, Lcom/sec/android/app/callsetting/allcalls/AnsweringCall$3;-><init>(Lcom/sec/android/app/callsetting/allcalls/AnsweringCall;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f0700ae

    new-instance v9, Lcom/sec/android/app/callsetting/allcalls/AnsweringCall$2;

    invoke-direct {v9, p0}, Lcom/sec/android/app/callsetting/allcalls/AnsweringCall$2;-><init>(Lcom/sec/android/app/callsetting/allcalls/AnsweringCall;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v7

    new-instance v8, Lcom/sec/android/app/callsetting/allcalls/AnsweringCall$1;

    invoke-direct {v8, p0}, Lcom/sec/android/app/callsetting/allcalls/AnsweringCall$1;-><init>(Lcom/sec/android/app/callsetting/allcalls/AnsweringCall;)V

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 267
    .end local v3           #currntProximitySensor:I
    .end local v4           #isChecked:Z
    :cond_2
    :goto_2
    return-void

    :cond_3
    move v0, v8

    .line 179
    goto/16 :goto_0

    .line 197
    .restart local v1       #auto_time:I
    .restart local v2       #auto_time_index:Ljava/lang/String;
    :cond_4
    iget-object v9, p0, Lcom/sec/android/app/callsetting/allcalls/AnsweringCall;->mWaitingTime:[I

    aget v9, v9, v1

    invoke-virtual {p0, v9}, Lcom/sec/android/app/callsetting/allcalls/AnsweringCall;->getString(I)Ljava/lang/String;

    goto :goto_1

    .line 250
    .end local v1           #auto_time:I
    .end local v2           #auto_time_index:Ljava/lang/String;
    .restart local v3       #currntProximitySensor:I
    .restart local v4       #isChecked:Z
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/AnsweringCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "incall_power_button_behavior"

    const/4 v10, 0x2

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 254
    iput-boolean v7, p0, Lcom/sec/android/app/callsetting/allcalls/AnsweringCall;->endPowerKeyEndChecked:Z

    .line 255
    iget-object v7, p0, Lcom/sec/android/app/callsetting/allcalls/AnsweringCall;->mPowerkeyPreference:Landroid/preference/CheckBoxPreference;

    iget-boolean v8, p0, Lcom/sec/android/app/callsetting/allcalls/AnsweringCall;->endPowerKeyEndChecked:Z

    invoke-virtual {v7, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_2

    .line 259
    .end local v3           #currntProximitySensor:I
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/AnsweringCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "incall_power_button_behavior"

    invoke-static {v9, v10, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 263
    iput-boolean v8, p0, Lcom/sec/android/app/callsetting/allcalls/AnsweringCall;->endPowerKeyEndChecked:Z

    .line 264
    iget-object v7, p0, Lcom/sec/android/app/callsetting/allcalls/AnsweringCall;->mPowerkeyPreference:Landroid/preference/CheckBoxPreference;

    iget-boolean v8, p0, Lcom/sec/android/app/callsetting/allcalls/AnsweringCall;->endPowerKeyEndChecked:Z

    invoke-virtual {v7, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_2
.end method
