.class final Landroid/app/ContextImpl$17;
.super Landroid/app/ContextImpl$StaticServiceFetcher;
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
    .line 393
    invoke-direct {p0}, Landroid/app/ContextImpl$StaticServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createStaticService()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 395
    invoke-static {}, Landroid/app/ContextImpl;->createSimauthManager()Lcom/orange/authentication/simcard/SimCardAuthenticationManager;

    move-result-object v0

    return-object v0
.end method
