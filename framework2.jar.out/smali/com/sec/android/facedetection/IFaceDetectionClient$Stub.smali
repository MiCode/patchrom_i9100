.class public abstract Lcom/sec/android/facedetection/IFaceDetectionClient$Stub;
.super Landroid/os/Binder;
.source "IFaceDetectionClient.java"

# interfaces
.implements Lcom/sec/android/facedetection/IFaceDetectionClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/facedetection/IFaceDetectionClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/facedetection/IFaceDetectionClient$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.sec.android.facedetection.IFaceDetectionClient"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "com.sec.android.facedetection.IFaceDetectionClient"

    invoke-virtual {p0, p0, v0}, Lcom/sec/android/facedetection/IFaceDetectionClient$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/android/facedetection/IFaceDetectionClient;
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
    const-string v1, "com.sec.android.facedetection.IFaceDetectionClient"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/sec/android/facedetection/IFaceDetectionClient;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lcom/sec/android/facedetection/IFaceDetectionClient;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Lcom/sec/android/facedetection/IFaceDetectionClient$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/sec/android/facedetection/IFaceDetectionClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 1
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
    .line 42
    packed-switch p1, :pswitch_data_0

    .line 50
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 46
    :pswitch_0
    const-string v0, "com.sec.android.facedetection.IFaceDetectionClient"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    const/4 v0, 0x1

    goto :goto_0

    .line 42
    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch
.end method
