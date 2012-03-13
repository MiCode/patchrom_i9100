.class public Lcom/sec/android/app/callsetting/allcalls/AutoReject;
.super Landroid/preference/PreferenceActivity;
.source "AutoReject.java"


# instance fields
.field private mAutoRejectNumber:Lcom/sec/android/app/callsetting/allcalls/AutoRejectModeListPreference;

.field private mBlackList:Landroid/preference/PreferenceScreen;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 80
    new-instance v0, Lcom/sec/android/app/callsetting/allcalls/AutoReject$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/callsetting/allcalls/AutoReject$1;-><init>(Lcom/sec/android/app/callsetting/allcalls/AutoReject;)V

    iput-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/AutoReject;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/callsetting/allcalls/AutoReject;)Lcom/sec/android/app/callsetting/allcalls/AutoRejectModeListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/AutoReject;->mAutoRejectNumber:Lcom/sec/android/app/callsetting/allcalls/AutoRejectModeListPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/callsetting/allcalls/AutoReject;)Landroid/preference/PreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/AutoReject;->mBlackList:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method private isAirplaneModeOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 78
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/AutoReject;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v1, 0x7f040002

    invoke-virtual {p0, v1}, Lcom/sec/android/app/callsetting/allcalls/AutoReject;->addPreferencesFromResource(I)V

    .line 50
    const-string v1, "autoreject_mode_list_preference"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/callsetting/allcalls/AutoReject;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/callsetting/allcalls/AutoRejectModeListPreference;

    iput-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/AutoReject;->mAutoRejectNumber:Lcom/sec/android/app/callsetting/allcalls/AutoRejectModeListPreference;

    .line 51
    const-string v1, "black_list_preference"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/callsetting/allcalls/AutoReject;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/AutoReject;->mBlackList:Landroid/preference/PreferenceScreen;

    .line 53
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/AutoReject;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 54
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 56
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 58
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    .line 100
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 101
    .local v1, itemId:I
    const v2, 0x102002c

    if-ne v1, v2, :cond_0

    .line 102
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 103
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.CallFeaturesSetting"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    const/high16 v2, 0x400

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 105
    const-string v2, "com.android.phone.MAIN"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    invoke-virtual {p0, v0}, Lcom/sec/android/app/callsetting/allcalls/AutoReject;->startActivity(Landroid/content/Intent;)V

    .line 107
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/AutoReject;->finish()V

    .line 108
    const/4 v2, 0x1

    .line 110
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return v2

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/AutoReject;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/callsetting/allcalls/AutoReject;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 75
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 76
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 62
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 63
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 64
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 65
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/AutoReject;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0, v3, v3}, Lcom/sec/android/app/callsetting/allcalls/AutoReject;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 66
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/AutoReject;->mAutoRejectNumber:Lcom/sec/android/app/callsetting/allcalls/AutoRejectModeListPreference;

    invoke-virtual {v1}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectModeListPreference;->updateState()V

    .line 68
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/allcalls/AutoReject;->isAirplaneModeOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/AutoReject;->mAutoRejectNumber:Lcom/sec/android/app/callsetting/allcalls/AutoRejectModeListPreference;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectModeListPreference;->setEnabled(Z)V

    .line 70
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/AutoReject;->mBlackList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 72
    :cond_0
    return-void
.end method
