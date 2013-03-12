.class public abstract Landroid/bluetooth/AvrcpProxy;
.super Ljava/lang/Object;
.source "AvrcpProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/AvrcpProxy$AvrcpProxyCallback;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "AvrcpProxy"


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mCb:Landroid/bluetooth/IAvrcpProxyCallback;

.field private mRetryCount:I

.field private mService:Landroid/bluetooth/IAvrcpProxy;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v3, p0, Landroid/bluetooth/AvrcpProxy;->mCb:Landroid/bluetooth/IAvrcpProxyCallback;

    .line 45
    const/4 v1, 0x2

    iput v1, p0, Landroid/bluetooth/AvrcpProxy;->mRetryCount:I

    .line 49
    const-string v1, "bluetooth_avrcp"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 50
    .local v0, b:Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 51
    invoke-static {v0}, Landroid/bluetooth/IAvrcpProxy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IAvrcpProxy;

    move-result-object v1

    iput-object v1, p0, Landroid/bluetooth/AvrcpProxy;->mService:Landroid/bluetooth/IAvrcpProxy;

    .line 63
    :goto_0
    iget-object v1, p0, Landroid/bluetooth/AvrcpProxy;->mService:Landroid/bluetooth/IAvrcpProxy;

    if-nez v1, :cond_0

    .line 64
    const-string v1, "AVRCP service is not availble, trying again to establish"

    invoke-static {v1}, Landroid/bluetooth/AvrcpProxy;->log(Ljava/lang/String;)V

    .line 65
    invoke-direct {p0}, Landroid/bluetooth/AvrcpProxy;->retryInitialization()V

    .line 67
    :cond_0
    new-instance v1, Landroid/bluetooth/AvrcpProxy$AvrcpProxyCallback;

    invoke-direct {v1, p0}, Landroid/bluetooth/AvrcpProxy$AvrcpProxyCallback;-><init>(Landroid/bluetooth/AvrcpProxy;)V

    iput-object v1, p0, Landroid/bluetooth/AvrcpProxy;->mCb:Landroid/bluetooth/IAvrcpProxyCallback;

    .line 68
    return-void

    .line 53
    :cond_1
    const-string v1, "AvrcpProxy"

    const-string v2, "Bluetooth AVRCP service not available!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iput-object v3, p0, Landroid/bluetooth/AvrcpProxy;->mService:Landroid/bluetooth/IAvrcpProxy;

    goto :goto_0
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-static {p0}, Landroid/bluetooth/AvrcpProxy;->log(Ljava/lang/String;)V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 154
    const-string v0, "AvrcpProxy"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    return-void
.end method

.method private retryInitialization()V
    .locals 4

    .prologue
    .line 76
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Landroid/bluetooth/AvrcpProxy;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 77
    iget-object v2, p0, Landroid/bluetooth/AvrcpProxy;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v2, :cond_2

    .line 78
    :goto_0
    iget-object v2, p0, Landroid/bluetooth/AvrcpProxy;->mService:Landroid/bluetooth/IAvrcpProxy;

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/bluetooth/AvrcpProxy;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/bluetooth/AvrcpProxy;->mRetryCount:I

    if-lez v2, :cond_0

    .line 80
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_1
    const-string v2, "bluetooth_avrcp"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 86
    .local v0, b:Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 87
    invoke-static {v0}, Landroid/bluetooth/IAvrcpProxy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IAvrcpProxy;

    move-result-object v2

    iput-object v2, p0, Landroid/bluetooth/AvrcpProxy;->mService:Landroid/bluetooth/IAvrcpProxy;

    .line 98
    .end local v0           #b:Landroid/os/IBinder;
    :cond_0
    :goto_2
    return-void

    .line 81
    :catch_0
    move-exception v1

    .line 82
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "AvrcpProxy"

    const-string v3, "stacktrace = "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 90
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #b:Landroid/os/IBinder;
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/bluetooth/AvrcpProxy;->mService:Landroid/bluetooth/IAvrcpProxy;

    .line 91
    iget v2, p0, Landroid/bluetooth/AvrcpProxy;->mRetryCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/bluetooth/AvrcpProxy;->mRetryCount:I

    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Avrcp service still not available, retry count remaining = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/bluetooth/AvrcpProxy;->mRetryCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/AvrcpProxy;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 96
    .end local v0           #b:Landroid/os/IBinder;
    :cond_2
    const-string v2, "AvrcpProxy"

    const-string v3, "Failed to obtain Bluetooth Adapter"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method


