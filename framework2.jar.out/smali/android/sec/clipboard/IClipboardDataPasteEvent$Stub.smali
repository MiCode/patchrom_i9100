.class public abstract Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub;
.super Landroid/os/Binder;
.source "IClipboardDataPasteEvent.java"

# interfaces
.implements Landroid/sec/clipboard/IClipboardDataPasteEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sec/clipboard/IClipboardDataPasteEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.sec.clipboard.IClipboardDataPasteEvent"

.field static final TRANSACTION_onClipboardDataPaste:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "android.sec.clipboard.IClipboardDataPasteEvent"

    invoke-virtual {p0, p0, v0}, Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardDataPasteEvent;
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
    const-string v1, "android.sec.clipboard.IClipboardDataPasteEvent"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/sec/clipboard/IClipboardDataPasteEvent;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Landroid/sec/clipboard/IClipboardDataPasteEvent;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 3
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
    const/4 v1, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 60
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 42
    :sswitch_0
    const-string v2, "android.sec.clipboard.IClipboardDataPasteEvent"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v2, "android.sec.clipboard.IClipboardDataPasteEvent"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 50
    sget-object v2, Landroid/sec/clipboard/data/ClipboardData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/data/ClipboardData;

    .line 55
    .local v0, _arg0:Landroid/sec/clipboard/data/ClipboardData;
    :goto_1
    invoke-virtual {p0, v0}, Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub;->onClipboardDataPaste(Landroid/sec/clipboard/data/ClipboardData;)V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 53
    .end local v0           #_arg0:Landroid/sec/clipboard/data/ClipboardData;
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/sec/clipboard/data/ClipboardData;
    goto :goto_1

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
