.class Lcom/android/server/wifi_offload/AppRunnOverWifiDialog$3;
.super Ljava/lang/Object;
.source "AppRunnOverWifiDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;


# direct methods
.method constructor <init>(Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog$3;->this$0:Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog$3;->this$0:Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;

    const/4 v1, 0x1

    iput v1, v0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->USER_RESPONSE:I

    .line 97
    iget-object v0, p0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog$3;->this$0:Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;

    iget-object v0, v0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    if-eqz v0, :cond_1

    .line 98
    invoke-static {}, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AppRunnOverWifiDialog"

    const-string v1, "Offload USER_PRESSED_TURN_OFF_WIFI"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog$3;->this$0:Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;

    iget-object v0, v0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    sget v1, Lcom/android/server/WifiOffloadService;->USER_PRESSED_TURN_OFF_WIFI:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiOffloadManager;->setAppRunOverWiFiResult(IZ)V

    .line 101
    :cond_1
    invoke-static {}, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->access$000()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "AppRunnOverWifiDialog"

    const-string v1, "Offload USER_PRESSED_TURN_OFF_WIFI before finish "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog$3;->this$0:Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;

    invoke-virtual {v0}, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->finish()V

    .line 103
    return-void
.end method
