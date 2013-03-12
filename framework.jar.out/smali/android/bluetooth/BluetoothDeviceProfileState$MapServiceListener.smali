.class Landroid/bluetooth/BluetoothDeviceProfileState$MapServiceListener;
.super Ljava/lang/Object;
.source "BluetoothDeviceProfileState.java"

# interfaces
.implements Landroid/bluetooth/BluetoothMap$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothDeviceProfileState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MapServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothDeviceProfileState;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothDeviceProfileState;)V
    .locals 2
    .parameter

    .prologue
    .line 348
    iput-object p1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$MapServiceListener;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 349
    new-instance v0, Landroid/bluetooth/BluetoothMap;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1800(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/bluetooth/BluetoothMap;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothMap$ServiceListener;)V

    #setter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mMapService:Landroid/bluetooth/BluetoothMap;
    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$2002(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/bluetooth/BluetoothMap;)Landroid/bluetooth/BluetoothMap;

    .line 350
    return-void
.end method


# virtual methods
.method public onServiceConnected()V
    .locals 3

    .prologue
    .line 352
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$MapServiceListener;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    monitor-enter v1

    .line 353
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$MapServiceListener;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/4 v2, 0x1

    #setter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mMapServiceConnected:Z
    invoke-static {v0, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$2102(Landroid/bluetooth/BluetoothDeviceProfileState;Z)Z

    .line 354
    monitor-exit v1

    .line 355
    return-void

    .line 354
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onServiceDisconnected()V
    .locals 3

    .prologue
    .line 357
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$MapServiceListener;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    monitor-enter v1

    .line 358
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$MapServiceListener;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/4 v2, 0x0

    #setter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mMapServiceConnected:Z
    invoke-static {v0, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$2102(Landroid/bluetooth/BluetoothDeviceProfileState;Z)Z

    .line 359
    monitor-exit v1

    .line 360
    return-void

    .line 359
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
