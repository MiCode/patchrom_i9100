.class public interface abstract Lcom/sec/android/internal/ims/IIMSBTCallStateListener;
.super Ljava/lang/Object;
.source "IIMSBTCallStateListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/internal/ims/IIMSBTCallStateListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract handleImsEvent(III[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setMode(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
