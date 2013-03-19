.class public Lcom/android/settings/LockScreenWallpaper;
.super Lcom/android/internal/app/AlertActivity;
.source "LockScreenWallpaper.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/LockScreenWallpaper$AlphaComparator;,
        Lcom/android/settings/LockScreenWallpaper$ItemLongClickListener;,
        Lcom/android/settings/LockScreenWallpaper$ViewHolder;,
        Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;
    }
.end annotation


# instance fields
.field private ItemName:[Ljava/lang/String;

.field private isTypeBoth:Z

.field private mAdapter:Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;

.field private mDirectWallpaper:Z

.field private mGrid:Landroid/widget/GridView;

.field private mIconSize:I

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
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 58
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/LockScreenWallpaper;->ItemName:[Ljava/lang/String;

    .line 59
    iput-boolean v1, p0, Lcom/android/settings/LockScreenWallpaper;->isTypeBoth:Z

    .line 65
    iput-boolean v1, p0, Lcom/android/settings/LockScreenWallpaper;->mDirectWallpaper:Z

    .line 272
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/LockScreenWallpaper;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/LockScreenWallpaper;->rList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/LockScreenWallpaper;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/android/settings/LockScreenWallpaper;->isTypeBoth:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/LockScreenWallpaper;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/LockScreenWallpaper;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/LockScreenWallpaper;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/android/settings/LockScreenWallpaper;->mIconSize:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/LockScreenWallpaper;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/LockScreenWallpaper;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/LockScreenWallpaper;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/LockScreenWallpaper;->ItemName:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 70
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Lcom/android/settings/LockScreenWallpaper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    iput-object v4, p0, Lcom/android/settings/LockScreenWallpaper;->mInflater:Landroid/view/LayoutInflater;

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/LockScreenWallpaper;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "direct_wallpaper"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/LockScreenWallpaper;->mDirectWallpaper:Z

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/LockScreenWallpaper;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/LockScreenWallpaper;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "both"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v7, :cond_0

    iget-boolean v4, p0, Lcom/android/settings/LockScreenWallpaper;->mDirectWallpaper:Z

    if-eqz v4, :cond_1

    .line 80
    :cond_0
    iput-boolean v7, p0, Lcom/android/settings/LockScreenWallpaper;->isTypeBoth:Z

    .line 82
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/LockScreenWallpaper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/LockScreenWallpaper;->mPm:Landroid/content/pm/PackageManager;

    .line 84
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 85
    .local v3, pickWallpaper:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/settings/LockScreenWallpaper;->mPm:Landroid/content/pm/PackageManager;

    const/high16 v5, 0x1

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/LockScreenWallpaper;->rList:Ljava/util/List;

    .line 88
    new-instance v2, Lcom/android/settings/LockScreenWallpaper$AlphaComparator;

    invoke-direct {v2, p0}, Lcom/android/settings/LockScreenWallpaper$AlphaComparator;-><init>(Lcom/android/settings/LockScreenWallpaper;)V

    .line 89
    .local v2, mAlphaComparator:Lcom/android/settings/LockScreenWallpaper$AlphaComparator;
    iget-object v4, p0, Lcom/android/settings/LockScreenWallpaper;->rList:Ljava/util/List;

    invoke-static {v4, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 91
    const-string v4, "activity"

    invoke-virtual {p0, v4}, Lcom/android/settings/LockScreenWallpaper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 92
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result v4

    iput v4, p0, Lcom/android/settings/LockScreenWallpaper;->mIconSize:I

    .line 94
    iget-object v1, p0, Lcom/android/settings/LockScreenWallpaper;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 96
    .local v1, ap:Lcom/android/internal/app/AlertController$AlertParams;
    invoke-virtual {p0}, Lcom/android/settings/LockScreenWallpaper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0908c3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/LockScreenWallpaper;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x109012b

    invoke-virtual {v4, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 98
    iget-object v4, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v5, 0x10203ee

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/GridView;

    iput-object v4, p0, Lcom/android/settings/LockScreenWallpaper;->mGrid:Landroid/widget/GridView;

    .line 99
    new-instance v4, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;

    invoke-direct {v4, p0, p0}, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;-><init>(Lcom/android/settings/LockScreenWallpaper;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/LockScreenWallpaper;->mAdapter:Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;

    .line 100
    iget-object v4, p0, Lcom/android/settings/LockScreenWallpaper;->mGrid:Landroid/widget/GridView;

    iget-object v5, p0, Lcom/android/settings/LockScreenWallpaper;->mAdapter:Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 101
    iget-object v4, p0, Lcom/android/settings/LockScreenWallpaper;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v4, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 102
    iget-object v4, p0, Lcom/android/settings/LockScreenWallpaper;->mGrid:Landroid/widget/GridView;

    new-instance v5, Lcom/android/settings/LockScreenWallpaper$ItemLongClickListener;

    invoke-direct {v5, p0}, Lcom/android/settings/LockScreenWallpaper$ItemLongClickListener;-><init>(Lcom/android/settings/LockScreenWallpaper;)V

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/LockScreenWallpaper;->resizeGrid()V

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/LockScreenWallpaper;->setupAlert()V

    .line 106
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x1

    .line 110
    const-string v3, "com.sec.android.gallery3d"

    iget-object v4, p0, Lcom/android/settings/LockScreenWallpaper;->ItemName:[Ljava/lang/String;

    aget-object v4, v4, p3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 111
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 112
    .local v0, intent:Landroid/content/Intent;
    iget-boolean v3, p0, Lcom/android/settings/LockScreenWallpaper;->isTypeBoth:Z

    if-eqz v3, :cond_0

    .line 113
    const-string v3, "com.sec.android.gallery3d"

    const-string v4, "com.sec.android.gallery3d.app.BothScreen"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/LockScreenWallpaper;->startActivity(Landroid/content/Intent;)V

    .line 133
    .end local v0           #intent:Landroid/content/Intent;
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/LockScreenWallpaper;->finish()V

    .line 134
    return-void

    .line 115
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_0
    const-string v3, "com.sec.android.gallery3d"

    const-string v4, "com.sec.android.gallery3d.app.LockScreen"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 117
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    const-string v3, "com.android.wallpaper.livepicker"

    iget-object v4, p0, Lcom/android/settings/LockScreenWallpaper;->ItemName:[Ljava/lang/String;

    aget-object v4, v4, p3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 118
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 119
    .local v2, intentLiveWallpaperChooser:Landroid/content/Intent;
    const-string v3, "SET_LOCKSCREEN_WALLPAPER"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 120
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.android.wallpaper.livepicker"

    const-string v5, "com.android.wallpaper.livepicker.LiveWallpaperActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 122
    invoke-virtual {p0, v2}, Lcom/android/settings/LockScreenWallpaper;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 124
    .end local v2           #intentLiveWallpaperChooser:Landroid/content/Intent;
    :cond_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 125
    .local v1, intentCallWallpaperChooser:Landroid/content/Intent;
    iget-boolean v3, p0, Lcom/android/settings/LockScreenWallpaper;->isTypeBoth:Z

    if-eqz v3, :cond_3

    .line 126
    const-string v3, "SET_WALLPAPER_MODE"

    const/4 v4, 0x2

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 129
    :goto_2
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.sec.android.app.wallpaperchooser"

    const-string v5, "com.sec.android.app.wallpaperchooser.WallpaperChooser"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 131
    invoke-virtual {p0, v1}, Lcom/android/settings/LockScreenWallpaper;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 128
    :cond_3
    const-string v3, "SET_WALLPAPER_MODE"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2
.end method

.method resizeGrid()V
    .locals 4

    .prologue
    .line 248
    iget-object v2, p0, Lcom/android/settings/LockScreenWallpaper;->mAdapter:Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;

    invoke-virtual {v2}, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->getCount()I

    move-result v0

    .line 249
    .local v0, itemCount:I
    invoke-virtual {p0}, Lcom/android/settings/LockScreenWallpaper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0035

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 250
    .local v1, maxColumns:I
    iget-object v2, p0, Lcom/android/settings/LockScreenWallpaper;->mGrid:Landroid/widget/GridView;

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 251
    return-void
.end method

.method showAppDetails(Landroid/content/pm/ResolveInfo;)V
    .locals 5
    .parameter "ri"

    .prologue
    .line 262
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "package"

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 264
    .local v0, in:Landroid/content/Intent;
    const/high16 v1, 0x1080

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 265
    invoke-virtual {p0, v0}, Lcom/android/settings/LockScreenWallpaper;->startActivity(Landroid/content/Intent;)V

    .line 266
    return-void
.end method
