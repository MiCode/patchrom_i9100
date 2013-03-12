.class public interface abstract Landroid/bluetooth/IAvrcpProxyCallback;
.super Ljava/lang/Object;
.source "IAvrcpProxyCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IAvrcpProxyCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract getElementAttributes()[Landroid/os/ElementAttributeParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getPlayStatus()Landroid/os/PlayStatusParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getPlayerSettingVal()Landroid/os/PlayerSettingsParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getSupportedEvents()Landroid/os/SupportedEventsParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract listPlayerSettingAttrs()Landroid/os/PlayerSettingsParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract listPlayerSettingVals(B)Landroid/os/PlayerSettingsParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setPlayerSettingVal(BB)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract updatePlayerSettingVals()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
