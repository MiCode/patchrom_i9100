.class Landroid/location/IGpsStatusListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IGpsStatusListener.java"

# interfaces
.implements Landroid/location/IGpsStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/IGpsStatusListener$Stub;
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
    .line 109
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Landroid/location/IGpsStatusListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 111
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Landroid/location/IGpsStatusListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    const-string v0, "android.location.IGpsStatusListener"

    return-object v0
.end method

.method public onFirstFix(I)V
    .locals 5
    .parameter "ttff"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 144
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 146
    .local v0, _data:Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.location.IGpsStatusListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    iget-object v1, p0, Landroid/location/IGpsStatusListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 153
    return-void

    .line 151
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onGpsStarted()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 122
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 124
    .local v0, _data:Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.location.IGpsStatusListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 125
    iget-object v1, p0, Landroid/location/IGpsStatusListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 130
    return-void

    .line 128
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onGpsStopped()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 133
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 135
    .local v0, _data:Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.location.IGpsStatusListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 136
    iget-object v1, p0, Landroid/location/IGpsStatusListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 141
    return-void

    .line 139
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onNmeaReceived(JLjava/lang/String;)V
    .locals 5
    .parameter "timestamp"
    .parameter "nmea"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 176
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 178
    .local v0, _data:Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.location.IGpsStatusListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 180
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 181
    iget-object v1, p0, Landroid/location/IGpsStatusListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 186
    return-void

    .line 184
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onSvStatusChanged(I[I[F[F[FIII[I)V
    .locals 5
    .parameter "svCount"
    .parameter "prns"
    .parameter "snrs"
    .parameter "elevations"
    .parameter "azimuths"
    .parameter "ephemerisMask"
    .parameter "almanacMask"
    .parameter "usedInFixMask"
    .parameter "used"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 156
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 158
    .local v0, _data:Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.location.IGpsStatusListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 161
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 162
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 163
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 164
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    invoke-virtual {v0, p9}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 168
    iget-object v1, p0, Landroid/location/IGpsStatusListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 173
    return-void

    .line 171
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method
