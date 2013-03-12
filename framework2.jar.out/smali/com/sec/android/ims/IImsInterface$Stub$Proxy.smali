.class Lcom/sec/android/ims/IImsInterface$Stub$Proxy;
.super Ljava/lang/Object;
.source "IImsInterface.java"

# interfaces
.implements Lcom/sec/android/ims/IImsInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/ims/IImsInterface$Stub;
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
    .line 146
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-object p1, p0, Lcom/sec/android/ims/IImsInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 148
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/sec/android/ims/IImsInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getImsRegStatus()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 203
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 204
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 207
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.sec.android.ims.IImsInterface"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 208
    iget-object v3, p0, Lcom/sec/android/ims/IImsInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 209
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 210
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 213
    .local v2, _result:Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 214
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 216
    return v2

    .line 213
    .end local v2           #_result:Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 214
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    const-string v0, "com.sec.android.ims.IImsInterface"

    return-object v0
.end method

.method public mmSS_Svc_Api(IIILjava/lang/String;Ljava/lang/String;)I
    .locals 6
    .parameter "funcId"
    .parameter "param1"
    .parameter "param2"
    .parameter "param3"
    .parameter "param4"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 244
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 245
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 248
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.sec.android.ims.IImsInterface"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 249
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 250
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 251
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 252
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 253
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 254
    iget-object v3, p0, Lcom/sec/android/ims/IImsInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 255
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 256
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 259
    .local v2, _result:I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 260
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 262
    return v2

    .line 259
    .end local v2           #_result:I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 260
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public mmTelSvcCallFunc(IIILjava/lang/String;)I
    .locals 6
    .parameter "funcId"
    .parameter "param1"
    .parameter "param2"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 220
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 221
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 224
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.sec.android.ims.IImsInterface"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 225
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 226
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 227
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 228
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 229
    iget-object v3, p0, Lcom/sec/android/ims/IImsInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 230
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 231
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 234
    .local v2, _result:I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 235
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 237
    return v2

    .line 234
    .end local v2           #_result:I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 235
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public registerApp(ILjava/lang/String;Lcom/sec/android/ims/IImsServiceCallback;)I
    .locals 6
    .parameter "appType"
    .parameter "params"
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 164
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 165
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 168
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.sec.android.ims.IImsInterface"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 171
    if-eqz p3, :cond_0

    invoke-interface {p3}, Lcom/sec/android/ims/IImsServiceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 172
    iget-object v3, p0, Lcom/sec/android/ims/IImsInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 173
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 174
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 177
    .local v2, _result:I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 178
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 180
    return v2

    .line 171
    .end local v2           #_result:I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 177
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 178
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public registerSSApp(ILjava/lang/String;Lcom/sec/android/ims/IImsServiceCallback;)I
    .locals 6
    .parameter "appType"
    .parameter "params"
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 266
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 267
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 270
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.sec.android.ims.IImsInterface"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 271
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 272
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 273
    if-eqz p3, :cond_0

    invoke-interface {p3}, Lcom/sec/android/ims/IImsServiceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 274
    iget-object v3, p0, Lcom/sec/android/ims/IImsInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 275
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 276
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 279
    .local v2, _result:I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 280
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 282
    return v2

    .line 273
    .end local v2           #_result:I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 279
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 280
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public unRegisterApp(II)V
    .locals 5
    .parameter "appType"
    .parameter "appHandle"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 187
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 188
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 190
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sec.android.ims.IImsInterface"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    iget-object v2, p0, Lcom/sec/android/ims/IImsInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 194
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 198
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 200
    return-void

    .line 197
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 198
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public unRegisterSSApp(II)V
    .locals 5
    .parameter "appType"
    .parameter "appHandle"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 286
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 287
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 289
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sec.android.ims.IImsInterface"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 290
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 291
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 292
    iget-object v2, p0, Lcom/sec/android/ims/IImsInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 293
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 297
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 299
    return-void

    .line 296
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 297
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method
