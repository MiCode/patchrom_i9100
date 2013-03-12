.class Lcom/android/server/wifi_offload/AppRunnOverWifiDialog$2;
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
    .line 80
    iput-object p1, p0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog$2;->this$0:Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 83
    iget-object v0, p0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog$2;->this$0:Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;

    iput v3, v0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->USER_RESPONSE:I

    .line 84
    iget-object v0, p0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog$2;->this$0:Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;

    invoke-virtual {v0}, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_connect_seamlessly"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 85
    iget-object v0, p0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog$2;->this$0:Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;

    iget-object v0, v0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    sget v1, Lcom/android/server/WifiOffloadService;->USER_PRESSED_OK:I

    invoke-virtual {v0, v1, v3}, Landroid/net/wifi/WifiOffloadManager;->setAppRunOverWiFiResult(IZ)V

    .line 86
    iget-object v0, p0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog$2;->this$0:Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;

    invoke-virtual {v0}, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->finish()V

    .line 87
    return-void
.end method
