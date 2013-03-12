.class public abstract Landroid/app/ICMDialogMessageManager$Stub;
.super Landroid/os/Binder;
.source "ICMDialogMessageManager.java"

# interfaces
.implements Landroid/app/ICMDialogMessageManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ICMDialogMessageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ICMDialogMessageManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.ICMDialogMessageManager"

.field static final TRANSACTION_getPermissionAlertDialogMessage:I = 0x1

.field static final TRANSACTION_getPermissionAlertDialogTitle:I = 0x3

.field static final TRANSACTION_getPermissionErrorDialogMessage:I = 0x2

.field static final TRANSACTION_getPermissionErrorDialogTitle:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "android.app.ICMDialogMessageManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/ICMDialogMessageManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/ICMDialogMessageManager;
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
    const-string v1, "android.app.ICMDialogMessageManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/ICMDialogMessageManager;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Landroid/app/ICMDialogMessageManager;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Landroid/app/ICMDialogMessageManager$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/app/ICMDialogMessageManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v3, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 86
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 42
    :sswitch_0
    const-string v4, "android.app.ICMDialogMessageManager"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v4, "android.app.ICMDialogMessageManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, _arg1:[Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/app/ICMDialogMessageManager$Stub;->getPermissionAlertDialogMessage(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 53
    .local v2, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 59
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:[Ljava/lang/String;
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_2
    const-string v4, "android.app.ICMDialogMessageManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 63
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/app/ICMDialogMessageManager$Stub;->getPermissionErrorDialogMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 65
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 71
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_3
    const-string v4, "android.app.ICMDialogMessageManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Landroid/app/ICMDialogMessageManager$Stub;->getPermissionAlertDialogTitle()Ljava/lang/String;

    move-result-object v2

    .line 73
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 79
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_4
    const-string v4, "android.app.ICMDialogMessageManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Landroid/app/ICMDialogMessageManager$Stub;->getPermissionErrorDialogTitle()Ljava/lang/String;

    move-result-object v2

    .line 81
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
