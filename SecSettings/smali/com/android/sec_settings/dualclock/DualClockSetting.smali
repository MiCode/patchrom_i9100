.class public Lcom/android/sec_settings/dualclock/DualClockSetting;
.super Lcom/android/sec_settings/SettingsPreferenceFragment;
.source "DualClockSetting.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mHomeCityTimeZone:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/sec_settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private getTimeZoneName(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "id"

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    .line 229
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 230
    .local v3, myData:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap;>;"
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 232
    .local v0, date:J
    :try_start_0
    invoke-virtual {p0}, Lcom/android/sec_settings/dualclock/DualClockSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f07006d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    .line 233
    .local v5, xrp:Landroid/content/res/XmlResourceParser;
    :cond_0
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v6

    if-ne v6, v8, :cond_0

    .line 235
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I

    .line 236
    :goto_0
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v6

    if-eq v6, v9, :cond_2

    .line 237
    :goto_1
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v6

    if-eq v6, v8, :cond_1

    .line 238
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    .line 243
    :cond_1
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "timezone"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 244
    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 245
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->nextText()Ljava/lang/String;

    move-result-object p1

    .line 254
    :cond_2
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    .line 260
    .end local v5           #xrp:Landroid/content/res/XmlResourceParser;
    :goto_2
    return-object p1

    .line 241
    .restart local v5       #xrp:Landroid/content/res/XmlResourceParser;
    :cond_3
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 255
    .end local v5           #xrp:Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v4

    .line 256
    .local v4, xppe:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v6, "DateTimeSettings"

    const-string v7, "Ill-formatted timezones.xml file"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 249
    .end local v4           #xppe:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v5       #xrp:Landroid/content/res/XmlResourceParser;
    :cond_4
    :goto_3
    :try_start_1
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v6

    if-eq v6, v9, :cond_5

    .line 250
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 257
    .end local v5           #xrp:Landroid/content/res/XmlResourceParser;
    :catch_1
    move-exception v2

    .line 258
    .local v2, ioe:Ljava/io/IOException;
    const-string v6, "DateTimeSettings"

    const-string v7, "Unable to read timezones.xml file"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 252
    .end local v2           #ioe:Ljava/io/IOException;
    .restart local v5       #xrp:Landroid/content/res/XmlResourceParser;
    :cond_5
    :try_start_2
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0
.end method

