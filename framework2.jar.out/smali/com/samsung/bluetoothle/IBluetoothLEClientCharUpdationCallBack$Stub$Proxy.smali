.class Lcom/samsung/bluetoothle/IBluetoothLEClientCharUpdationCallBack$Stub$Proxy;
.super Ljava/lang/Object;
.source "IBluetoothLEClientCharUpdationCallBack.java"

# interfaces
.implements Lcom/samsung/bluetoothle/IBluetoothLEClientCharUpdationCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/bluetoothle/IBluetoothLEClientCharUpdationCallBack$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .parameter "remote"

    .prologue
    .line 119
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p1, p0, Lcom/samsung/bluetoothle/IBluetoothLEClientCharUpdationCallBack$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 121
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/samsung/bluetoothle/IBluetoothLEClientCharUpdationCallBack$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    const-string v0, "com.samsung.bluetoothle.IBluetoothLEClientCharUpdationCallBack"

    return-object v0
.end method

.method public onDiscoverCharacteristics(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5
    .parameter "address"
    .parameter "charPaths"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 179
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 180
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 182
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.bluetoothle.IBluetoothLEClientCharUpdationCallBack"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 185
    iget-object v2, p0, Lcom/samsung/bluetoothle/IBluetoothLEClientCharUpdationCallBack$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 186
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 190
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 192
    return-void

    .line 189
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 190
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public onDiscoverCharacteristicsFailed(Ljava/lang/String;)V
    .locals 5
    .parameter "address"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 195
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 196
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 198
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.bluetoothle.IBluetoothLEClientCharUpdationCallBack"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 200
    iget-object v2, p0, Lcom/samsung/bluetoothle/IBluetoothLEClientCharUpdationCallBack$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 201
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 205
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 207
    return-void

    .line 204
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 205
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public onReadCharValue(Ljava/lang/String;)V
    .locals 5
    .parameter "charPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 132
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 133
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 135
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.bluetoothle.IBluetoothLEClientCharUpdationCallBack"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 137
    iget-object v2, p0, Lcom/samsung/bluetoothle/IBluetoothLEClientCharUpdationCallBack$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 138
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 142
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 144
    return-void

    .line 141
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 142
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public onWatcherValueChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "charPath"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 212
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 213
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 215
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.bluetoothle.IBluetoothLEClientCharUpdationCallBack"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 217
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 218
    iget-object v2, p0, Lcom/samsung/bluetoothle/IBluetoothLEClientCharUpdationCallBack$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 219
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 223
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 225
    return-void

    .line 222
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 223
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public onWriteCharValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "charPath"
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 147
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 148
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 150
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.bluetoothle.IBluetoothLEClientCharUpdationCallBack"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 153
    iget-object v2, p0, Lcom/samsung/bluetoothle/IBluetoothLEClientCharUpdationCallBack$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 154
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 158
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 160
    return-void

    .line 157
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 158
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public onWriteClientConfigDesc(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "charPath"
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 163
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 164
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 166
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.bluetoothle.IBluetoothLEClientCharUpdationCallBack"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 169
    iget-object v2, p0, Lcom/samsung/bluetoothle/IBluetoothLEClientCharUpdationCallBack$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 170
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 174
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 176
    return-void

    .line 173
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 174
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method
