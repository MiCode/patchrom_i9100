.class Lcom/android/sec_settings/wifi/WifiOffloadDialog$3;
.super Ljava/lang/Object;
.source "WifiOffloadDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/sec_settings/wifi/WifiOffloadDialog;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/wifi/WifiOffloadDialog;


# direct methods
.method constructor <init>(Lcom/android/sec_settings/wifi/WifiOffloadDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/sec_settings/wifi/WifiOffloadDialog$3;->this$0:Lcom/android/sec_settings/wifi/WifiOffloadDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 137
    const-string v0, "WifiOffloadDialog"

    const-string v1, "Selected do not disturb ---- > "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiOffloadDialog$3;->this$0:Lcom/android/sec_settings/wifi/WifiOffloadDialog;

    #setter for: Lcom/android/sec_settings/wifi/WifiOffloadDialog;->userPress:I
    invoke-static {v0, v2}, Lcom/android/sec_settings/wifi/WifiOffloadDialog;->access$102(Lcom/android/sec_settings/wifi/WifiOffloadDialog;I)I

    .line 139
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiOffloadDialog$3;->this$0:Lcom/android/sec_settings/wifi/WifiOffloadDialog;

    iget-object v0, v0, Lcom/android/sec_settings/wifi/WifiOffloadDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiOffloadDialog$3;->this$0:Lcom/android/sec_settings/wifi/WifiOffloadDialog;

    iget-object v0, v0, Lcom/android/sec_settings/wifi/WifiOffloadDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiOffloadManager;->startDontUseWiFiPressedTimer()V

    .line 141
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiOffloadDialog$3;->this$0:Lcom/android/sec_settings/wifi/WifiOffloadDialog;

    iget-object v0, v0, Lcom/android/sec_settings/wifi/WifiOffloadDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiOffloadManager;->setDontuseWifiPressed(Z)V

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiOffloadDialog$3;->this$0:Lcom/android/sec_settings/wifi/WifiOffloadDialog;

    invoke-virtual {v0}, Lcom/android/sec_settings/wifi/WifiOffloadDialog;->finish()V

    .line 144
    return-void
.end method
