.class Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker$6;
.super Ljava/lang/Object;
.source "WifiP2pDevicePicker.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;


# direct methods
.method constructor <init>(Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;)V
    .locals 0
    .parameter

    .prologue
    .line 451
    iput-object p1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker$6;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupInfoAvailable(Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 4
    .parameter "group"

    .prologue
    .line 453
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker$6;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;

    #setter for: Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v0, p1}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->access$1002(Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 455
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker$6;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->access$1000(Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker$6;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->access$1000(Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v0

    if-nez v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker$6;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->access$000(Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker$6;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v1}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->access$800(Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    const/4 v2, 0x5

    new-instance v3, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker$6$1;

    invoke-direct {v3, p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker$6$1;-><init>(Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker$6;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->discoverPeersWithFlush(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 466
    :cond_0
    return-void
.end method
