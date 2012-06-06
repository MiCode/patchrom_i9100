.class public Lcom/android/OriginalSettings/LockScreenWallpaper;
.super Lcom/android/internal/app/AlertActivity;
.source "LockScreenWallpaper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/LockScreenWallpaper$AlphaComparator;,
        Lcom/android/OriginalSettings/LockScreenWallpaper$ViewHolder;,
        Lcom/android/OriginalSettings/LockScreenWallpaper$WallpaperAdapter;
    }
.end annotation


# instance fields
.field private ItemName:[Ljava/lang/String;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mPm:Landroid/content/pm/PackageManager;

.field private rList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 50
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/OriginalSettings/LockScreenWallpaper;->ItemName:[Ljava/lang/String;

    .line 165
    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/LockScreenWallpaper;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/OriginalSettings/LockScreenWallpaper;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/LockScreenWallpaper;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/OriginalSettings/LockScreenWallpaper;->rList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/LockScreenWallpaper;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/OriginalSettings/LockScreenWallpaper;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/LockScreenWallpaper;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/OriginalSettings/LockScreenWallpaper;->ItemName:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "position"

    .prologue
    .line 78
    const-string v2, "com.cooliris.media"

    iget-object v3, p0, Lcom/android/OriginalSettings/LockScreenWallpaper;->ItemName:[Ljava/lang/String;

    aget-object v3, v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 80
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.cooliris.media"

    const-string v3, "com.cooliris.media.LockScreenPhotographs"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/LockScreenWallpaper;->startActivity(Landroid/content/Intent;)V

    .line 89
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 83
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 84
    .local v1, intentCallWallpaperChooser:Landroid/content/Intent;
    const-string v2, "SET_LOCKSCREEN_WALLPAPER"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 85
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.sec.android.app.twwallpaperchooser"

    const-string v4, "com.sec.android.app.twwallpaperchooser.WallpaperChooser"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 87
    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/LockScreenWallpaper;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/LockScreenWallpaper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    iput-object v3, p0, Lcom/android/OriginalSettings/LockScreenWallpaper;->mInflater:Landroid/view/LayoutInflater;

    .line 58
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockScreenWallpaper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/LockScreenWallpaper;->mPm:Landroid/content/pm/PackageManager;

    .line 60
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 61
    .local v2, pickWallpaper:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/OriginalSettings/LockScreenWallpaper;->mPm:Landroid/content/pm/PackageManager;

    const/high16 v4, 0x1

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/LockScreenWallpaper;->rList:Ljava/util/List;

    .line 64
    new-instance v1, Lcom/android/OriginalSettings/LockScreenWallpaper$AlphaComparator;

    invoke-direct {v1, p0}, Lcom/android/OriginalSettings/LockScreenWallpaper$AlphaComparator;-><init>(Lcom/android/OriginalSettings/LockScreenWallpaper;)V

    .line 65
    .local v1, mAlphaComparator:Lcom/android/OriginalSettings/LockScreenWallpaper$AlphaComparator;
    iget-object v3, p0, Lcom/android/OriginalSettings/LockScreenWallpaper;->rList:Ljava/util/List;

    invoke-static {v3, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 67
    iget-object v0, p0, Lcom/android/OriginalSettings/LockScreenWallpaper;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 69
    .local v0, ap:Lcom/android/internal/app/AlertController$AlertParams;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockScreenWallpaper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b06e7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 70
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 71
    new-instance v3, Lcom/android/OriginalSettings/LockScreenWallpaper$WallpaperAdapter;

    invoke-direct {v3, p0}, Lcom/android/OriginalSettings/LockScreenWallpaper$WallpaperAdapter;-><init>(Lcom/android/OriginalSettings/LockScreenWallpaper;)V

    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 73
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockScreenWallpaper;->setupAlert()V

    .line 74
    return-void
.end method
