.class public abstract Lcom/sec/android/ims/IImsInterface$Stub;
.super Landroid/os/Binder;
.source "IImsInterface.java"

# interfaces
.implements Lcom/sec/android/ims/IImsInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/ims/IImsInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/ims/IImsInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.sec.android.ims.IImsInterface"

.field static final TRANSACTION_getImsRegStatus:I = 0x3

.field static final TRANSACTION_mmSS_Svc_Api:I = 0x5

.field static final TRANSACTION_mmTelSvcCallFunc:I = 0x4

.field static final TRANSACTION_registerApp:I = 0x1

.field static final TRANSACTION_registerSSApp:I = 0x6

.field static final TRANSACTION_unRegisterApp:I = 0x2

.field static final TRANSACTION_unRegisterSSApp:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 17
    const-string v0, "com.sec.android.ims.IImsInterface"

    invoke-virtual {p0, p0, v0}, Lcom/sec/android/ims/IImsInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/android/ims/IImsInterface;
    .locals 2
    .parameter "obj"

    .prologue
    .line 25
    if-nez p0, :cond_0

    .line 26
    const/4 v0, 0x0

    .line 32
    :goto_0
    return-object v0

    .line 28
    :cond_0
    const-string v1, "com.sec.android.ims.IImsInterface"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 29
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/sec/android/ims/IImsInterface;

    if-eqz v1, :cond_1

    .line 30
    check-cast v0, Lcom/sec/android/ims/IImsInterface;

    goto :goto_0

    .line 32
    :cond_1
    new-instance v0, Lcom/sec/android/ims/IImsInterface$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/sec/android/ims/IImsInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 36
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
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
    const/4 v7, 0x1

    .line 40
    sparse-switch p1, :sswitch_data_0

    .line 140
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    .line 44
    :sswitch_0
    const-string v0, "com.sec.android.ims.IImsInterface"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :sswitch_1
    const-string v0, "com.sec.android.ims.IImsInterface"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 53
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/ims/IImsServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/ims/IImsServiceCallback;

    move-result-object v3

    .line 56
    .local v3, _arg2:Lcom/sec/android/ims/IImsServiceCallback;
    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/android/ims/IImsInterface$Stub;->registerApp(ILjava/lang/String;Lcom/sec/android/ims/IImsServiceCallback;)I

    move-result v6

    .line 57
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 63
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Lcom/sec/android/ims/IImsServiceCallback;
    .end local v6           #_result:I
    :sswitch_2
    const-string v0, "com.sec.android.ims.IImsInterface"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 67
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 68
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/sec/android/ims/IImsInterface$Stub;->unRegisterApp(II)V

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 74
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    :sswitch_3
    const-string v0, "com.sec.android.ims.IImsInterface"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/sec/android/ims/IImsInterface$Stub;->getImsRegStatus()Z

    move-result v6

    .line 76
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    if-eqz v6, :cond_0

    move v0, v7

    :goto_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 82
    .end local v6           #_result:Z
    :sswitch_4
    const-string v0, "com.sec.android.ims.IImsInterface"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 86
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 88
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 90
    .local v3, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 91
    .local v4, _arg3:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/sec/android/ims/IImsInterface$Stub;->mmTelSvcCallFunc(IIILjava/lang/String;)I

    move-result v6

    .line 92
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 98
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v4           #_arg3:Ljava/lang/String;
    .end local v6           #_result:I
    :sswitch_5
    const-string v0, "com.sec.android.ims.IImsInterface"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 102
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 104
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 106
    .restart local v3       #_arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 108
    .restart local v4       #_arg3:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .local v5, _arg4:Ljava/lang/String;
    move-object v0, p0

    .line 109
    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/ims/IImsInterface$Stub;->mmSS_Svc_Api(IIILjava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 110
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 116
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v4           #_arg3:Ljava/lang/String;
    .end local v5           #_arg4:Ljava/lang/String;
    .end local v6           #_result:I
    :sswitch_6
    const-string v0, "com.sec.android.ims.IImsInterface"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 120
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 122
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/ims/IImsServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/ims/IImsServiceCallback;

    move-result-object v3

    .line 123
    .local v3, _arg2:Lcom/sec/android/ims/IImsServiceCallback;
    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/android/ims/IImsInterface$Stub;->registerSSApp(ILjava/lang/String;Lcom/sec/android/ims/IImsServiceCallback;)I

    move-result v6

    .line 124
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 130
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Lcom/sec/android/ims/IImsServiceCallback;
    .end local v6           #_result:I
    :sswitch_7
    const-string v0, "com.sec.android.ims.IImsInterface"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 134
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 135
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/sec/android/ims/IImsInterface$Stub;->unRegisterSSApp(II)V

    .line 136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 40
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
