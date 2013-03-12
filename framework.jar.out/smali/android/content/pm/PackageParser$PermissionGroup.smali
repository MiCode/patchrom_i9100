.class public final Landroid/content/pm/PackageParser$PermissionGroup;
.super Landroid/content/pm/PackageParser$Component;
.source "PackageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PermissionGroup"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/pm/PackageParser$Component",
        "<",
        "Landroid/content/pm/PackageParser$IntentInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final info:Landroid/content/pm/PermissionGroupInfo;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageParser$Package;)V
    .locals 1
    .parameter "_owner"

    .prologue
    .line 3415
    invoke-direct {p0, p1}, Landroid/content/pm/PackageParser$Component;-><init>(Landroid/content/pm/PackageParser$Package;)V

    .line 3416
    new-instance v0, Landroid/content/pm/PermissionGroupInfo;

    invoke-direct {v0}, Landroid/content/pm/PermissionGroupInfo;-><init>()V

    iput-object v0, p0, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    .line 3417
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PermissionGroupInfo;)V
    .locals 0
    .parameter "_owner"
    .parameter "_info"

    .prologue
    .line 3420
    invoke-direct {p0, p1}, Landroid/content/pm/PackageParser$Component;-><init>(Landroid/content/pm/PackageParser$Package;)V

    .line 3421
    iput-object p2, p0, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    .line 3422
    return-void
.end method


# virtual methods
.method public setPackageName(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 3425
    invoke-super {p0, p1}, Landroid/content/pm/PackageParser$Component;->setPackageName(Ljava/lang/String;)V

    .line 3426
    iget-object v0, p0, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    iput-object p1, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 3427
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PermissionGroup{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
