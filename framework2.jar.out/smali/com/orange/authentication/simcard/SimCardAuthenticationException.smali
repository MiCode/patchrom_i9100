.class public Lcom/orange/authentication/simcard/SimCardAuthenticationException;
.super Ljava/lang/Exception;
.source "SimCardAuthenticationException.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 41
    return-void
.end method
