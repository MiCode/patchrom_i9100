.class Landroid/webkit/WebDragHandler$MyDragShadowBuilder;
.super Landroid/view/View$DragShadowBuilder;
.source "WebDragHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebDragHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyDragShadowBuilder"
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    .line 80
    return-void
.end method


# virtual methods
.method public onDrawShadow(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    const/4 v4, 0x0

    .line 99
    const/4 v2, 0x3

    invoke-static {}, Landroid/webkit/WebDragHandler;->access$000()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 103
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 104
    .local v0, paint:Landroid/graphics/Paint;
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 105
    const v2, -0xff0001

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 106
    new-instance v1, Landroid/graphics/Rect;

    invoke-static {}, Landroid/webkit/WebDragHandler;->access$100()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-static {}, Landroid/webkit/WebDragHandler;->access$100()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 107
    .local v1, rect:Landroid/graphics/Rect;
    invoke-static {}, Landroid/webkit/WebDragHandler;->access$100()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p1, v2, v1, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 111
    .end local v0           #paint:Landroid/graphics/Paint;
    .end local v1           #rect:Landroid/graphics/Rect;
    :goto_0
    return-void

    .line 109
    :cond_0
    invoke-static {}, Landroid/webkit/WebDragHandler;->access$200()Landroid/graphics/Picture;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;)V

    goto :goto_0
.end method

.method public onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 4
    .parameter "size"
    .parameter "touch"

    .prologue
    .line 84
    const/4 v1, 0x0

    .line 85
    .local v1, width:I
    const/4 v0, 0x0

    .line 86
    .local v0, height:I
    const/4 v2, 0x3

    invoke-static {}, Landroid/webkit/WebDragHandler;->access$000()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 87
    invoke-static {}, Landroid/webkit/WebDragHandler;->access$100()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 88
    invoke-static {}, Landroid/webkit/WebDragHandler;->access$100()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 93
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Point;->set(II)V

    .line 94
    div-int/lit8 v2, v1, 0x2

    div-int/lit8 v3, v0, 0x2

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 95
    return-void

    .line 90
    :cond_0
    invoke-static {}, Landroid/webkit/WebDragHandler;->access$200()Landroid/graphics/Picture;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Picture;->getWidth()I

    move-result v1

    .line 91
    invoke-static {}, Landroid/webkit/WebDragHandler;->access$200()Landroid/graphics/Picture;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Picture;->getHeight()I

    move-result v0

    goto :goto_0
.end method
