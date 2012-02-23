.class public interface abstract Landroid/app/IShutdownLogger;
.super Ljava/lang/Object;
.source "IShutdownLogger.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IShutdownLogger$Stub;
    }
.end annotation


# virtual methods
.method public abstract appendLog(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract recordShutdownTime()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