# virtual methods
.method public applicationSettingsChangeEvent(BB)V
    .locals 3
    .parameter "shuffleVal"
    .parameter "repeatVal"

    .prologue
    .line 145
    const-string v1, "applicationSettingsChangeEvent()"

    invoke-static {v1}, Landroid/bluetooth/AvrcpProxy;->log(Ljava/lang/String;)V

    .line 147
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/AvrcpProxy;->mService:Landroid/bluetooth/IAvrcpProxy;

    invoke-interface {v1, p1, p2}, Landroid/bluetooth/IAvrcpProxy;->applicationSettingsChangeEvent(BB)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :goto_0
    return-void

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "AvrcpProxy"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public abstract getElementAttributes()[Landroid/os/ElementAttributeParcel;
.end method

.method public abstract getPlayStatus()Landroid/os/PlayStatusParcel;
.end method

.method public abstract getPlayerSettingVal()Landroid/os/PlayerSettingsParcel;
.end method

.method public abstract getSupportedEvents()Landroid/os/SupportedEventsParcel;
.end method

.method public abstract listPlayerSettingAttrs()Landroid/os/PlayerSettingsParcel;
.end method

.method public abstract listPlayerSettingVals(B)Landroid/os/PlayerSettingsParcel;
.end method

.method public playbackStatusChangeEvent(B)V
    .locals 3
    .parameter "status"

    .prologue
    .line 136
    const-string v1, "playbackStatusChangeEvent()"

    invoke-static {v1}, Landroid/bluetooth/AvrcpProxy;->log(Ljava/lang/String;)V

    .line 138
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/AvrcpProxy;->mService:Landroid/bluetooth/IAvrcpProxy;

    invoke-interface {v1, p1}, Landroid/bluetooth/IAvrcpProxy;->playbackStatusChangeEvent(B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :goto_0
    return-void

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "AvrcpProxy"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public abstract setPlayerSettingVal(BB)V
.end method

.method public startAvrcp()V
    .locals 3

    .prologue
    .line 101
    const-string v1, "startAvrcp()"

    invoke-static {v1}, Landroid/bluetooth/AvrcpProxy;->log(Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Landroid/bluetooth/AvrcpProxy;->mService:Landroid/bluetooth/IAvrcpProxy;

    if-eqz v1, :cond_0

    .line 104
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/AvrcpProxy;->mService:Landroid/bluetooth/IAvrcpProxy;

    iget-object v2, p0, Landroid/bluetooth/AvrcpProxy;->mCb:Landroid/bluetooth/IAvrcpProxyCallback;

    invoke-interface {v1, v2}, Landroid/bluetooth/IAvrcpProxy;->startAvrcp(Landroid/bluetooth/IAvrcpProxyCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "AvrcpProxy"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 109
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const-string v1, "AvrcpProxy"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopAvrcp()V
    .locals 3

    .prologue
    .line 114
    const-string v1, "stopAvrcp()"

    invoke-static {v1}, Landroid/bluetooth/AvrcpProxy;->log(Ljava/lang/String;)V

    .line 115
    iget-object v1, p0, Landroid/bluetooth/AvrcpProxy;->mService:Landroid/bluetooth/IAvrcpProxy;

    if-eqz v1, :cond_0

    .line 117
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/AvrcpProxy;->mService:Landroid/bluetooth/IAvrcpProxy;

    invoke-interface {v1}, Landroid/bluetooth/IAvrcpProxy;->stopAvrcp()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_0
    return-void

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "AvrcpProxy"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 122
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const-string v1, "AvrcpProxy"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public trackChangeEvent(J)V
    .locals 3
    .parameter "id"

    .prologue
    .line 127
    const-string v1, "trackChangeEvent()"

    invoke-static {v1}, Landroid/bluetooth/AvrcpProxy;->log(Ljava/lang/String;)V

    .line 129
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/AvrcpProxy;->mService:Landroid/bluetooth/IAvrcpProxy;

    invoke-interface {v1, p1, p2}, Landroid/bluetooth/IAvrcpProxy;->trackChangeEvent(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_0
    return-void

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "AvrcpProxy"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public abstract updatePlayerSettingVals()Z
.end method
