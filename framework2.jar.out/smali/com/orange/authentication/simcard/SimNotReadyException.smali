.class public Lcom/orange/authentication/simcard/SimNotReadyException;
.super Lcom/orange/authentication/simcard/SimCardAuthenticationException;
.source "SimNotReadyException.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/orange/authentication/simcard/SimCardAuthenticationException;-><init>()V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/orange/authentication/simcard/SimCardAuthenticationException;-><init>(Ljava/lang/String;)V

    .line 42
    return-void
.end method
