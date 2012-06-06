.class Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$3;
.super Ljava/lang/Object;
.source "WifiP2pSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 405
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$3;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 408
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 409
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$3;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mConnectDialog:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDialog;
    invoke-static {v1}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$1600(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDialog;->getConfig()Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v0

    .line 410
    .local v0, config:Landroid/net/wifi/p2p/WifiP2pConfig;
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$3;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v1}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$000(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 411
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$3;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v1}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$000(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$3;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v2}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$300(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v2

    new-instance v3, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$3$1;

    invoke-direct {v3, p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$3$1;-><init>(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$3;)V

    invoke-virtual {v1, v2, v0, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->connect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 434
    .end local v0           #config:Landroid/net/wifi/p2p/WifiP2pConfig;
    :cond_0
    :goto_0
    return-void

    .line 422
    :cond_1
    const/4 v1, -0x2

    if-ne p2, v1, :cond_0

    .line 423
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$3;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v1}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$000(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 424
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$3;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v1}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$000(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$3;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v2}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$300(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v2

    new-instance v3, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$3$2;

    invoke-direct {v3, p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$3$2;-><init>(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$3;)V

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->cancelConnect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_0
.end method
