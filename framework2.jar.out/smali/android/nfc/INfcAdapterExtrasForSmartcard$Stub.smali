.class public abstract Landroid/nfc/INfcAdapterExtrasForSmartcard$Stub;
.super Landroid/os/Binder;
.source "INfcAdapterExtrasForSmartcard.java"

# interfaces
.implements Landroid/nfc/INfcAdapterExtrasForSmartcard;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/INfcAdapterExtrasForSmartcard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/INfcAdapterExtrasForSmartcard$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.nfc.INfcAdapterExtrasForSmartcard"

.field static final TRANSACTION_authenticate:I = 0x6

.field static final TRANSACTION_close:I = 0x2

.field static final TRANSACTION_getCardEmulationRoute:I = 0x4

.field static final TRANSACTION_open:I = 0x1

.field static final TRANSACTION_setCardEmulationRoute:I = 0x5

.field static final TRANSACTION_transceive:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.nfc.INfcAdapterExtrasForSmartcard"

    invoke-virtual {p0, p0, v0}, Landroid/nfc/INfcAdapterExtrasForSmartcard$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapterExtrasForSmartcard;
    .locals 2
    .parameter "obj"

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const-string v1, "android.nfc.INfcAdapterExtrasForSmartcard"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/nfc/INfcAdapterExtrasForSmartcard;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Landroid/nfc/INfcAdapterExtrasForSmartcard;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Landroid/nfc/INfcAdapterExtrasForSmartcard$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/nfc/INfcAdapterExtrasForSmartcard$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
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
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 156
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 45
    :sswitch_0
    const-string v5, "android.nfc.INfcAdapterExtrasForSmartcard"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v5, "android.nfc.INfcAdapterExtrasForSmartcard"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    .line 53
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 59
    .local v0, _arg0:Landroid/os/Bundle;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 60
    .local v1, _arg1:Landroid/os/IBinder;
    invoke-virtual {p0, v0, v1}, Landroid/nfc/INfcAdapterExtrasForSmartcard$Stub;->open(Landroid/os/Bundle;Landroid/os/IBinder;)Landroid/os/Bundle;

    move-result-object v3

    .line 61
    .local v3, _result:Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    if-eqz v3, :cond_1

    .line 63
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    invoke-virtual {v3, p3, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 56
    .end local v0           #_arg0:Landroid/os/Bundle;
    .end local v1           #_arg1:Landroid/os/IBinder;
    .end local v3           #_result:Landroid/os/Bundle;
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/os/Bundle;
    goto :goto_1

    .line 67
    .restart local v1       #_arg1:Landroid/os/IBinder;
    .restart local v3       #_result:Landroid/os/Bundle;
    :cond_1
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 73
    .end local v0           #_arg0:Landroid/os/Bundle;
    .end local v1           #_arg1:Landroid/os/IBinder;
    .end local v3           #_result:Landroid/os/Bundle;
    :sswitch_2
    const-string v5, "android.nfc.INfcAdapterExtrasForSmartcard"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    .line 76
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 82
    .restart local v0       #_arg0:Landroid/os/Bundle;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 83
    .restart local v1       #_arg1:Landroid/os/IBinder;
    invoke-virtual {p0, v0, v1}, Landroid/nfc/INfcAdapterExtrasForSmartcard$Stub;->close(Landroid/os/Bundle;Landroid/os/IBinder;)Landroid/os/Bundle;

    move-result-object v3

    .line 84
    .restart local v3       #_result:Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    if-eqz v3, :cond_3

    .line 86
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    invoke-virtual {v3, p3, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 79
    .end local v0           #_arg0:Landroid/os/Bundle;
    .end local v1           #_arg1:Landroid/os/IBinder;
    .end local v3           #_result:Landroid/os/Bundle;
    :cond_2
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/os/Bundle;
    goto :goto_2

    .line 90
    .restart local v1       #_arg1:Landroid/os/IBinder;
    .restart local v3       #_result:Landroid/os/Bundle;
    :cond_3
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 96
    .end local v0           #_arg0:Landroid/os/Bundle;
    .end local v1           #_arg1:Landroid/os/IBinder;
    .end local v3           #_result:Landroid/os/Bundle;
    :sswitch_3
    const-string v5, "android.nfc.INfcAdapterExtrasForSmartcard"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    .line 99
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 105
    .restart local v0       #_arg0:Landroid/os/Bundle;
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 106
    .local v1, _arg1:[B
    invoke-virtual {p0, v0, v1}, Landroid/nfc/INfcAdapterExtrasForSmartcard$Stub;->transceive(Landroid/os/Bundle;[B)Landroid/os/Bundle;

    move-result-object v3

    .line 107
    .restart local v3       #_result:Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    if-eqz v3, :cond_5

    .line 109
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    invoke-virtual {v3, p3, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 102
    .end local v0           #_arg0:Landroid/os/Bundle;
    .end local v1           #_arg1:[B
    .end local v3           #_result:Landroid/os/Bundle;
    :cond_4
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/os/Bundle;
    goto :goto_3

    .line 113
    .restart local v1       #_arg1:[B
    .restart local v3       #_result:Landroid/os/Bundle;
    :cond_5
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 119
    .end local v0           #_arg0:Landroid/os/Bundle;
    .end local v1           #_arg1:[B
    .end local v3           #_result:Landroid/os/Bundle;
    :sswitch_4
    const-string v5, "android.nfc.INfcAdapterExtrasForSmartcard"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 124
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/nfc/INfcAdapterExtrasForSmartcard$Stub;->getCardEmulationRoute(Ljava/lang/String;I)I

    move-result v3

    .line 125
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 131
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    .end local v3           #_result:I
    :sswitch_5
    const-string v5, "android.nfc.INfcAdapterExtrasForSmartcard"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 135
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 137
    .restart local v1       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 138
    .local v2, _arg2:I
    invoke-virtual {p0, v0, v1, v2}, Landroid/nfc/INfcAdapterExtrasForSmartcard$Stub;->setCardEmulationRoute(Ljava/lang/String;II)V

    .line 139
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 144
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    .end local v2           #_arg2:I
    :sswitch_6
    const-string v5, "android.nfc.INfcAdapterExtrasForSmartcard"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 148
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 150
    .restart local v1       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 151
    .local v2, _arg2:[B
    invoke-virtual {p0, v0, v1, v2}, Landroid/nfc/INfcAdapterExtrasForSmartcard$Stub;->authenticate(Ljava/lang/String;I[B)V

    .line 152
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 41
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
