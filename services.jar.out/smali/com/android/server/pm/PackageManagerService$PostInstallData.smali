.class Lcom/android/server/pm/PackageManagerService$PostInstallData;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PostInstallData"
.end annotation


# instance fields
.field public args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

.field public res:Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;)V
    .locals 0
    .parameter
    .parameter "_a"
    .parameter "_r"

    .prologue
    .line 746
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PostInstallData;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 747
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$PostInstallData;->args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    .line 748
    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$PostInstallData;->res:Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    .line 749
    return-void
.end method
