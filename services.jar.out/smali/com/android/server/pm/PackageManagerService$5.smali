.class final Lcom/android/server/pm/PackageManagerService$5;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/content/pm/ProviderInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 5127
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/content/pm/ProviderInfo;Landroid/content/pm/ProviderInfo;)I
    .locals 3
    .parameter "p1"
    .parameter "p2"

    .prologue
    .line 5129
    iget v0, p1, Landroid/content/pm/ProviderInfo;->initOrder:I

    .line 5130
    .local v0, v1:I
    iget v1, p2, Landroid/content/pm/ProviderInfo;->initOrder:I

    .line 5131
    .local v1, v2:I
    if-le v0, v1, :cond_0

    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_0
    if-ge v0, v1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5127
    check-cast p1, Landroid/content/pm/ProviderInfo;

    .end local p1
    check-cast p2, Landroid/content/pm/ProviderInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$5;->compare(Landroid/content/pm/ProviderInfo;Landroid/content/pm/ProviderInfo;)I

    move-result v0

    return v0
.end method
