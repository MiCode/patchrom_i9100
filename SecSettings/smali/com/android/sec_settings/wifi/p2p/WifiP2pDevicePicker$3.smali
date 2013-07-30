.class Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker$3;
.super Ljava/lang/Object;
.source "WifiP2pDevicePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->onActivityCreated(Landroid/os/Bundle;)V
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
    .line 331
    iput-object p1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker$3;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 334
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker$3;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectClicked:Z
    invoke-static {v0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->access$1600(Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker$3;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {v0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->finish()V

    .line 344
    :goto_0
    return-void

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker$3;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->access$000(Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker$3;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v1}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->access$800(Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    iget-object v2, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker$3;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    .line 339
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker$3;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;

    #setter for: Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectClicked:Z
    invoke-static {v0, v3}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->access$1602(Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;Z)Z

    .line 340
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker$3;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectFooter:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->access$1900(Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 341
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker$3;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;

    #calls: Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->useCustomActionBar(Z)V
    invoke-static {v0, v3}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->access$2000(Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;Z)V

    .line 342
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker$3;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;

    const/4 v1, 0x4

    #calls: Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->setP2pMenu(I)V
    invoke-static {v0, v1}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->access$700(Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;I)V

    goto :goto_0
.end method
