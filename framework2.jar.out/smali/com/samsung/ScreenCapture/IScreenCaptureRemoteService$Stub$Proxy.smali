.class Lcom/samsung/ScreenCapture/IScreenCaptureRemoteService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IScreenCaptureRemoteService.java"

# interfaces
.implements Lcom/samsung/ScreenCapture/IScreenCaptureRemoteService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/ScreenCapture/IScreenCaptureRemoteService$Stub;
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
    .line 66
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/samsung/ScreenCapture/IScreenCaptureRemoteService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 68
    return-void
.end method


# virtual methods
.method public GetFrame()Lcom/samsung/ScreenCapture/CaptureImg;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 80
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 83
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.samsung.ScreenCapture.IScreenCaptureRemoteService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 84
    iget-object v3, p0, Lcom/samsung/ScreenCapture/IScreenCaptureRemoteService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 85
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 86
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 87
    sget-object v3, Lcom/samsung/ScreenCapture/CaptureImg;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/ScreenCapture/CaptureImg;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    .local v2, _result:Lcom/samsung/ScreenCapture/CaptureImg;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 95
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 97
    return-object v2

    .line 90
    .end local v2           #_result:Lcom/samsung/ScreenCapture/CaptureImg;
    :cond_0
    const/4 v2, 0x0

    .restart local v2       #_result:Lcom/samsung/ScreenCapture/CaptureImg;
    goto :goto_0

    .line 94
    .end local v2           #_result:Lcom/samsung/ScreenCapture/CaptureImg;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 95
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/samsung/ScreenCapture/IScreenCaptureRemoteService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    const-string v0, "com.samsung.ScreenCapture.IScreenCaptureRemoteService"

    return-object v0
.end method
