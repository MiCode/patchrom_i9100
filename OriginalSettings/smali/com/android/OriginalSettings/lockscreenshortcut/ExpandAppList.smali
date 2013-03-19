.class public Lcom/android/settings/lockscreenshortcut/ExpandAppList;
.super Landroid/app/ListActivity;
.source "ExpandAppList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/lockscreenshortcut/ExpandAppList$AlphaComparator;,
        Lcom/android/settings/lockscreenshortcut/ExpandAppList$AppListAdapter;,
        Lcom/android/settings/lockscreenshortcut/ExpandAppList$ViewHolder;
    }
.end annotation


# static fields
.field static MAX_SHORTCUT_ICON:I


# instance fields
.field private Duse:Ljava/lang/String;

.field private No_app:[I

.field private Order:[I

.field private add_flag:Z

.field private mAppListAdapter:Lcom/android/settings/lockscreenshortcut/ExpandAppList$AppListAdapter;

.field private mAppName:[Ljava/lang/String;

.field private mClickedViewIndex:I

.field private mIconCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mNumOfSavedShortcut:I

.field private mPm:Landroid/content/pm/PackageManager;

.field private mSetedShortcut_activity:[Ljava/lang/String;

.field private mSetedShortcut_package:[Ljava/lang/String;

.field private mTempApplist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private order_app:[I

.field private settingName:Ljava/lang/String;

.field private tAppcount:I

.field private t_appNo:I

.field private tempAppName:[Ljava/lang/String;

.field private temp_data:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x4

    sput v0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->MAX_SHORTCUT_ICON:I

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/16 v4, 0x64

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 50
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 56
    iput v3, p0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->mNumOfSavedShortcut:I

    .line 57
    iput v3, p0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->mClickedViewIndex:I

    .line 58
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    aput-object v2, v0, v3

    aput-object v2, v0, v5

    aput-object v2, v0, v6

    const/4 v1, 0x3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->mSetedShortcut_package:[Ljava/lang/String;

    .line 59
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    aput-object v2, v0, v3

    aput-object v2, v0, v5

    aput-object v2, v0, v6

    const/4 v1, 0x3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->mSetedShortcut_activity:[Ljava/lang/String;

    .line 60
    new-array v0, v4, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->mAppName:[Ljava/lang/String;

    .line 61
    new-array v0, v4, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->tempAppName:[Ljava/lang/String;

    .line 63
    const-string v0, "duse"

    iput-object v0, p0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->Duse:Ljava/lang/String;

    .line 64
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->No_app:[I

    .line 65
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->order_app:[I

    .line 66
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->temp_data:[I

    .line 67
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->Order:[I

    .line 68
    iput v3, p0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->tAppcount:I

    .line 69
    iput v3, p0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->t_appNo:I

    .line 70
    iput-boolean v3, p0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->add_flag:Z

    .line 72
    iput-object v2, p0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->mIconCache:Ljava/util/HashMap;

    .line 394
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/lockscreenshortcut/ExpandAppList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->t_appNo:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/lockscreenshortcut/ExpandAppList;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method


# virtual methods
.method public AppOrdering(Ljava/util/List;[I[Ljava/lang/String;[II)I
    .locals 7
    .parameter
    .parameter "Order"
    .parameter "AppName"
    .parameter "data"
    .parameter "count"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;[I[",
            "Ljava/lang/String;",
            "[II)I"
        }
    .end annotation

    .prologue
    .line 200
    .local p1, a:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v0, 0x0

    .line 202
    .local v0, cnt:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p5, :cond_2

    .line 203
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    add-int/lit8 v5, p5, -0x1

    if-ge v2, v5, :cond_1

    .line 204
    aget v5, p2, v2

    add-int/lit8 v6, v2, 0x1

    aget v6, p2, v6

    if-ge v5, v6, :cond_0

    .line 205
    aget v3, p2, v2

    .line 206
    .local v3, temp:I
    aget-object v4, p3, v2

    .line 207
    .local v4, temp_s:Ljava/lang/String;
    add-int/lit8 v5, v2, 0x1

    aget v5, p2, v5

    aput v5, p2, v2

    .line 208
    add-int/lit8 v5, v2, 0x1

    aget-object v5, p3, v5

    aput-object v5, p3, v2

    .line 209
    add-int/lit8 v5, v2, 0x1

    aput v3, p2, v5

    .line 210
    add-int/lit8 v5, v2, 0x1

    aput-object v4, p3, v5

    .line 203
    .end local v3           #temp:I
    .end local v4           #temp_s:Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 202
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 215
    .end local v2           #j:I
    :cond_2
    const/4 v2, 0x0

    .restart local v2       #j:I
    :goto_2
    if-ge v2, p5, :cond_5

    .line 216
    const/4 v1, 0x0

    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_4

    .line 217
    aget-object v6, p3, v2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 218
    aput v1, p4, v0

    .line 219
    add-int/lit8 v0, v0, 0x1

    .line 216
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 215
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 223
    :cond_5
    return v0
.end method

.method public MakeList(Ljava/util/List;Ljava/util/ArrayList;II[I)V
    .locals 10
    .parameter
    .parameter
    .parameter "ncnt"
    .parameter "setcnt"
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;II[I)V"
        }
    .end annotation

    .prologue
    .local p1, a:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local p2, List:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    const/4 v9, 0x6

    const/4 v8, 0x5

    const/4 v7, 0x0

    .line 227
    const/4 v0, 0x0

    .line 228
    .local v0, cnt:I
    const/4 v4, 0x0

    .line 229
    .local v4, list_size:I
    iget v5, p0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->t_appNo:I

    if-eqz v5, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v4, v5, 0x7

    .line 232
    :goto_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v4, :cond_c

    .line 233
    if-eqz p3, :cond_a

    .line 234
    if-eqz v1, :cond_0

    if-ne v1, v9, :cond_3

    .line 236
    :cond_0
    aget v5, p5, v7

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    const/4 v0, 0x0

    .line 232
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 230
    .end local v1           #i:I
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v4, v5, 0x1

    goto :goto_0

    .line 240
    .restart local v1       #i:I
    :cond_3
    if-lez v1, :cond_6

    if-ge v1, v9, :cond_6

    .line 241
    if-lt p3, v8, :cond_4

    .line 242
    aget v5, p5, v0

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 247
    :cond_4
    if-le p3, v0, :cond_5

    .line 248
    aget v5, p5, v0

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 252
    :cond_5
    const/4 v1, 0x5

    goto :goto_2

    .line 257
    :cond_6
    const/4 v3, 0x0

    .line 258
    .local v3, list_register:I
    if-lt p3, v8, :cond_8

    const/4 v3, 0x5

    .line 261
    :goto_3
    const/4 v2, 0x0

    .local v2, j:I
    :goto_4
    if-ge v2, v3, :cond_7

    .line 262
    aget v5, p5, v2

    add-int/lit8 v6, v1, -0x7

    if-ne v5, v6, :cond_9

    .line 263
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->add_flag:Z

    .line 270
    :cond_7
    iget-boolean v5, p0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->add_flag:Z

    if-nez v5, :cond_1

    .line 271
    add-int/lit8 v5, v1, -0x7

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 259
    .end local v2           #j:I
    :cond_8
    move v3, p3

    goto :goto_3

    .line 267
    .restart local v2       #j:I
    :cond_9
    iput-boolean v7, p0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->add_flag:Z

    .line 261
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 276
    .end local v2           #j:I
    .end local v3           #list_register:I
    :cond_a
    if-nez v1, :cond_b

    .line 278
    aget v5, p5, v7

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 280
    :cond_b
    add-int/lit8 v5, v1, -0x1

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 283
    :cond_c
    return-void
.end method

.method public SortingList([Ljava/lang/String;[I[Ljava/lang/String;Ljava/lang/String;I)I
    .locals 5
    .parameter "AppName"
    .parameter "r_Order"
    .parameter "r_AppName"
    .parameter "limit"
    .parameter "cur_no"

    .prologue
    .line 177
    const/4 v0, 0x0

    .line 178
    .local v0, cnt:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    add-int/lit8 v3, p5, -0x1

    if-ge v1, v3, :cond_2

    .line 179
    aget-object v3, p1, v1

    iget-object v4, p0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->Duse:Ljava/lang/String;

    if-eq v3, v4, :cond_1

    .line 180
    add-int/lit8 v2, v1, 0x1

    .local v2, j:I
    :goto_1
    if-ge v2, p5, :cond_1

    .line 181
    aget-object v3, p1, v1

    aget-object v4, p1, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 182
    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->Duse:Ljava/lang/String;

    aput-object v3, p1, v2

    .line 183
    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->Order:[I

    aget v4, v3, v1

    add-int/lit8 v4, v4, 0x1

    aput v4, v3, v1

    .line 180
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 178
    .end local v2           #j:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 189
    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-ge v1, p5, :cond_4

    .line 190
    aget-object v3, p1, v1

    iget-object v4, p0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->Duse:Ljava/lang/String;

    if-eq v3, v4, :cond_3

    aget-object v3, p1, v1

    invoke-virtual {v3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 191
    aget-object v3, p1, v1

    aput-object v3, p3, v0

    .line 192
    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->Order:[I

    aget v3, v3, v1

    aput v3, p2, v0

    .line 193
    add-int/lit8 v0, v0, 0x1

    .line 189
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 196
    :cond_4
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 36
    .parameter "savedInstanceState"

    .prologue
    .line 77
    invoke-super/range {p0 .. p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->setResult(I)V

    .line 81
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->getIntent()Landroid/content/Intent;

    move-result-object v27

    .line 82
    .local v27, intent:Landroid/content/Intent;
    const-string v3, "shortcut_app_list"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/String;

    .line 83
    .local v35, shortcut_app_list:Ljava/lang/String;
    const-string v3, "num_of_shortcut"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->mNumOfSavedShortcut:I

    .line 84
    const-string v3, "clicked_view_index"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->mClickedViewIndex:I

    .line 85
    const-string v3, "max_num_of_shortcut"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sput v3, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->MAX_SHORTCUT_ICON:I

    .line 87
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->mNumOfSavedShortcut:I

    sget v5, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->MAX_SHORTCUT_ICON:I

    if-le v3, v5, :cond_0

    .line 88
    sget v3, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->MAX_SHORTCUT_ICON:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->mNumOfSavedShortcut:I

    .line 91
    :cond_0
    const-string v28, ""

    .line 92
    .local v28, intent_content:Ljava/lang/String;
    const/16 v26, 0x0

    .line 93
    .local v26, index:I
    const/16 v32, 0x0

    .line 94
    .local v32, old_index:I
    const/16 v24, 0x0

    .local v24, i:I
    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->mNumOfSavedShortcut:I

    move/from16 v0, v24

    if-ge v0, v3, :cond_1

    .line 95
    move/from16 v32, v26

    .line 96
    const/16 v3, 0x3b

    move-object/from16 v0, v35

    move/from16 v1, v32

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v26

    .line 97
    move-object/from16 v0, v35

    move/from16 v1, v32

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v28

    .line 98
    const/16 v3, 0x2f

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v33

    .line 99
    .local v33, package_index:I
    const/4 v3, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v33

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v34

    .line 100
    .local v34, package_name:Ljava/lang/String;
    add-int/lit8 v3, v33, 0x1

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    .line 101
    .local v21, activity_name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->mSetedShortcut_package:[Ljava/lang/String;

    aput-object v34, v3, v24

    .line 102
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->mSetedShortcut_activity:[Ljava/lang/String;

    aput-object v21, v3, v24

    .line 103
    add-int/lit8 v26, v26, 0x1

    .line 94
    add-int/lit8 v24, v24, 0x1

    goto :goto_0

    .line 106
    .end local v21           #activity_name:Ljava/lang/String;
    .end local v33           #package_index:I
    .end local v34           #package_name:Ljava/lang/String;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->mPm:Landroid/content/pm/PackageManager;

    .line 107
    new-instance v19, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 108
    .local v19, LauncherIntent:Landroid/content/Intent;
    const-string v3, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->mPm:Landroid/content/pm/PackageManager;

    const/16 v5, 0x20

    move-object/from16 v0, v19

    invoke-virtual {v3, v0, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v12

    .line 110
    .local v12, appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->mTempApplist:Ljava/util/ArrayList;

    .line 112
    const-string v3, "com.android.settings.Settings"

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->settingName:Ljava/lang/String;

    .line 114
    const-string v3, "content://com.samsung.android.providers.context/app_usage/recent"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 115
    .local v4, uri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v23

    .line 117
    .local v23, cursor:Landroid/database/Cursor;
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 118
    .local v10, cur_no:I
    const/16 v31, 0x0

    .line 121
    .local v31, no:I
    const/16 v3, 0x64

    if-gt v10, v3, :cond_2

    .line 122
    add-int/lit8 v31, v10, -0x1

    .line 123
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToFirst()Z

    .line 131
    :goto_1
    if-eqz v23, :cond_3

    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_3

    .line 132
    const-string v3, "class_name"

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 133
    .local v25, idxCol:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->mAppName:[Ljava/lang/String;

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v31

    .line 134
    add-int/lit8 v31, v31, -0x1

    .line 135
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 126
    .end local v25           #idxCol:I
    :cond_2
    add-int/lit8 v3, v10, -0x64

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 127
    const/16 v10, 0x64

    .line 128
    const/16 v31, 0x63

    goto :goto_1

    .line 137
    :cond_3
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    .line 140
    new-instance v22, Lcom/android/settings/lockscreenshortcut/ExpandAppList$AlphaComparator;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/lockscreenshortcut/ExpandAppList$AlphaComparator;-><init>(Lcom/android/settings/lockscreenshortcut/ExpandAppList;)V

    .line 141
    .local v22, alphaComparator:Lcom/android/settings/lockscreenshortcut/ExpandAppList$AlphaComparator;
    move-object/from16 v0, v22

    invoke-static {v12, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 143
    const/16 v24, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->mNumOfSavedShortcut:I

    move/from16 v0, v24

    if-ge v0, v3, :cond_6

    .line 144
    const/16 v29, 0x0

    .local v29, j:I
    :goto_3
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v29

    if-ge v0, v3, :cond_5

    .line 145
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->mSetedShortcut_package:[Ljava/lang/String;

    aget-object v5, v3, v24

    move/from16 v0, v29

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->mSetedShortcut_activity:[Ljava/lang/String;

    aget-object v5, v3, v24

    move/from16 v0, v29

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 146
    move/from16 v0, v29

    invoke-interface {v12, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 144
    :cond_4
    add-int/lit8 v29, v29, 0x1

    goto :goto_3

    .line 143
    :cond_5
    add-int/lit8 v24, v24, 0x1

    goto :goto_2

    .line 151
    .end local v29           #j:I
    :cond_6
    const/16 v24, 0x0

    :goto_4
    const/16 v3, 0x64

    move/from16 v0, v24

    if-ge v0, v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->temp_data:[I

    const/4 v5, 0x0

    aput v5, v3, v24

    add-int/lit8 v24, v24, 0x1

    goto :goto_4

    .line 153
    :cond_7
    const/16 v20, 0x0

    .line 154
    .local v20, Settingcnt:I
    const/16 v24, 0x0

    :goto_5
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v24

    if-ge v0, v3, :cond_9

    .line 155
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->settingName:Ljava/lang/String;

    move/from16 v0, v24

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    move/from16 v20, v24

    .line 154
    :cond_8
    add-int/lit8 v24, v24, 0x1

    goto :goto_5

    .line 158
    :cond_9
    const/4 v3, 0x1

    if-le v10, v3, :cond_a

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->mAppName:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->order_app:[I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->tempAppName:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->settingName:Ljava/lang/String;

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->SortingList([Ljava/lang/String;[I[Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->tAppcount:I

    .line 160
    :cond_a
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->tAppcount:I

    if-lez v3, :cond_b

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->order_app:[I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->tempAppName:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->temp_data:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->tAppcount:I

    move/from16 v16, v0

    move-object/from16 v11, p0

    invoke-virtual/range {v11 .. v16}, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->AppOrdering(Ljava/util/List;[I[Ljava/lang/String;[II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->t_appNo:I

    .line 162
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->mTempApplist:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->t_appNo:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->temp_data:[I

    move-object/from16 v16, v0

    move-object/from16 v11, p0

    move/from16 v15, v20

    invoke-virtual/range {v11 .. v16}, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->MakeList(Ljava/util/List;Ljava/util/ArrayList;II[I)V

    .line 164
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->mIconCache:Ljava/util/HashMap;

    .line 165
    const/16 v24, 0x0

    :goto_6
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v24

    if-ge v0, v3, :cond_c

    .line 166
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->mIconCache:Ljava/util/HashMap;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v24

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v24

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move/from16 v0, v24

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v7}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    add-int/lit8 v24, v24, 0x1

    goto :goto_6

    .line 169
    :cond_c
    new-instance v13, Lcom/android/settings/lockscreenshortcut/ExpandAppList$AppListAdapter;

    const v16, 0x7f04007d

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->mTempApplist:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v14, p0

    move-object/from16 v15, p0

    invoke-direct/range {v13 .. v18}, Lcom/android/settings/lockscreenshortcut/ExpandAppList$AppListAdapter;-><init>(Lcom/android/settings/lockscreenshortcut/ExpandAppList;Landroid/content/Context;IILjava/util/List;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->mAppListAdapter:Lcom/android/settings/lockscreenshortcut/ExpandAppList$AppListAdapter;

    .line 171
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->getListView()Landroid/widget/ListView;

    move-result-object v30

    .line 172
    .local v30, list_view:Landroid/widget/ListView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->mAppListAdapter:Lcom/android/settings/lockscreenshortcut/ExpandAppList$AppListAdapter;

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 173
    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 174
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 287
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 288
    .local v0, result_intent:Landroid/content/Intent;
    const-string v2, "AppList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " shortcut selected : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->mAppListAdapter:Lcom/android/settings/lockscreenshortcut/ExpandAppList$AppListAdapter;

    invoke-virtual {v1, p3}, Lcom/android/settings/lockscreenshortcut/ExpandAppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->mAppListAdapter:Lcom/android/settings/lockscreenshortcut/ExpandAppList$AppListAdapter;

    invoke-virtual {v1, p3}, Lcom/android/settings/lockscreenshortcut/ExpandAppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    const-string v2, "selected_package"

    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->mAppListAdapter:Lcom/android/settings/lockscreenshortcut/ExpandAppList$AppListAdapter;

    invoke-virtual {v1, p3}, Lcom/android/settings/lockscreenshortcut/ExpandAppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 290
    const-string v2, "selected_activity"

    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->mAppListAdapter:Lcom/android/settings/lockscreenshortcut/ExpandAppList$AppListAdapter;

    invoke-virtual {v1, p3}, Lcom/android/settings/lockscreenshortcut/ExpandAppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    const-string v1, "clicked_view_index"

    iget v2, p0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->mClickedViewIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 292
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->setResult(ILandroid/content/Intent;)V

    .line 293
    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->finish()V

    .line 294
    return-void
.end method
