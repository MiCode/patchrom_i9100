.class Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1$1;
.super Ljava/lang/Object;
.source "WifiP2pSettings.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;


# direct methods
.method constructor <init>(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;)V
    .locals 0
    .parameter

    .prologue
    .line 233
    iput-object p1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1$1;->this$1:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupInfoAvailable(Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 0
    .parameter "group"

    .prologue
    .line 235
    invoke-static {p1}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$602(Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 236
    return-void
.end method
