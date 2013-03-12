.class public interface abstract Lcom/sec/android/ims/message/IMessageEnabler;
.super Ljava/lang/Object;
.source "IMessageEnabler.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/ims/message/IMessageEnabler$Stub;
    }
.end annotation


# virtual methods
.method public abstract sendSMS(Ljava/lang/String;[BLjava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract sendSMSResponse(IILjava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
