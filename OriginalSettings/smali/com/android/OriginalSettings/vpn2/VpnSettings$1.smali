.class Lcom/android/settings/vpn2/VpnSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "VpnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/vpn2/VpnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/vpn2/VpnSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/vpn2/VpnSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 566
    iput-object p1, p0, Lcom/android/settings/vpn2/VpnSettings$1;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 569
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 570
    .local v0, action:Ljava/lang/String;
    const-string v3, "com.android.server.enterprise.VPN_NEW_PROFILE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings$1;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    #getter for: Lcom/android/settings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/settings/vpn2/VpnSettings;->access$000(Lcom/android/settings/vpn2/VpnSettings;)Ljava/util/HashMap;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 572
    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings$1;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    invoke-virtual {v3}, Lcom/android/settings/vpn2/VpnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 573
    .local v2, group:Landroid/preference/PreferenceGroup;
    const-string v3, "add_network"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 574
    .local v1, addNetworkPreference:Landroid/preference/Preference;
    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 575
    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 576
    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings$1;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    const/4 v4, 0x0

    #setter for: Lcom/android/settings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;
    invoke-static {v3, v4}, Lcom/android/settings/vpn2/VpnSettings;->access$002(Lcom/android/settings/vpn2/VpnSettings;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 577
    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings$1;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    invoke-virtual {v3}, Lcom/android/settings/vpn2/VpnSettings;->onResume()V

    .line 579
    .end local v1           #addNetworkPreference:Landroid/preference/Preference;
    .end local v2           #group:Landroid/preference/PreferenceGroup;
    :cond_0
    return-void
.end method
