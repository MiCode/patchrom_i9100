.class public abstract Landroid/app/enterprise/IDataFadePolicy$Stub;
.super Landroid/os/Binder;
.source "IDataFadePolicy.java"

# interfaces
.implements Landroid/app/enterprise/IDataFadePolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/enterprise/IDataFadePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/enterprise/IDataFadePolicy$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.enterprise.IDataFadePolicy"

.field static final TRANSACTION_addDatafadeWipeTask:I = 0x3

.field static final TRANSACTION_deleteDatafadeWipeTask:I = 0x4

.field static final TRANSACTION_getDatafadeWipeInfoList:I = 0x5

.field static final TRANSACTION_registerDatafadeWipeCallback:I = 0x6

.field static final TRANSACTION_startDatafadeWipe:I = 0x1

.field static final TRANSACTION_stopDatafadeWipe:I = 0x2

.field static final TRANSACTION_unregisterDatafadeWipeCallback:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.app.enterprise.IDataFadePolicy"

    invoke-virtual {p0, p0, v0}, Landroid/app/enterprise/IDataFadePolicy$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IDataFadePolicy;
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
    const-string v1, "android.app.enterprise.IDataFadePolicy"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/enterprise/IDataFadePolicy;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Landroid/app/enterprise/IDataFadePolicy;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Landroid/app/enterprise/IDataFadePolicy$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/app/enterprise/IDataFadePolicy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 9
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
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 121
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    .line 45
    :sswitch_0
    const-string v0, "android.app.enterprise.IDataFadePolicy"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v0, "android.app.enterprise.IDataFadePolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Landroid/app/enterprise/IDataFadePolicy$Stub;->startDatafadeWipe()Z

    move-result v6

    .line 52
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    if-eqz v6, :cond_0

    move v0, v7

    :goto_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    move v0, v8

    goto :goto_1

    .line 58
    .end local v6           #_result:Z
    :sswitch_2
    const-string v0, "android.app.enterprise.IDataFadePolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Landroid/app/enterprise/IDataFadePolicy$Stub;->stopDatafadeWipe()Z

    move-result v6

    .line 60
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    if-eqz v6, :cond_1

    move v8, v7

    :cond_1
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 66
    .end local v6           #_result:Z
    :sswitch_3
    const-string v0, "android.app.enterprise.IDataFadePolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 70
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 72
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 74
    .local v3, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 76
    .local v4, _arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v5

    .local v5, _arg4:[Ljava/lang/String;
    move-object v0, p0

    .line 77
    invoke-virtual/range {v0 .. v5}, Landroid/app/enterprise/IDataFadePolicy$Stub;->addDatafadeWipeTask(IIII[Ljava/lang/String;)Z

    move-result v6

    .line 78
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    if-eqz v6, :cond_2

    move v8, v7

    :cond_2
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 84
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v4           #_arg3:I
    .end local v5           #_arg4:[Ljava/lang/String;
    .end local v6           #_result:Z
    :sswitch_4
    const-string v0, "android.app.enterprise.IDataFadePolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 87
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IDataFadePolicy$Stub;->deleteDatafadeWipeTask(I)Z

    move-result v6

    .line 88
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    if-eqz v6, :cond_3

    move v8, v7

    :cond_3
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 94
    .end local v1           #_arg0:I
    .end local v6           #_result:Z
    :sswitch_5
    const-string v0, "android.app.enterprise.IDataFadePolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 97
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IDataFadePolicy$Stub;->getDatafadeWipeInfoList(I)[Landroid/app/enterprise/DatafadeInfo;

    move-result-object v6

    .line 98
    .local v6, _result:[Landroid/app/enterprise/DatafadeInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    invoke-virtual {p3, v6, v7}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .line 104
    .end local v1           #_arg0:I
    .end local v6           #_result:[Landroid/app/enterprise/DatafadeInfo;
    :sswitch_6
    const-string v0, "android.app.enterprise.IDataFadePolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IDatafadeWipeCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IDatafadeWipeCallback;

    move-result-object v1

    .line 107
    .local v1, _arg0:Landroid/app/enterprise/IDatafadeWipeCallback;
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IDataFadePolicy$Stub;->registerDatafadeWipeCallback(Landroid/app/enterprise/IDatafadeWipeCallback;)V

    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 113
    .end local v1           #_arg0:Landroid/app/enterprise/IDatafadeWipeCallback;
    :sswitch_7
    const-string v0, "android.app.enterprise.IDataFadePolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IDatafadeWipeCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IDatafadeWipeCallback;

    move-result-object v1

    .line 116
    .restart local v1       #_arg0:Landroid/app/enterprise/IDatafadeWipeCallback;
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IDataFadePolicy$Stub;->unregisterDatafadeWipeCallback(Landroid/app/enterprise/IDatafadeWipeCallback;)V

    .line 117
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
        0x7 -> :sswitch_7
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
