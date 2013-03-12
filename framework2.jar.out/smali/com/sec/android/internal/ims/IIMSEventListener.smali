.class public interface abstract Lcom/sec/android/internal/ims/IIMSEventListener;
.super Ljava/lang/Object;
.source "IIMSEventListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/internal/ims/IIMSEventListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract handleEvent(IIII[BLcom/sec/android/internal/ims/IIMSParams;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifyEvent(IIII[I[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
