.class public abstract Lcom/sec/android/facedetection/IFaceDetectionService$Stub;
.super Landroid/os/Binder;
.source "IFaceDetectionService.java"

# interfaces
.implements Lcom/sec/android/facedetection/IFaceDetectionService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/facedetection/IFaceDetectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/facedetection/IFaceDetectionService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.sec.android.facedetection.IFaceDetectionService"

.field static final TRANSACTION_disable:I = 0x2

.field static final TRANSACTION_enable:I = 0x1

.field static final TRANSACTION_getFaceInfo:I = 0x3

.field static final TRANSACTION_getFaceInfoHint:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "com.sec.android.facedetection.IFaceDetectionService"

    invoke-virtual {p0, p0, v0}, Lcom/sec/android/facedetection/IFaceDetectionService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/android/facedetection/IFaceDetectionService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 34
    :goto_0
    return-object v0

    .line 30
    :cond_0
    const-string v1, "com.sec.android.facedetection.IFaceDetectionService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/sec/android/facedetection/IFaceDetectionService;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lcom/sec/android/facedetection/IFaceDetectionService;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Lcom/sec/android/facedetection/IFaceDetectionService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/sec/android/facedetection/IFaceDetectionService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
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

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 88
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 46
    :sswitch_0
    const-string v4, "com.sec.android.facedetection.IFaceDetectionService"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :sswitch_1
    const-string v4, "com.sec.android.facedetection.IFaceDetectionService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/facedetection/IFaceDetectionClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/facedetection/IFaceDetectionClient;

    move-result-object v0

    .line 54
    .local v0, _arg0:Lcom/sec/android/facedetection/IFaceDetectionClient;
    invoke-virtual {p0, v0}, Lcom/sec/android/facedetection/IFaceDetectionService$Stub;->enable(Lcom/sec/android/facedetection/IFaceDetectionClient;)V

    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 60
    .end local v0           #_arg0:Lcom/sec/android/facedetection/IFaceDetectionClient;
    :sswitch_2
    const-string v4, "com.sec.android.facedetection.IFaceDetectionService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/facedetection/IFaceDetectionClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/facedetection/IFaceDetectionClient;

    move-result-object v0

    .line 63
    .restart local v0       #_arg0:Lcom/sec/android/facedetection/IFaceDetectionClient;
    invoke-virtual {p0, v0}, Lcom/sec/android/facedetection/IFaceDetectionService$Stub;->disable(Lcom/sec/android/facedetection/IFaceDetectionClient;)V

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 69
    .end local v0           #_arg0:Lcom/sec/android/facedetection/IFaceDetectionClient;
    :sswitch_3
    const-string v4, "com.sec.android.facedetection.IFaceDetectionService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lcom/sec/android/facedetection/IFaceDetectionService$Stub;->getFaceInfo()[Lcom/sec/android/facedetection/SecFace;

    move-result-object v2

    .line 71
    .local v2, _result:[Lcom/sec/android/facedetection/SecFace;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 77
    .end local v2           #_result:[Lcom/sec/android/facedetection/SecFace;
    :sswitch_4
    const-string v4, "com.sec.android.facedetection.IFaceDetectionService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 81
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 82
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/sec/android/facedetection/IFaceDetectionService$Stub;->getFaceInfoHint(II)[Lcom/sec/android/facedetection/SecFace;

    move-result-object v2

    .line 83
    .restart local v2       #_result:[Lcom/sec/android/facedetection/SecFace;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 42
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
