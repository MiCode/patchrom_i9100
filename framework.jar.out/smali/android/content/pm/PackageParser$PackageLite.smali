.class public Landroid/content/pm/PackageParser$PackageLite;
.super Ljava/lang/Object;
.source "PackageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PackageLite"
.end annotation


# instance fields
.field public final installLocation:I

.field public final packageName:Ljava/lang/String;

.field public final verifiers:[Landroid/content/pm/VerifierInfo;

.field public final versionCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IILjava/util/List;)V
    .locals 1
    .parameter "packageName"
    .parameter "versionCode"
    .parameter "installLocation"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/VerifierInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, verifiers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/VerifierInfo;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    iput p2, p0, Landroid/content/pm/PackageParser$PackageLite;->versionCode:I

    iput p3, p0, Landroid/content/pm/PackageParser$PackageLite;->installLocation:I

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/content/pm/VerifierInfo;

    invoke-interface {p4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/VerifierInfo;

    iput-object v0, p0, Landroid/content/pm/PackageParser$PackageLite;->verifiers:[Landroid/content/pm/VerifierInfo;

    .line 215
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/util/List;)V
    .locals 1
    .parameter "packageName"
    .parameter "installLocation"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/VerifierInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, verifiers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/VerifierInfo;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Landroid/content/pm/PackageParser$PackageLite;-><init>(Ljava/lang/String;IILjava/util/List;)V

    return-void
.end method
