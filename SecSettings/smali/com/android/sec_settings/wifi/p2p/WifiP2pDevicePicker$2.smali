.class Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker$2;
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
    .line 325
    iput-object p1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker$2;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker$2;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;

    #calls: Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->send()Z
    invoke-static {v0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->access$1800(Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;)Z

    .line 329
    return-void
.end method
