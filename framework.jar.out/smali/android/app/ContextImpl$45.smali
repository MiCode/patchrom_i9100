.class final Landroid/app/ContextImpl$45;
.super Landroid/app/ContextImpl$ServiceFetcher;
.source "ContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 596
    invoke-direct {p0}, Landroid/app/ContextImpl$ServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 3
    .parameter "ctx"

    .prologue
    .line 598
    const-string/jumbo v2, "wfd"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 599
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Lcom/samsung/wfd/IWfdManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/wfd/IWfdManager;

    move-result-object v1

    .line 600
    .local v1, service:Lcom/samsung/wfd/IWfdManager;
    new-instance v2, Lcom/samsung/wfd/WfdManager;

    invoke-direct {v2, v1}, Lcom/samsung/wfd/WfdManager;-><init>(Lcom/samsung/wfd/IWfdManager;)V

    return-object v2
.end method
