.class public abstract Lcom/sec/android/internal/ims/IIMSBTService$Stub;
.super Landroid/os/Binder;
.source "IIMSBTService.java"

# interfaces
.implements Lcom/sec/android/internal/ims/IIMSBTService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/internal/ims/IIMSBTService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/internal/ims/IIMSBTService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.sec.android.internal.ims.IIMSBTService"

.field static final TRANSACTION_getRingingCallNumber:I = 0x3

.field static final TRANSACTION_getVolteClccResult:I = 0x4

.field static final TRANSACTION_newBTEvent:I = 0x2

.field static final TRANSACTION_registerListener:I = 0x1

.field static final TRANSACTION_resetAtState:I = 0x5

.field static final TRANSACTION_sendDtmf:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.sec.android.internal.ims.IIMSBTService"

    invoke-virtual {p0, p0, v0}, Lcom/sec/android/internal/ims/IIMSBTService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/android/internal/ims/IIMSBTService;
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
    const-string v1, "com.sec.android.internal.ims.IIMSBTService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/sec/android/internal/ims/IIMSBTService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/sec/android/internal/ims/IIMSBTService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/sec/android/internal/ims/IIMSBTService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/sec/android/internal/ims/IIMSBTService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 4
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
    const/4 v3, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 97
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 42
    :sswitch_0
    const-string v2, "com.sec.android.internal.ims.IIMSBTService"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v2, "com.sec.android.internal.ims.IIMSBTService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/internal/ims/IIMSBTCallStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/internal/ims/IIMSBTCallStateListener;

    move-result-object v0

    .line 50
    .local v0, _arg0:Lcom/sec/android/internal/ims/IIMSBTCallStateListener;
    invoke-virtual {p0, v0}, Lcom/sec/android/internal/ims/IIMSBTService$Stub;->registerListener(Lcom/sec/android/internal/ims/IIMSBTCallStateListener;)V

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 56
    .end local v0           #_arg0:Lcom/sec/android/internal/ims/IIMSBTCallStateListener;
    :sswitch_2
    const-string v2, "com.sec.android.internal.ims.IIMSBTService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 59
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/sec/android/internal/ims/IIMSBTService$Stub;->newBTEvent(I)Z

    move-result v1

    .line 60
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    if-eqz v1, :cond_0

    move v2, v3

    :goto_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 66
    .end local v0           #_arg0:I
    .end local v1           #_result:Z
    :sswitch_3
    const-string v2, "com.sec.android.internal.ims.IIMSBTService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IIMSBTService$Stub;->getRingingCallNumber()Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 74
    .end local v1           #_result:Ljava/lang/String;
    :sswitch_4
    const-string v2, "com.sec.android.internal.ims.IIMSBTService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IIMSBTService$Stub;->getVolteClccResult()Ljava/lang/String;

    move-result-object v1

    .line 76
    .restart local v1       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 82
    .end local v1           #_result:Ljava/lang/String;
    :sswitch_5
    const-string v2, "com.sec.android.internal.ims.IIMSBTService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IIMSBTService$Stub;->resetAtState()V

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 89
    :sswitch_6
    const-string v2, "com.sec.android.internal.ims.IIMSBTService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v0, v2

    .line 92
    .local v0, _arg0:C
    invoke-virtual {p0, v0}, Lcom/sec/android/internal/ims/IIMSBTService$Stub;->sendDtmf(C)V

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
