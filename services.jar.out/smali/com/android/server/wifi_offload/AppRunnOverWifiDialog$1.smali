.class Lcom/android/server/wifi_offload/AppRunnOverWifiDialog$1;
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
    .line 64
    iput-object p1, p0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog$1;->this$0:Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 68
    iget-object v0, p0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog$1;->this$0:Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;

    iget-object v0, v0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    if-eqz v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog$1;->this$0:Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;

    iput v2, v0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->USER_RESPONSE:I

    .line 70
    invoke-static {}, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AppRunnOverWifiDialog"

    const-string v1, "Offload USER_PRESSED_OK"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog$1;->this$0:Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;

    iget-object v0, v0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    sget v1, Lcom/android/server/WifiOffloadService;->USER_PRESSED_OK:I

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiOffloadManager;->setAppRunOverWiFiResult(IZ)V

    .line 73
    :cond_1
    invoke-static {}, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->access$000()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "AppRunnOverWifiDialog"

    const-string v1, "Offload before finish"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog$1;->this$0:Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;

    invoke-virtual {v0}, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->finish()V

    .line 75
    return-void
.end method
