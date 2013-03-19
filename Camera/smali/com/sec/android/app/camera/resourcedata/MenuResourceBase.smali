.class public abstract Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
.super Ljava/lang/Object;
.source "MenuResourceBase.java"


# instance fields
.field protected final mId:I

.field protected mMenuResource:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;",
            ">;"
        }
    .end annotation
.end field

.field protected final mTextTitle:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .parameter "id"
    .parameter "title"

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->mMenuResource:Ljava/util/ArrayList;

    .line 30
    iput p1, p0, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->mId:I

    .line 31
    iput p2, p0, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->mTextTitle:I

    .line 32
    return-void
.end method


# virtual methods
.method public cleanUpResources()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->mMenuResource:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 77
    return-void
.end method

.method public findBundle(II)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .locals 3
    .parameter "bundleindex"
    .parameter "value"

    .prologue
    .line 47
    iget-object v2, p0, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->mMenuResource:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 49
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 50
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    .line 51
    .local v0, bundle:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v2

    if-ne v2, p2, :cond_0

    .line 55
    .end local v0           #bundle:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->mId:I

    return v0
.end method

.method public getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .locals 1
    .parameter "index"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->mMenuResource:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    return-object v0
.end method

.method public getNumberOfItems()I
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->mMenuResource:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getTitle()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->mTextTitle:I

    return v0
.end method

.method public removeItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .locals 1
    .parameter "index"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->mMenuResource:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    return-object v0
.end method

.method public removeItems(II)V
    .locals 2
    .parameter "fromIndex"
    .parameter "toIndex"

    .prologue
    .line 67
    if-ge p1, p2, :cond_0

    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->mMenuResource:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le p2, v1, :cond_1

    .line 68
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 70
    :cond_1
    move v0, p2

    .local v0, i:I
    :goto_0
    if-lt v0, p1, :cond_2

    .line 71
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->removeItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    .line 70
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 73
    :cond_2
    return-void
.end method

.method public reorder()Z
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method
