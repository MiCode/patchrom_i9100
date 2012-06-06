.class Lcom/android/OriginalSettings/DateTimeSettings$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "DateTimeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/DateTimeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/DateTimeSettings;


# direct methods
.method public constructor <init>(Lcom/android/OriginalSettings/DateTimeSettings;Landroid/os/Handler;)V
    .locals 3
    .parameter
    .parameter "handler"

    .prologue
    const/4 v2, 0x0

    .line 100
    iput-object p1, p0, Lcom/android/OriginalSettings/DateTimeSettings$SettingsObserver;->this$0:Lcom/android/OriginalSettings/DateTimeSettings;

    .line 101
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 102
    invoke-virtual {p1}, Lcom/android/OriginalSettings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 103
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "auto_time"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 104
    const-string v1, "auto_time_zone"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 105
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 7
    .parameter "selfChange"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 108
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 109
    iget-object v5, p0, Lcom/android/OriginalSettings/DateTimeSettings$SettingsObserver;->this$0:Lcom/android/OriginalSettings/DateTimeSettings;

    invoke-virtual {v5}, Lcom/android/OriginalSettings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "device_provisioned"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_1

    move v2, v3

    .line 112
    .local v2, isSettingWizard:Z
    :goto_0
    iget-object v5, p0, Lcom/android/OriginalSettings/DateTimeSettings$SettingsObserver;->this$0:Lcom/android/OriginalSettings/DateTimeSettings;

    invoke-virtual {v5}, Lcom/android/OriginalSettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    if-eqz v5, :cond_0

    if-nez v2, :cond_0

    .line 113
    iget-object v5, p0, Lcom/android/OriginalSettings/DateTimeSettings$SettingsObserver;->this$0:Lcom/android/OriginalSettings/DateTimeSettings;

    const-string v6, "auto_time"

    #calls: Lcom/android/OriginalSettings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z
    invoke-static {v5, v6}, Lcom/android/OriginalSettings/DateTimeSettings;->access$000(Lcom/android/OriginalSettings/DateTimeSettings;Ljava/lang/String;)Z

    move-result v0

    .line 114
    .local v0, autoEnabled:Z
    iget-object v5, p0, Lcom/android/OriginalSettings/DateTimeSettings$SettingsObserver;->this$0:Lcom/android/OriginalSettings/DateTimeSettings;

    const-string v6, "auto_time_zone"

    #calls: Lcom/android/OriginalSettings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z
    invoke-static {v5, v6}, Lcom/android/OriginalSettings/DateTimeSettings;->access$000(Lcom/android/OriginalSettings/DateTimeSettings;Ljava/lang/String;)Z

    move-result v1

    .line 116
    .local v1, autoTimeZoneEnabled:Z
    iget-object v5, p0, Lcom/android/OriginalSettings/DateTimeSettings$SettingsObserver;->this$0:Lcom/android/OriginalSettings/DateTimeSettings;

    #getter for: Lcom/android/OriginalSettings/DateTimeSettings;->mAutoTimePref:Landroid/preference/CheckBoxPreference;
    invoke-static {v5}, Lcom/android/OriginalSettings/DateTimeSettings;->access$100(Lcom/android/OriginalSettings/DateTimeSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 117
    iget-object v5, p0, Lcom/android/OriginalSettings/DateTimeSettings$SettingsObserver;->this$0:Lcom/android/OriginalSettings/DateTimeSettings;

    #getter for: Lcom/android/OriginalSettings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;
    invoke-static {v5}, Lcom/android/OriginalSettings/DateTimeSettings;->access$200(Lcom/android/OriginalSettings/DateTimeSettings;)Landroid/preference/Preference;

    move-result-object v6

    if-nez v0, :cond_2

    move v5, v3

    :goto_1
    invoke-virtual {v6, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 118
    iget-object v5, p0, Lcom/android/OriginalSettings/DateTimeSettings$SettingsObserver;->this$0:Lcom/android/OriginalSettings/DateTimeSettings;

    #getter for: Lcom/android/OriginalSettings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;
    invoke-static {v5}, Lcom/android/OriginalSettings/DateTimeSettings;->access$300(Lcom/android/OriginalSettings/DateTimeSettings;)Landroid/preference/Preference;

    move-result-object v6

    if-nez v0, :cond_3

    move v5, v3

    :goto_2
    invoke-virtual {v6, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 120
    iget-object v5, p0, Lcom/android/OriginalSettings/DateTimeSettings$SettingsObserver;->this$0:Lcom/android/OriginalSettings/DateTimeSettings;

    #getter for: Lcom/android/OriginalSettings/DateTimeSettings;->mAutoTimeZonePref:Landroid/preference/CheckBoxPreference;
    invoke-static {v5}, Lcom/android/OriginalSettings/DateTimeSettings;->access$400(Lcom/android/OriginalSettings/DateTimeSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 121
    iget-object v5, p0, Lcom/android/OriginalSettings/DateTimeSettings$SettingsObserver;->this$0:Lcom/android/OriginalSettings/DateTimeSettings;

    #getter for: Lcom/android/OriginalSettings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;
    invoke-static {v5}, Lcom/android/OriginalSettings/DateTimeSettings;->access$500(Lcom/android/OriginalSettings/DateTimeSettings;)Landroid/preference/Preference;

    move-result-object v5

    if-nez v1, :cond_4

    :goto_3
    invoke-virtual {v5, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 123
    .end local v0           #autoEnabled:Z
    .end local v1           #autoTimeZoneEnabled:Z
    :cond_0
    return-void

    .end local v2           #isSettingWizard:Z
    :cond_1
    move v2, v4

    .line 109
    goto :goto_0

    .restart local v0       #autoEnabled:Z
    .restart local v1       #autoTimeZoneEnabled:Z
    .restart local v2       #isSettingWizard:Z
    :cond_2
    move v5, v4

    .line 117
    goto :goto_1

    :cond_3
    move v5, v4

    .line 118
    goto :goto_2

    :cond_4
    move v3, v4

    .line 121
    goto :goto_3
.end method
