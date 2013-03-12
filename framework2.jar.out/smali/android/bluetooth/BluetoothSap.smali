.class public Landroid/bluetooth/BluetoothSap;
.super Ljava/lang/Object;
.source "BluetoothSap.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field public static final RESULT_CANCELED:I = 0x2

.field public static final RESULT_FAILURE:I = 0x0

.field public static final RESULT_SUCCESS:I = 0x1

.field public static final SAP_AUTHORIZATION:Ljava/lang/String; = "android.bluetooth.sap.intent.action.SAP_AUTHORIZATION"

.field public static final SAP_PREVIOUS_STATE:Ljava/lang/String; = "android.bluetooth.sap.intent.SAP_PREVIOUS_STATE"

.field public static final SAP_STATE:Ljava/lang/String; = "android.bluetooth.sap.intent.SAP_STATE"

.field public static final SAP_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.bluetooth.sap.intent.action.SAP_STATE_CHANGED"

.field public static final SAP_STATE_NOTIFY_ACTION:Ljava/lang/String; = "android.bluetooth.sap.intent.action.SAP_STATE_NOTIFY_ACTION"

.field public static final STATE_ERROR:I = -0x1

.field private static final TAG:Ljava/lang/String; = "BluetoothSap"


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private mService:Landroid/bluetooth/IBluetoothSap;

