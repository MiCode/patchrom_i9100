.class Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;
.super Ljava/lang/Object;
.source "SipSessionGroup.java"

# interfaces
.implements Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sip/SipSessionGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "KeepAliveProcessCallbackProxy"
.end annotation


# instance fields
.field private mCallback:Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;


# direct methods
.method constructor <init>(Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 1798
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1799
    iput-object p1, p0, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;->mCallback:Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;

    .line 1800
    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;)Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1795
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;->mCallback:Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;

    return-object v0
.end method

.method private proxy(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "runnable"

    .prologue
    .line 1806
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "SIP-KeepAliveProcessCallbackThread"

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1807
    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 1
    .parameter "errorCode"
    .parameter "description"

    .prologue
    .line 1823
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;->mCallback:Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;

    if-nez v0, :cond_0

    .line 1833
    :goto_0
    return-void

    .line 1824
    :cond_0
    new-instance v0, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy$2;-><init>(Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;->proxy(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onResponse(Z)V
    .locals 1
    .parameter "portChanged"

    .prologue
    .line 1810
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;->mCallback:Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;

    if-nez v0, :cond_0

    .line 1820
    :goto_0
    return-void

    .line 1811
    :cond_0
    new-instance v0, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy$1;-><init>(Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;Z)V

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;->proxy(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
