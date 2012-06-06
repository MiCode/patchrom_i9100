.class Lcom/android/OriginalSettings/applications/InstalledAppDetails$DisableChanger;
.super Landroid/os/AsyncTask;
.source "InstalledAppDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/applications/InstalledAppDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DisableChanger"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/OriginalSettings/applications/InstalledAppDetails;",
            ">;"
        }
    .end annotation
.end field

.field final mInfo:Landroid/content/pm/ApplicationInfo;

.field final mPm:Landroid/content/pm/PackageManager;

.field final mState:I


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/applications/InstalledAppDetails;Landroid/content/pm/ApplicationInfo;I)V
    .locals 1
    .parameter "activity"
    .parameter "info"
    .parameter "state"

    .prologue
    .line 889
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 890
    #getter for: Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {p1}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->access$1300(Lcom/android/OriginalSettings/applications/InstalledAppDetails;)Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails$DisableChanger;->mPm:Landroid/content/pm/PackageManager;

    .line 891
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails$DisableChanger;->mActivity:Ljava/lang/ref/WeakReference;

    .line 892
    iput-object p2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails$DisableChanger;->mInfo:Landroid/content/pm/ApplicationInfo;

    .line 893
    iput p3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails$DisableChanger;->mState:I

    .line 894
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "params"

    .prologue
    .line 898
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails$DisableChanger;->mPm:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails$DisableChanger;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails$DisableChanger;->mState:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 899
    const/4 v0, 0x0

    return-object v0
.end method
