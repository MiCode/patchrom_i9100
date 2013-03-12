.class final Landroid/app/ContextImpl$51;
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
    .line 629
    invoke-direct {p0}, Landroid/app/ContextImpl$ServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 4
    .parameter "ctx"

    .prologue
    .line 631
    invoke-virtual {p1}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.feature.barcode_emulator"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 633
    const-string v2, "barbeam"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 634
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/app/IBarBeamService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IBarBeamService;

    move-result-object v1

    .line 635
    .local v1, service:Landroid/app/IBarBeamService;
    new-instance v2, Landroid/app/BarBeamCommandImpl;

    invoke-direct {v2, v1}, Landroid/app/BarBeamCommandImpl;-><init>(Landroid/app/IBarBeamService;)V

    .line 637
    .end local v0           #b:Landroid/os/IBinder;
    .end local v1           #service:Landroid/app/IBarBeamService;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
