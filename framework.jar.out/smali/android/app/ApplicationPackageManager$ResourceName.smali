.class final Landroid/app/ApplicationPackageManager$ResourceName;
.super Ljava/lang/Object;
.source "ApplicationPackageManager.java"


# annotations
.annotation build Landroid/annotation/MiuiHook;
    value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_ACCESS:Landroid/annotation/MiuiHook$MiuiHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ApplicationPackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ResourceName"
.end annotation


# instance fields
.field final iconId:I

.field final packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/pm/ApplicationInfo;I)V
    .locals 1
    .parameter "aInfo"
    .parameter "_iconId"

    .prologue
    .line 976
    iget-object v0, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Landroid/app/ApplicationPackageManager$ResourceName;-><init>(Ljava/lang/String;I)V

    .line 977
    return-void
.end method

.method constructor <init>(Landroid/content/pm/ComponentInfo;I)V
    .locals 1
    .parameter "cInfo"
    .parameter "_iconId"

    .prologue
    .line 980
    iget-object v0, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Landroid/app/ApplicationPackageManager$ResourceName;-><init>(Ljava/lang/String;I)V

    .line 981
    return-void
.end method

.method constructor <init>(Landroid/content/pm/ResolveInfo;I)V
    .locals 1
    .parameter "rInfo"
    .parameter "_iconId"

    .prologue
    .line 984
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Landroid/app/ApplicationPackageManager$ResourceName;-><init>(Ljava/lang/String;I)V

    .line 985
    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter "_packageName"
    .parameter "_iconId"

    .prologue
    .line 970
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 971
    iput-object p1, p0, Landroid/app/ApplicationPackageManager$ResourceName;->packageName:Ljava/lang/String;

    .line 972
    iput p2, p0, Landroid/app/ApplicationPackageManager$ResourceName;->iconId:I

    .line 973
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 989
    if-ne p0, p1, :cond_1

    .line 995
    :cond_0
    :goto_0
    return v1

    .line 990
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 992
    check-cast v0, Landroid/app/ApplicationPackageManager$ResourceName;

    .line 994
    .local v0, that:Landroid/app/ApplicationPackageManager$ResourceName;
    iget v3, p0, Landroid/app/ApplicationPackageManager$ResourceName;->iconId:I

    iget v4, v0, Landroid/app/ApplicationPackageManager$ResourceName;->iconId:I

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    .line 995
    :cond_4
    iget-object v3, p0, Landroid/app/ApplicationPackageManager$ResourceName;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p0, Landroid/app/ApplicationPackageManager$ResourceName;->packageName:Ljava/lang/String;

    iget-object v4, v0, Landroid/app/ApplicationPackageManager$ResourceName;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_5
    move v1, v2

    goto :goto_0

    :cond_6
    iget-object v3, v0, Landroid/app/ApplicationPackageManager$ResourceName;->packageName:Ljava/lang/String;

    if-nez v3, :cond_5

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 1003
    iget-object v1, p0, Landroid/app/ApplicationPackageManager$ResourceName;->packageName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 1004
    .local v0, result:I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/app/ApplicationPackageManager$ResourceName;->iconId:I

    add-int v0, v1, v2

    .line 1005
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1010
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{ResourceName "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ApplicationPackageManager$ResourceName;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/ApplicationPackageManager$ResourceName;->iconId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
