.class public Landroid/view/CompatibilityInfoHolder;
.super Ljava/lang/Object;
.source "CompatibilityInfoHolder.java"


# instance fields
.field private volatile mCompatInfo:Landroid/content/res/CompatibilityInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    sget-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    iput-object v0, p0, Landroid/view/CompatibilityInfoHolder;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    return-void
.end method


# virtual methods
.method public get()Landroid/content/res/CompatibilityInfo;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Landroid/view/CompatibilityInfoHolder;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    return-object v0
.end method

.method public getIfNeeded()Landroid/content/res/CompatibilityInfo;
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Landroid/view/CompatibilityInfoHolder;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    .line 40
    .local v0, ci:Landroid/content/res/CompatibilityInfo;
    if-eqz v0, :cond_0

    sget-object v1, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    if-ne v0, v1, :cond_1

    .line 41
    :cond_0
    const/4 v0, 0x0

    .line 43
    .end local v0           #ci:Landroid/content/res/CompatibilityInfo;
    :cond_1
    return-object v0
.end method

.method public set(Landroid/content/res/CompatibilityInfo;)V
    .locals 1
    .parameter "compatInfo"

    .prologue
    .line 26
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 28
    :cond_0
    iput-object p1, p0, Landroid/view/CompatibilityInfoHolder;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    .line 32
    :goto_0
    return-void

    .line 30
    :cond_1
    sget-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    iput-object v0, p0, Landroid/view/CompatibilityInfoHolder;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    goto :goto_0
.end method
