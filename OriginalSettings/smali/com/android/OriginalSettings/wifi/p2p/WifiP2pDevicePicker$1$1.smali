.class Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1$1;
.super Ljava/lang/Object;
.source "WifiP2pDevicePicker.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;)V
    .locals 0
    .parameter

    .prologue
    .line 224
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1$1;->this$1:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupInfoAvailable(Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 1
    .parameter "group"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1$1;->this$1:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;

    iget-object v0, v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    #setter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v0, p1}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1002(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 227
    return-void
.end method
