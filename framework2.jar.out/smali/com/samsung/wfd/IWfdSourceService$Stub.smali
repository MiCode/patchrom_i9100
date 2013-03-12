.class public abstract Lcom/samsung/wfd/IWfdSourceService$Stub;
.super Landroid/os/Binder;
.source "IWfdSourceService.java"

# interfaces
.implements Lcom/samsung/wfd/IWfdSourceService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wfd/IWfdSourceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/wfd/IWfdSourceService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.wfd.IWfdSourceService"

.field static final TRANSACTION_WFDGetSuspendStatus:I = 0x3

.field static final TRANSACTION_WFDPostSubtitle:I = 0x1

.field static final TRANSACTION_WFDPostSuspend:I = 0x5

.field static final TRANSACTION_WFDSetSubtitleStatus:I = 0x2

.field static final TRANSACTION_WFDSetSuspendStatus:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.samsung.wfd.IWfdSourceService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/wfd/IWfdSourceService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/wfd/IWfdSourceService;
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
    const-string v1, "com.samsung.wfd.IWfdSourceService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/wfd/IWfdSourceService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/samsung/wfd/IWfdSourceService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/samsung/wfd/IWfdSourceService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/samsung/wfd/IWfdSourceService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 6
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
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 96
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 42
    :sswitch_0
    const-string v3, "com.samsung.wfd.IWfdSourceService"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v5, "com.samsung.wfd.IWfdSourceService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 52
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/samsung/wfd/IWfdSourceService$Stub;->WFDPostSubtitle(Ljava/lang/String;I)Z

    move-result v2

    .line 53
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    if-eqz v2, :cond_0

    move v3, v4

    :cond_0
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 59
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    .end local v2           #_result:Z
    :sswitch_2
    const-string v5, "com.samsung.wfd.IWfdSourceService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    move v0, v4

    .line 62
    .local v0, _arg0:Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/samsung/wfd/IWfdSourceService$Stub;->WFDSetSubtitleStatus(Z)Z

    move-result v2

    .line 63
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    if-eqz v2, :cond_1

    move v3, v4

    :cond_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v0           #_arg0:Z
    .end local v2           #_result:Z
    :cond_2
    move v0, v3

    .line 61
    goto :goto_1

    .line 69
    :sswitch_3
    const-string v5, "com.samsung.wfd.IWfdSourceService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lcom/samsung/wfd/IWfdSourceService$Stub;->WFDGetSuspendStatus()Z

    move-result v2

    .line 71
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    if-eqz v2, :cond_3

    move v3, v4

    :cond_3
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 77
    .end local v2           #_result:Z
    :sswitch_4
    const-string v5, "com.samsung.wfd.IWfdSourceService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5

    move v0, v4

    .line 80
    .restart local v0       #_arg0:Z
    :goto_2
    invoke-virtual {p0, v0}, Lcom/samsung/wfd/IWfdSourceService$Stub;->WFDSetSuspendStatus(Z)Z

    move-result v2

    .line 81
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    if-eqz v2, :cond_4

    move v3, v4

    :cond_4
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v0           #_arg0:Z
    .end local v2           #_result:Z
    :cond_5
    move v0, v3

    .line 79
    goto :goto_2

    .line 87
    :sswitch_5
    const-string v5, "com.samsung.wfd.IWfdSourceService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsung/wfd/IWfdSourceService$Stub;->WFDPostSuspend(Ljava/lang/String;)Z

    move-result v2

    .line 91
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    if-eqz v2, :cond_6

    move v3, v4

    :cond_6
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
