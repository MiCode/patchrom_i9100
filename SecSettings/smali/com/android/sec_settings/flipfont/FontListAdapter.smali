.class public Lcom/android/sec_settings/flipfont/FontListAdapter;
.super Landroid/widget/BaseAdapter;
.source "FontListAdapter.java"


# instance fields
.field context:Landroid/content/Context;

.field private droidSansFont:Landroid/graphics/Typeface;

.field public mFontAssetManager:Landroid/content/res/AssetManager;

.field public mFontNames:Ljava/util/Vector;

.field public mFontPackageNames:Ljava/util/Vector;

.field mInflater:Landroid/view/LayoutInflater;

.field public mInstalledApplications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mPackageManager:Landroid/content/pm/PackageManager;

.field public mTypefaceFiles:Ljava/util/Vector;

.field public mTypefaceFinder:Lcom/android/sec_settings/flipfont/TypefaceFinder;

.field private mTypefaces:Ljava/util/Vector;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    .line 123
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 48
    iput-object v7, p0, Lcom/android/sec_settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    .line 51
    iput-object v7, p0, Lcom/android/sec_settings/flipfont/FontListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 54
    iput-object v7, p0, Lcom/android/sec_settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 57
    iput-object v7, p0, Lcom/android/sec_settings/flipfont/FontListAdapter;->mFontAssetManager:Landroid/content/res/AssetManager;

    .line 60
    new-instance v6, Lcom/android/sec_settings/flipfont/TypefaceFinder;

    invoke-direct {v6}, Lcom/android/sec_settings/flipfont/TypefaceFinder;-><init>()V

    iput-object v6, p0, Lcom/android/sec_settings/flipfont/FontListAdapter;->mTypefaceFinder:Lcom/android/sec_settings/flipfont/TypefaceFinder;

    .line 63
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    iput-object v6, p0, Lcom/android/sec_settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    .line 66
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    iput-object v6, p0, Lcom/android/sec_settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    .line 69
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    iput-object v6, p0, Lcom/android/sec_settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    .line 72
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    iput-object v6, p0, Lcom/android/sec_settings/flipfont/FontListAdapter;->mTypefaces:Ljava/util/Vector;

    .line 87
    iput-object v7, p0, Lcom/android/sec_settings/flipfont/FontListAdapter;->droidSansFont:Landroid/graphics/Typeface;

    .line 124
    iput-object p1, p0, Lcom/android/sec_settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    .line 125
    iget-object v6, p0, Lcom/android/sec_settings/flipfont/FontListAdapter;->mTypefaceFinder:Lcom/android/sec_settings/flipfont/TypefaceFinder;

    iput-object p1, v6, Lcom/android/sec_settings/flipfont/TypefaceFinder;->context:Landroid/content/Context;

    .line 126
    const-string v6, "layout_inflater"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    iput-object v6, p0, Lcom/android/sec_settings/flipfont/FontListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 127
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iput-object v6, p0, Lcom/android/sec_settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 129
    :try_start_0
    iget-object v6, p0, Lcom/android/sec_settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v7, 0x80

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/android/sec_settings/flipfont/FontListAdapter;->mInstalledApplications:Ljava/util/List;

    .line 132
    const/4 v3, 0x0

    .line 133
    .local v3, fontPackageName:Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    iget-object v6, p0, Lcom/android/sec_settings/flipfont/FontListAdapter;->mInstalledApplications:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_1

    .line 134
    iget-object v6, p0, Lcom/android/sec_settings/flipfont/FontListAdapter;->mInstalledApplications:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ApplicationInfo;

    iget-object v3, v6, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 135
    const-string v6, "com.monotype.android.font."

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 136
    iget-object v6, p0, Lcom/android/sec_settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v7, 0x80

    invoke-virtual {v6, v3, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 137
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v6, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 138
    iget-object v6, p0, Lcom/android/sec_settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v5

    .line 140
    .local v5, res:Landroid/content/res/Resources;
    invoke-virtual {v5}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    iput-object v6, p0, Lcom/android/sec_settings/flipfont/FontListAdapter;->mFontAssetManager:Landroid/content/res/AssetManager;

    .line 141
    iget-object v6, p0, Lcom/android/sec_settings/flipfont/FontListAdapter;->mTypefaceFinder:Lcom/android/sec_settings/flipfont/TypefaceFinder;

    iget-object v7, p0, Lcom/android/sec_settings/flipfont/FontListAdapter;->mFontAssetManager:Landroid/content/res/AssetManager;

    invoke-virtual {v6, v7, v3}, Lcom/android/sec_settings/flipfont/TypefaceFinder;->findTypefaces(Landroid/content/res/AssetManager;Ljava/lang/String;)Z

    .line 133
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v5           #res:Landroid/content/res/Resources;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 144
    :cond_1
    iget-object v6, p0, Lcom/android/sec_settings/flipfont/FontListAdapter;->mTypefaceFinder:Lcom/android/sec_settings/flipfont/TypefaceFinder;

    iget-object v7, p0, Lcom/android/sec_settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v8, p0, Lcom/android/sec_settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    iget-object v9, p0, Lcom/android/sec_settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    iget-object v10, p0, Lcom/android/sec_settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/android/sec_settings/flipfont/TypefaceFinder;->getSansEntries(Landroid/content/pm/PackageManager;Ljava/util/Vector;Ljava/util/Vector;Ljava/util/Vector;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    .end local v3           #fontPackageName:Ljava/lang/String;
    .end local v4           #i:I
    :goto_1
    new-instance v2, Ljava/io/File;

    const-string v6, "/system/fonts/UIFont.ttf"

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 152
    .local v2, f:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 153
    const-string v6, "/system/fonts/UIFont.ttf"

    invoke-static {v6}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    iput-object v6, p0, Lcom/android/sec_settings/flipfont/FontListAdapter;->droidSansFont:Landroid/graphics/Typeface;

    .line 158
    :goto_2
    return-void

    .line 146
    .end local v2           #f:Ljava/io/File;
    :catch_0
    move-exception v1

    .line 148
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "FontListAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "font package not found, just use default font, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 156
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #f:Ljava/io/File;
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    const-string v7, "fonts/DroidSans.ttf"

    invoke-static {v6, v7}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    iput-object v6, p0, Lcom/android/sec_settings/flipfont/FontListAdapter;->droidSansFont:Landroid/graphics/Typeface;

    goto :goto_2
.end method

.method private getFont(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 9
    .parameter "typeface"
    .parameter "fontPackageName"

    .prologue
    .line 296
    const/16 v6, 0x2f

    invoke-virtual {p1, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    .line 297
    .local v5, start_pos:I
    const/16 v6, 0x2e

    invoke-virtual {p1, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 298
    .local v2, end_pos:I
    if-gez v2, :cond_0

    .line 299
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 301
    :cond_0
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {p1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 302
    .local v3, loadTypeface:Ljava/lang/String;
    const-string v6, " "

    const-string v7, ""

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 304
    :try_start_0
    iget-object v6, p0, Lcom/android/sec_settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v7, 0x80

    invoke-virtual {v6, p2, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 305
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v6, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 306
    iget-object v6, p0, Lcom/android/sec_settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v4

    .line 308
    .local v4, res:Landroid/content/res/Resources;
    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    iput-object v6, p0, Lcom/android/sec_settings/flipfont/FontListAdapter;->mFontAssetManager:Landroid/content/res/AssetManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v4           #res:Landroid/content/res/Resources;
    :goto_0
    iget-object v6, p0, Lcom/android/sec_settings/flipfont/FontListAdapter;->mFontAssetManager:Landroid/content/res/AssetManager;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fonts/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".ttf"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    return-object v6

    .line 309
    :catch_0
    move-exception v1

    .line 311
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "FontListAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "font package not found, just use default font, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setFont(ILandroid/widget/TextView;)V
    .locals 2
    .parameter "position"
    .parameter "textView"

    .prologue
    .line 266
    iget-object v1, p0, Lcom/android/sec_settings/flipfont/FontListAdapter;->mTypefaces:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    .line 267
    .local v0, fontTypeface:Landroid/graphics/Typeface;
    if-eqz v0, :cond_0

    .line 268
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 270
    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/sec_settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getFontName(I)Ljava/lang/String;
    .locals 5
    .parameter "position"

    .prologue
    const v4, 0x7f090890

    const v3, 0x7f09088f

    const v2, 0x7f09088e

    .line 189
    iget-object v1, p0, Lcom/android/sec_settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 190
    .local v0, tmpString:Ljava/lang/String;
    const-string v1, "Cool"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 191
    iget-object v1, p0, Lcom/android/sec_settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0           #tmpString:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 225
    .restart local v0       #tmpString:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 192
    :cond_1
    const-string v1, "Rose"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 193
    iget-object v1, p0, Lcom/android/sec_settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0           #tmpString:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0       #tmpString:Ljava/lang/String;
    goto :goto_0

    .line 194
    :cond_2
    const-string v1, "Choco"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 195
    iget-object v1, p0, Lcom/android/sec_settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0           #tmpString:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0       #tmpString:Ljava/lang/String;
    goto :goto_0

    .line 197
    :cond_3
    const-string v1, "Rosemary"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 198
    iget-object v1, p0, Lcom/android/sec_settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0           #tmpString:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0       #tmpString:Ljava/lang/String;
    goto :goto_0

    .line 199
    :cond_4
    const-string v1, "Choco cooky"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 200
    iget-object v1, p0, Lcom/android/sec_settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0           #tmpString:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0       #tmpString:Ljava/lang/String;
    goto :goto_0

    .line 202
    :cond_5
    const-string v1, "Cool jazz"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 203
    iget-object v1, p0, Lcom/android/sec_settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0           #tmpString:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0       #tmpString:Ljava/lang/String;
    goto :goto_0

    .line 204
    :cond_6
    const-string v1, "Apple mint"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 205
    iget-object v1, p0, Lcom/android/sec_settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090891

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0           #tmpString:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0       #tmpString:Ljava/lang/String;
    goto/16 :goto_0

    .line 207
    :cond_7
    const-string v1, "Tinker bell"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 208
    iget-object v1, p0, Lcom/android/sec_settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090892

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0           #tmpString:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0       #tmpString:Ljava/lang/String;
    goto/16 :goto_0

    .line 210
    :cond_8
    const-string v1, "Shao Nv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 211
    iget-object v1, p0, Lcom/android/sec_settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090c9d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0           #tmpString:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0       #tmpString:Ljava/lang/String;
    goto/16 :goto_0

    .line 213
    :cond_9
    const-string v1, "Kaiti"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 214
    iget-object v1, p0, Lcom/android/sec_settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090c9e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0           #tmpString:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0       #tmpString:Ljava/lang/String;
    goto/16 :goto_0

    .line 216
    :cond_a
    const-string v1, "Miao"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 217
    iget-object v1, p0, Lcom/android/sec_settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090c9f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0           #tmpString:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0       #tmpString:Ljava/lang/String;
    goto/16 :goto_0

    .line 219
    :cond_b
    const-string v1, "Maruberi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 220
    iget-object v1, p0, Lcom/android/sec_settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090893

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0           #tmpString:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0       #tmpString:Ljava/lang/String;
    goto/16 :goto_0

    .line 222
    :cond_c
    const-string v1, "Mincho"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    iget-object v1, p0, Lcom/android/sec_settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090894

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0           #tmpString:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0       #tmpString:Ljava/lang/String;
    goto/16 :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/sec_settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 180
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 242
    iget-object v5, p0, Lcom/android/sec_settings/flipfont/FontListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f0400f3

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 243
    const v5, 0x1020014

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 245
    .local v3, v:Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/android/sec_settings/flipfont/FontListAdapter;->getFontName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    invoke-direct {p0, p1, v3}, Lcom/android/sec_settings/flipfont/FontListAdapter;->setFont(ILandroid/widget/TextView;)V

    .line 248
    const/high16 v5, 0x41a0

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 250
    iget-object v5, p0, Lcom/android/sec_settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    const-string v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    .line 251
    .local v4, wm:Landroid/view/WindowManager;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 252
    .local v1, metrics:Landroid/util/DisplayMetrics;
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 253
    iget v0, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 255
    .local v0, density:I
    const/high16 v5, 0x4282

    int-to-float v6, v0

    const/high16 v7, 0x4320

    div-float/2addr v6, v7

    mul-float/2addr v5, v6

    float-to-int v2, v5

    .line 256
    .local v2, pixelHeight:I
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setHeight(I)V

    .line 258
    return-object v3
.end method

.method public loadTypefaces()V
    .locals 6

    .prologue
    .line 276
    const/4 v1, 0x0

    .line 277
    .local v1, fontfile:Ljava/lang/String;
    const/4 v0, 0x0

    .line 278
    .local v0, fontPackageName:Ljava/lang/String;
    const/4 v3, 0x0

    .line 279
    .local v3, newTypeface:Landroid/graphics/Typeface;
    iget-object v4, p0, Lcom/android/sec_settings/flipfont/FontListAdapter;->mTypefaces:Ljava/util/Vector;

    iget-object v5, p0, Lcom/android/sec_settings/flipfont/FontListAdapter;->droidSansFont:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 280
    const/4 v2, 0x1

    .line 281
    .local v2, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/sec_settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 282
    iget-object v4, p0, Lcom/android/sec_settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 283
    iget-object v4, p0, Lcom/android/sec_settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 284
    invoke-direct {p0, v1, v0}, Lcom/android/sec_settings/flipfont/FontListAdapter;->getFont(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    .line 285
    iget-object v4, p0, Lcom/android/sec_settings/flipfont/FontListAdapter;->mTypefaces:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 286
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 288
    :cond_0
    return-void
.end method
