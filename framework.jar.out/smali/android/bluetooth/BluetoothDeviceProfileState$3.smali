.class Landroid/bluetooth/BluetoothDeviceProfileState$3;
.super Ljava/lang/Object;
.source "BluetoothDeviceProfileState.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothDeviceProfileState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothDeviceProfileState;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothDeviceProfileState;)V
    .locals 0
    .parameter

    .prologue
    .line 318
    iput-object p1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$3;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 2
    .parameter "profile"
    .parameter "proxy"

    .prologue
    .line 320
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$3;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    monitor-enter v1

    .line 321
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$3;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    check-cast p2, Landroid/bluetooth/BluetoothSap;

    .end local p2
    #setter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mSapService:Landroid/bluetooth/BluetoothSap;
    invoke-static {v0, p2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1602(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/bluetooth/BluetoothSap;)Landroid/bluetooth/BluetoothSap;

    .line 322
    monitor-exit v1

    .line 323
    return-void

    .line 322
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onServiceDisconnected(I)V
    .locals 3
    .parameter "profile"

    .prologue
    .line 325
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$3;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    monitor-enter v1

    .line 326
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$3;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/4 v2, 0x0

    #setter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mSapService:Landroid/bluetooth/BluetoothSap;
    invoke-static {v0, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1602(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/bluetooth/BluetoothSap;)Landroid/bluetooth/BluetoothSap;

    .line 327
    monitor-exit v1

    .line 328
    return-void

    .line 327
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
