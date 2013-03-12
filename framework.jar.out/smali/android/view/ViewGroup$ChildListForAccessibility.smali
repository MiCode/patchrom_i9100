.class Landroid/view/ViewGroup$ChildListForAccessibility;
.super Ljava/lang/Object;
.source "ViewGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ChildListForAccessibility"
.end annotation


# static fields
.field private static final MAX_POOL_SIZE:I = 0x20

.field private static sPool:Landroid/view/ViewGroup$ChildListForAccessibility;

.field private static final sPoolLock:Ljava/lang/Object;

.field private static sPoolSize:I


# instance fields
.field private final mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mHolders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/ViewGroup$ViewLocationHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mIsPooled:Z

.field private mNext:Landroid/view/ViewGroup$ChildListForAccessibility;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6125
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/ViewGroup$ChildListForAccessibility;->sPoolLock:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 6121
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup$ChildListForAccessibility;->mChildren:Ljava/util/ArrayList;

    .line 6137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup$ChildListForAccessibility;->mHolders:Ljava/util/ArrayList;

    return-void
.end method

.method private clear()V
    .locals 1

    .prologue
    .line 6208
    iget-object v0, p0, Landroid/view/ViewGroup$ChildListForAccessibility;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6209
    return-void
.end method

.method private init(Landroid/view/ViewGroup;Z)V
    .locals 7
    .parameter "parent"
    .parameter "sort"

    .prologue
    .line 6184
    iget-object v2, p0, Landroid/view/ViewGroup$ChildListForAccessibility;->mChildren:Ljava/util/ArrayList;

    .line 6185
    .local v2, children:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 6186
    .local v1, childCount:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v1, :cond_0

    .line 6187
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6188
    .local v0, child:Landroid/view/View;
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6186
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 6190
    .end local v0           #child:Landroid/view/View;
    :cond_0
    if-eqz p2, :cond_3

    .line 6191
    iget-object v4, p0, Landroid/view/ViewGroup$ChildListForAccessibility;->mHolders:Ljava/util/ArrayList;

    .line 6192
    .local v4, holders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/ViewGroup$ViewLocationHolder;>;"
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v1, :cond_1

    .line 6193
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 6194
    .restart local v0       #child:Landroid/view/View;
    invoke-static {p1, v0}, Landroid/view/ViewGroup$ViewLocationHolder;->obtain(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/ViewGroup$ViewLocationHolder;

    move-result-object v3

    .line 6195
    .local v3, holder:Landroid/view/ViewGroup$ViewLocationHolder;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6192
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 6197
    .end local v0           #child:Landroid/view/View;
    .end local v3           #holder:Landroid/view/ViewGroup$ViewLocationHolder;
    :cond_1
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 6198
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v1, :cond_2

    .line 6199
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$ViewLocationHolder;

    .line 6200
    .restart local v3       #holder:Landroid/view/ViewGroup$ViewLocationHolder;
    iget-object v6, v3, Landroid/view/ViewGroup$ViewLocationHolder;->mView:Landroid/view/View;

    invoke-virtual {v2, v5, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6201
    invoke-virtual {v3}, Landroid/view/ViewGroup$ViewLocationHolder;->recycle()V

    .line 6198
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 6203
    .end local v3           #holder:Landroid/view/ViewGroup$ViewLocationHolder;
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 6205
    .end local v4           #holders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/ViewGroup$ViewLocationHolder;>;"
    :cond_3
    return-void
.end method

.method public static obtain(Landroid/view/ViewGroup;Z)Landroid/view/ViewGroup$ChildListForAccessibility;
    .locals 4
    .parameter "parent"
    .parameter "sort"

    .prologue
    .line 6140
    const/4 v0, 0x0

    .line 6141
    .local v0, list:Landroid/view/ViewGroup$ChildListForAccessibility;
    sget-object v3, Landroid/view/ViewGroup$ChildListForAccessibility;->sPoolLock:Ljava/lang/Object;

    monitor-enter v3

    .line 6142
    :try_start_0
    sget-object v2, Landroid/view/ViewGroup$ChildListForAccessibility;->sPool:Landroid/view/ViewGroup$ChildListForAccessibility;

    if-eqz v2, :cond_0

    .line 6143
    sget-object v0, Landroid/view/ViewGroup$ChildListForAccessibility;->sPool:Landroid/view/ViewGroup$ChildListForAccessibility;

    .line 6144
    iget-object v2, v0, Landroid/view/ViewGroup$ChildListForAccessibility;->mNext:Landroid/view/ViewGroup$ChildListForAccessibility;

    sput-object v2, Landroid/view/ViewGroup$ChildListForAccessibility;->sPool:Landroid/view/ViewGroup$ChildListForAccessibility;

    .line 6145
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/view/ViewGroup$ChildListForAccessibility;->mNext:Landroid/view/ViewGroup$ChildListForAccessibility;

    .line 6146
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/view/ViewGroup$ChildListForAccessibility;->mIsPooled:Z

    .line 6147
    sget v2, Landroid/view/ViewGroup$ChildListForAccessibility;->sPoolSize:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Landroid/view/ViewGroup$ChildListForAccessibility;->sPoolSize:I

    .line 6151
    :goto_0
    invoke-direct {v0, p0, p1}, Landroid/view/ViewGroup$ChildListForAccessibility;->init(Landroid/view/ViewGroup;Z)V

    .line 6152
    monitor-exit v3

    return-object v0

    .line 6149
    :cond_0
    new-instance v1, Landroid/view/ViewGroup$ChildListForAccessibility;

    invoke-direct {v1}, Landroid/view/ViewGroup$ChildListForAccessibility;-><init>()V

    .end local v0           #list:Landroid/view/ViewGroup$ChildListForAccessibility;
    .local v1, list:Landroid/view/ViewGroup$ChildListForAccessibility;
    move-object v0, v1

    .end local v1           #list:Landroid/view/ViewGroup$ChildListForAccessibility;
    .restart local v0       #list:Landroid/view/ViewGroup$ChildListForAccessibility;
    goto :goto_0

    .line 6153
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method public getChildAt(I)Landroid/view/View;
    .locals 1
    .parameter "index"

    .prologue
    .line 6176
    iget-object v0, p0, Landroid/view/ViewGroup$ChildListForAccessibility;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    .prologue
    .line 6172
    iget-object v0, p0, Landroid/view/ViewGroup$ChildListForAccessibility;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getChildIndex(Landroid/view/View;)I
    .locals 1
    .parameter "child"

    .prologue
    .line 6180
    iget-object v0, p0, Landroid/view/ViewGroup$ChildListForAccessibility;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public recycle()V
    .locals 3

    .prologue
    .line 6157
    iget-boolean v0, p0, Landroid/view/ViewGroup$ChildListForAccessibility;->mIsPooled:Z

    if-eqz v0, :cond_0

    .line 6158
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Instance already recycled."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6160
    :cond_0
    invoke-direct {p0}, Landroid/view/ViewGroup$ChildListForAccessibility;->clear()V

    .line 6161
    sget-object v1, Landroid/view/ViewGroup$ChildListForAccessibility;->sPoolLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6162
    :try_start_0
    sget v0, Landroid/view/ViewGroup$ChildListForAccessibility;->sPoolSize:I

    const/16 v2, 0x20

    if-ge v0, v2, :cond_1

    .line 6163
    sget-object v0, Landroid/view/ViewGroup$ChildListForAccessibility;->sPool:Landroid/view/ViewGroup$ChildListForAccessibility;

    iput-object v0, p0, Landroid/view/ViewGroup$ChildListForAccessibility;->mNext:Landroid/view/ViewGroup$ChildListForAccessibility;

    .line 6164
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewGroup$ChildListForAccessibility;->mIsPooled:Z

    .line 6165
    sput-object p0, Landroid/view/ViewGroup$ChildListForAccessibility;->sPool:Landroid/view/ViewGroup$ChildListForAccessibility;

    .line 6166
    sget v0, Landroid/view/ViewGroup$ChildListForAccessibility;->sPoolSize:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/view/ViewGroup$ChildListForAccessibility;->sPoolSize:I

    .line 6168
    :cond_1
    monitor-exit v1

    .line 6169
    return-void

    .line 6168
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
