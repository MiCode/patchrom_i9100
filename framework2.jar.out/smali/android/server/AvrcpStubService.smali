.class public Landroid/server/AvrcpStubService;
.super Landroid/bluetooth/IAvrcpProxy$Stub;
.source "AvrcpStubService.java"


# static fields
.field public static final BLUETOOTH_AVRCP_SERVICE:Ljava/lang/String; = "bluetooth_avrcp"

.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "AvrcpStubService"


# instance fields
.field private mActualTrack:J

.field private mCb:Landroid/bluetooth/IAvrcpProxyCallback;

.field private final mContext:Landroid/content/Context;

.field private mNativeData:I

.field private mPlayStatus:B

.field private mRepeatVal:B

.field private mSelected:Z

.field private mShuffleVal:B


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 70
    invoke-static {}, Landroid/server/AvrcpStubService;->avrcpClassInit()V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 58
    invoke-direct {p0}, Landroid/bluetooth/IAvrcpProxy$Stub;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/server/AvrcpStubService;->mCb:Landroid/bluetooth/IAvrcpProxyCallback;

    .line 42
    iput v2, p0, Landroid/server/AvrcpStubService;->mNativeData:I

    .line 45
    iput-byte v2, p0, Landroid/server/AvrcpStubService;->mPlayStatus:B

    .line 48
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/server/AvrcpStubService;->mActualTrack:J

    .line 51
    iput-boolean v2, p0, Landroid/server/AvrcpStubService;->mSelected:Z

    .line 54
    iput-byte v3, p0, Landroid/server/AvrcpStubService;->mRepeatVal:B

    .line 55
    iput-byte v3, p0, Landroid/server/AvrcpStubService;->mShuffleVal:B

    .line 60
    iput-object p1, p0, Landroid/server/AvrcpStubService;->mContext:Landroid/content/Context;

    .line 61
    return-void
.end method

.method private native applicationSettingsChanged(BB)Z
.end method

.method private static native avrcpClassInit()V
.end method

.method private native avrcpStart()Z
.end method

.method private native avrcpStop()Z
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 248
    const-string v0, "AvrcpStubService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    return-void
.end method

.method private native playbackStatusChanged(B)Z
.end method

.method private native trackChanged(J)Z
.end method


