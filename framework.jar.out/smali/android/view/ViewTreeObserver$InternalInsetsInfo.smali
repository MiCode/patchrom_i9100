.class public final Landroid/view/ViewTreeObserver$InternalInsetsInfo;
.super Ljava/lang/Object;
.source "ViewTreeObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewTreeObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InternalInsetsInfo"
.end annotation


# static fields
.field public static final TOUCHABLE_INSETS_CONTENT:I = 0x1

.field public static final TOUCHABLE_INSETS_FRAME:I = 0x0

.field public static final TOUCHABLE_INSETS_REGION:I = 0x3

.field public static final TOUCHABLE_INSETS_VISIBLE:I = 0x2


# instance fields
.field public final contentInsets:Landroid/graphics/Rect;

.field mTouchableInsets:I

.field public final touchableRegion:Landroid/graphics/Region;

.field public final visibleInsets:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 149
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 154
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    .line 160
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    .line 167
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 222
    if-ne p0, p1, :cond_1

    .line 226
    :cond_0
    :goto_0
    return v1

    .line 223
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 225
    check-cast v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    .line 226
    .local v0, other:Landroid/view/ViewTreeObserver$InternalInsetsInfo;
    iget v3, p0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->mTouchableInsets:I

    iget v4, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->mTouchableInsets:I

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    iget-object v4, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    iget-object v4, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    iget-object v4, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v3, v4}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 213
    iget-object v2, p0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->hashCode()I

    move-result v0

    .line 214
    .local v0, result:I
    :goto_0
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 215
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    if-eqz v3, :cond_0

    iget-object v1, p0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 216
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->mTouchableInsets:I

    add-int v0, v1, v2

    .line 217
    return v0

    .end local v0           #result:I
    :cond_1
    move v0, v1

    .line 213
    goto :goto_0

    .restart local v0       #result:I
    :cond_2
    move v2, v1

    .line 214
    goto :goto_1
.end method

.method reset()V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 206
    iget-object v0, p0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 207
    iget-object v0, p0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    .line 208
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->mTouchableInsets:I

    .line 209
    return-void
.end method

.method set(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 2
    .parameter "other"

    .prologue
    .line 233
    iget-object v0, p0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 234
    iget-object v0, p0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 235
    iget-object v0, p0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    iget-object v1, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 236
    iget v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->mTouchableInsets:I

    iput v0, p0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->mTouchableInsets:I

    .line 237
    return-void
.end method

.method public setTouchableInsets(I)V
    .locals 0
    .parameter "val"

    .prologue
    .line 199
    iput p1, p0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->mTouchableInsets:I

    .line 200
    return-void
.end method
