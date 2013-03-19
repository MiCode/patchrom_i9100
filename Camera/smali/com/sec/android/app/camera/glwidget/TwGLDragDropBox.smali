.class public Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLDragDropBox.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDropListener;
    }
.end annotation


# instance fields
.field private lastDragCoord:[F

.field private mDropbox:Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;

.field private mDroppable:Z

.field private mOnDropListener:Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDropListener;

.field protected mView:Lcom/sec/android/glview/TwGLView;

.field protected mViewToDrag:Lcom/sec/android/glview/TwGLView;

.field transformedScreenCoordinate:[F


# direct methods
.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;)V
    .locals 2
    .parameter "glContext"

    .prologue
    const/4 v1, 0x2

    .line 49
    invoke-direct {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;)V

    .line 31
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->lastDragCoord:[F

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mDroppable:Z

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mDropbox:Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;

    .line 36
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->transformedScreenCoordinate:[F

    .line 51
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FF)V
    .locals 2
    .parameter "glContext"
    .parameter "left"
    .parameter "top"

    .prologue
    const/4 v1, 0x2

    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 31
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->lastDragCoord:[F

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mDroppable:Z

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mDropbox:Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;

    .line 36
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->transformedScreenCoordinate:[F

    .line 56
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFF)V
    .locals 2
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v1, 0x2

    .line 59
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 31
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->lastDragCoord:[F

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mDroppable:Z

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mDropbox:Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;

    .line 36
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->transformedScreenCoordinate:[F

    .line 61
    return-void
.end method

.method private static final findDragDropBox(Lcom/sec/android/glview/TwGLView;FF)Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;
    .locals 5
    .parameter "rootView"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 184
    instance-of v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;

    if-eqz v4, :cond_0

    .line 185
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/glview/TwGLView;->contains(FF)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 186
    check-cast p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;

    .line 197
    .end local p0
    :goto_0
    return-object p0

    .line 187
    .restart local p0
    :cond_0
    instance-of v4, p0, Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v4, :cond_2

    move-object v3, p0

    .line 188
    check-cast v3, Lcom/sec/android/glview/TwGLViewGroup;

    .line 189
    .local v3, v:Lcom/sec/android/glview/TwGLViewGroup;
    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLViewGroup;->getSize()I

    move-result v1

    .line 190
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 191
    invoke-virtual {v3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v4

    invoke-static {v4, p1, p2}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->findDragDropBox(Lcom/sec/android/glview/TwGLView;FF)Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;

    move-result-object v2

    .line 192
    .local v2, tempView:Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;
    if-eqz v2, :cond_1

    move-object p0, v2

    .line 193
    goto :goto_0

    .line 190
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 197
    .end local v0           #i:I
    .end local v1           #size:I
    .end local v2           #tempView:Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;
    .end local v3           #v:Lcom/sec/android/glview/TwGLViewGroup;
    :cond_2
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addView(Lcom/sec/android/glview/TwGLView;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 123
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->resetTranslate()V

    .line 124
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    .line 125
    invoke-virtual {p1, p0}, Lcom/sec/android/glview/TwGLView;->setOnDragListener(Lcom/sec/android/glview/TwGLView$OnDragListener;)V

    .line 126
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 127
    return-void
.end method

.method protected cancelDrag()V
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    .line 89
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->resetTranslate()V

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->removeView(Lcom/sec/android/glview/TwGLView;)V

    goto :goto_0
.end method

.method public contains(FF)Z
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->getClipRect()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->getClipRect()Landroid/graphics/Rect;

    move-result-object v0

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    .line 113
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDroppability()Z
    .locals 1

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mDroppable:Z

    return v0
.end method

.method public getView()Lcom/sec/android/glview/TwGLView;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v0

    const/16 v1, 0x63

    if-ne v0, v1, :cond_0

    .line 98
    const/4 v0, 0x1

    .line 100
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDrag(Lcom/sec/android/glview/TwGLView;FFFF)V
    .locals 9
    .parameter "view"
    .parameter "x"
    .parameter "y"
    .parameter "dx"
    .parameter "dy"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 147
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->lastDragCoord:[F

    aget v7, v0, v3

    .line 148
    .local v7, lastX:F
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->lastDragCoord:[F

    aget v8, v0, v4

    .line 149
    .local v8, lastY:F
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->lastDragCoord:[F

    invoke-virtual {p0, v0, p2, p3}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mapPointReverse([FFF)V

    .line 151
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->lastDragCoord:[F

    aget v1, v1, v3

    sub-float/2addr v1, v7

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->lastDragCoord:[F

    aget v2, v2, v4

    sub-float/2addr v2, v8

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->translate(FF)V

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getRootView()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->findDragDropBox(Lcom/sec/android/glview/TwGLView;FF)Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;

    move-result-object v6

    .line 155
    .local v6, dropBox:Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;
    if-eqz v6, :cond_5

    .line 156
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v6, v0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->onTouchOver(Lcom/sec/android/glview/TwGLView;)V

    .line 157
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mDropbox:Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mDropbox:Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;

    if-eq v0, v6, :cond_1

    .line 158
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mDropbox:Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->onTouchOver(Lcom/sec/android/glview/TwGLView;)V

    .line 160
    :cond_1
    iput-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mDropbox:Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;

    .line 166
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_3

    .line 167
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLView;->setClipping(Z)V

    .line 168
    :cond_3
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->setClipping(Z)V

    .line 170
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    if-eqz v0, :cond_4

    .line 171
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/glview/TwGLView$OnDragListener;->onDrag(Lcom/sec/android/glview/TwGLView;FFFF)V

    .line 173
    :cond_4
    return-void

    .line 162
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mDropbox:Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;

    if-eqz v0, :cond_2

    .line 163
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mDropbox:Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->onTouchOver(Lcom/sec/android/glview/TwGLView;)V

    goto :goto_0
.end method

.method public onDragEnd(Lcom/sec/android/glview/TwGLView;FF)V
    .locals 3
    .parameter "view"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x1

    .line 202
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    if-eqz v1, :cond_0

    .line 203
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->resetScale()V

    .line 205
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getRootView()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v1

    invoke-static {v1, p2, p3}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->findDragDropBox(Lcom/sec/android/glview/TwGLView;FF)Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;

    move-result-object v0

    .line 206
    .local v0, dropBox:Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;
    if-eqz v0, :cond_2

    .line 207
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->getDroppability()Z

    move-result v1

    if-nez v1, :cond_1

    .line 208
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setClipping(Z)V

    .line 209
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->cancelDrag()V

    .line 222
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->setClipping(Z)V

    .line 224
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    if-eqz v1, :cond_0

    .line 225
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    invoke-interface {v1, p1, p2, p3}, Lcom/sec/android/glview/TwGLView$OnDragListener;->onDragEnd(Lcom/sec/android/glview/TwGLView;FF)V

    .line 228
    .end local v0           #dropBox:Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;
    :cond_0
    return-void

    .line 211
    .restart local v0       #dropBox:Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->onTouchOver(Lcom/sec/android/glview/TwGLView;)V

    .line 212
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0, v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->onDrop(Lcom/sec/android/glview/TwGLView;Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;)V

    .line 214
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setClipping(Z)V

    .line 215
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 216
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    goto :goto_0

    .line 219
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setClipping(Z)V

    .line 220
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->cancelDrag()V

    goto :goto_0
.end method

.method public onDragStart(Lcom/sec/android/glview/TwGLView;FF)V
    .locals 3
    .parameter "view"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x0

    const v1, 0x3f99999a

    .line 131
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    .line 133
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->lastDragCoord:[F

    invoke-virtual {p0, v0, p2, p3}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mapPointReverse([FFF)V

    .line 135
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->setEmpty()V

    .line 136
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setClipping(Z)V

    .line 137
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->setClipping(Z)V

    .line 138
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0, v1, v1}, Lcom/sec/android/glview/TwGLView;->scale(FF)V

    .line 140
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/sec/android/glview/TwGLView$OnDragListener;->onDragStart(Lcom/sec/android/glview/TwGLView;FF)V

    .line 143
    :cond_0
    return-void
.end method

.method protected onDrop(Lcom/sec/android/glview/TwGLView;Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;)V
    .locals 1
    .parameter "view"
    .parameter "fromDropBox"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 79
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 81
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mOnDropListener:Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDropListener;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mOnDropListener:Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDropListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDropListener;->onDrop(Lcom/sec/android/glview/TwGLView;)V

    .line 84
    :cond_0
    return-void
.end method

.method public onTouchOver(Lcom/sec/android/glview/TwGLView;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 64
    return-void
.end method

.method public removeView()Lcom/sec/android/glview/TwGLView;
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    .line 72
    .local v0, viewToRemove:Lcom/sec/android/glview/TwGLView;
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 73
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->setEmpty()V

    .line 74
    return-object v0
.end method

.method public setDroppability(Z)V
    .locals 0
    .parameter "droppable"

    .prologue
    .line 176
    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mDroppable:Z

    .line 177
    return-void
.end method

.method protected setEmpty()V
    .locals 2

    .prologue
    .line 104
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItem;-><init>(Lcom/sec/android/glview/TwGLContext;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    .line 105
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->setDraggable(Z)V

    .line 106
    return-void
.end method

.method public setOnDragListener(Lcom/sec/android/glview/TwGLView$OnDragListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    .line 119
    return-void
.end method

.method public setOnDropListener(Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDropListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mOnDropListener:Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDropListener;

    .line 46
    return-void
.end method
