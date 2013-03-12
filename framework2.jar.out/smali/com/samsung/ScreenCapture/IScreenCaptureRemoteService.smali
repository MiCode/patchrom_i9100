.class public interface abstract Lcom/samsung/ScreenCapture/IScreenCaptureRemoteService;
.super Ljava/lang/Object;
.source "IScreenCaptureRemoteService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/ScreenCapture/IScreenCaptureRemoteService$Stub;
    }
.end annotation


# virtual methods
.method public abstract GetFrame()Lcom/samsung/ScreenCapture/CaptureImg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
