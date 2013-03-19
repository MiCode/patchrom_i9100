.class public Lcom/android/settings/wifi/p2p/WifiP2pHelp;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WifiP2pHelp.java"


# instance fields
.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 23
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pHelp;->mIntentFilter:Landroid/content/IntentFilter;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const v0, 0x7f070086

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pHelp;->addPreferencesFromResource(I)V

    .line 31
    new-instance v0, Lcom/android/settings/wifi/p2p/WifiP2pHelp$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/p2p/WifiP2pHelp$1;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pHelp;)V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pHelp;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 37
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 42
    const v2, 0x7f04012a

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 43
    .local v1, v:Landroid/view/View;
    const v2, 0x7f0b03a1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 44
    .local v0, msg:Landroid/widget/TextView;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 45
    return-object v1
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 50
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 51
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pHelp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pHelp;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 52
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 56
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pHelp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pHelp;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pHelp;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 58
    return-void
.end method
