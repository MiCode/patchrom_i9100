.class public interface abstract Lcom/android/providers/media/IMtpService;
.super Ljava/lang/Object;
.source "IMtpService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/media/IMtpService$Stub;
    }
.end annotation


# virtual methods
.method public abstract sendObjectAdded(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract sendObjectRemoved(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
