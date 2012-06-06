.class public Lcom/android/OriginalSettings/flipfont/FontListAdapter;
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

.field public mTypefaceFinder:Lcom/android/OriginalSettings/flipfont/TypefaceFinder;

.field private mTypefaces:Ljava/util/Vector;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 114
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 48
    iput-object v6, p0, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    .line 51
    iput-object v6, p0, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 54
    iput-object v6, p0, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 57
    iput-object v6, p0, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->mFontAssetManager:Landroid/content/res/AssetManager;

    .line 60
    new-instance v5, Lcom/android/OriginalSettings/flipfont/TypefaceFinder;

    invoke-direct {v5}, Lcom/android/OriginalSettings/flipfont/TypefaceFinder;-><init>()V

    iput-object v5, p0, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->mTypefaceFinder:Lcom/android/OriginalSettings/flipfont/TypefaceFinder;

    .line 63
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    iput-object v5, p0, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    .line 66
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    iput-object v5, p0, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    .line 69
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    iput-object v5, p0, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    .line 72
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    iput-object v5, p0, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->mTypefaces:Ljava/util/Vector;

    .line 87
    iput-object v6, p0, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->droidSansFont:Landroid/graphics/Typeface;

    .line 115
    iput-object p1, p0, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    .line 116
    iget-object v5, p0, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->mTypefaceFinder:Lcom/android/OriginalSettings/flipfont/TypefaceFinder;

    iput-object p1, v5, Lcom/android/OriginalSettings/flipfont/TypefaceFinder;->context:Landroid/content/Context;

    .line 117
    const-string v5, "layout_inflater"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    iput-object v5, p0, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 120
    :try_start_0
    iget-object v5, p0, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v6, 0x80

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->mInstalledApplications:Ljava/util/List;

    .line 123
    const/4 v2, 0x0

    .line 124
    .local v2, fontPackageName:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v5, p0, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->mInstalledApplications:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 125
    iget-object v5, p0, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->mInstalledApplications:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    iget-object v2, v5, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 126
    const-string v5, "com.monotype.android.font."

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 127
    iget-object v5, p0, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4

    .line 128
    .local v4, res:Landroid/content/res/Resources;
    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->mFontAssetManager:Landroid/content/res/AssetManager;

    .line 129
    iget-object v5, p0, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->mTypefaceFinder:Lcom/android/OriginalSettings/flipfont/TypefaceFinder;

    iget-object v6, p0, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->mFontAssetManager:Landroid/content/res/AssetManager;

    invoke-virtual {v5, v6, v2}, Lcom/android/OriginalSettings/flipfont/TypefaceFinder;->findTypefaces(Landroid/content/res/AssetManager;Ljava/lang/String;)Z

    .line 124
    .end local v4           #res:Landroid/content/res/Resources;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 132
    :cond_1
    iget-object v5, p0, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->mTypefaceFinder:Lcom/android/OriginalSettings/flipfont/TypefaceFinder;

    iget-object v6, p0, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v7, p0, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    iget-object v8, p0, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    iget-object v9, p0, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/OriginalSettings/flipfont/TypefaceFinder;->getSansEntries(Landroid/content/pm/PackageManager;Ljava/util/Vector;Ljava/util/Vector;Ljava/util/Vector;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .end local v2           #fontPackageName:Ljava/lang/String;
    .end local v3           #i:I
    :goto_1
    new-instance v1, Ljava/io/File;

    const-string v5, "/system/fonts/UIFont.ttf"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 140
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 141
    const-string v5, "/system/fonts/UIFont.ttf"

    invoke-static {v5}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    iput-object v5, p0, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->droidSansFont:Landroid/graphics/Typeface;

    .line 146
    :goto_2
    return-void

    .line 134
    .end local v1           #f:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 136
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "FontListAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "font package not found, just use default font, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 144
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #f:Ljava/io/File;
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string v6, "fonts/DroidSans.ttf"

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    iput-object v5, p0, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->droidSansFont:Landroid/graphics/Typeface;

    goto :goto_2
.end method

.method private getFont(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 8
    .parameter "typeface"
    .parameter "fontPackageName"

    .prologue
    .line 263
    const/16 v5, 0x2f

    invoke-virtual {p1, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 264
    .local v4, start_pos:I
    const/16 v5, 0x2e

    invoke-virtual {p1, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 265
    .local v1, end_pos:I
    if-gez v1, :cond_0

    .line 266
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 268
    :cond_0
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 269
    .local v2, loadTypeface:Ljava/lang/String;
    const-string v5, " "

    const-string v6, ""

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 271
    :try_start_0
    iget-object v5, p0, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    .line 272
    .local v3, res:Landroid/content/res/Resources;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->mFontAssetManager:Landroid/content/res/AssetManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    .end local v3           #res:Landroid/content/res/Resources;
    :goto_0
    iget-object v5, p0, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->mFontAssetManager:Landroid/content/res/AssetManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fonts/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".ttf"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    return-object v5

    .line 273
    :catch_0
    move-exception v0

    .line 275
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "FontListAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "font package not found, just use default font, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setFont(ILandroid/widget/TextView;)V
    .locals 2
    .parameter "position"
    .parameter "textView"

    .prologue
    .line 233
    iget-object v1, p0, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->mTypefaces:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    .line 234
    .local v0, fontTypeface:Landroid/graphics/Typeface;
    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 237
    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getFontName(I)Ljava/lang/String;
    .locals 5
    .parameter "position"

    .prologue
    const v4, 0x7f0b06bf

    const v3, 0x7f0b06be

    const v2, 0x7f0b06bd

    .line 177
    iget-object v1, p0, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 178
    .local v0, tmpString:Ljava/lang/String;
    const-string v1, "Cool"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 179
    iget-object v1, p0, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0           #tmpString:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 198
    .restart local v0       #tmpString:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 180
    :cond_1
    const-string v1, "Rose"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 181
    iget-object v1, p0, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0           #tmpString:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0       #tmpString:Ljava/lang/String;
    goto :goto_0

    .line 182
    :cond_2
    const-string v1, "Choco"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 183
    iget-object v1, p0, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0           #tmpString:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0       #tmpString:Ljava/lang/String;
    goto :goto_0

    .line 185
    :cond_3
    const-string v1, "Rosemary"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 186
    iget-object v1, p0, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0           #tmpString:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0       #tmpString:Ljava/lang/String;
    goto :goto_0

    .line 187
    :cond_4
    const-string v1, "Choco cooky"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 188
    iget-object v1, p0, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0           #tmpString:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0       #tmpString:Ljava/lang/String;
    goto :goto_0

    .line 190
    :cond_5
    const-string v1, "Cool jazz"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 191
    iget-object v1, p0, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0           #tmpString:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0       #tmpString:Ljava/lang/String;
    goto :goto_0

    .line 192
    :cond_6
    const-string v1, "Apple mint"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 193
    iget-object v1, p0, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b06c0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0           #tmpString:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0       #tmpString:Ljava/lang/String;
    goto/16 :goto_0

    .line 195
    :cond_7
    const-string v1, "Tinker bell"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    iget-object v1, p0, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b06c1

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
    .line 160
    iget-object v0, p0, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 168
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 208
    if-nez p2, :cond_0

    .line 209
    iget-object v5, p0, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x109000f

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 213
    .local v3, v:Landroid/widget/TextView;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->getFontName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    invoke-direct {p0, p1, v3}, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->setFont(ILandroid/widget/TextView;)V

    .line 215
    const/high16 v5, -0x100

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 216
    const/high16 v5, 0x41a0

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 218
    iget-object v5, p0, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    const-string v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    .line 219
    .local v4, wm:Landroid/view/WindowManager;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 220
    .local v1, metrics:Landroid/util/DisplayMetrics;
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 221
    iget v0, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 223
    .local v0, density:I
    const/high16 v5, 0x4282

    int-to-float v6, v0

    const/high16 v7, 0x4320

    div-float/2addr v6, v7

    mul-float/2addr v5, v6

    float-to-int v2, v5

    .line 224
    .local v2, pixelHeight:I
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setHeight(I)V

    .line 226
    return-object v3

    .end local v0           #density:I
    .end local v1           #metrics:Landroid/util/DisplayMetrics;
    .end local v2           #pixelHeight:I
    .end local v3           #v:Landroid/widget/TextView;
    .end local v4           #wm:Landroid/view/WindowManager;
    :cond_0
    move-object v3, p2

    .line 211
    check-cast v3, Landroid/widget/TextView;

    .restart local v3       #v:Landroid/widget/TextView;
    goto :goto_0
.end method

.method public loadTypefaces()V
    .locals 6

    .prologue
    .line 243
    const/4 v1, 0x0

    .line 244
    .local v1, fontfile:Ljava/lang/String;
    const/4 v0, 0x0

    .line 245
    .local v0, fontPackageName:Ljava/lang/String;
    const/4 v3, 0x0

    .line 246
    .local v3, newTypeface:Landroid/graphics/Typeface;
    iget-object v4, p0, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->mTypefaces:Ljava/util/Vector;

    iget-object v5, p0, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->droidSansFont:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 247
    const/4 v2, 0x1

    .line 248
    .local v2, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 249
    iget-object v4, p0, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 250
    iget-object v4, p0, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 251
    invoke-direct {p0, v1, v0}, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->getFont(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    .line 252
    iget-object v4, p0, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->mTypefaces:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 253
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 255
    :cond_0
    return-void
.end method
