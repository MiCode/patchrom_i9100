.class Lcom/android/server/pm/PackageScanState;
.super Ljava/lang/Object;
.source "PackageScanState.java"


# static fields
.field private static final is3LMAllowed:Z


# instance fields
.field private final mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService$InstallArgs;)V
    .locals 0
    .parameter "args"

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/server/pm/PackageScanState;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    .line 30
    return-void
.end method


# virtual methods
.method public getInstallArgs()Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    return-object v0
.end method
