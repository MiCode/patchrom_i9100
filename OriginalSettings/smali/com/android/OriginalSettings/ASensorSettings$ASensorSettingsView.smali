.class Lcom/android/OriginalSettings/ASensorSettings$ASensorSettingsView;
.super Landroid/view/View;
.source "ASensorSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/ASensorSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ASensorSettingsView"
.end annotation


# instance fields
.field mRadius:I

.field mSX:I

.field mSY:I

.field mState:I

.field final synthetic this$0:Lcom/android/OriginalSettings/ASensorSettings;


# direct methods
.method public constructor <init>(Lcom/android/OriginalSettings/ASensorSettings;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "context"

    .prologue
    .line 269
    iput-object p1, p0, Lcom/android/OriginalSettings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/OriginalSettings/ASensorSettings;

    .line 270
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 263
    iget-object v0, p0, Lcom/android/OriginalSettings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/OriginalSettings/ASensorSettings;

    #getter for: Lcom/android/OriginalSettings/ASensorSettings;->CENTER_X:I
    invoke-static {v0}, Lcom/android/OriginalSettings/ASensorSettings;->access$500(Lcom/android/OriginalSettings/ASensorSettings;)I

    move-result v0

    iget-object v1, p0, Lcom/android/OriginalSettings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/OriginalSettings/ASensorSettings;

    #getter for: Lcom/android/OriginalSettings/ASensorSettings;->ICON_RADIUS:I
    invoke-static {v1}, Lcom/android/OriginalSettings/ASensorSettings;->access$600(Lcom/android/OriginalSettings/ASensorSettings;)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/OriginalSettings/ASensorSettings$ASensorSettingsView;->mSX:I

    .line 264
    iget-object v0, p0, Lcom/android/OriginalSettings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/OriginalSettings/ASensorSettings;

    #getter for: Lcom/android/OriginalSettings/ASensorSettings;->CENTER_Y:I
    invoke-static {v0}, Lcom/android/OriginalSettings/ASensorSettings;->access$700(Lcom/android/OriginalSettings/ASensorSettings;)I

    move-result v0

    iget-object v1, p0, Lcom/android/OriginalSettings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/OriginalSettings/ASensorSettings;

    #getter for: Lcom/android/OriginalSettings/ASensorSettings;->ICON_RADIUS:I
    invoke-static {v1}, Lcom/android/OriginalSettings/ASensorSettings;->access$600(Lcom/android/OriginalSettings/ASensorSettings;)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/OriginalSettings/ASensorSettings$ASensorSettingsView;->mSY:I

    .line 265
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/OriginalSettings/ASensorSettings$ASensorSettingsView;->mState:I

    .line 271
    return-void
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/ASensorSettings$ASensorSettingsView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 262
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/ASensorSettings$ASensorSettingsView;->updateState(I)V

    return-void
.end method

.method private updateState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 274
    iput p1, p0, Lcom/android/OriginalSettings/ASensorSettings$ASensorSettingsView;->mState:I

    .line 275
    return-void
.end method


# virtual methods
.method public getPoint([F)[F
    .locals 5
    .parameter "position"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 290
    iget v0, p0, Lcom/android/OriginalSettings/ASensorSettings$ASensorSettingsView;->mSX:I

    iget-object v1, p0, Lcom/android/OriginalSettings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/OriginalSettings/ASensorSettings;

    #getter for: Lcom/android/OriginalSettings/ASensorSettings;->ICON_RADIUS:I
    invoke-static {v1}, Lcom/android/OriginalSettings/ASensorSettings;->access$600(Lcom/android/OriginalSettings/ASensorSettings;)I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    aput v0, p1, v3

    .line 291
    iget v0, p0, Lcom/android/OriginalSettings/ASensorSettings$ASensorSettingsView;->mSY:I

    iget-object v1, p0, Lcom/android/OriginalSettings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/OriginalSettings/ASensorSettings;

    #getter for: Lcom/android/OriginalSettings/ASensorSettings;->ICON_RADIUS:I
    invoke-static {v1}, Lcom/android/OriginalSettings/ASensorSettings;->access$600(Lcom/android/OriginalSettings/ASensorSettings;)I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    aput v0, p1, v4

    .line 292
    const-string v0, "ASensorSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRect position[0]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, p1, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", position[1]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, p1, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    return-object p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const-wide/high16 v5, 0x4000

    .line 296
    const/4 v0, 0x0

    .line 297
    .local v0, image:Landroid/graphics/drawable/Drawable;
    iget v1, p0, Lcom/android/OriginalSettings/ASensorSettings$ASensorSettingsView;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 298
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ASensorSettings$ASensorSettingsView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02011b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 306
    :goto_0
    iget v1, p0, Lcom/android/OriginalSettings/ASensorSettings$ASensorSettingsView;->mSX:I

    iget v2, p0, Lcom/android/OriginalSettings/ASensorSettings$ASensorSettingsView;->mSY:I

    iget v3, p0, Lcom/android/OriginalSettings/ASensorSettings$ASensorSettingsView;->mSX:I

    iget-object v4, p0, Lcom/android/OriginalSettings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/OriginalSettings/ASensorSettings;

    #getter for: Lcom/android/OriginalSettings/ASensorSettings;->ICON_RADIUS:I
    invoke-static {v4}, Lcom/android/OriginalSettings/ASensorSettings;->access$600(Lcom/android/OriginalSettings/ASensorSettings;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/OriginalSettings/ASensorSettings$ASensorSettingsView;->mSY:I

    iget-object v5, p0, Lcom/android/OriginalSettings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/OriginalSettings/ASensorSettings;

    #getter for: Lcom/android/OriginalSettings/ASensorSettings;->ICON_RADIUS:I
    invoke-static {v5}, Lcom/android/OriginalSettings/ASensorSettings;->access$600(Lcom/android/OriginalSettings/ASensorSettings;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 308
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 309
    const-string v1, "ASensorSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDraw mSX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/OriginalSettings/ASensorSettings$ASensorSettingsView;->mSX:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mSY: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/OriginalSettings/ASensorSettings$ASensorSettingsView;->mSY:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    return-void

    .line 301
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ASensorSettings$ASensorSettingsView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02011c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 302
    sget v1, Lcom/android/OriginalSettings/ASensorSettings;->mAniGapX:F

    sget v2, Lcom/android/OriginalSettings/ASensorSettings;->mAniCount:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    sget v3, Lcom/android/OriginalSettings/ASensorSettings;->mAniGapY:F

    sget v4, Lcom/android/OriginalSettings/ASensorSettings;->mAniCount:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, p0, Lcom/android/OriginalSettings/ASensorSettings$ASensorSettingsView;->mRadius:I

    .line 303
    iget-object v1, p0, Lcom/android/OriginalSettings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/OriginalSettings/ASensorSettings;

    #getter for: Lcom/android/OriginalSettings/ASensorSettings;->CENTER_X:I
    invoke-static {v1}, Lcom/android/OriginalSettings/ASensorSettings;->access$500(Lcom/android/OriginalSettings/ASensorSettings;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/OriginalSettings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/OriginalSettings/ASensorSettings;

    #getter for: Lcom/android/OriginalSettings/ASensorSettings;->CENTER_Y:I
    invoke-static {v2}, Lcom/android/OriginalSettings/ASensorSettings;->access$700(Lcom/android/OriginalSettings/ASensorSettings;)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/OriginalSettings/ASensorSettings$ASensorSettingsView;->mRadius:I

    iget-object v4, p0, Lcom/android/OriginalSettings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/OriginalSettings/ASensorSettings;

    #getter for: Lcom/android/OriginalSettings/ASensorSettings;->ICON_RADIUS:I
    invoke-static {v4}, Lcom/android/OriginalSettings/ASensorSettings;->access$600(Lcom/android/OriginalSettings/ASensorSettings;)I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Lcom/android/OriginalSettings/ASensorSettings;->mAniCount:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-static {}, Lcom/android/OriginalSettings/ASensorSettings;->access$900()Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 304
    const-string v1, "ASensorSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDraw mRadius "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/OriginalSettings/ASensorSettings$ASensorSettingsView;->mRadius:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public setPoint(FF)V
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    const-wide/high16 v5, 0x4000

    .line 278
    const-string v1, "ASensorSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRect x: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", y: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    float-to-double v1, p1

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    float-to-double v3, p2

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v0, v1

    .line 280
    .local v0, lengthPoint:F
    iget-object v1, p0, Lcom/android/OriginalSettings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/OriginalSettings/ASensorSettings;

    #getter for: Lcom/android/OriginalSettings/ASensorSettings;->CIRCLE_RADIUS:I
    invoke-static {v1}, Lcom/android/OriginalSettings/ASensorSettings;->access$800(Lcom/android/OriginalSettings/ASensorSettings;)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 281
    iget-object v1, p0, Lcom/android/OriginalSettings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/OriginalSettings/ASensorSettings;

    #getter for: Lcom/android/OriginalSettings/ASensorSettings;->CIRCLE_RADIUS:I
    invoke-static {v1}, Lcom/android/OriginalSettings/ASensorSettings;->access$800(Lcom/android/OriginalSettings/ASensorSettings;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    div-float p1, v1, v0

    .line 282
    iget-object v1, p0, Lcom/android/OriginalSettings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/OriginalSettings/ASensorSettings;

    #getter for: Lcom/android/OriginalSettings/ASensorSettings;->CIRCLE_RADIUS:I
    invoke-static {v1}, Lcom/android/OriginalSettings/ASensorSettings;->access$800(Lcom/android/OriginalSettings/ASensorSettings;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    div-float p2, v1, v0

    .line 284
    :cond_0
    iget-object v1, p0, Lcom/android/OriginalSettings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/OriginalSettings/ASensorSettings;

    #getter for: Lcom/android/OriginalSettings/ASensorSettings;->CENTER_X:I
    invoke-static {v1}, Lcom/android/OriginalSettings/ASensorSettings;->access$500(Lcom/android/OriginalSettings/ASensorSettings;)I

    move-result v1

    iget-object v2, p0, Lcom/android/OriginalSettings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/OriginalSettings/ASensorSettings;

    #getter for: Lcom/android/OriginalSettings/ASensorSettings;->ICON_RADIUS:I
    invoke-static {v2}, Lcom/android/OriginalSettings/ASensorSettings;->access$600(Lcom/android/OriginalSettings/ASensorSettings;)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v1, p1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/OriginalSettings/ASensorSettings$ASensorSettingsView;->mSX:I

    .line 285
    iget-object v1, p0, Lcom/android/OriginalSettings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/OriginalSettings/ASensorSettings;

    #getter for: Lcom/android/OriginalSettings/ASensorSettings;->CENTER_Y:I
    invoke-static {v1}, Lcom/android/OriginalSettings/ASensorSettings;->access$700(Lcom/android/OriginalSettings/ASensorSettings;)I

    move-result v1

    iget-object v2, p0, Lcom/android/OriginalSettings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/OriginalSettings/ASensorSettings;

    #getter for: Lcom/android/OriginalSettings/ASensorSettings;->ICON_RADIUS:I
    invoke-static {v2}, Lcom/android/OriginalSettings/ASensorSettings;->access$600(Lcom/android/OriginalSettings/ASensorSettings;)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sub-float/2addr v1, p2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/OriginalSettings/ASensorSettings$ASensorSettingsView;->mSY:I

    .line 287
    return-void
.end method