.field private final mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 56
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Landroid/bluetooth/BluetoothSap;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V
    .locals 3
    .parameter "context"
    .parameter "l"

    .prologue
    .line 93
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 336
    new-instance v0, Landroid/bluetooth/BluetoothSap$1;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothSap$1;-><init>(Landroid/bluetooth/BluetoothSap;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothSap;->mConnection:Landroid/content/ServiceConnection;

    .line 94
    iput-object p1, p0, Landroid/bluetooth/BluetoothSap;->mContext:Landroid/content/Context;

    .line 95
    iput-object p2, p0, Landroid/bluetooth/BluetoothSap;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 96
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothSap;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 97
    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroid/bluetooth/IBluetoothSap;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/bluetooth/BluetoothSap;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    const-string v0, "BluetoothSap"

    const-string v1, "Could not bind to Bluetooth Sap Service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_0
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 53
    sget-boolean v0, Landroid/bluetooth/BluetoothSap;->DBG:Z

    return v0
.end method

.method static synthetic access$102(Landroid/bluetooth/BluetoothSap;Landroid/bluetooth/IBluetoothSap;)Landroid/bluetooth/IBluetoothSap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Landroid/bluetooth/BluetoothSap;->mService:Landroid/bluetooth/IBluetoothSap;

    return-object p1
.end method

.method static synthetic access$200(Landroid/bluetooth/BluetoothSap;)Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Landroid/bluetooth/BluetoothSap;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-object v0
.end method

.method public static doesClassMatchSink(Landroid/bluetooth/BluetoothClass;)Z
    .locals 1
    .parameter "btClass"

    .prologue
    .line 225
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 232
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 230
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 225
    nop

    :sswitch_data_0
    .sparse-switch
        0x100 -> :sswitch_0
        0x104 -> :sswitch_0
        0x108 -> :sswitch_0
        0x10c -> :sswitch_0
    .end sparse-switch
.end method

.method private isEnabled()Z
    .locals 2

    .prologue
    .line 299
    iget-object v0, p0, Landroid/bluetooth/BluetoothSap;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 300
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .parameter "device"

    .prologue
    const/4 v0, 0x0

    .line 304
    if-nez p1, :cond_1

    .line 307
    :cond_0
    :goto_0
    return v0

    .line 306
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 355
    const-string v0, "BluetoothSap"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2

    .prologue
    .line 117
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothSap;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Landroid/bluetooth/BluetoothSap;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/bluetooth/BluetoothSap;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothSap;->mConnection:Landroid/content/ServiceConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    :cond_0
    monitor-exit p0

    return-void

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .parameter "device"

    .prologue
    .line 184
    sget-boolean v1, Landroid/bluetooth/BluetoothSap;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "disconnect()"

    invoke-static {v1}, Landroid/bluetooth/BluetoothSap;->log(Ljava/lang/String;)V

    .line 185
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothSap;->mService:Landroid/bluetooth/IBluetoothSap;

    if-eqz v1, :cond_2

    .line 187
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothSap;->mService:Landroid/bluetooth/IBluetoothSap;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothSap;->disconnect(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    const/4 v1, 0x1

    .line 194
    :goto_0
    return v1

    .line 189
    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothSap"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 191
    :cond_2
    const-string v1, "BluetoothSap"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    sget-boolean v1, Landroid/bluetooth/BluetoothSap;->DBG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothSap;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public disconnectImmediate(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .parameter "device"

    .prologue
    .line 203
    sget-boolean v1, Landroid/bluetooth/BluetoothSap;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "disconnectImmediate()"

    invoke-static {v1}, Landroid/bluetooth/BluetoothSap;->log(Ljava/lang/String;)V

    .line 204
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothSap;->mService:Landroid/bluetooth/IBluetoothSap;

    if-eqz v1, :cond_2

    .line 206
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothSap;->mService:Landroid/bluetooth/IBluetoothSap;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothSap;->disconnectImmediate(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    const/4 v1, 0x1

    .line 213
    :goto_0
    return v1

    .line 208
    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothSap"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 210
    :cond_2
    const-string v1, "BluetoothSap"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    sget-boolean v1, Landroid/bluetooth/BluetoothSap;->DBG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothSap;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 104
    :try_start_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothSap;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 108
    return-void

    .line 106
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getClient()Landroid/bluetooth/BluetoothDevice;
    .locals 3

    .prologue
    .line 148
    sget-boolean v1, Landroid/bluetooth/BluetoothSap;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "getClient()"

    invoke-static {v1}, Landroid/bluetooth/BluetoothSap;->log(Ljava/lang/String;)V

    .line 149
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothSap;->mService:Landroid/bluetooth/IBluetoothSap;

    if-eqz v1, :cond_2

    .line 151
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothSap;->mService:Landroid/bluetooth/IBluetoothSap;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothSap;->getClient()Landroid/bluetooth/BluetoothDevice;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 157
    :goto_0
    return-object v1

    .line 152
    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothSap"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 154
    :cond_2
    const-string v1, "BluetoothSap"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    sget-boolean v1, Landroid/bluetooth/BluetoothSap;->DBG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothSap;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getConnectedDevices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 312
    const/4 v0, 0x0

    return-object v0
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 3
    .parameter "device"

    .prologue
    .line 129
    sget-boolean v1, Landroid/bluetooth/BluetoothSap;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "getConnectionState()"

    invoke-static {v1}, Landroid/bluetooth/BluetoothSap;->log(Ljava/lang/String;)V

    .line 130
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothSap;->mService:Landroid/bluetooth/IBluetoothSap;

    if-eqz v1, :cond_2

    .line 132
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothSap;->mService:Landroid/bluetooth/IBluetoothSap;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothSap;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 138
    :goto_0
    return v1

    .line 133
    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothSap"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    :goto_1
    const/4 v1, -0x1

    goto :goto_0

    .line 135
    :cond_2
    const-string v1, "BluetoothSap"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    sget-boolean v1, Landroid/bluetooth/BluetoothSap;->DBG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothSap;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 1
    .parameter "states"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 316
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .locals 5
    .parameter "device"

    .prologue
    const/4 v1, 0x0

    .line 284
    sget-boolean v2, Landroid/bluetooth/BluetoothSap;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPriority("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothSap;->log(Ljava/lang/String;)V

    .line 285
    :cond_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothSap;->mService:Landroid/bluetooth/IBluetoothSap;

    if-eqz v2, :cond_2

    invoke-direct {p0}, Landroid/bluetooth/BluetoothSap;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothSap;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 288
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothSap;->mService:Landroid/bluetooth/IBluetoothSap;

    invoke-interface {v2, p1}, Landroid/bluetooth/IBluetoothSap;->getPriority(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 295
    :cond_1
    :goto_0
    return v1

    .line 289
    :catch_0
    move-exception v0

    .line 290
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothSap"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 294
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    iget-object v2, p0, Landroid/bluetooth/BluetoothSap;->mService:Landroid/bluetooth/IBluetoothSap;

    if-nez v2, :cond_1

    const-string v2, "BluetoothSap"

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isConnected(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .parameter "device"

    .prologue
    .line 166
    sget-boolean v1, Landroid/bluetooth/BluetoothSap;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isConnected("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothSap;->log(Ljava/lang/String;)V

    .line 167
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothSap;->mService:Landroid/bluetooth/IBluetoothSap;

    if-eqz v1, :cond_2

    .line 169
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothSap;->mService:Landroid/bluetooth/IBluetoothSap;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothSap;->isConnected(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 175
    :goto_0
    return v1

    .line 170
    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothSap"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 172
    :cond_2
    const-string v1, "BluetoothSap"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    sget-boolean v1, Landroid/bluetooth/BluetoothSap;->DBG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothSap;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 5
    .parameter "device"
    .parameter "priority"

    .prologue
    const/4 v1, 0x0

    .line 252
    sget-boolean v2, Landroid/bluetooth/BluetoothSap;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPriority("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothSap;->log(Ljava/lang/String;)V

    .line 253
    :cond_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothSap;->mService:Landroid/bluetooth/IBluetoothSap;

    if-eqz v2, :cond_3

    invoke-direct {p0}, Landroid/bluetooth/BluetoothSap;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothSap;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 255
    if-eqz p2, :cond_2

    const/16 v2, 0x64

    if-eq p2, v2, :cond_2

    .line 267
    :cond_1
    :goto_0
    return v1

    .line 260
    :cond_2
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothSap;->mService:Landroid/bluetooth/IBluetoothSap;

    invoke-interface {v2, p1, p2}, Landroid/bluetooth/IBluetoothSap;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 261
    :catch_0
    move-exception v0

    .line 262
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothSap"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 266
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_3
    iget-object v2, p0, Landroid/bluetooth/BluetoothSap;->mService:Landroid/bluetooth/IBluetoothSap;

    if-nez v2, :cond_1

    const-string v2, "BluetoothSap"

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
