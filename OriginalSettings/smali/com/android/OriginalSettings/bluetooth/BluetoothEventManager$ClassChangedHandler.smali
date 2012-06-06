.class Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager$ClassChangedHandler;
.super Ljava/lang/Object;
.source "BluetoothEventManager.java"

# interfaces
.implements Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClassChangedHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;


# direct methods
.method private constructor <init>(Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;)V
    .locals 0
    .parameter

    .prologue
    .line 342
    iput-object p1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager$ClassChangedHandler;->this$0:Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 342
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager$ClassChangedHandler;-><init>(Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 1
    .parameter "context"
    .parameter "intent"
    .parameter "device"

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager$ClassChangedHandler;->this$0:Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v0}, Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;->access$1200(Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;)Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDeviceManager;->onBtClassChanged(Landroid/bluetooth/BluetoothDevice;)V

    .line 346
    return-void
.end method
