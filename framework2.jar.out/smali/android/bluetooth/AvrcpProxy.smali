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
.field private mCb:Landroid/bluetooth/IAvrcpProxyCallback;

.field private final mService:Landroid/bluetooth/IAvrcpProxy;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v3, p0, Landroid/bluetooth/AvrcpProxy;->mCb:Landroid/bluetooth/IAvrcpProxyCallback;

    .line 42
    const-string v1, "bluetooth_avrcp"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 43
    .local v0, b:Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 44
    invoke-static {v0}, Landroid/bluetooth/IAvrcpProxy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IAvrcpProxy;

    move-result-object v1

    iput-object v1, p0, Landroid/bluetooth/AvrcpProxy;->mService:Landroid/bluetooth/IAvrcpProxy;

    .line 51
    :goto_0
    new-instance v1, Landroid/bluetooth/AvrcpProxy$AvrcpProxyCallback;

    invoke-direct {v1, p0}, Landroid/bluetooth/AvrcpProxy$AvrcpProxyCallback;-><init>(Landroid/bluetooth/AvrcpProxy;)V

    iput-object v1, p0, Landroid/bluetooth/AvrcpProxy;->mCb:Landroid/bluetooth/IAvrcpProxyCallback;

    .line 52
    return-void

    .line 46
    :cond_0
    const-string v1, "AvrcpProxy"

    const-string v2, "Bluetooth AVRCP service not available!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iput-object v3, p0, Landroid/bluetooth/AvrcpProxy;->mService:Landroid/bluetooth/IAvrcpProxy;

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 104
    const-string v0, "AvrcpProxy"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    return-void
.end method


# virtual methods
.method public applicationSettingsChangeEvent(BB)V
    .locals 3
    .parameter "shuffleVal"
    .parameter "repeatVal"

    .prologue
    .line 95
    const-string v1, "applicationSettingsChangeEvent()"

    invoke-static {v1}, Landroid/bluetooth/AvrcpProxy;->log(Ljava/lang/String;)V

    .line 97
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/AvrcpProxy;->mService:Landroid/bluetooth/IAvrcpProxy;

    invoke-interface {v1, p1, p2}, Landroid/bluetooth/IAvrcpProxy;->applicationSettingsChangeEvent(BB)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_0
    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 99
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
    .line 86
    const-string v1, "playbackStatusChangeEvent()"

    invoke-static {v1}, Landroid/bluetooth/AvrcpProxy;->log(Ljava/lang/String;)V

    .line 88
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/AvrcpProxy;->mService:Landroid/bluetooth/IAvrcpProxy;

    invoke-interface {v1, p1}, Landroid/bluetooth/IAvrcpProxy;->playbackStatusChangeEvent(B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_0
    return-void

    .line 89
    :catch_0
    move-exception v0

    .line 90
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
    .line 56
    const-string v1, "startAvrcp()"

    invoke-static {v1}, Landroid/bluetooth/AvrcpProxy;->log(Ljava/lang/String;)V

    .line 58
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/AvrcpProxy;->mService:Landroid/bluetooth/IAvrcpProxy;

    iget-object v2, p0, Landroid/bluetooth/AvrcpProxy;->mCb:Landroid/bluetooth/IAvrcpProxyCallback;

    invoke-interface {v1, v2}, Landroid/bluetooth/IAvrcpProxy;->startAvrcp(Landroid/bluetooth/IAvrcpProxyCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "AvrcpProxy"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public stopAvrcp()V
    .locals 3

    .prologue
    .line 66
    const-string v1, "stopAvrcp()"

    invoke-static {v1}, Landroid/bluetooth/AvrcpProxy;->log(Ljava/lang/String;)V

    .line 68
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/AvrcpProxy;->mService:Landroid/bluetooth/IAvrcpProxy;

    invoke-interface {v1}, Landroid/bluetooth/IAvrcpProxy;->stopAvrcp()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "AvrcpProxy"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public trackChangeEvent(J)V
    .locals 3
    .parameter "id"

    .prologue
    .line 76
    const-string v1, "trackChangeEvent()"

    invoke-static {v1}, Landroid/bluetooth/AvrcpProxy;->log(Ljava/lang/String;)V

    .line 78
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/AvrcpProxy;->mService:Landroid/bluetooth/IAvrcpProxy;

    invoke-interface {v1, p1, p2}, Landroid/bluetooth/IAvrcpProxy;->trackChangeEvent(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_0
    return-void

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "AvrcpProxy"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public abstract updatePlayerSettingVals()Z
.end method
