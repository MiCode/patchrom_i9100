.class public interface abstract Lcom/samsung/shareshot/IShareShotCallbackRegister;
.super Ljava/lang/Object;
.source "IShareShotCallbackRegister.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/shareshot/IShareShotCallbackRegister$Stub;
    }
.end annotation


# virtual methods
.method public abstract registerCallback(Lcom/samsung/shareshot/IShareShotServiceCallback;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterCallback(Lcom/samsung/shareshot/IShareShotServiceCallback;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
