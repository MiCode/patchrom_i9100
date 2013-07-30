.class Lcom/android/sec_settings/bluetooth/BluetoothEventManager$NameChangedHandler;
.super Ljava/lang/Object;
.source "BluetoothEventManager.java"

# interfaces
.implements Lcom/android/sec_settings/bluetooth/BluetoothEventManager$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sec_settings/bluetooth/BluetoothEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NameChangedHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/bluetooth/BluetoothEventManager;


# direct methods
.method private constructor <init>(Lcom/android/sec_settings/bluetooth/BluetoothEventManager;)V
    .locals 0
    .parameter

    .prologue
    .line 250
    iput-object p1, p0, Lcom/android/sec_settings/bluetooth/BluetoothEventManager$NameChangedHandler;->this$0:Lcom/android/sec_settings/bluetooth/BluetoothEventManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/sec_settings/bluetooth/BluetoothEventManager;Lcom/android/sec_settings/bluetooth/BluetoothEventManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 250
    invoke-direct {p0, p1}, Lcom/android/sec_settings/bluetooth/BluetoothEventManager$NameChangedHandler;-><init>(Lcom/android/sec_settings/bluetooth/BluetoothEventManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 1
    .parameter "context"
    .parameter "intent"
    .parameter "device"

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/sec_settings/bluetooth/BluetoothEventManager$NameChangedHandler;->this$0:Lcom/android/sec_settings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/sec_settings/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/sec_settings/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v0}, Lcom/android/sec_settings/bluetooth/BluetoothEventManager;->access$1200(Lcom/android/sec_settings/bluetooth/BluetoothEventManager;)Lcom/android/sec_settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/sec_settings/bluetooth/CachedBluetoothDeviceManager;->onDeviceNameUpdated(Landroid/bluetooth/BluetoothDevice;)V

    .line 254
    return-void
.end method
