.class Lcom/android/settings/wifi/mobileap/WifiApLanSettings$7;
.super Ljava/lang/Object;
.source "WifiApLanSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 401
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$7;->this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v4, 0x1

    .line 403
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$7;->this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->access$1400(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Landroid/net/ConnectivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$7;->this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    #calls: Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->getLocalServerConfig()Landroid/net/DhcpServerConfiguration;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->access$1300(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Landroid/net/DhcpServerConfiguration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->saveDhcpServerConfiguration(Landroid/net/DhcpServerConfiguration;)Z

    .line 405
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$7;->this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$7;->this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->access$1600(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "SAMSUNG_HOTSPOT"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    #setter for: Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->prefs:Landroid/content/SharedPreferences;
    invoke-static {v1, v2}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->access$1502(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;

    .line 406
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$7;->this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->prefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->access$1500(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 407
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v1, "DHCP_CHANGE"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 408
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 410
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$7;->this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->access$1700(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 411
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$7;->this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->access$1700(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$7;->this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->access$1800(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 412
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$7;->this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    invoke-virtual {v1}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->finish()V

    .line 413
    return-void
.end method
