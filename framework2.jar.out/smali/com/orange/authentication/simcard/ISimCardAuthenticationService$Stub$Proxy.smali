.class Lcom/orange/authentication/simcard/ISimCardAuthenticationService$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISimCardAuthenticationService.java"

# interfaces
.implements Lcom/orange/authentication/simcard/ISimCardAuthenticationService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/orange/authentication/simcard/ISimCardAuthenticationService$Stub;
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
    .line 104
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lcom/orange/authentication/simcard/ISimCardAuthenticationService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 106
    return-void
.end method


# virtual methods
.method public akaAuthentication([B[B)Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;
    .locals 6
    .parameter "rand"
    .parameter "autn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 162
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 163
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 166
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.orange.authentication.simcard.ISimCardAuthenticationService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 168
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 169
    iget-object v3, p0, Lcom/orange/authentication/simcard/ISimCardAuthenticationService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 170
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 171
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 172
    sget-object v3, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    .local v2, _result:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 180
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 182
    return-object v2

    .line 175
    .end local v2           #_result:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;
    :cond_0
    const/4 v2, 0x0

    .restart local v2       #_result:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;
    goto :goto_0

    .line 179
    .end local v2           #_result:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 180
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/orange/authentication/simcard/ISimCardAuthenticationService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    const-string v0, "com.orange.authentication.simcard.ISimCardAuthenticationService"

    return-object v0
.end method

.method public getSimCardType()Lcom/orange/authentication/simcard/ServiceSimCardType;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 117
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 118
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 121
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.orange.authentication.simcard.ISimCardAuthenticationService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 122
    iget-object v3, p0, Lcom/orange/authentication/simcard/ISimCardAuthenticationService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 123
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 124
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 125
    sget-object v3, Lcom/orange/authentication/simcard/ServiceSimCardType;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/orange/authentication/simcard/ServiceSimCardType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    .local v2, _result:Lcom/orange/authentication/simcard/ServiceSimCardType;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 133
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 135
    return-object v2

    .line 128
    .end local v2           #_result:Lcom/orange/authentication/simcard/ServiceSimCardType;
    :cond_0
    const/4 v2, 0x0

    .restart local v2       #_result:Lcom/orange/authentication/simcard/ServiceSimCardType;
    goto :goto_0

    .line 132
    .end local v2           #_result:Lcom/orange/authentication/simcard/ServiceSimCardType;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 133
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public gsmAuthentication([B)Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;
    .locals 6
    .parameter "rand"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 139
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 140
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 143
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.orange.authentication.simcard.ISimCardAuthenticationService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 145
    iget-object v3, p0, Lcom/orange/authentication/simcard/ISimCardAuthenticationService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 146
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 147
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 148
    sget-object v3, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    .local v2, _result:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 156
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 158
    return-object v2

    .line 151
    .end local v2           #_result:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;
    :cond_0
    const/4 v2, 0x0

    .restart local v2       #_result:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;
    goto :goto_0

    .line 155
    .end local v2           #_result:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 156
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method
