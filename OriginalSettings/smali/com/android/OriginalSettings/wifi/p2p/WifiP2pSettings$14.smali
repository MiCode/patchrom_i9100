.class Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$14;
.super Ljava/lang/Object;
.source "WifiP2pSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->onPeersAvailable(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
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
    .line 866
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$14;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 868
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$14;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    const/4 v1, 0x2

    #calls: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->showDialog(I)V
    invoke-static {v0, v1}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$2200(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;I)V

    .line 869
    return-void
.end method
