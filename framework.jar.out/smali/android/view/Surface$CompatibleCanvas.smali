.class Landroid/view/Surface$CompatibleCanvas;
.super Landroid/graphics/Canvas;
.source "Surface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Surface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CompatibleCanvas"
.end annotation


# instance fields
.field private mOrigMatrix:Landroid/graphics/Matrix;

.field final synthetic this$0:Landroid/view/Surface;


# direct methods
.method private constructor <init>(Landroid/view/Surface;)V
    .locals 1
    .parameter

    .prologue
    .line 354
    iput-object p1, p0, Landroid/view/Surface$CompatibleCanvas;->this$0:Landroid/view/Surface;

    invoke-direct {p0}, Landroid/graphics/Canvas;-><init>()V

    .line 356
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/Surface$CompatibleCanvas;->mOrigMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/Surface;Landroid/view/Surface$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 354
    invoke-direct {p0, p1}, Landroid/view/Surface$CompatibleCanvas;-><init>(Landroid/view/Surface;)V

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 3

    .prologue
    .line 369
    invoke-super {p0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    .line 370
    .local v0, h:I
    iget-object v1, p0, Landroid/view/Surface$CompatibleCanvas;->this$0:Landroid/view/Surface;

    #getter for: Landroid/view/Surface;->mCompatibilityTranslator:Landroid/content/res/CompatibilityInfo$Translator;
    invoke-static {v1}, Landroid/view/Surface;->access$100(Landroid/view/Surface;)Landroid/content/res/CompatibilityInfo$Translator;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 371
    int-to-float v1, v0

    iget-object v2, p0, Landroid/view/Surface$CompatibleCanvas;->this$0:Landroid/view/Surface;

    #getter for: Landroid/view/Surface;->mCompatibilityTranslator:Landroid/content/res/CompatibilityInfo$Translator;
    invoke-static {v2}, Landroid/view/Surface;->access$100(Landroid/view/Surface;)Landroid/content/res/CompatibilityInfo$Translator;

    move-result-object v2

    iget v2, v2, Landroid/content/res/CompatibilityInfo$Translator;->applicationInvertedScale:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 373
    :cond_0
    return v0
.end method

.method public getMatrix(Landroid/graphics/Matrix;)V
    .locals 1
    .parameter "m"

    .prologue
    .line 391
    invoke-super {p0, p1}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    .line 392
    iget-object v0, p0, Landroid/view/Surface$CompatibleCanvas;->mOrigMatrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_0

    .line 393
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/view/Surface$CompatibleCanvas;->mOrigMatrix:Landroid/graphics/Matrix;

    .line 395
    :cond_0
    iget-object v0, p0, Landroid/view/Surface$CompatibleCanvas;->mOrigMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 396
    return-void
.end method

.method public getWidth()I
    .locals 3

    .prologue
    .line 360
    invoke-super {p0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    .line 361
    .local v0, w:I
    iget-object v1, p0, Landroid/view/Surface$CompatibleCanvas;->this$0:Landroid/view/Surface;

    #getter for: Landroid/view/Surface;->mCompatibilityTranslator:Landroid/content/res/CompatibilityInfo$Translator;
    invoke-static {v1}, Landroid/view/Surface;->access$100(Landroid/view/Surface;)Landroid/content/res/CompatibilityInfo$Translator;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 362
    int-to-float v1, v0

    iget-object v2, p0, Landroid/view/Surface$CompatibleCanvas;->this$0:Landroid/view/Surface;

    #getter for: Landroid/view/Surface;->mCompatibilityTranslator:Landroid/content/res/CompatibilityInfo$Translator;
    invoke-static {v2}, Landroid/view/Surface;->access$100(Landroid/view/Surface;)Landroid/content/res/CompatibilityInfo$Translator;

    move-result-object v2

    iget v2, v2, Landroid/content/res/CompatibilityInfo$Translator;->applicationInvertedScale:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 364
    :cond_0
    return v0
.end method

.method public setMatrix(Landroid/graphics/Matrix;)V
    .locals 2
    .parameter "matrix"

    .prologue
    .line 378
    iget-object v1, p0, Landroid/view/Surface$CompatibleCanvas;->this$0:Landroid/view/Surface;

    #getter for: Landroid/view/Surface;->mCompatibleMatrix:Landroid/graphics/Matrix;
    invoke-static {v1}, Landroid/view/Surface;->access$200(Landroid/view/Surface;)Landroid/graphics/Matrix;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/Surface$CompatibleCanvas;->mOrigMatrix:Landroid/graphics/Matrix;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/Surface$CompatibleCanvas;->mOrigMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, p1}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 381
    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 387
    :goto_0
    return-void

    .line 383
    :cond_1
    new-instance v0, Landroid/graphics/Matrix;

    iget-object v1, p0, Landroid/view/Surface$CompatibleCanvas;->this$0:Landroid/view/Surface;

    #getter for: Landroid/view/Surface;->mCompatibleMatrix:Landroid/graphics/Matrix;
    invoke-static {v1}, Landroid/view/Surface;->access$200(Landroid/view/Surface;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 384
    .local v0, m:Landroid/graphics/Matrix;
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 385
    invoke-super {p0, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0
.end method
