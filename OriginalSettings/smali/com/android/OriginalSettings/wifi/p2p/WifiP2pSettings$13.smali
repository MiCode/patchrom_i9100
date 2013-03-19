.class Lcom/android/settings/wifi/p2p/WifiP2pSettings$13;
.super Ljava/lang/Object;
.source "WifiP2pSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/p2p/WifiP2pSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1032
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$13;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 1036
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$13;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->btnBundle:Z
    invoke-static {v0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3400(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1037
    check-cast p1, Landroid/app/AlertDialog;

    .end local p1
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$13;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isBtnEnabled:Z
    invoke-static {v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3300(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1038
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$13;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #setter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->btnBundle:Z
    invoke-static {v0, v2}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3402(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Z)Z

    .line 1043
    :goto_0
    return-void

    .line 1040
    .restart local p1
    :cond_0
    check-cast p1, Landroid/app/AlertDialog;

    .end local p1
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1041
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$13;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #setter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isBtnEnabled:Z
    invoke-static {v0, v2}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3302(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Z)Z

    goto :goto_0
.end method
