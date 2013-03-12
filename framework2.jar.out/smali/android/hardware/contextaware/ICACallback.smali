.class public interface abstract Landroid/hardware/contextaware/ICACallback;
.super Ljava/lang/Object;
.source "ICACallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/contextaware/ICACallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract caCallback(Landroid/hardware/contextaware/CAEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getListenerInfo()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