.method private getTimeZoneOffset(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .locals 6
    .parameter "id"
    .parameter "displayName"
    .parameter "date"

    .prologue
    .line 202
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    .line 203
    .local v4, tz:Ljava/util/TimeZone;
    invoke-virtual {v4, p3, p4}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v2

    .line 204
    .local v2, offset:I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 205
    .local v3, p:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    .local v1, name:Ljava/lang/StringBuilder;
    const-string v5, "GMT"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    if-gez v2, :cond_1

    .line 209
    const/16 v5, 0x2d

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 214
    :goto_0
    const v5, 0x36ee80

    div-int v5, v3, v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 215
    const/16 v5, 0x3a

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 217
    const v5, 0xea60

    div-int v0, v3, v5

    .line 218
    .local v0, min:I
    rem-int/lit8 v0, v0, 0x3c

    .line 220
    const/16 v5, 0xa

    if-ge v0, v5, :cond_0

    .line 221
    const/16 v5, 0x30

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 223
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 211
    .end local v0           #min:I
    :cond_1
    const/16 v5, 0x2b

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private updateCheckedUI()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 120
    invoke-virtual {p0}, Lcom/android/sec_settings/dualclock/DualClockSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dualclock_menu_settings"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 123
    .local v0, saved_value:Z
    :cond_0
    iget-object v1, p0, Lcom/android/sec_settings/dualclock/DualClockSetting;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 124
    iget-object v1, p0, Lcom/android/sec_settings/dualclock/DualClockSetting;->mHomeCityTimeZone:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 125
    return-void
.end method

.method private updatepreference()V
    .locals 7

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/android/sec_settings/dualclock/DualClockSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "homecity_timezone"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 130
    .local v4, tzHomeId:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/sec_settings/dualclock/DualClockSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "homecity_timezone_city"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 133
    .local v3, tzHomeCity:Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 134
    .local v0, date:J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .local v2, homecity_tz:Ljava/lang/StringBuilder;
    if-eqz v4, :cond_0

    .line 136
    invoke-direct {p0, v4}, Lcom/android/sec_settings/dualclock/DualClockSetting;->getTimeZoneName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 137
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    const-string v5, "("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-direct {p0, v4}, Lcom/android/sec_settings/dualclock/DualClockSetting;->getTimeZoneName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/android/sec_settings/dualclock/DualClockSetting;->getTimeZoneOffset(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    const-string v5, ")"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    iget-object v5, p0, Lcom/android/sec_settings/dualclock/DualClockSetting;->mHomeCityTimeZone:Landroid/preference/Preference;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 143
    invoke-virtual {p0}, Lcom/android/sec_settings/dualclock/DualClockSetting;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "homecity_timezone_city"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 148
    :goto_0
    return-void

    .line 146
    :cond_0
    iget-object v5, p0, Lcom/android/sec_settings/dualclock/DualClockSetting;->mHomeCityTimeZone:Landroid/preference/Preference;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/16 v6, 0x10

    const/4 v7, -0x2

    const/4 v5, 0x0

    .line 77
    invoke-virtual {p0}, Lcom/android/sec_settings/dualclock/DualClockSetting;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 78
    .local v0, activity:Landroid/app/Activity;
    new-instance v3, Landroid/widget/Switch;

    invoke-direct {v3, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/sec_settings/dualclock/DualClockSetting;->mActionBarSwitch:Landroid/widget/Switch;

    .line 80
    instance-of v3, v0, Landroid/preference/PreferenceActivity;

    if-eqz v3, :cond_1

    move-object v2, v0

    .line 81
    check-cast v2, Landroid/preference/PreferenceActivity;

    .line 82
    .local v2, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v3

    if-nez v3, :cond_1

    .line 84
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 87
    .local v1, padding:I
    iget-object v3, p0, Lcom/android/sec_settings/dualclock/DualClockSetting;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5, v5, v1, v5}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 88
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 91
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/android/sec_settings/dualclock/DualClockSetting;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v6, 0x15

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 100
    .end local v1           #padding:I
    .end local v2           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_1
    iget-object v3, p0, Lcom/android/sec_settings/dualclock/DualClockSetting;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 101
    invoke-super {p0, p1}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 102
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    .line 159
    const-string v0, "DualClockSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCheckChanged desiredState"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-virtual {p0}, Lcom/android/sec_settings/dualclock/DualClockSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dualclock_menu_settings"

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 162
    iget-object v0, p0, Lcom/android/sec_settings/dualclock/DualClockSetting;->mHomeCityTimeZone:Landroid/preference/Preference;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 163
    return-void

    .line 160
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedState"

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 68
    const v0, 0x7f07002c

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/dualclock/DualClockSetting;->addPreferencesFromResource(I)V

    .line 70
    const-string v0, "homecity_timezone"

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/dualclock/DualClockSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sec_settings/dualclock/DualClockSetting;->mHomeCityTimeZone:Landroid/preference/Preference;

    .line 71
    const-string v0, "DualClockSetting"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 152
    invoke-super {p0}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onPause()V

    .line 153
    const-string v0, "DualClockSetting"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v7, 0x1

    .line 169
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    .line 170
    .local v6, key:Ljava/lang/String;
    const-string v0, "DualClockSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceTreeClick key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const-string v0, "homecity_timezone"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 173
    .local v4, bundle:Landroid/os/Bundle;
    const-string v0, "ishomecity"

    invoke-virtual {v4, v0, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 174
    const-string v2, "com.android.settings.ZonePicker"

    const/4 v3, 0x0

    const v5, 0x7f090ab7

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/sec_settings/dualclock/DualClockSetting;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    move v0, v7

    .line 181
    .end local v4           #bundle:Landroid/os/Bundle;
    :goto_0
    return v0

    .line 178
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 111
    invoke-super {p0}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onResume()V

    .line 112
    const-string v0, "DualClockSetting"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-direct {p0}, Lcom/android/sec_settings/dualclock/DualClockSetting;->updateCheckedUI()V

    .line 114
    invoke-direct {p0}, Lcom/android/sec_settings/dualclock/DualClockSetting;->updatepreference()V

    .line 116
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedState"

    .prologue
    .line 107
    return-void
.end method

.method public startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z
    .locals 7
    .parameter "caller"
    .parameter "fragmentClass"
    .parameter "requestCode"
    .parameter "extras"
    .parameter "title"

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/android/sec_settings/dualclock/DualClockSetting;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Landroid/preference/PreferenceActivity;

    if-eqz v1, :cond_0

    .line 187
    invoke-virtual {p0}, Lcom/android/sec_settings/dualclock/DualClockSetting;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 188
    .local v0, preferenceActivity:Landroid/preference/PreferenceActivity;
    const/4 v4, 0x0

    move-object v1, p2

    move-object v2, p4

    move v3, p5

    move-object v5, p1

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 190
    const/4 v1, 0x1

    .line 196
    .end local v0           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :goto_0
    return v1

    .line 192
    :cond_0
    const-string v1, "DualClockSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parent isn\'t PreferenceActivity, thus there\'s no way to launch the given Fragment (name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", requestCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const/4 v1, 0x0

    goto :goto_0
.end method
