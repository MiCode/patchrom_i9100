.class Lcom/android/settings/autohaptic/AutoHapticSettings$IncludedApps;
.super Ljava/lang/Object;
.source "AutoHapticSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/autohaptic/AutoHapticSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IncludedApps"
.end annotation


# instance fields
.field mHasVibPerm:Z

.field mIcon:Landroid/graphics/drawable/Drawable;

.field mName:Ljava/lang/String;

.field mPackageInfo:Landroid/content/pm/PackageInfo;

.field mPackageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settings/autohaptic/AutoHapticSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/autohaptic/AutoHapticSettings;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLandroid/content/pm/PackageInfo;)V
    .locals 0
    .parameter
    .parameter "name"
    .parameter "pkgName"
    .parameter "icon"
    .parameter "hasVibPerm"
    .parameter "p"

    .prologue
    .line 391
    iput-object p1, p0, Lcom/android/settings/autohaptic/AutoHapticSettings$IncludedApps;->this$0:Lcom/android/settings/autohaptic/AutoHapticSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 392
    iput-object p2, p0, Lcom/android/settings/autohaptic/AutoHapticSettings$IncludedApps;->mName:Ljava/lang/String;

    .line 393
    iput-object p3, p0, Lcom/android/settings/autohaptic/AutoHapticSettings$IncludedApps;->mPackageName:Ljava/lang/String;

    .line 394
    iput-object p4, p0, Lcom/android/settings/autohaptic/AutoHapticSettings$IncludedApps;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 395
    iput-boolean p5, p0, Lcom/android/settings/autohaptic/AutoHapticSettings$IncludedApps;->mHasVibPerm:Z

    .line 396
    iput-object p6, p0, Lcom/android/settings/autohaptic/AutoHapticSettings$IncludedApps;->mPackageInfo:Landroid/content/pm/PackageInfo;

    .line 397
    return-void
.end method
