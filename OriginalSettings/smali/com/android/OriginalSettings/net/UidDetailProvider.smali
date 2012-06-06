.class public Lcom/android/OriginalSettings/net/UidDetailProvider;
.super Ljava/lang/Object;
.source "UidDetailProvider.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mUidDetailCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/OriginalSettings/net/UidDetail;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/net/UidDetailProvider;->mContext:Landroid/content/Context;

    .line 39
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/net/UidDetailProvider;->mUidDetailCache:Landroid/util/SparseArray;

    .line 40
    return-void
.end method


# virtual methods
.method public clearCache()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/OriginalSettings/net/UidDetailProvider;->mUidDetailCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 44
    return-void
.end method

.method public getUidDetail(IZ)Lcom/android/OriginalSettings/net/UidDetail;
    .locals 14
    .parameter "uid"
    .parameter "blocking"

    .prologue
    .line 50
    iget-object v12, p0, Lcom/android/OriginalSettings/net/UidDetailProvider;->mUidDetailCache:Landroid/util/SparseArray;

    invoke-virtual {v12, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/OriginalSettings/net/UidDetail;

    .line 51
    .local v1, cached:Lcom/android/OriginalSettings/net/UidDetail;
    if-eqz v1, :cond_0

    move-object v3, v1

    .line 117
    :goto_0
    return-object v3

    .line 53
    :cond_0
    if-nez p2, :cond_1

    .line 54
    const/4 v3, 0x0

    goto :goto_0

    .line 57
    :cond_1
    iget-object v12, p0, Lcom/android/OriginalSettings/net/UidDetailProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 58
    .local v11, res:Landroid/content/res/Resources;
    iget-object v12, p0, Lcom/android/OriginalSettings/net/UidDetailProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 60
    .local v10, pm:Landroid/content/pm/PackageManager;
    new-instance v3, Lcom/android/OriginalSettings/net/UidDetail;

    invoke-direct {v3}, Lcom/android/OriginalSettings/net/UidDetail;-><init>()V

    .line 61
    .local v3, detail:Lcom/android/OriginalSettings/net/UidDetail;
    invoke-virtual {v10, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v3, Lcom/android/OriginalSettings/net/UidDetail;->label:Ljava/lang/CharSequence;

    .line 62
    invoke-virtual {v10}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    iput-object v12, v3, Lcom/android/OriginalSettings/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    .line 65
    sparse-switch p1, :sswitch_data_0

    .line 86
    invoke-virtual {v10, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v9

    .line 87
    .local v9, packageNames:[Ljava/lang/String;
    if-eqz v9, :cond_4

    array-length v6, v9

    .line 90
    .local v6, length:I
    :goto_1
    const/4 v12, 0x1

    if-ne v6, v12, :cond_5

    .line 91
    const/4 v12, 0x0

    :try_start_0
    aget-object v12, v9, v12

    const/4 v13, 0x0

    invoke-virtual {v10, v12, v13}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 92
    .local v5, info:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v5, v10}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v3, Lcom/android/OriginalSettings/net/UidDetail;->label:Ljava/lang/CharSequence;

    .line 93
    invoke-virtual {v5, v10}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    iput-object v12, v3, Lcom/android/OriginalSettings/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .end local v5           #info:Landroid/content/pm/ApplicationInfo;
    :cond_2
    :goto_2
    iget-object v12, v3, Lcom/android/OriginalSettings/net/UidDetail;->label:Ljava/lang/CharSequence;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 113
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v3, Lcom/android/OriginalSettings/net/UidDetail;->label:Ljava/lang/CharSequence;

    .line 116
    :cond_3
    iget-object v12, p0, Lcom/android/OriginalSettings/net/UidDetailProvider;->mUidDetailCache:Landroid/util/SparseArray;

    invoke-virtual {v12, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 67
    .end local v6           #length:I
    .end local v9           #packageNames:[Ljava/lang/String;
    :sswitch_0
    const v12, 0x7f0b057a

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v3, Lcom/android/OriginalSettings/net/UidDetail;->label:Ljava/lang/CharSequence;

    .line 68
    invoke-virtual {v10}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    iput-object v12, v3, Lcom/android/OriginalSettings/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    .line 69
    iget-object v12, p0, Lcom/android/OriginalSettings/net/UidDetailProvider;->mUidDetailCache:Landroid/util/SparseArray;

    invoke-virtual {v12, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 72
    :sswitch_1
    const v12, 0x7f0b0674

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v3, Lcom/android/OriginalSettings/net/UidDetail;->label:Ljava/lang/CharSequence;

    .line 73
    invoke-virtual {v10}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    iput-object v12, v3, Lcom/android/OriginalSettings/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    .line 74
    iget-object v12, p0, Lcom/android/OriginalSettings/net/UidDetailProvider;->mUidDetailCache:Landroid/util/SparseArray;

    invoke-virtual {v12, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 77
    :sswitch_2
    iget-object v12, p0, Lcom/android/OriginalSettings/net/UidDetailProvider;->mContext:Landroid/content/Context;

    const-string v13, "connectivity"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 79
    .local v2, cm:Landroid/net/ConnectivityManager;
    invoke-static {v2}, Lcom/android/OriginalSettings/Utils;->getTetheringLabel(Landroid/net/ConnectivityManager;)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v3, Lcom/android/OriginalSettings/net/UidDetail;->label:Ljava/lang/CharSequence;

    .line 80
    invoke-virtual {v10}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    iput-object v12, v3, Lcom/android/OriginalSettings/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    .line 81
    iget-object v12, p0, Lcom/android/OriginalSettings/net/UidDetailProvider;->mUidDetailCache:Landroid/util/SparseArray;

    invoke-virtual {v12, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 87
    .end local v2           #cm:Landroid/net/ConnectivityManager;
    .restart local v9       #packageNames:[Ljava/lang/String;
    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    .line 94
    .restart local v6       #length:I
    :cond_5
    const/4 v12, 0x1

    if-le v6, v12, :cond_2

    .line 95
    :try_start_1
    new-array v12, v6, [Ljava/lang/CharSequence;

    iput-object v12, v3, Lcom/android/OriginalSettings/net/UidDetail;->detailLabels:[Ljava/lang/CharSequence;

    .line 96
    const/4 v4, 0x0

    .local v4, i:I
    :goto_3
    if-ge v4, v6, :cond_2

    .line 97
    aget-object v8, v9, v4

    .line 98
    .local v8, packageName:Ljava/lang/String;
    const/4 v12, 0x0

    invoke-virtual {v10, v8, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 99
    .local v7, packageInfo:Landroid/content/pm/PackageInfo;
    const/4 v12, 0x0

    invoke-virtual {v10, v8, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 101
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v12, v3, Lcom/android/OriginalSettings/net/UidDetail;->detailLabels:[Ljava/lang/CharSequence;

    invoke-virtual {v0, v10}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v4

    .line 102
    iget v12, v7, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    if-eqz v12, :cond_6

    .line 103
    iget v12, v7, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    iget-object v13, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v10, v8, v12, v13}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v3, Lcom/android/OriginalSettings/net/UidDetail;->label:Ljava/lang/CharSequence;

    .line 105
    invoke-virtual {v0, v10}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    iput-object v12, v3, Lcom/android/OriginalSettings/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 96
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 109
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v4           #i:I
    .end local v7           #packageInfo:Landroid/content/pm/PackageInfo;
    .end local v8           #packageName:Ljava/lang/String;
    :catch_0
    move-exception v12

    goto/16 :goto_2

    .line 65
    :sswitch_data_0
    .sparse-switch
        -0x5 -> :sswitch_2
        -0x4 -> :sswitch_1
        0x3e8 -> :sswitch_0
    .end sparse-switch
.end method
