.class Lcom/sec/android/facedetection/IFaceDetectionClient$Stub$Proxy;
.super Ljava/lang/Object;
.source "IFaceDetectionClient.java"

# interfaces
.implements Lcom/sec/android/facedetection/IFaceDetectionClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/facedetection/IFaceDetectionClient$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .parameter "remote"

    .prologue
    .line 56
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/sec/android/facedetection/IFaceDetectionClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 58
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/facedetection/IFaceDetectionClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    const-string v0, "com.sec.android.facedetection.IFaceDetectionClient"

    return-object v0
.end method
