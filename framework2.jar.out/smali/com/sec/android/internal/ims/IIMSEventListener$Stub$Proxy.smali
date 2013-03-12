.class Lcom/sec/android/internal/ims/IIMSEventListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IIMSEventListener.java"

# interfaces
.implements Lcom/sec/android/internal/ims/IIMSEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/internal/ims/IIMSEventListener$Stub;
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
    .line 96
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/sec/android/internal/ims/IIMSEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 98
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/sec/android/internal/ims/IIMSEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    const-string v0, "com.sec.android.internal.ims.IIMSEventListener"

    return-object v0
.end method

.method public handleEvent(IIII[BLcom/sec/android/internal/ims/IIMSParams;)V
    .locals 5
    .parameter "appType"
    .parameter "eventType"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "data"
    .parameter "param"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 110
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 112
    .local v0, _data:Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.sec.android.internal.ims.IIMSEventListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 118
    if-eqz p6, :cond_0

    .line 119
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    const/4 v1, 0x0

    invoke-virtual {p6, v0, v1}, Lcom/sec/android/internal/ims/IIMSParams;->writeToParcel(Landroid/os/Parcel;I)V

    .line 125
    :goto_0
    iget-object v1, p0, Lcom/sec/android/internal/ims/IIMSEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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

    .line 123
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 128
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public notifyEvent(IIII[I[Ljava/lang/String;)V
    .locals 5
    .parameter "appType"
    .parameter "eventType"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "participantList"
    .parameter "uriList"
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
    const-string v1, "com.sec.android.internal.ims.IIMSEventListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 141
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 142
    iget-object v1, p0, Lcom/sec/android/internal/ims/IIMSEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 147
    return-void

    .line 145
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method
