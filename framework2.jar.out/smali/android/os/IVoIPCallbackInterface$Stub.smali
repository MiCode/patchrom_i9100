.class public abstract Landroid/os/IVoIPCallbackInterface$Stub;
.super Landroid/os/Binder;
.source "IVoIPCallbackInterface.java"

# interfaces
.implements Landroid/os/IVoIPCallbackInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IVoIPCallbackInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IVoIPCallbackInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IVoIPCallbackInterface"

.field static final TRANSACTION_answerVoIPCall:I = 0x1

.field static final TRANSACTION_hangupVoIPCall:I = 0x2

.field static final TRANSACTION_holdVoIPCall:I = 0x4

.field static final TRANSACTION_moveVoIPToTop:I = 0x3

.field static final TRANSACTION_muteVoIPCall:I = 0x6

.field static final TRANSACTION_resumeVoIPCall:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "android.os.IVoIPCallbackInterface"

    invoke-virtual {p0, p0, v0}, Landroid/os/IVoIPCallbackInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IVoIPCallbackInterface;
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
    const-string v1, "android.os.IVoIPCallbackInterface"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/IVoIPCallbackInterface;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Landroid/os/IVoIPCallbackInterface;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Landroid/os/IVoIPCallbackInterface$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/os/IVoIPCallbackInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 94
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 42
    :sswitch_0
    const-string v1, "android.os.IVoIPCallbackInterface"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v3, "android.os.IVoIPCallbackInterface"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Landroid/os/IVoIPCallbackInterface$Stub;->answerVoIPCall()Z

    move-result v0

    .line 49
    .local v0, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    if-eqz v0, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 55
    .end local v0           #_result:Z
    :sswitch_2
    const-string v3, "android.os.IVoIPCallbackInterface"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Landroid/os/IVoIPCallbackInterface$Stub;->hangupVoIPCall()Z

    move-result v0

    .line 57
    .restart local v0       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    if-eqz v0, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 63
    .end local v0           #_result:Z
    :sswitch_3
    const-string v3, "android.os.IVoIPCallbackInterface"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Landroid/os/IVoIPCallbackInterface$Stub;->moveVoIPToTop()Z

    move-result v0

    .line 65
    .restart local v0       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    if-eqz v0, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 71
    .end local v0           #_result:Z
    :sswitch_4
    const-string v3, "android.os.IVoIPCallbackInterface"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Landroid/os/IVoIPCallbackInterface$Stub;->holdVoIPCall()Z

    move-result v0

    .line 73
    .restart local v0       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    if-eqz v0, :cond_3

    move v1, v2

    :cond_3
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 79
    .end local v0           #_result:Z
    :sswitch_5
    const-string v3, "android.os.IVoIPCallbackInterface"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Landroid/os/IVoIPCallbackInterface$Stub;->resumeVoIPCall()Z

    move-result v0

    .line 81
    .restart local v0       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    if-eqz v0, :cond_4

    move v1, v2

    :cond_4
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 87
    .end local v0           #_result:Z
    :sswitch_6
    const-string v3, "android.os.IVoIPCallbackInterface"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Landroid/os/IVoIPCallbackInterface$Stub;->muteVoIPCall()Z

    move-result v0

    .line 89
    .restart local v0       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    if-eqz v0, :cond_5

    move v1, v2

    :cond_5
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 38
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
