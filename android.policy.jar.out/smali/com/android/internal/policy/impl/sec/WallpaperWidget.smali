.class public Lcom/android/internal/policy/impl/sec/WallpaperWidget;
.super Landroid/widget/FrameLayout;
.source "WallpaperWidget.java"


# instance fields
.field private final DBG:Z

.field private final PORTRAIT_WALLPAPER_IMAGE_PATH:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mEnhancedWallpaper:Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;

.field private mIsLiveWallpaper:Z

.field private mLockScreenWallpaperImage:Landroid/widget/ImageView;

.field private mSimID:I

.field private mWallpaperPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "context"
    .parameter "configuration"

    .prologue
    const/4 v3, -0x1

    const/4 v0, 0x1

    .line 39
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 22
    const-string v1, "WallpaperWidget"

    iput-object v1, p0, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->TAG:Ljava/lang/String;

    .line 23
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->DBG:Z

    .line 26
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    .line 29
    const-string v1, "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper.jpg"

    iput-object v1, p0, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->PORTRAIT_WALLPAPER_IMAGE_PATH:Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->mContext:Landroid/content/Context;

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_wallpaper"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->mIsLiveWallpaper:Z

    .line 45
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->mIsLiveWallpaper:Z

    if-eqz v0, :cond_1

    .line 61
    :goto_0
    return-void

    .line 49
    :cond_1
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    .line 50
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 52
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v3, v3}, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->addView(Landroid/view/View;II)V

    .line 55
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->enhancedLockScreen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 56
    invoke-static {}, Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;->getInstance()Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->mEnhancedWallpaper:Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;

    .line 57
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->setEnhancedLockScreenWallpaper()V

    goto :goto_0

    .line 59
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->setLockScreenWallpaper()V

    goto :goto_0
.end method

