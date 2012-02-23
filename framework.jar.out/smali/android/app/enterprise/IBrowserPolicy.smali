.class public interface abstract Landroid/app/enterprise/IBrowserPolicy;
.super Ljava/lang/Object;
.source "IBrowserPolicy.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/enterprise/IBrowserPolicy$Stub;
    }
.end annotation


# virtual methods
.method public abstract getBrowserSettingStatus(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setBrowserSettingStatus(ZI)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
