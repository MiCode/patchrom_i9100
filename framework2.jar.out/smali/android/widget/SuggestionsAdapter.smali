.class Landroid/widget/SuggestionsAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "SuggestionsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SuggestionsAdapter$ChildViewCache;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DELETE_KEY_POST_DELAY:J = 0x1f4L

.field static final INVALID_INDEX:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "SuggestionsAdapter"

.field private static final QUERY_LIMIT:I = 0x32

.field static final REFINE_ALL:I = 0x2

.field static final REFINE_BY_ENTRY:I = 0x1

.field static final REFINE_NONE:I


# instance fields
.field private mClosed:Z

.field private mFlagsCol:I

.field private mIconName1Col:I

.field private mIconName2Col:I

.field private mOutsideDrawablesCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private mProviderContext:Landroid/content/Context;

.field private mQueryRefinement:I

.field private mSearchManager:Landroid/app/SearchManager;

.field private mSearchView:Landroid/widget/SearchView;

.field private mSearchable:Landroid/app/SearchableInfo;

.field private mText1Col:I

.field private mText2Col:I

.field private mText2UrlCol:I

.field private mUrlColor:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/SearchView;Landroid/app/SearchableInfo;Ljava/util/WeakHashMap;)V
    .locals 7
    .parameter "context"
    .parameter "searchView"
    .parameter "searchable"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/widget/SearchView;",
            "Landroid/app/SearchableInfo;",
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, outsideDrawablesCache:Ljava/util/WeakHashMap;,"Ljava/util/WeakHashMap<Ljava/lang/String;Landroid/graphics/drawable/Drawable$ConstantState;>;"
    const v6, 0x109012c

    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 103
    const v2, 0x10900de

    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v3, v5}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V

    .line 75
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/SuggestionsAdapter;->mClosed:Z

    .line 76
    iput v5, p0, Landroid/widget/SuggestionsAdapter;->mQueryRefinement:I

    .line 84
    iput v4, p0, Landroid/widget/SuggestionsAdapter;->mText1Col:I

    .line 85
    iput v4, p0, Landroid/widget/SuggestionsAdapter;->mText2Col:I

    .line 86
    iput v4, p0, Landroid/widget/SuggestionsAdapter;->mText2UrlCol:I

    .line 87
    iput v4, p0, Landroid/widget/SuggestionsAdapter;->mIconName1Col:I

    .line 88
    iput v4, p0, Landroid/widget/SuggestionsAdapter;->mIconName2Col:I

    .line 89
    iput v4, p0, Landroid/widget/SuggestionsAdapter;->mFlagsCol:I

    .line 107
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 108
    .local v1, outValue:Landroid/util/TypedValue;
    iget-object v2, p0, Landroid/widget/CursorAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x10103fd

    invoke-virtual {v2, v3, v1, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 109
    iget v2, v1, Landroid/util/TypedValue;->data:I

    if-eqz v2, :cond_0

    .line 111
    invoke-super {p0, v6}, Landroid/widget/ResourceCursorAdapter;->setViewResource(I)V

    .line 112
    invoke-super {p0, v6}, Landroid/widget/ResourceCursorAdapter;->setDropDownViewResource(I)V

    .line 114
    :cond_0
    iget-object v2, p0, Landroid/widget/CursorAdapter;->mContext:Landroid/content/Context;

    const-string v3, "search"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/SearchManager;

    iput-object v2, p0, Landroid/widget/SuggestionsAdapter;->mSearchManager:Landroid/app/SearchManager;

    .line 115
    iput-object p2, p0, Landroid/widget/SuggestionsAdapter;->mSearchView:Landroid/widget/SearchView;

    .line 116
    iput-object p3, p0, Landroid/widget/SuggestionsAdapter;->mSearchable:Landroid/app/SearchableInfo;

    .line 118
    iget-object v2, p0, Landroid/widget/SuggestionsAdapter;->mSearchable:Landroid/app/SearchableInfo;

    iget-object v3, p0, Landroid/widget/CursorAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/app/SearchableInfo;->getActivityContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 119
    .local v0, activityContext:Landroid/content/Context;
    iget-object v2, p0, Landroid/widget/SuggestionsAdapter;->mSearchable:Landroid/app/SearchableInfo;

    iget-object v3, p0, Landroid/widget/CursorAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Landroid/app/SearchableInfo;->getProviderContext(Landroid/content/Context;Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/SuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    .line 121
    iput-object p4, p0, Landroid/widget/SuggestionsAdapter;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    .line 136
    invoke-virtual {p0}, Landroid/widget/SuggestionsAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v2

    new-instance v3, Landroid/widget/SuggestionsAdapter$1;

    invoke-direct {v3, p0}, Landroid/widget/SuggestionsAdapter$1;-><init>(Landroid/widget/SuggestionsAdapter;)V

    invoke-virtual {v2, v3}, Landroid/widget/Filter;->setDelayer(Landroid/widget/Filter$Delayer;)V

    .line 148
    return-void
.end method

.method private checkIconCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "resourceUri"

    .prologue
    .line 657
    iget-object v1, p0, Landroid/widget/SuggestionsAdapter;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 658
    .local v0, cached:Landroid/graphics/drawable/Drawable$ConstantState;
    if-nez v0, :cond_0

    .line 659
    const/4 v1, 0x0

    .line 662
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method private formatUrl(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 8
    .parameter "url"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 432
    iget-object v0, p0, Landroid/widget/SuggestionsAdapter;->mUrlColor:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    .line 434
    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    .line 435
    .local v6, colorValue:Landroid/util/TypedValue;
    iget-object v0, p0, Landroid/widget/CursorAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v3, 0x1010267

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v6, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 436
    iget-object v0, p0, Landroid/widget/CursorAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v3, v6, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SuggestionsAdapter;->mUrlColor:Landroid/content/res/ColorStateList;

    .line 439
    .end local v6           #colorValue:Landroid/util/TypedValue;
    :cond_0
    new-instance v7, Landroid/text/SpannableString;

    invoke-direct {v7, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 440
    .local v7, text:Landroid/text/SpannableString;
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    iget-object v4, p0, Landroid/widget/SuggestionsAdapter;->mUrlColor:Landroid/content/res/ColorStateList;

    move v3, v2

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/16 v3, 0x21

    invoke-virtual {v7, v0, v2, v1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 443
    return-object v7
.end method

.method private getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .locals 10
    .parameter "component"

    .prologue
    const/4 v6, 0x0

    .line 721
    iget-object v7, p0, Landroid/widget/CursorAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 724
    .local v5, pm:Landroid/content/pm/PackageManager;
    const/16 v7, 0x80

    :try_start_0
    invoke-virtual {v5, p1, v7}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 729
    .local v0, activityInfo:Landroid/content/pm/ActivityInfo;
    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v3

    .line 730
    .local v3, iconId:I
    if-nez v3, :cond_1

    move-object v1, v6

    .line 738
    .end local v0           #activityInfo:Landroid/content/pm/ActivityInfo;
    .end local v3           #iconId:I
    :cond_0
    :goto_0
    return-object v1

    .line 725
    :catch_0
    move-exception v2

    .line 726
    .local v2, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "SuggestionsAdapter"

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v6

    .line 727
    goto :goto_0

    .line 731
    .end local v2           #ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0       #activityInfo:Landroid/content/pm/ActivityInfo;
    .restart local v3       #iconId:I
    :cond_1
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 732
    .local v4, pkg:Ljava/lang/String;
    iget-object v7, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v4, v3, v7}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 733
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_0

    .line 734
    const-string v7, "SuggestionsAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid icon resource "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v6

    .line 736
    goto :goto_0
.end method

.method private getActivityIconWithCache(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter "component"

    .prologue
    const/4 v4, 0x0

    .line 699
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    .line 701
    .local v1, componentIconKey:Ljava/lang/String;
    iget-object v5, p0, Landroid/widget/SuggestionsAdapter;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    invoke-virtual {v5, v1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 702
    iget-object v5, p0, Landroid/widget/SuggestionsAdapter;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    invoke-virtual {v5, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 703
    .local v0, cached:Landroid/graphics/drawable/Drawable$ConstantState;
    if-nez v0, :cond_0

    .line 710
    .end local v0           #cached:Landroid/graphics/drawable/Drawable$ConstantState;
    :goto_0
    return-object v4

    .line 703
    .restart local v0       #cached:Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_0
    iget-object v4, p0, Landroid/widget/SuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_0

    .line 706
    .end local v0           #cached:Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_1
    invoke-direct {p0, p1}, Landroid/widget/SuggestionsAdapter;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 708
    .local v2, drawable:Landroid/graphics/drawable/Drawable;
    if-nez v2, :cond_2

    move-object v3, v4

    .line 709
    .local v3, toCache:Landroid/graphics/drawable/Drawable$ConstantState;
    :goto_1
    iget-object v4, p0, Landroid/widget/SuggestionsAdapter;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    invoke-virtual {v4, v1, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v2

    .line 710
    goto :goto_0

    .line 708
    .end local v3           #toCache:Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_2
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    goto :goto_1
.end method

.method public static getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "cursor"
    .parameter "columnName"

    .prologue
    .line 750
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 751
    .local v0, col:I
    invoke-static {p0, v0}, Landroid/widget/SuggestionsAdapter;->getStringOrNull(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getDefaultIcon1(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "cursor"

    .prologue
    .line 680
    iget-object v1, p0, Landroid/widget/SuggestionsAdapter;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/widget/SuggestionsAdapter;->getActivityIconWithCache(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 681
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 686
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    .restart local v0       #drawable:Landroid/graphics/drawable/Drawable;
    :cond_0
    iget-object v1, p0, Landroid/widget/CursorAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method private getDrawable(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    .locals 10
    .parameter "uri"

    .prologue
    const/4 v6, 0x0

    .line 623
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 624
    .local v3, scheme:Ljava/lang/String;
    const-string v5, "android.resource"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 626
    iget-object v5, p0, Landroid/widget/SuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/ContentResolver;->getResourceId(Landroid/net/Uri;)Landroid/content/ContentResolver$OpenResourceIdResult;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 629
    .local v2, r:Landroid/content/ContentResolver$OpenResourceIdResult;
    :try_start_1
    iget-object v5, v2, Landroid/content/ContentResolver$OpenResourceIdResult;->r:Landroid/content/res/Resources;

    iget v7, v2, Landroid/content/ContentResolver$OpenResourceIdResult;->id:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .line 652
    .end local v2           #r:Landroid/content/ContentResolver$OpenResourceIdResult;
    .end local v3           #scheme:Ljava/lang/String;
    :goto_0
    return-object v5

    .line 630
    .restart local v2       #r:Landroid/content/ContentResolver$OpenResourceIdResult;
    .restart local v3       #scheme:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 631
    .local v0, ex:Landroid/content/res/Resources$NotFoundException;
    :try_start_2
    new-instance v5, Ljava/io/FileNotFoundException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Resource does not exist: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 649
    .end local v0           #ex:Landroid/content/res/Resources$NotFoundException;
    .end local v2           #r:Landroid/content/ContentResolver$OpenResourceIdResult;
    .end local v3           #scheme:Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 651
    .local v1, fnfe:Ljava/io/FileNotFoundException;
    const-string v5, "SuggestionsAdapter"

    const-string v7, "Icon not found"

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v6

    .line 652
    goto :goto_0

    .line 635
    .end local v1           #fnfe:Ljava/io/FileNotFoundException;
    .restart local v3       #scheme:Ljava/lang/String;
    :cond_0
    :try_start_3
    iget-object v5, p0, Landroid/widget/SuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    .line 636
    .local v4, stream:Ljava/io/InputStream;
    if-nez v4, :cond_1

    .line 637
    new-instance v5, Ljava/io/FileNotFoundException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to open "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    .line 640
    :cond_1
    const/4 v5, 0x0

    :try_start_4
    invoke-static {v4, v5}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v5

    .line 643
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 644
    :catch_2
    move-exception v0

    .line 645
    .local v0, ex:Ljava/io/IOException;
    :try_start_6
    const-string v7, "SuggestionsAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error closing icon stream for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    .line 642
    .end local v0           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 643
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1

    .line 642
    :goto_1
    :try_start_8
    throw v5

    .line 644
    :catch_3
    move-exception v0

    .line 645
    .restart local v0       #ex:Ljava/io/IOException;
    const-string v7, "SuggestionsAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error closing icon stream for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_1
.end method

.method private getDrawableFromResourceValue(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .parameter "drawableId"

    .prologue
    const/4 v5, 0x0

    .line 580
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "0"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_0
    move-object v0, v5

    .line 612
    :cond_1
    :goto_0
    return-object v0

    .line 585
    :cond_2
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 587
    .local v3, resourceId:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "android.resource://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/widget/SuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 590
    .local v1, drawableUri:Ljava/lang/String;
    invoke-direct {p0, v1}, Landroid/widget/SuggestionsAdapter;->checkIconCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 591
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_1

    .line 595
    iget-object v6, p0, Landroid/widget/SuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 597
    invoke-direct {p0, v1, v0}, Landroid/widget/SuggestionsAdapter;->storeInIconCache(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 599
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v1           #drawableUri:Ljava/lang/String;
    .end local v3           #resourceId:I
    :catch_0
    move-exception v2

    .line 601
    .local v2, nfe:Ljava/lang/NumberFormatException;
    invoke-direct {p0, p1}, Landroid/widget/SuggestionsAdapter;->checkIconCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 602
    .restart local v0       #drawable:Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_1

    .line 605
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 606
    .local v4, uri:Landroid/net/Uri;
    invoke-direct {p0, v4}, Landroid/widget/SuggestionsAdapter;->getDrawable(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 607
    invoke-direct {p0, p1, v0}, Landroid/widget/SuggestionsAdapter;->storeInIconCache(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 609
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v2           #nfe:Ljava/lang/NumberFormatException;
    .end local v4           #uri:Landroid/net/Uri;
    :catch_1
    move-exception v2

    .line 611
    .local v2, nfe:Landroid/content/res/Resources$NotFoundException;
    const-string v6, "SuggestionsAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Icon resource not found: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v5

    .line 612
    goto :goto_0
.end method

.method private getIcon1(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "cursor"

    .prologue
    .line 458
    iget v2, p0, Landroid/widget/SuggestionsAdapter;->mIconName1Col:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 459
    const/4 v0, 0x0

    .line 466
    :cond_0
    :goto_0
    return-object v0

    .line 461
    :cond_1
    iget v2, p0, Landroid/widget/SuggestionsAdapter;->mIconName1Col:I

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 462
    .local v1, value:Ljava/lang/String;
    invoke-direct {p0, v1}, Landroid/widget/SuggestionsAdapter;->getDrawableFromResourceValue(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 463
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 466
    invoke-direct {p0, p1}, Landroid/widget/SuggestionsAdapter;->getDefaultIcon1(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method private getIcon2(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "cursor"

    .prologue
    .line 470
    iget v1, p0, Landroid/widget/SuggestionsAdapter;->mIconName2Col:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 471
    const/4 v1, 0x0

    .line 474
    :goto_0
    return-object v1

    .line 473
    :cond_0
    iget v1, p0, Landroid/widget/SuggestionsAdapter;->mIconName2Col:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 474
    .local v0, value:Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/widget/SuggestionsAdapter;->getDrawableFromResourceValue(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method private static getStringOrNull(Landroid/database/Cursor;I)Ljava/lang/String;
    .locals 4
    .parameter "cursor"
    .parameter "col"

    .prologue
    const/4 v1, 0x0

    .line 755
    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    .line 764
    :goto_0
    return-object v1

    .line 759
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 760
    :catch_0
    move-exception v0

    .line 761
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "SuggestionsAdapter"

    const-string v3, "unexpected error retrieving valid column from cursor, did the remote process die?"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private setViewDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;I)V
    .locals 2
    .parameter "v"
    .parameter "drawable"
    .parameter "nullVisibility"

    .prologue
    const/4 v1, 0x0

    .line 484
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 486
    if-nez p2, :cond_0

    .line 487
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 499
    :goto_0
    return-void

    .line 489
    :cond_0
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 496
    invoke-virtual {p2, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 497
    const/4 v0, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    goto :goto_0
.end method

.method private setViewText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "v"
    .parameter "text"

    .prologue
    .line 448
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 450
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 455
    :goto_0
    return-void

    .line 453
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private storeInIconCache(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "resourceUri"
    .parameter "drawable"

    .prologue
    .line 666
    if-eqz p2, :cond_0

    .line 667
    iget-object v0, p0, Landroid/widget/SuggestionsAdapter;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    :cond_0
    return-void
.end method

.method private updateSpinnerState(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 241
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 249
    .local v0, extras:Landroid/os/Bundle;
    :goto_0
    if-eqz v0, :cond_0

    const-string v1, "in_progress"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 256
    :cond_0
    return-void

    .line 241
    .end local v0           #extras:Landroid/os/Bundle;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 20
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 319
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/widget/SuggestionsAdapter$ChildViewCache;

    .line 320
    .local v16, views:Landroid/widget/SuggestionsAdapter$ChildViewCache;
    new-instance v10, Landroid/util/TypedValue;

    invoke-direct {v10}, Landroid/util/TypedValue;-><init>()V

    .line 321
    .local v10, outValue:Landroid/util/TypedValue;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v17

    const v18, 0x10103fd

    const/16 v19, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v10, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SuggestionsAdapter;->mSearchView:Landroid/widget/SearchView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 323
    .local v7, lQuery:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    .line 324
    .local v12, queryLength:I
    iget v5, v10, Landroid/util/TypedValue;->data:I

    .line 325
    .local v5, isDeviceDefault:I
    const/4 v6, 0x0

    .line 327
    .local v6, isURL:Z
    const/4 v4, 0x0

    .line 328
    .local v4, flags:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SuggestionsAdapter;->mFlagsCol:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    .line 329
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SuggestionsAdapter;->mFlagsCol:I

    move/from16 v17, v0

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 331
    :cond_0
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 332
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SuggestionsAdapter;->mText1Col:I

    move/from16 v17, v0

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/widget/SuggestionsAdapter;->getStringOrNull(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v13

    .line 333
    .local v13, text1:Ljava/lang/String;
    if-eqz v5, :cond_d

    if-eqz v13, :cond_d

    .line 334
    const/4 v8, 0x0

    .line 335
    .local v8, matchText1:Landroid/text/SpannableStringBuilder;
    const/4 v11, -0x1

    .line 337
    .local v11, queryIndex:I
    if-nez v12, :cond_b

    .line 338
    const/4 v11, -0x1

    .line 342
    :goto_0
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v11, v0, :cond_1

    if-lez v12, :cond_1

    .line 344
    new-instance v8, Landroid/text/SpannableStringBuilder;

    .end local v8           #matchText1:Landroid/text/SpannableStringBuilder;
    invoke-direct {v8, v13}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 345
    .restart local v8       #matchText1:Landroid/text/SpannableStringBuilder;
    new-instance v17, Landroid/text/style/ForegroundColorSpan;

    const v18, -0xf98735

    invoke-direct/range {v17 .. v18}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int v18, v11, v12

    const/16 v19, 0x21

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v8, v0, v11, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 347
    :cond_1
    if-eqz v8, :cond_c

    .line 348
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v8}, Landroid/widget/SuggestionsAdapter;->setViewText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 355
    .end local v8           #matchText1:Landroid/text/SpannableStringBuilder;
    .end local v11           #queryIndex:I
    .end local v13           #text1:Ljava/lang/String;
    :cond_2
    :goto_1
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mText2:Landroid/widget/TextView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    .line 357
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SuggestionsAdapter;->mText2UrlCol:I

    move/from16 v17, v0

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/widget/SuggestionsAdapter;->getStringOrNull(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v14

    .line 358
    .local v14, text2:Ljava/lang/CharSequence;
    if-eqz v14, :cond_e

    .line 359
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/widget/SuggestionsAdapter;->formatUrl(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v14

    .line 360
    if-eqz v5, :cond_3

    const/4 v6, 0x1

    .line 367
    :cond_3
    :goto_2
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_f

    .line 368
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    .line 369
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 370
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 378
    :cond_4
    :goto_3
    if-eqz v5, :cond_12

    if-nez v6, :cond_12

    .line 379
    const/4 v9, 0x0

    .line 380
    .local v9, matchText2:Landroid/text/SpannableStringBuilder;
    const/4 v11, -0x1

    .line 381
    .restart local v11       #queryIndex:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SuggestionsAdapter;->mText2Col:I

    move/from16 v17, v0

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/widget/SuggestionsAdapter;->getStringOrNull(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v15

    .line 383
    .local v15, text2_1:Ljava/lang/String;
    if-nez v12, :cond_10

    .line 384
    const/4 v11, -0x1

    .line 388
    :cond_5
    :goto_4
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v11, v0, :cond_6

    if-lez v12, :cond_6

    if-eqz v15, :cond_6

    .line 390
    new-instance v9, Landroid/text/SpannableStringBuilder;

    .end local v9           #matchText2:Landroid/text/SpannableStringBuilder;
    invoke-direct {v9, v15}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 391
    .restart local v9       #matchText2:Landroid/text/SpannableStringBuilder;
    new-instance v17, Landroid/text/style/ForegroundColorSpan;

    const v18, -0xf98735

    invoke-direct/range {v17 .. v18}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int v18, v11, v12

    const/16 v19, 0x21

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v9, v0, v11, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 393
    :cond_6
    if-eqz v9, :cond_11

    .line 394
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mText2:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v9}, Landroid/widget/SuggestionsAdapter;->setViewText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 403
    .end local v9           #matchText2:Landroid/text/SpannableStringBuilder;
    .end local v11           #queryIndex:I
    .end local v14           #text2:Ljava/lang/CharSequence;
    .end local v15           #text2_1:Ljava/lang/String;
    :cond_7
    :goto_5
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mIcon1:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    .line 404
    if-eqz v5, :cond_13

    .line 405
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mIcon1:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/widget/SuggestionsAdapter;->getIcon1(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    const/16 v19, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/SuggestionsAdapter;->setViewDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;I)V

    .line 410
    :cond_8
    :goto_6
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mIcon2:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_9

    .line 411
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mIcon2:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/widget/SuggestionsAdapter;->getIcon2(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    const/16 v19, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/SuggestionsAdapter;->setViewDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;I)V

    .line 413
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SuggestionsAdapter;->mQueryRefinement:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SuggestionsAdapter;->mQueryRefinement:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_14

    and-int/lit8 v17, v4, 0x1

    if-eqz v17, :cond_14

    .line 416
    :cond_a
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mIconRefine:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 417
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mIconRefine:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 418
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mIconRefine:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 422
    :goto_7
    return-void

    .line 340
    .restart local v8       #matchText1:Landroid/text/SpannableStringBuilder;
    .restart local v11       #queryIndex:I
    .restart local v13       #text1:Ljava/lang/String;
    :cond_b
    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    goto/16 :goto_0

    .line 350
    :cond_c
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v13}, Landroid/widget/SuggestionsAdapter;->setViewText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 352
    .end local v8           #matchText1:Landroid/text/SpannableStringBuilder;
    .end local v11           #queryIndex:I
    :cond_d
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v13}, Landroid/widget/SuggestionsAdapter;->setViewText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 362
    .end local v13           #text1:Ljava/lang/String;
    .restart local v14       #text2:Ljava/lang/CharSequence;
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SuggestionsAdapter;->mText2Col:I

    move/from16 v17, v0

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/widget/SuggestionsAdapter;->getStringOrNull(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_2

    .line 373
    :cond_f
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    .line 374
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 375
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setMaxLines(I)V

    goto/16 :goto_3

    .line 386
    .restart local v9       #matchText2:Landroid/text/SpannableStringBuilder;
    .restart local v11       #queryIndex:I
    .restart local v15       #text2_1:Ljava/lang/String;
    :cond_10
    if-eqz v15, :cond_5

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    goto/16 :goto_4

    .line 396
    :cond_11
    if-eqz v15, :cond_7

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mText2:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v15}, Landroid/widget/SuggestionsAdapter;->setViewText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 399
    .end local v9           #matchText2:Landroid/text/SpannableStringBuilder;
    .end local v11           #queryIndex:I
    .end local v15           #text2_1:Ljava/lang/String;
    :cond_12
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mText2:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v14}, Landroid/widget/SuggestionsAdapter;->setViewText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 407
    .end local v14           #text2:Ljava/lang/CharSequence;
    :cond_13
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mIcon1:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/widget/SuggestionsAdapter;->getIcon1(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    const/16 v19, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/SuggestionsAdapter;->setViewDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;I)V

    goto/16 :goto_6

    .line 420
    :cond_14
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mIconRefine:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_7
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 3
    .parameter "c"

    .prologue
    .line 265
    iget-boolean v1, p0, Landroid/widget/SuggestionsAdapter;->mClosed:Z

    if-eqz v1, :cond_1

    .line 266
    const-string v1, "SuggestionsAdapter"

    const-string v2, "Tried to change cursor after adapter was closed."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 272
    :cond_1
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ResourceCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 274
    if-eqz p1, :cond_0

    .line 275
    const-string v1, "suggest_text_1"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/widget/SuggestionsAdapter;->mText1Col:I

    .line 276
    const-string v1, "suggest_text_2"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/widget/SuggestionsAdapter;->mText2Col:I

    .line 277
    const-string v1, "suggest_text_2_url"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/widget/SuggestionsAdapter;->mText2UrlCol:I

    .line 278
    const-string v1, "suggest_icon_1"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/widget/SuggestionsAdapter;->mIconName1Col:I

    .line 279
    const-string v1, "suggest_icon_2"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/widget/SuggestionsAdapter;->mIconName2Col:I

    .line 280
    const-string v1, "suggest_flags"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/widget/SuggestionsAdapter;->mFlagsCol:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 282
    :catch_0
    move-exception v0

    .line 283
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SuggestionsAdapter"

    const-string v2, "error changing cursor and caching columns"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 218
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/SuggestionsAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 219
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SuggestionsAdapter;->mClosed:Z

    .line 220
    return-void
.end method

.method public convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 5
    .parameter "cursor"

    .prologue
    const/4 v3, 0x0

    .line 511
    if-nez p1, :cond_1

    move-object v1, v3

    .line 534
    :cond_0
    :goto_0
    return-object v1

    .line 515
    :cond_1
    const-string v4, "suggest_intent_query"

    invoke-static {p1, v4}, Landroid/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 516
    .local v1, query:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 520
    iget-object v4, p0, Landroid/widget/SuggestionsAdapter;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v4}, Landroid/app/SearchableInfo;->shouldRewriteQueryFromData()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 521
    const-string v4, "suggest_intent_data"

    invoke-static {p1, v4}, Landroid/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 522
    .local v0, data:Ljava/lang/String;
    if-eqz v0, :cond_2

    move-object v1, v0

    .line 523
    goto :goto_0

    .line 527
    .end local v0           #data:Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Landroid/widget/SuggestionsAdapter;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v4}, Landroid/app/SearchableInfo;->shouldRewriteQueryFromText()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 528
    const-string v4, "suggest_text_1"

    invoke-static {p1, v4}, Landroid/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 529
    .local v2, text1:Ljava/lang/String;
    if-eqz v2, :cond_3

    move-object v1, v2

    .line 530
    goto :goto_0

    .end local v2           #text1:Ljava/lang/String;
    :cond_3
    move-object v1, v3

    .line 534
    goto :goto_0
.end method

.method public getQueryRefinement()I
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Landroid/widget/SuggestionsAdapter;->mQueryRefinement:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 546
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 556
    :cond_0
    :goto_0
    return-object v2

    .line 547
    :catch_0
    move-exception v0

    .line 548
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v4, "SuggestionsAdapter"

    const-string v5, "Search suggestions cursor threw exception."

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 550
    iget-object v4, p0, Landroid/widget/CursorAdapter;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v4, v5, p3}, Landroid/widget/SuggestionsAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 551
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 552
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/SuggestionsAdapter$ChildViewCache;

    .line 553
    .local v3, views:Landroid/widget/SuggestionsAdapter$ChildViewCache;
    iget-object v1, v3, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    .line 554
    .local v1, tv:Landroid/widget/TextView;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x0

    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 292
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 293
    .local v0, v:Landroid/view/View;
    new-instance v1, Landroid/widget/SuggestionsAdapter$ChildViewCache;

    invoke-direct {v1, v0}, Landroid/widget/SuggestionsAdapter$ChildViewCache;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 294
    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 225
    invoke-super {p0}, Landroid/widget/ResourceCursorAdapter;->notifyDataSetChanged()V

    .line 229
    invoke-virtual {p0}, Landroid/widget/SuggestionsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/SuggestionsAdapter;->updateSpinnerState(Landroid/database/Cursor;)V

    .line 230
    return-void
.end method

.method public notifyDataSetInvalidated()V
    .locals 1

    .prologue
    .line 235
    invoke-super {p0}, Landroid/widget/ResourceCursorAdapter;->notifyDataSetInvalidated()V

    .line 237
    invoke-virtual {p0}, Landroid/widget/SuggestionsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/SuggestionsAdapter;->updateSpinnerState(Landroid/database/Cursor;)V

    .line 238
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 425
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 426
    .local v0, tag:Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 427
    iget-object v1, p0, Landroid/widget/SuggestionsAdapter;->mSearchView:Landroid/widget/SearchView;

    check-cast v0, Ljava/lang/CharSequence;

    .end local v0           #tag:Ljava/lang/Object;
    invoke-virtual {v1, v0}, Landroid/widget/SearchView;->onQueryRefine(Ljava/lang/CharSequence;)V

    .line 429
    :cond_0
    return-void
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 7
    .parameter "constraint"

    .prologue
    const/4 v3, 0x0

    .line 188
    if-nez p1, :cond_1

    const-string v2, ""

    .line 193
    .local v2, query:Ljava/lang/String;
    :goto_0
    const/4 v0, 0x0

    .line 194
    .local v0, cursor:Landroid/database/Cursor;
    iget-object v4, p0, Landroid/widget/SuggestionsAdapter;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v4}, Landroid/widget/SearchView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Landroid/widget/SuggestionsAdapter;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v4}, Landroid/widget/SearchView;->getWindowVisibility()I

    move-result v4

    if-eqz v4, :cond_2

    .line 213
    :cond_0
    :goto_1
    return-object v3

    .line 188
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v2           #query:Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 200
    .restart local v0       #cursor:Landroid/database/Cursor;
    .restart local v2       #query:Ljava/lang/String;
    :cond_2
    :try_start_0
    iget-object v4, p0, Landroid/widget/SuggestionsAdapter;->mSearchManager:Landroid/app/SearchManager;

    iget-object v5, p0, Landroid/widget/SuggestionsAdapter;->mSearchable:Landroid/app/SearchableInfo;

    const/16 v6, 0x32

    invoke-virtual {v4, v5, v2, v6}, Landroid/app/SearchManager;->getSuggestions(Landroid/app/SearchableInfo;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    .line 203
    if-eqz v0, :cond_0

    .line 204
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v0

    .line 205
    goto :goto_1

    .line 207
    :catch_0
    move-exception v1

    .line 208
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v4, "SuggestionsAdapter"

    const-string v5, "Search suggestions query threw an exception."

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public setQueryRefinement(I)V
    .locals 0
    .parameter "refineWhat"

    .prologue
    .line 160
    iput p1, p0, Landroid/widget/SuggestionsAdapter;->mQueryRefinement:I

    .line 161
    return-void
.end method
