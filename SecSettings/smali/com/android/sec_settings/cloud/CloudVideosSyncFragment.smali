.class public Lcom/android/sec_settings/cloud/CloudVideosSyncFragment;
.super Lcom/android/sec_settings/cloud/SyncFragment;
.source "CloudVideosSyncFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/sec_settings/cloud/SyncFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected broadcastStatus()V
    .locals 4

    .prologue
    .line 47
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.cloudagent.settings.ACTION_REQUEST_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 48
    .local v0, i:Landroid/content/Intent;
    const-string v1, "videoSync"

    iget-object v2, p0, Lcom/android/sec_settings/cloud/SyncFragment;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 50
    invoke-virtual {p0}, Lcom/android/sec_settings/cloud/CloudVideosSyncFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 51
    const-string v1, "CloudSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CloudVideosSyncFragment changed -->  sending intent with Cloud Status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/sec_settings/cloud/SyncFragment;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/android/sec_settings/cloud/SyncFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 24
    const v0, 0x7f07001a

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/cloud/CloudVideosSyncFragment;->addPreferencesFromResource(I)V

    .line 26
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 30
    invoke-super {p0}, Lcom/android/sec_settings/cloud/SyncFragment;->onResume()V

    .line 33
    iget-object v0, p0, Lcom/android/sec_settings/cloud/SyncFragment;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-static {}, Lcom/android/sec_settings/cloud/CloudSettings;->getInstance()Lcom/android/sec_settings/cloud/CloudSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/sec_settings/cloud/CloudSettings;->isVideoSync()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 37
    iget-object v0, p0, Lcom/android/sec_settings/cloud/SyncFragment;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 39
    return-void
.end method

.method protected togglePreferences(Z)V
    .locals 1
    .parameter "isChecked"

    .prologue
    .line 61
    invoke-static {}, Lcom/android/sec_settings/cloud/CloudSettings;->getInstance()Lcom/android/sec_settings/cloud/CloudSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/sec_settings/cloud/CloudSettings;->setVideoSync(Z)V

    .line 62
    return-void
.end method
