.class public interface abstract Lcom/orange/authentication/simcard/ISimCardAuthenticationService;
.super Ljava/lang/Object;
.source "ISimCardAuthenticationService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/orange/authentication/simcard/ISimCardAuthenticationService$Stub;
    }
.end annotation


# virtual methods
.method public abstract akaAuthentication([B[B)Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getSimCardType()Lcom/orange/authentication/simcard/ServiceSimCardType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract gsmAuthentication([B)Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
