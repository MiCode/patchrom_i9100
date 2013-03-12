.class public abstract Landroid/os/IOemExtendedApi3LM$Stub;
.super Landroid/os/Binder;
.source "IOemExtendedApi3LM.java"

# interfaces
.implements Landroid/os/IOemExtendedApi3LM;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IOemExtendedApi3LM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IOemExtendedApi3LM$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IOemExtendedApi3LM"

.field static final TRANSACTION_clear:I = 0x2

.field static final TRANSACTION_getFelicaState:I = 0x3

.field static final TRANSACTION_getInfraredState:I = 0x7

.field static final TRANSACTION_getOneSegState:I = 0x5

.field static final TRANSACTION_getVersion:I = 0x1

.field static final TRANSACTION_setEmergencyLock:I = 0x9

.field static final TRANSACTION_setFelicaState:I = 0x4

.field static final TRANSACTION_setInfraredState:I = 0x8

.field static final TRANSACTION_setOneSegState:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.os.IOemExtendedApi3LM"

    invoke-virtual {p0, p0, v0}, Landroid/os/IOemExtendedApi3LM$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IOemExtendedApi3LM;
    .locals 2
    .parameter "obj"

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    .line 27
    :cond_0
    const-string v1, "android.os.IOemExtendedApi3LM"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/IOemExtendedApi3LM;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/os/IOemExtendedApi3LM;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Landroid/os/IOemExtendedApi3LM$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/os/IOemExtendedApi3LM$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
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
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 127
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 43
    :sswitch_0
    const-string v5, "android.os.IOemExtendedApi3LM"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v5, "android.os.IOemExtendedApi3LM"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Landroid/os/IOemExtendedApi3LM$Stub;->getVersion()I

    move-result v3

    .line 50
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 56
    .end local v3           #_result:I
    :sswitch_2
    const-string v5, "android.os.IOemExtendedApi3LM"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Landroid/os/IOemExtendedApi3LM$Stub;->clear()V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 63
    :sswitch_3
    const-string v5, "android.os.IOemExtendedApi3LM"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Landroid/os/IOemExtendedApi3LM$Stub;->getFelicaState()I

    move-result v3

    .line 65
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 71
    .end local v3           #_result:I
    :sswitch_4
    const-string v5, "android.os.IOemExtendedApi3LM"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 74
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/os/IOemExtendedApi3LM$Stub;->setFelicaState(I)V

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 80
    .end local v0           #_arg0:I
    :sswitch_5
    const-string v5, "android.os.IOemExtendedApi3LM"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Landroid/os/IOemExtendedApi3LM$Stub;->getOneSegState()I

    move-result v3

    .line 82
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 88
    .end local v3           #_result:I
    :sswitch_6
    const-string v5, "android.os.IOemExtendedApi3LM"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 91
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/os/IOemExtendedApi3LM$Stub;->setOneSegState(I)V

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 97
    .end local v0           #_arg0:I
    :sswitch_7
    const-string v5, "android.os.IOemExtendedApi3LM"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Landroid/os/IOemExtendedApi3LM$Stub;->getInfraredState()I

    move-result v3

    .line 99
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 105
    .end local v3           #_result:I
    :sswitch_8
    const-string v5, "android.os.IOemExtendedApi3LM"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 108
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/os/IOemExtendedApi3LM$Stub;->setInfraredState(I)V

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 114
    .end local v0           #_arg0:I
    :sswitch_9
    const-string v6, "android.os.IOemExtendedApi3LM"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    move v0, v4

    .line 118
    .local v0, _arg0:Z
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2

    move v2, v4

    .line 121
    .local v2, _arg2:Z
    :goto_2
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/IOemExtendedApi3LM$Stub;->setEmergencyLock(ZLjava/lang/String;Z)Z

    move-result v3

    .line 122
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    if-eqz v3, :cond_0

    move v5, v4

    :cond_0
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_arg2:Z
    .end local v3           #_result:Z
    :cond_1
    move v0, v5

    .line 116
    goto :goto_1

    .restart local v0       #_arg0:Z
    .restart local v1       #_arg1:Ljava/lang/String;
    :cond_2
    move v2, v5

    .line 120
    goto :goto_2

    .line 39
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
