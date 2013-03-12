.class public interface abstract Lcom/orange/authentication/simcard/SimCardAuthenticationManager;
.super Ljava/lang/Object;
.source "SimCardAuthenticationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;
    }
.end annotation


# static fields
.field public static final SERVICE_NAME:Ljava/lang/String; = "com.orange.authentication.simcard"


# virtual methods
.method public abstract akaAuthentication([B[B)Lcom/orange/authentication/simcard/AkaAuthenticationResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/orange/authentication/simcard/ServiceFailureException;,
            Lcom/orange/authentication/simcard/SimNotReadyException;,
            Lcom/orange/authentication/simcard/UserAuthenticationRejectException;,
            Lcom/orange/authentication/simcard/NoSuchAuthenticationException;,
            Lcom/orange/authentication/simcard/SynchronisationFailureException;
        }
    .end annotation
.end method

.method public abstract getSimCardType()Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;
.end method

.method public abstract gsmAuthentication([B)Lcom/orange/authentication/simcard/GsmAuthenticationResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/orange/authentication/simcard/ServiceFailureException;,
            Lcom/orange/authentication/simcard/SimNotReadyException;,
            Lcom/orange/authentication/simcard/UserAuthenticationRejectException;
        }
    .end annotation
.end method