.method private setDefaultWallpaper()Landroid/graphics/drawable/BitmapDrawable;
    .locals 9

    .prologue
    const v8, 0x1080405

    .line 116
    new-instance v1, Ljava/io/File;

    const-string v7, "//system/wallpaper/lockscreen_default_wallpaper.jpg"

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 117
    .local v1, file:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v7, "//system/csc_contents/lockscreen_default_wallpaper.jpg"

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 118
    .local v2, fileMultiCSC:Ljava/io/File;
    new-instance v4, Ljava/io/File;

    const-string v7, "//system/wallpaper/lockscreen_default_wallpaper.png"

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 119
    .local v4, filePng:Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v7, "//system/csc_contents/lockscreen_default_wallpaper.png"

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 120
    .local v3, fileMultiCSCPng:Ljava/io/File;
    const/4 v5, 0x0

    .line 121
    .local v5, is:Ljava/io/InputStream;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 123
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    .end local v5           #is:Ljava/io/InputStream;
    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    .restart local v5       #is:Ljava/io/InputStream;
    :goto_0
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V

    .line 151
    .local v6, tempBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 155
    :goto_1
    return-object v6

    .line 124
    .end local v5           #is:Ljava/io/InputStream;
    .end local v6           #tempBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    :catch_0
    move-exception v0

    .line 125
    .local v0, e:Ljava/io/IOException;
    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    .line 126
    .restart local v5       #is:Ljava/io/InputStream;
    goto :goto_0

    .line 127
    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 129
    :try_start_2
    new-instance v5, Ljava/io/FileInputStream;

    .end local v5           #is:Ljava/io/InputStream;
    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .restart local v5       #is:Ljava/io/InputStream;
    goto :goto_0

    .line 130
    .end local v5           #is:Ljava/io/InputStream;
    :catch_1
    move-exception v0

    .line 131
    .restart local v0       #e:Ljava/io/IOException;
    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    .line 132
    .restart local v5       #is:Ljava/io/InputStream;
    goto :goto_0

    .line 133
    .end local v0           #e:Ljava/io/IOException;
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 135
    :try_start_3
    new-instance v5, Ljava/io/FileInputStream;

    .end local v5           #is:Ljava/io/InputStream;
    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .restart local v5       #is:Ljava/io/InputStream;
    goto :goto_0

    .line 136
    .end local v5           #is:Ljava/io/InputStream;
    :catch_2
    move-exception v0

    .line 137
    .restart local v0       #e:Ljava/io/IOException;
    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    .line 138
    .restart local v5       #is:Ljava/io/InputStream;
    goto :goto_0

    .line 139
    .end local v0           #e:Ljava/io/IOException;
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 141
    :try_start_4
    new-instance v5, Ljava/io/FileInputStream;

    .end local v5           #is:Ljava/io/InputStream;
    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .restart local v5       #is:Ljava/io/InputStream;
    goto :goto_0

    .line 142
    .end local v5           #is:Ljava/io/InputStream;
    :catch_3
    move-exception v0

    .line 143
    .restart local v0       #e:Ljava/io/IOException;
    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    .line 144
    .restart local v5       #is:Ljava/io/InputStream;
    goto :goto_0

    .line 146
    .end local v0           #e:Ljava/io/IOException;
    :cond_3
    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    goto :goto_0

    .line 152
    .restart local v6       #tempBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    :catch_4
    move-exception v0

    .line 153
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private setEnhancedLockScreenWallpaper()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->mEnhancedWallpaper:Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;->getLockscreenBackground()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->mEnhancedWallpaper:Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;->getLockscreenBackground()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 73
    const-string v0, "WallpaperWidget"

    const-string v1, "Re-used Wallpaper bitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :goto_0
    return-void

    .line 75
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->setLockScreenWallpaper()V

    .line 76
    const-string v0, "WallpaperWidget"

    const-string v1, "Created Wallpaper bitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setLockScreenWallpaper()V
    .locals 6

    .prologue
    .line 83
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lockscreen_wallpaper_path"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->mWallpaperPath:Ljava/lang/String;

    .line 85
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->mWallpaperPath:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 86
    const-string v4, "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper.jpg"

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->mWallpaperPath:Ljava/lang/String;

    .line 89
    :cond_0
    invoke-static {}, Lcom/android/internal/policy/impl/sec/MultiSimUtils;->isMultiSIMDevice()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 90
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/internal/policy/impl/sec/MultiSimUtils;->getCurrentWallpaper(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->mWallpaperPath:Ljava/lang/String;

    .line 93
    :cond_1
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->mWallpaperPath:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 94
    .local v1, file:Ljava/io/File;
    const/4 v2, 0x0

    .line 96
    .local v2, tempBitmap:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 98
    :try_start_0
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->mWallpaperPath:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .end local v2           #tempBitmap:Landroid/graphics/drawable/BitmapDrawable;
    .local v3, tempBitmap:Landroid/graphics/drawable/BitmapDrawable;
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    .line 109
    .end local v3           #tempBitmap:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v2       #tempBitmap:Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->enhancedLockScreen()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 110
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->mEnhancedWallpaper:Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;

    invoke-virtual {v4, v2}, Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;->setLockscreenBackground(Landroid/graphics/drawable/BitmapDrawable;)V

    .line 112
    :cond_2
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, ex:Ljava/lang/Exception;
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->setDefaultWallpaper()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    .line 102
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 105
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->setDefaultWallpaper()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    .line 106
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 100
    .end local v2           #tempBitmap:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v3       #tempBitmap:Landroid/graphics/drawable/BitmapDrawable;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3           #tempBitmap:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v2       #tempBitmap:Landroid/graphics/drawable/BitmapDrawable;
    goto :goto_1
.end method


# virtual methods
.method public changeWallpaperBySimId(I)V
    .locals 0
    .parameter "simId"

    .prologue
    .line 161
    iput p1, p0, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->mSimID:I

    .line 162
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->setLockScreenWallpaper()V

    .line 163
    return-void
.end method

.method public cleanUp()V
    .locals 2

    .prologue
    .line 66
    const-string v0, "WallpaperWidget"

    const-string v1, "cleanUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 68
    return-void
.end method
