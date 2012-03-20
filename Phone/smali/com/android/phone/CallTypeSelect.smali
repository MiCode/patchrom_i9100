.class public Lcom/android/phone/CallTypeSelect;
.super Landroid/preference/PreferenceActivity;
.source "CallTypeSelect.java"


# instance fields
.field private mSStype:Ljava/lang/String;

.field private mVideoCall:Landroid/preference/PreferenceScreen;

.field private mVoiceCall:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 46
    const-string v0, "forwarding"

    iput-object v0, p0, Lcom/android/phone/CallTypeSelect;->mSStype:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v2, 0x7f060001

    invoke-virtual {p0, v2}, Lcom/android/phone/CallTypeSelect;->addPreferencesFromResource(I)V

    .line 54
    invoke-virtual {p0}, Lcom/android/phone/CallTypeSelect;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 57
    .local v1, prefSet:Landroid/preference/PreferenceScreen;
    const-string v2, "button_voicecall"

    invoke-virtual {p0, v2}, Lcom/android/phone/CallTypeSelect;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/phone/CallTypeSelect;->mVoiceCall:Landroid/preference/PreferenceScreen;

    .line 58
    const-string v2, "button_videocall"

    invoke-virtual {p0, v2}, Lcom/android/phone/CallTypeSelect;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/phone/CallTypeSelect;->mVideoCall:Landroid/preference/PreferenceScreen;

    .line 64
    invoke-virtual {p0}, Lcom/android/phone/CallTypeSelect;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "SS_Type"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/CallTypeSelect;->mSStype:Ljava/lang/String;

    .line 65
    const-string v2, "CallTypeSelct"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Deliverd extra : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/CallTypeSelect;->mSStype:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v2, p0, Lcom/android/phone/CallTypeSelect;->mSStype:Ljava/lang/String;

    const-string v3, "forwarding"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "CallTypeSelct"

    const-string v3, "Set the title: forwarding"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x7f0e0079

    invoke-virtual {p0, v2}, Lcom/android/phone/CallTypeSelect;->setTitle(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/CallTypeSelect;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    :cond_0
    return-void

    .end local v0           #actionBar:Landroid/app/ActionBar;
    :cond_1
    const v2, 0x7f0e02c1

    invoke-virtual {p0, v2}, Lcom/android/phone/CallTypeSelect;->setTitle(I)V

    const-string v2, "CallTypeSelct"

    const-string v3, "Set the title: barring"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 118
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 119
    const v1, 0x102002c

    if-ne v0, v1, :cond_1

    .line 120
    iget-object v0, p0, Lcom/android/phone/CallTypeSelect;->mSStype:Ljava/lang/String;

    const-string v1, "forwarding"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    invoke-static {p0}, Lcom/android/phone/CallFeaturesSetting;->goUpToTopLevelSetting(Landroid/app/Activity;)V

    .line 129
    :goto_0
    const/4 v0, 0x1

    .line 131
    :goto_1
    return v0

    .line 123
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 124
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 126
    invoke-virtual {p0, v0}, Lcom/android/phone/CallTypeSelect;->startActivity(Landroid/content/Intent;)V

    .line 127
    invoke-virtual {p0}, Lcom/android/phone/CallTypeSelect;->finish()V

    goto :goto_0

    .line 131
    :cond_1
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v6, 0x1

    .line 86
    iget-object v4, p0, Lcom/android/phone/CallTypeSelect;->mVoiceCall:Landroid/preference/PreferenceScreen;

    if-ne p2, v4, :cond_1

    .line 87
    iget-object v4, p0, Lcom/android/phone/CallTypeSelect;->mSStype:Ljava/lang/String;

    const-string v5, "forwarding"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 88
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 89
    .local v3, vocFwdIntent:Landroid/content/Intent;
    const-string v4, "com.android.phone"

    const-string v5, "com.android.phone.GsmUmtsCallForwardOptions"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    invoke-virtual {p0, v3}, Lcom/android/phone/CallTypeSelect;->startActivity(Landroid/content/Intent;)V

    .line 109
    .end local v3           #vocFwdIntent:Landroid/content/Intent;
    :goto_0
    return v6

    .line 93
    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 94
    .local v2, vocBarIntent:Landroid/content/Intent;
    const-string v4, "com.sec.android.app.callsetting"

    const-string v5, "com.sec.android.app.callsetting.voicecall.CallBarring"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    invoke-virtual {p0, v2}, Lcom/android/phone/CallTypeSelect;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 100
    .end local v2           #vocBarIntent:Landroid/content/Intent;
    :cond_1
    iget-object v4, p0, Lcom/android/phone/CallTypeSelect;->mSStype:Ljava/lang/String;

    const-string v5, "forwarding"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 101
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 102
    .local v1, vidFwdIntent:Landroid/content/Intent;
    const-string v4, "com.android.phone"

    const-string v5, "com.android.phone.GsmUmtsVideoCallForwardOptions"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    invoke-virtual {p0, v1}, Lcom/android/phone/CallTypeSelect;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 106
    .end local v1           #vidFwdIntent:Landroid/content/Intent;
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 107
    .local v0, vidBarIntent:Landroid/content/Intent;
    const-string v4, "com.sec.android.app.callsetting"

    const-string v5, "com.sec.android.app.callsetting.videocall.VideoCallBarring"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    invoke-virtual {p0, v0}, Lcom/android/phone/CallTypeSelect;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
