.class public interface abstract Landroid/os/storage/IDirEncryptServiceListener;
.super Ljava/lang/Object;
.source "IDirEncryptServiceListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/storage/IDirEncryptServiceListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onEncryptionStatusChanged(Ljava/lang/String;ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
