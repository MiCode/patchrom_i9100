.class Landroid/sec/clipboard/IClipboardWorkingFormUiInterface$Stub$Proxy;
.super Ljava/lang/Object;
.source "IClipboardWorkingFormUiInterface.java"

# interfaces
.implements Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sec/clipboard/IClipboardWorkingFormUiInterface$Stub;
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
    .line 82
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 84
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    const-string v0, "android.sec.clipboard.IClipboardWorkingFormUiInterface"

    return-object v0
.end method

.method public setClipboardDataListChange(I)V
    .locals 5
    .parameter "changeFlag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 96
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 98
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.sec.clipboard.IClipboardWorkingFormUiInterface"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    iget-object v2, p0, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 101
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 105
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 107
    return-void

    .line 104
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 105
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setClipboardDataMgr(Landroid/sec/clipboard/data/IClipboardDataList;)V
    .locals 5
    .parameter "clipboardDataMgr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 110
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 111
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 113
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.sec.clipboard.IClipboardWorkingFormUiInterface"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 114
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/sec/clipboard/data/IClipboardDataList;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 115
    iget-object v2, p0, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 116
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 120
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 122
    return-void

    .line 114
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 119
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 120
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setClipboardDataUiEvent(Landroid/sec/clipboard/IClipboardDataUiEvent;)V
    .locals 5
    .parameter "clbEvent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 129
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 130
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 132
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.sec.clipboard.IClipboardWorkingFormUiInterface"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 133
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/sec/clipboard/IClipboardDataUiEvent;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 134
    iget-object v2, p0, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 135
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 139
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 141
    return-void

    .line 133
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 138
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 139
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method
