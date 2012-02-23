.class public Landroid/webkit/L10nUtils;
.super Ljava/lang/Object;
.source "L10nUtils.java"


# static fields
.field private static mApplicationContext:Landroid/content/Context;

.field private static mIdsArray:[I

.field private static mStrings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/16 v0, 0x39

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/webkit/L10nUtils;->mIdsArray:[I

    return-void

    :array_0
    .array-data 0x4
        0xcdt 0x3t 0x4t 0x1t
        0xcet 0x3t 0x4t 0x1t
        0xcft 0x3t 0x4t 0x1t
        0xd0t 0x3t 0x4t 0x1t
        0xd1t 0x3t 0x4t 0x1t
        0xd2t 0x3t 0x4t 0x1t
        0xd3t 0x3t 0x4t 0x1t
        0xd4t 0x3t 0x4t 0x1t
        0xd5t 0x3t 0x4t 0x1t
        0xd6t 0x3t 0x4t 0x1t
        0xd7t 0x3t 0x4t 0x1t
        0xd8t 0x3t 0x4t 0x1t
        0xd9t 0x3t 0x4t 0x1t
        0xdat 0x3t 0x4t 0x1t
        0xdbt 0x3t 0x4t 0x1t
        0xdct 0x3t 0x4t 0x1t
        0xddt 0x3t 0x4t 0x1t
        0xdet 0x3t 0x4t 0x1t
        0xdft 0x3t 0x4t 0x1t
        0xe0t 0x3t 0x4t 0x1t
        0xe1t 0x3t 0x4t 0x1t
        0xe2t 0x3t 0x4t 0x1t
        0xe3t 0x3t 0x4t 0x1t
        0xe4t 0x3t 0x4t 0x1t
        0xe5t 0x3t 0x4t 0x1t
        0xe6t 0x3t 0x4t 0x1t
        0xe7t 0x3t 0x4t 0x1t
        0xe8t 0x3t 0x4t 0x1t
        0xe9t 0x3t 0x4t 0x1t
        0xeat 0x3t 0x4t 0x1t
        0xebt 0x3t 0x4t 0x1t
        0xect 0x3t 0x4t 0x1t
        0xedt 0x3t 0x4t 0x1t
        0xeet 0x3t 0x4t 0x1t
        0xeft 0x3t 0x4t 0x1t
        0xf0t 0x3t 0x4t 0x1t
        0xf1t 0x3t 0x4t 0x1t
        0xf2t 0x3t 0x4t 0x1t
        0xf3t 0x3t 0x4t 0x1t
        0xf4t 0x3t 0x4t 0x1t
        0xf5t 0x3t 0x4t 0x1t
        0xf6t 0x3t 0x4t 0x1t
        0xf7t 0x3t 0x4t 0x1t
        0xf8t 0x3t 0x4t 0x1t
        0xf9t 0x3t 0x4t 0x1t
        0xfat 0x3t 0x4t 0x1t
        0xfbt 0x3t 0x4t 0x1t
        0xfct 0x3t 0x4t 0x1t
        0xfdt 0x3t 0x4t 0x1t
        0xfet 0x3t 0x4t 0x1t
        0xfft 0x3t 0x4t 0x1t
        0x0t 0x4t 0x4t 0x1t
        0x1t 0x4t 0x4t 0x1t
        0x2t 0x4t 0x4t 0x1t
        0x3t 0x4t 0x4t 0x1t
        0x4t 0x4t 0x4t 0x1t
        0x5t 0x4t 0x4t 0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLocalisedString(I)Ljava/lang/String;
    .locals 4
    .parameter "id"

    .prologue
    .line 110
    sget-object v2, Landroid/webkit/L10nUtils;->mStrings:Ljava/util/Map;

    if-nez v2, :cond_0

    .line 113
    invoke-static {p0}, Landroid/webkit/L10nUtils;->loadString(I)Ljava/lang/String;

    move-result-object v2

    .line 118
    :goto_0
    return-object v2

    .line 116
    :cond_0
    sget-object v2, Landroid/webkit/L10nUtils;->mStrings:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 117
    .local v1, ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 118
    .local v0, needToLoad:Z
    :goto_1
    if-eqz v0, :cond_3

    invoke-static {p0}, Landroid/webkit/L10nUtils;->loadString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 117
    .end local v0           #needToLoad:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 118
    .restart local v0       #needToLoad:Z
    :cond_3
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0
.end method

.method private static loadString(I)Ljava/lang/String;
    .locals 4
    .parameter "id"

    .prologue
    .line 100
    sget-object v1, Landroid/webkit/L10nUtils;->mStrings:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 101
    new-instance v1, Ljava/util/HashMap;

    sget-object v2, Landroid/webkit/L10nUtils;->mIdsArray:[I

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v1, Landroid/webkit/L10nUtils;->mStrings:Ljava/util/Map;

    .line 104
    :cond_0
    sget-object v1, Landroid/webkit/L10nUtils;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Landroid/webkit/L10nUtils;->mIdsArray:[I

    aget v2, v2, p0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, localisedString:Ljava/lang/String;
    sget-object v1, Landroid/webkit/L10nUtils;->mStrings:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    return-object v0
.end method

.method public static setApplicationContext(Landroid/content/Context;)V
    .locals 1
    .parameter "applicationContext"

    .prologue
    .line 96
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Landroid/webkit/L10nUtils;->mApplicationContext:Landroid/content/Context;

    .line 97
    return-void
.end method