# virtual methods
.method public applicationSettingsChangeEvent(BB)V
    .locals 1
    .parameter "shuffleVal"
    .parameter "repeatVal"

    .prologue
    .line 91
    const-string v0, "applicationSettingsChangeEvent()"

    invoke-static {v0}, Landroid/server/AvrcpStubService;->log(Ljava/lang/String;)V

    .line 92
    iput-byte p1, p0, Landroid/server/AvrcpStubService;->mShuffleVal:B

    .line 93
    iput-byte p2, p0, Landroid/server/AvrcpStubService;->mRepeatVal:B

    .line 94
    invoke-direct {p0, p1, p2}, Landroid/server/AvrcpStubService;->applicationSettingsChanged(BB)Z

    .line 95
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 65
    invoke-super {p0}, Landroid/bluetooth/IAvrcpProxy$Stub;->finalize()V

    .line 66
    const-string v0, "BUG - Should not finalize"

    invoke-static {v0}, Landroid/server/AvrcpStubService;->log(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public getElementAttributes()[Ljava/lang/Object;
    .locals 4

    .prologue
    .line 148
    const/4 v0, 0x0

    .line 149
    .local v0, attrs:[Landroid/os/ElementAttributeParcel;
    const-string v2, "getElementAttributes callback()"

    invoke-static {v2}, Landroid/server/AvrcpStubService;->log(Ljava/lang/String;)V

    .line 151
    :try_start_0
    iget-object v2, p0, Landroid/server/AvrcpStubService;->mCb:Landroid/bluetooth/IAvrcpProxyCallback;

    if-eqz v2, :cond_0

    .line 152
    iget-object v2, p0, Landroid/server/AvrcpStubService;->mCb:Landroid/bluetooth/IAvrcpProxyCallback;

    invoke-interface {v2}, Landroid/bluetooth/IAvrcpProxyCallback;->getElementAttributes()[Landroid/os/ElementAttributeParcel;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 159
    :cond_0
    :goto_0
    check-cast v0, [Ljava/lang/Object;

    .end local v0           #attrs:[Landroid/os/ElementAttributeParcel;
    return-object v0

    .line 154
    .restart local v0       #attrs:[Landroid/os/ElementAttributeParcel;
    :catch_0
    move-exception v1

    .line 155
    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "AvrcpStubService"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 156
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/server/AvrcpStubService;->mCb:Landroid/bluetooth/IAvrcpProxyCallback;

    goto :goto_0
.end method

.method public getPlayStatus()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 118
    const/4 v1, 0x0

    .line 119
    .local v1, ps:Landroid/os/PlayStatusParcel;
    const-string v2, "getPlayStatus callback()"

    invoke-static {v2}, Landroid/server/AvrcpStubService;->log(Ljava/lang/String;)V

    .line 121
    :try_start_0
    iget-object v2, p0, Landroid/server/AvrcpStubService;->mCb:Landroid/bluetooth/IAvrcpProxyCallback;

    if-eqz v2, :cond_0

    .line 122
    iget-object v2, p0, Landroid/server/AvrcpStubService;->mCb:Landroid/bluetooth/IAvrcpProxyCallback;

    invoke-interface {v2}, Landroid/bluetooth/IAvrcpProxyCallback;->getPlayStatus()Landroid/os/PlayStatusParcel;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 129
    :cond_0
    :goto_0
    return-object v1

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AvrcpStubService"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/server/AvrcpStubService;->mCb:Landroid/bluetooth/IAvrcpProxyCallback;

    goto :goto_0
.end method

.method public getPlayerSettingVal()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 193
    const/4 v1, 0x0

    .line 194
    .local v1, ps:Landroid/os/PlayerSettingsParcel;
    const-string v2, "getPlayerSettingVal callback()"

    invoke-static {v2}, Landroid/server/AvrcpStubService;->log(Ljava/lang/String;)V

    .line 196
    :try_start_0
    iget-object v2, p0, Landroid/server/AvrcpStubService;->mCb:Landroid/bluetooth/IAvrcpProxyCallback;

    if-eqz v2, :cond_0

    .line 197
    iget-object v2, p0, Landroid/server/AvrcpStubService;->mCb:Landroid/bluetooth/IAvrcpProxyCallback;

    invoke-interface {v2}, Landroid/bluetooth/IAvrcpProxyCallback;->getPlayerSettingVal()Landroid/os/PlayerSettingsParcel;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 204
    :cond_0
    :goto_0
    return-object v1

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AvrcpStubService"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 201
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/server/AvrcpStubService;->mCb:Landroid/bluetooth/IAvrcpProxyCallback;

    goto :goto_0
.end method

.method public getSupportedEvents()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 133
    const/4 v1, 0x0

    .line 134
    .local v1, events:Landroid/os/SupportedEventsParcel;
    const-string v2, "getSupportedEvents callback()"

    invoke-static {v2}, Landroid/server/AvrcpStubService;->log(Ljava/lang/String;)V

    .line 136
    :try_start_0
    iget-object v2, p0, Landroid/server/AvrcpStubService;->mCb:Landroid/bluetooth/IAvrcpProxyCallback;

    if-eqz v2, :cond_0

    .line 137
    iget-object v2, p0, Landroid/server/AvrcpStubService;->mCb:Landroid/bluetooth/IAvrcpProxyCallback;

    invoke-interface {v2}, Landroid/bluetooth/IAvrcpProxyCallback;->getSupportedEvents()Landroid/os/SupportedEventsParcel;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 144
    :cond_0
    :goto_0
    return-object v1

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AvrcpStubService"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/server/AvrcpStubService;->mCb:Landroid/bluetooth/IAvrcpProxyCallback;

    goto :goto_0
.end method

.method public listPlayerSettingAttrs()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 163
    const/4 v1, 0x0

    .line 164
    .local v1, ps:Landroid/os/PlayerSettingsParcel;
    const-string v2, "listPlayerSettingAttrs callback()"

    invoke-static {v2}, Landroid/server/AvrcpStubService;->log(Ljava/lang/String;)V

    .line 166
    :try_start_0
    iget-object v2, p0, Landroid/server/AvrcpStubService;->mCb:Landroid/bluetooth/IAvrcpProxyCallback;

    if-eqz v2, :cond_0

    .line 167
    iget-object v2, p0, Landroid/server/AvrcpStubService;->mCb:Landroid/bluetooth/IAvrcpProxyCallback;

    invoke-interface {v2}, Landroid/bluetooth/IAvrcpProxyCallback;->listPlayerSettingAttrs()Landroid/os/PlayerSettingsParcel;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 174
    :cond_0
    :goto_0
    return-object v1

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AvrcpStubService"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 171
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/server/AvrcpStubService;->mCb:Landroid/bluetooth/IAvrcpProxyCallback;

    goto :goto_0
.end method

.method public listPlayerSettingVals(B)Ljava/lang/Object;
    .locals 4
    .parameter "attrId"

    .prologue
    .line 178
    const/4 v1, 0x0

    .line 179
    .local v1, ps:Landroid/os/PlayerSettingsParcel;
    const-string v2, "listPlayerSettingVals callback()"

    invoke-static {v2}, Landroid/server/AvrcpStubService;->log(Ljava/lang/String;)V

    .line 181
    :try_start_0
    iget-object v2, p0, Landroid/server/AvrcpStubService;->mCb:Landroid/bluetooth/IAvrcpProxyCallback;

    if-eqz v2, :cond_0

    .line 182
    iget-object v2, p0, Landroid/server/AvrcpStubService;->mCb:Landroid/bluetooth/IAvrcpProxyCallback;

    invoke-interface {v2, p1}, Landroid/bluetooth/IAvrcpProxyCallback;->listPlayerSettingVals(B)Landroid/os/PlayerSettingsParcel;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 189
    :cond_0
    :goto_0
    return-object v1

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AvrcpStubService"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 186
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/server/AvrcpStubService;->mCb:Landroid/bluetooth/IAvrcpProxyCallback;

    goto :goto_0
.end method

.method public playbackStatusChangeEvent(B)V
    .locals 2
    .parameter "status"

    .prologue
    .line 98
    const-string v0, "playbackStatusChangeEvent()"

    invoke-static {v0}, Landroid/server/AvrcpStubService;->log(Ljava/lang/String;)V

    .line 99
    iput-byte p1, p0, Landroid/server/AvrcpStubService;->mPlayStatus:B

    .line 106
    iget-byte v0, p0, Landroid/server/AvrcpStubService;->mPlayStatus:B

    if-eqz v0, :cond_0

    iget-byte v0, p0, Landroid/server/AvrcpStubService;->mPlayStatus:B

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 108
    :cond_0
    const-string v0, "Playback statusChangeEvent setting mSelected to false"

    invoke-static {v0}, Landroid/server/AvrcpStubService;->log(Ljava/lang/String;)V

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/server/AvrcpStubService;->mSelected:Z

    .line 114
    :goto_0
    invoke-direct {p0, p1}, Landroid/server/AvrcpStubService;->playbackStatusChanged(B)Z

    .line 115
    return-void

    .line 111
    :cond_1
    const-string v0, "PlaybackStatusChangeEvent setting mSelected to true"

    invoke-static {v0}, Landroid/server/AvrcpStubService;->log(Ljava/lang/String;)V

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/server/AvrcpStubService;->mSelected:Z

    goto :goto_0
.end method

.method public setPlayerSettingVal(BB)V
    .locals 3
    .parameter "attr"
    .parameter "val"

    .prologue
    .line 208
    const-string v1, "setPlayerSettingVal callback()"

    invoke-static {v1}, Landroid/server/AvrcpStubService;->log(Ljava/lang/String;)V

    .line 210
    :try_start_0
    iget-object v1, p0, Landroid/server/AvrcpStubService;->mCb:Landroid/bluetooth/IAvrcpProxyCallback;

    if-eqz v1, :cond_0

    .line 211
    iget-object v1, p0, Landroid/server/AvrcpStubService;->mCb:Landroid/bluetooth/IAvrcpProxyCallback;

    invoke-interface {v1, p1, p2}, Landroid/bluetooth/IAvrcpProxyCallback;->setPlayerSettingVal(BB)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "AvrcpStubService"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 215
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/server/AvrcpStubService;->mCb:Landroid/bluetooth/IAvrcpProxyCallback;

    goto :goto_0
.end method

.method public startAvrcp(Landroid/bluetooth/IAvrcpProxyCallback;)V
    .locals 1
    .parameter "cb"

    .prologue
    .line 74
    iput-object p1, p0, Landroid/server/AvrcpStubService;->mCb:Landroid/bluetooth/IAvrcpProxyCallback;

    .line 75
    const-string v0, "startAvrcp()"

    invoke-static {v0}, Landroid/server/AvrcpStubService;->log(Ljava/lang/String;)V

    .line 76
    invoke-direct {p0}, Landroid/server/AvrcpStubService;->avrcpStart()Z

    .line 77
    return-void
.end method

.method public stopAvrcp()V
    .locals 1

    .prologue
    .line 80
    const-string v0, "stopAvrcp()"

    invoke-static {v0}, Landroid/server/AvrcpStubService;->log(Ljava/lang/String;)V

    .line 81
    invoke-direct {p0}, Landroid/server/AvrcpStubService;->avrcpStop()Z

    .line 82
    return-void
.end method

.method public trackChangeEvent(J)V
    .locals 1
    .parameter "id"

    .prologue
    .line 85
    const-string v0, "trackChangeEvent()"

    invoke-static {v0}, Landroid/server/AvrcpStubService;->log(Ljava/lang/String;)V

    .line 86
    iput-wide p1, p0, Landroid/server/AvrcpStubService;->mActualTrack:J

    .line 87
    invoke-direct {p0, p1, p2}, Landroid/server/AvrcpStubService;->trackChanged(J)Z

    .line 88
    return-void
.end method

.method public updatePlayerSettingVals()Z
    .locals 4

    .prologue
    .line 220
    const/4 v1, 0x0

    .line 221
    .local v1, status:Z
    const-string v2, "updatePlayerSettingVals callback()"

    invoke-static {v2}, Landroid/server/AvrcpStubService;->log(Ljava/lang/String;)V

    .line 223
    :try_start_0
    iget-object v2, p0, Landroid/server/AvrcpStubService;->mCb:Landroid/bluetooth/IAvrcpProxyCallback;

    if-eqz v2, :cond_0

    .line 224
    iget-object v2, p0, Landroid/server/AvrcpStubService;->mCb:Landroid/bluetooth/IAvrcpProxyCallback;

    invoke-interface {v2}, Landroid/bluetooth/IAvrcpProxyCallback;->updatePlayerSettingVals()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 231
    :cond_0
    :goto_0
    return v1

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AvrcpStubService"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 228
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/server/AvrcpStubService;->mCb:Landroid/bluetooth/IAvrcpProxyCallback;

    goto :goto_0
.end method
