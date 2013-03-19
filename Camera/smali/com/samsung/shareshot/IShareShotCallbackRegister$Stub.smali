.class public abstract Lcom/samsung/shareshot/IShareShotCallbackRegister$Stub;
.super Landroid/os/Binder;
.source "IShareShotCallbackRegister.java"

# interfaces
.implements Lcom/samsung/shareshot/IShareShotCallbackRegister;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/shareshot/IShareShotCallbackRegister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/shareshot/IShareShotCallbackRegister$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.shareshot.IShareShotCallbackRegister"

.field static final TRANSACTION_registerCallback:I = 0x1

.field static final TRANSACTION_unregisterCallback:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.samsung.shareshot.IShareShotCallbackRegister"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/shareshot/IShareShotCallbackRegister$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/shareshot/IShareShotCallbackRegister;
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.samsung.shareshot.IShareShotCallbackRegister"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/shareshot/IShareShotCallbackRegister;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/samsung/shareshot/IShareShotCallbackRegister;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/samsung/shareshot/IShareShotCallbackRegister$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/samsung/shareshot/IShareShotCallbackRegister$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 66
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 42
    :sswitch_0
    const-string v2, "com.samsung.shareshot.IShareShotCallbackRegister"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v4, "com.samsung.shareshot.IShareShotCallbackRegister"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/shareshot/IShareShotServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/shareshot/IShareShotServiceCallback;

    move-result-object v0

    .line 50
    .local v0, _arg0:Lcom/samsung/shareshot/IShareShotServiceCallback;
    invoke-virtual {p0, v0}, Lcom/samsung/shareshot/IShareShotCallbackRegister$Stub;->registerCallback(Lcom/samsung/shareshot/IShareShotServiceCallback;)Z

    move-result v1

    .line 51
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    if-eqz v1, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 57
    .end local v0           #_arg0:Lcom/samsung/shareshot/IShareShotServiceCallback;
    .end local v1           #_result:Z
    :sswitch_2
    const-string v4, "com.samsung.shareshot.IShareShotCallbackRegister"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/shareshot/IShareShotServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/shareshot/IShareShotServiceCallback;

    move-result-object v0

    .line 60
    .restart local v0       #_arg0:Lcom/samsung/shareshot/IShareShotServiceCallback;
    invoke-virtual {p0, v0}, Lcom/samsung/shareshot/IShareShotCallbackRegister$Stub;->unregisterCallback(Lcom/samsung/shareshot/IShareShotServiceCallback;)Z

    move-result v1

    .line 61
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    if-eqz v1, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
