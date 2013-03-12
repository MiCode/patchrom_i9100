.class public interface abstract Lcom/sec/android/facedetection/IFaceDetectionService;
.super Ljava/lang/Object;
.source "IFaceDetectionService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/facedetection/IFaceDetectionService$Stub;
    }
.end annotation


# virtual methods
.method public abstract disable(Lcom/sec/android/facedetection/IFaceDetectionClient;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract enable(Lcom/sec/android/facedetection/IFaceDetectionClient;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getFaceInfo()[Lcom/sec/android/facedetection/SecFace;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getFaceInfoHint(II)[Lcom/sec/android/facedetection/SecFace;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
