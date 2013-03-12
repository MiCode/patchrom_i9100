.class public interface abstract Lcom/samsung/commonimsservice/IIMSRegisterStateListener;
.super Ljava/lang/Object;
.source "IIMSRegisterStateListener.java"


# static fields
.field public static final DEREGISTERED:I = 0x4

.field public static final DEREGISTERING:I = 0x2

.field public static final DEREGISTER_FAILED:I = 0x5

.field public static final REGISTERED:I = 0x3

.field public static final REGISTERING:I = 0x1

.field public static final REGISTER_FAILED:I = 0x6


# virtual methods
.method public abstract onNetworkTransition(II)V
.end method

.method public abstract onRegistering(Ljava/lang/String;)V
.end method

.method public abstract onRegistrationDone(Ljava/lang/String;J)V
.end method

.method public abstract onRegistrationFailed(Ljava/lang/String;ILjava/lang/String;)V
.end method
