.class public Lcom/android/OriginalSettings/LockScreenWallpaper$WallpaperAdapter;
.super Landroid/widget/BaseAdapter;
.source "LockScreenWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/LockScreenWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WallpaperAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/LockScreenWallpaper;


# direct methods
.method public constructor <init>(Lcom/android/OriginalSettings/LockScreenWallpaper;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/OriginalSettings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/OriginalSettings/LockScreenWallpaper;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x2

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 100
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 105
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 117
    if-nez p2, :cond_3

    .line 118
    iget-object v3, p0, Lcom/android/OriginalSettings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/OriginalSettings/LockScreenWallpaper;

    #getter for: Lcom/android/OriginalSettings/LockScreenWallpaper;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v3}, Lcom/android/OriginalSettings/LockScreenWallpaper;->access$000(Lcom/android/OriginalSettings/LockScreenWallpaper;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x1090082

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 122
    new-instance v1, Lcom/android/OriginalSettings/LockScreenWallpaper$ViewHolder;

    invoke-direct {v1}, Lcom/android/OriginalSettings/LockScreenWallpaper$ViewHolder;-><init>()V

    .line 123
    .local v1, holder:Lcom/android/OriginalSettings/LockScreenWallpaper$ViewHolder;
    const v3, 0x1020014

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/android/OriginalSettings/LockScreenWallpaper$ViewHolder;->text:Landroid/widget/TextView;

    .line 124
    const v3, 0x1020015

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/android/OriginalSettings/LockScreenWallpaper$ViewHolder;->text2:Landroid/widget/TextView;

    .line 125
    const v3, 0x1020006

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/android/OriginalSettings/LockScreenWallpaper$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 127
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 135
    :goto_0
    move v0, p1

    .line 136
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v3, p0, Lcom/android/OriginalSettings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/OriginalSettings/LockScreenWallpaper;

    #getter for: Lcom/android/OriginalSettings/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/OriginalSettings/LockScreenWallpaper;->access$100(Lcom/android/OriginalSettings/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 137
    const-string v4, "com.cooliris.media"

    iget-object v3, p0, Lcom/android/OriginalSettings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/OriginalSettings/LockScreenWallpaper;

    #getter for: Lcom/android/OriginalSettings/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/OriginalSettings/LockScreenWallpaper;->access$100(Lcom/android/OriginalSettings/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v4, "com.sec.android.app.twwallpaperchooser"

    iget-object v3, p0, Lcom/android/OriginalSettings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/OriginalSettings/LockScreenWallpaper;

    #getter for: Lcom/android/OriginalSettings/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/OriginalSettings/LockScreenWallpaper;->access$100(Lcom/android/OriginalSettings/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 139
    :cond_0
    if-nez v0, :cond_1

    .line 140
    iget-object v4, v1, Lcom/android/OriginalSettings/LockScreenWallpaper$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/OriginalSettings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/OriginalSettings/LockScreenWallpaper;

    #getter for: Lcom/android/OriginalSettings/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/OriginalSettings/LockScreenWallpaper;->access$100(Lcom/android/OriginalSettings/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v5, p0, Lcom/android/OriginalSettings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/OriginalSettings/LockScreenWallpaper;

    #getter for: Lcom/android/OriginalSettings/LockScreenWallpaper;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v5}, Lcom/android/OriginalSettings/LockScreenWallpaper;->access$200(Lcom/android/OriginalSettings/LockScreenWallpaper;)Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v3, v1, Lcom/android/OriginalSettings/LockScreenWallpaper$ViewHolder;->text2:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 142
    iget-object v4, v1, Lcom/android/OriginalSettings/LockScreenWallpaper$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/OriginalSettings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/OriginalSettings/LockScreenWallpaper;

    #getter for: Lcom/android/OriginalSettings/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/OriginalSettings/LockScreenWallpaper;->access$100(Lcom/android/OriginalSettings/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v5, p0, Lcom/android/OriginalSettings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/OriginalSettings/LockScreenWallpaper;

    #getter for: Lcom/android/OriginalSettings/LockScreenWallpaper;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v5}, Lcom/android/OriginalSettings/LockScreenWallpaper;->access$200(Lcom/android/OriginalSettings/LockScreenWallpaper;)Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 143
    iget-object v3, p0, Lcom/android/OriginalSettings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/OriginalSettings/LockScreenWallpaper;

    #getter for: Lcom/android/OriginalSettings/LockScreenWallpaper;->ItemName:[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/OriginalSettings/LockScreenWallpaper;->access$300(Lcom/android/OriginalSettings/LockScreenWallpaper;)[Ljava/lang/String;

    move-result-object v4

    iget-object v3, p0, Lcom/android/OriginalSettings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/OriginalSettings/LockScreenWallpaper;

    #getter for: Lcom/android/OriginalSettings/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/OriginalSettings/LockScreenWallpaper;->access$100(Lcom/android/OriginalSettings/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    aput-object v3, v4, p1

    .line 145
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 136
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 131
    .end local v0           #count:I
    .end local v1           #holder:Lcom/android/OriginalSettings/LockScreenWallpaper$ViewHolder;
    .end local v2           #i:I
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/OriginalSettings/LockScreenWallpaper$ViewHolder;

    .restart local v1       #holder:Lcom/android/OriginalSettings/LockScreenWallpaper$ViewHolder;
    goto/16 :goto_0

    .line 149
    .restart local v0       #count:I
    .restart local v2       #i:I
    :cond_4
    return-object p2
.end method
